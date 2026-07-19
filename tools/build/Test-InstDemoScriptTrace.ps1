[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$OverlayPath = "work/ddr5thmix-overlays/inst-demo.bin"
)

Set-StrictMode -Off
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $OverlayPath)) {
    if (Test-Path -LiteralPath "work/ddr5thmix-extract/read_dt.bin") {
        Write-Host "Extracting overlay from work/ddr5thmix-extract/read_dt.bin..."
        pwsh -File tools/ghidra/Import-RawOverlay.ps1 `
            -InputPath work/ddr5thmix-extract/read_dt.bin `
            -OutputPath work/ddr5thmix-overlays/inst-demo.bin `
            -Offset 0x1630000 -Length 0x2e58 `
            -ExpectedSha256 3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb `
            -BaseAddress 0x801e4000
    } else {
        throw "Overlay binary not found at $OverlayPath and read_dt.bin not present."
    }
}

$overlayBytes = [System.IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $OverlayPath).Path)
$hasher = [System.Security.Cryptography.SHA256]::Create()
$hash = [System.BitConverter]::ToString($hasher.ComputeHash($overlayBytes)).Replace('-', '').ToLowerInvariant()

$expectedSha256 = "3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb"
if ($hash -ne $expectedSha256) {
    throw "Overlay SHA256 mismatch. Expected $expectedSha256; got $hash"
}

$baseAddr = [int64][System.Convert]::ToInt64("801e4000", 16)

function Read-UInt32 {
    param([int64]$Addr)
    $off = [int]($Addr - $baseAddr)
    if ($off -ge 0 -and $off -le ($overlayBytes.Length - 4)) {
        return [int64][System.BitConverter]::ToUInt32($overlayBytes, $off)
    }
    return [int64]0
}

function Read-Int32 {
    param([int64]$Addr)
    $off = [int]($Addr - $baseAddr)
    if ($off -ge 0 -and $off -le ($overlayBytes.Length - 4)) {
        return [int64][System.BitConverter]::ToInt32($overlayBytes, $off)
    }
    return [int64]0
}

# Dynamically parse script starting at 0x801e66c4
# 8-byte steps: [func_ptr, arg1]

$curr = [int64][System.Convert]::ToInt64("801e66c4", 16)
$stepIdx = 0

$nonJumpCallbacks = 0
$explicitJumps = 0
$jumpSource = [int64]0
$jumpTarget = [int64]0
$nullTerminator = [int64]0

$waits60 = 0
$waits80 = 0
$interp20 = 0
$interp5 = 0
$totalTicks = 0

$targetWaitFunc    = [int64][System.Convert]::ToInt64("801e43a0", 16)
$targetInterpFunc1 = [int64][System.Convert]::ToInt64("801e4474", 16)
$targetInterpFunc2 = [int64][System.Convert]::ToInt64("801e4424", 16)
$targetJumpFunc    = [int64][System.Convert]::ToInt64("801e43b4", 16)

while ($curr -lt ($baseAddr + $overlayBytes.Length)) {
    $w0 = Read-UInt32 -Addr $curr
    $w1 = Read-UInt32 -Addr ($curr + 4)

    if ($w0 -eq 0) {
        $nullTerminator = $curr
        break
    }

    if ($w0 -eq $targetWaitFunc) {
        # Wait callback -> arg1 (w1) points to int32 tick value
        $ticks = Read-Int32 -Addr $w1
        $totalTicks += $ticks
        $nonJumpCallbacks++
        if ($ticks -eq 60) {
            $waits60++
        } elseif ($ticks -eq 80) {
            $waits80++
        } else {
            throw "Unexpected wait tick value $ticks at step $stepIdx (0x$($curr.ToString('x')))"
        }
    } elseif ($w0 -eq $targetInterpFunc1) {
        # Interpolation execution callback -> arg1 (w1) points to index parameter struct
        $idxVal = Read-Int32 -Addr $w1
        $nonJumpCallbacks++
        if ($idxVal -in 1, 3) {
            $interp20++
            $totalTicks += 20
        } elseif ($idxVal -in 4, 5, 6) {
            $interp5++
            $totalTicks += 5
        }
    } elseif ($w0 -eq $targetInterpFunc2) {
        # Interpolation prep callback -> step 47 prepares 5-tick interpolation parameter
        $idxVal = Read-Int32 -Addr $w1
        $nonJumpCallbacks++
        if ($stepIdx -eq 47) {
            $interp5++
            $totalTicks += 5
        }
    } elseif ($w0 -eq $targetJumpFunc) {
        # Jump callback -> returns target from arg1
        $explicitJumps++
        $jumpSource = $curr
        $jumpTarget = $w1
    } else {
        $nonJumpCallbacks++
    }

    $curr += 8
    $stepIdx++
}

# Validation assertions
if ($stepIdx -ne 97) {
    throw "Derived total steps mismatch. Expected 97; got $stepIdx"
}
if ($nonJumpCallbacks -ne 96) {
    throw "Derived non-jump callbacks mismatch. Expected 96; got $nonJumpCallbacks"
}
if ($explicitJumps -ne 1) {
    throw "Derived explicit jumps mismatch. Expected 1; got $explicitJumps"
}
if ($jumpSource -ne [int64][System.Convert]::ToInt64("801e67f4", 16) -or $jumpTarget -ne [int64][System.Convert]::ToInt64("801e67fc", 16)) {
    throw "Derived jump source/target mismatch. Expected 0x801e67f4 -> 0x801e67fc; got 0x$($jumpSource.ToString('x')) -> 0x$($jumpTarget.ToString('x'))"
}
if ($nullTerminator -ne [int64][System.Convert]::ToInt64("801e69cc", 16)) {
    throw "Derived null terminator mismatch. Expected 0x801e69cc; got 0x$($nullTerminator.ToString('x'))"
}
if ($waits60 -ne 24) {
    throw "Derived 60-tick waits mismatch. Expected 24; got $waits60"
}
if ($waits80 -ne 5) {
    throw "Derived 80-tick waits mismatch. Expected 5; got $waits80"
}
if ($interp20 -ne 2) {
    throw "Derived 20-tick interpolations mismatch. Expected 2; got $interp20"
}
if ($interp5 -ne 6) {
    throw "Derived 5-tick interpolations mismatch. Expected 6; got $interp5"
}
if ($totalTicks -ne 1910) {
    throw "Derived total ticks mismatch. Expected 1910; got $totalTicks"
}

$jumpSourceHex = "0x" + ($jumpSource -band 0xFFFFFFFF).ToString("x")
$jumpTargetHex = "0x" + ($jumpTarget -band 0xFFFFFFFF).ToString("x")
$nullTermHex   = "0x" + ($nullTerminator -band 0xFFFFFFFF).ToString("x")

$report = [ordered]@{
    schema_version            = 1
    overlay_sha256            = $hash
    total_steps               = $stepIdx
    non_jump_callbacks        = $nonJumpCallbacks
    explicit_jumps            = $explicitJumps
    jump_source               = $jumpSourceHex
    jump_target               = $jumpTargetHex
    null_terminator_address   = $nullTermHex
    waits_60_ticks            = $waits60
    waits_80_ticks            = $waits80
    interpolations_20_ticks   = $interp20
    interpolations_5_ticks    = $interp5
    total_calculated_ticks    = $totalTicks
    valid_script_trace        = $true
}

$report | ConvertTo-Json -Depth 4
