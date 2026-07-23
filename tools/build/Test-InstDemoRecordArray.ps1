[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$OverlayPath = "work/ddr5thmix-overlays/inst-demo.bin"
)

<#
Verifies the structural claims made for the previously-unresolved
0x801e6b6c-0x801e6e57 (748-byte) data range of the inst-demo overlay
(see /docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv and
/docs/games/ddr-5th-mix-jp-inst-demo-overlay.md). Every claim here is
purely structural (offsets, sizes, zero/nonzero state, pointer-table
arithmetic) and never asserts or embeds the literal non-zero byte
content of any data table, per this project's ban on tracking
copyrighted overlay bytes.

Checks:
  1. Overlay SHA-256 gate (same reference hash as the rest of the
     inst-demo-overlay toolchain).
  2. The two identified all-zero, no-reference byte runs in the
     unresolved prefix (24 bytes each) are exactly and only zero.
  3. The 460-byte tail (0x801e6c8c-0x801e6e57) is entirely zero in the
     static ROM image -- consistent with it being a runtime-populated
     scratch/record area rather than compiled-in data.
  4. The already-verified command-list range (0x801e66c4-0x801e6b6b)
     contains a literal 13-entry pointer table (28-byte stride,
     starting at 0x801e69fc) whose targets are exactly
     0x801e6c8c + i*0x20 for i in 0..12 -- the reproducible evidence
     tying FUN_801e5040's init-time record population loop to the
     13 x 32-byte draw-parameter record array this range map now
     documents.
  5. The 168-byte timing/threshold record table (0x801e6ba4-0x801e6c4b)
     and the 40-byte draw-enable flag array (0x801e6c64-0x801e6c8b),
     both resolved in the 2026-07-23 full-auto-analysis pass, are NOT
     all-zero -- structural evidence that they are compiled-in literal
     data (unlike the runtime-populated, all-zero-at-rest 460-byte GPU
     record tail in check 3), without asserting or embedding any of
     their actual literal byte content.
#>

Set-StrictMode -Version Latest
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

$baseAddr = [Convert]::ToInt64("801e4000", 16)

function Get-Offset {
    param([string]$HexAddr)
    return [int]([Convert]::ToInt64($HexAddr, 16) - $baseAddr)
}

function Test-AllZero {
    param([string]$StartHex, [int]$Length, [string]$Label)
    $off = Get-Offset $StartHex
    for ($i = 0; $i -lt $Length; $i++) {
        if ($overlayBytes[$off + $i] -ne 0) {
            throw "$Label expected all-zero at offset $i (address 0x$(('{0:x8}' -f ($baseAddr + $off + $i)))), found non-zero byte."
        }
    }
    return $true
}

function Read-UInt32At {
    param([string]$HexAddr)
    $off = Get-Offset $HexAddr
    return [int64][System.BitConverter]::ToUInt32($overlayBytes, $off)
}

function Test-NotAllZero {
    param([string]$StartHex, [int]$Length, [string]$Label)
    $off = Get-Offset $StartHex
    for ($i = 0; $i -lt $Length; $i++) {
        if ($overlayBytes[$off + $i] -ne 0) {
            return $true
        }
    }
    throw "$Label expected at least one non-zero byte across $Length bytes starting at offset $off; found all-zero."
}

# 2. All-zero, no-reference runs in the unresolved prefix.
Test-AllZero -StartHex "801e6b6c" -Length 24 -Label "Prefix zero run A (0x801e6b6c)" | Out-Null
Test-AllZero -StartHex "801e6c4c" -Length 24 -Label "Prefix zero run D (0x801e6c4c)" | Out-Null

# 3. The 460-byte record-array tail is entirely zero at rest.
Test-AllZero -StartHex "801e6c8c" -Length 460 -Label "Record-array tail (0x801e6c8c-0x801e6e57)" | Out-Null

# 5. The two ranges resolved by the 2026-07-23 full-auto-analysis pass are
#    compiled-in literal data (not runtime scratch), so they must not be
#    all-zero. This asserts presence of real content without reading or
#    embedding any specific byte value.
Test-NotAllZero -StartHex "801e6ba4" -Length 168 -Label "Timing/threshold record table (0x801e6ba4-0x801e6c4b)" | Out-Null
Test-NotAllZero -StartHex "801e6c64" -Length 40 -Label "Draw-enable flag array (0x801e6c64-0x801e6c8b)" | Out-Null

# 4. The command-list's tail pointer table: 13 entries, 28-byte (0x1c)
#    stride, starting at 0x801e69fc, each targeting one 32-byte (0x20)
#    record slot starting at 0x801e6c8c.
$pointerTableBase = [Convert]::ToInt64("801e69fc", 16)
$recordArrayBase = [Convert]::ToInt64("801e6c8c", 16)
$stride = 0x1c
$recordStride = 0x20
$expectedCount = 13

$foundCount = 0
for ($i = 0; $i -lt $expectedCount; $i++) {
    $entryAddr = "{0:x8}" -f ($pointerTableBase + ($i * $stride))
    $val = Read-UInt32At $entryAddr
    $expectedTarget = $recordArrayBase + ($i * $recordStride)
    if ($val -ne $expectedTarget) {
        throw "Pointer-table entry $i at 0x$entryAddr expected target 0x$('{0:x8}' -f $expectedTarget); got 0x$('{0:x8}' -f $val)"
    }
    $foundCount++
}

# The 14th (index 13) record slot at 0x801e6e2c is populated by a
# distinct code path (FUN_801e601c calls from FUN_801e5040), not the
# pointer-table loop, so it is deliberately excluded from this check.

$report = [ordered]@{
    schema_version                  = 1
    overlay_sha256                   = $hash
    unresolved_range_start           = "0x801e6b6c"
    unresolved_range_end             = "0x801e6e57"
    unresolved_range_bytes           = 748
    zero_run_a_bytes                 = 24
    zero_run_d_bytes                 = 24
    record_array_tail_zero_bytes     = 460
    pointer_table_base               = "0x801e69fc"
    pointer_table_stride_bytes       = $stride
    pointer_table_entries            = $foundCount
    record_array_base                = "0x801e6c8c"
    record_stride_bytes              = $recordStride
    timing_record_table_base         = "0x801e6ba4"
    timing_record_table_bytes        = 168
    timing_record_table_not_all_zero = $true
    flag_array_base                  = "0x801e6c64"
    flag_array_bytes                 = 40
    flag_array_not_all_zero          = $true
    still_unresolved_bytes           = 80
    valid                            = $true
}

$report | ConvertTo-Json -Depth 4
