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
  6. The formerly partial 32-byte range at 0x801e6b84 is a 2 x 16-byte
     bitmask lookup table. Raw MIPS decoding verifies the only JAL chain
     into its consumer, the selector's immediately preceding zero store,
     the selector*16 + row address arithmetic, and the row-0/row-16
     bypasses. This proves that the reachable initialization reads only
     first-bank indices 1..15 and cannot perform the previously suspected
     one-past-end read. The checker asserts only shape/non-zero presence,
     never the table's literal byte values.
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

function Get-Instruction {
    param([string]$HexAddr)
    $address = [Convert]::ToInt64($HexAddr, 16)
    $word = Read-UInt32At $HexAddr
    return [ordered]@{
        address = $address
        word = $word
        opcode = (($word -shr 26) -band 0x3f)
        rs = (($word -shr 21) -band 0x1f)
        rt = (($word -shr 16) -band 0x1f)
        rd = (($word -shr 11) -band 0x1f)
        shamt = (($word -shr 6) -band 0x1f)
        funct = ($word -band 0x3f)
        immediate = ($word -band 0xffff)
        target = ($word -band 0x03ffffff)
    }
}

function Assert-Instruction {
    param([string]$HexAddr, [hashtable]$Expected, [string]$Label)
    $instruction = Get-Instruction $HexAddr
    foreach ($field in $Expected.Keys) {
        if ($instruction[$field] -ne $Expected[$field]) {
            throw "$Label at 0x$HexAddr expected $field=$($Expected[$field]); got $($instruction[$field])."
        }
    }
}

function Get-JalTarget {
    param([System.Collections.IDictionary]$Instruction)
    if ($Instruction.opcode -ne 3) {
        throw "Instruction at 0x$('{0:x8}' -f $Instruction.address) is not JAL."
    }
    return (($Instruction.address + 4) -band 0xf0000000L) -bor
        (($Instruction.target -shl 2) -band 0x0fffffffL)
}

function Get-JalCallSites {
    param([int64]$TargetAddress)
    $sites = @()
    $codeStart = [Convert]::ToInt64("801e4048", 16)
    $codeEnd = [Convert]::ToInt64("801e64e4", 16)
    for ($address = $codeStart; $address -lt $codeEnd; $address += 4) {
        $instruction = Get-Instruction ('{0:x8}' -f $address)
        if ($instruction.opcode -eq 3 -and
            (Get-JalTarget $instruction) -eq $TargetAddress) {
            $sites += $address
        }
    }
    return @($sites)
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
Test-NotAllZero -StartHex "801e6b84" -Length 16 -Label "Bitmask lookup bank 0 (0x801e6b84-0x801e6b93)" | Out-Null
Test-NotAllZero -StartHex "801e6b94" -Length 16 -Label "Bitmask lookup bank 1 (0x801e6b94-0x801e6ba3)" | Out-Null

$lookupOffset = Get-Offset "801e6b84"
for ($bank = 0; $bank -lt 2; $bank++) {
    $bankOffset = $lookupOffset + ($bank * 16)
    if ($overlayBytes[$bankOffset] -ne 0) {
        throw "Bitmask lookup bank $bank expected a zero sentinel at index 0."
    }
    for ($index = 1; $index -lt 16; $index++) {
        $value = $overlayBytes[$bankOffset + $index]
        if ($value -eq 0) {
            throw "Bitmask lookup bank $bank expected a non-zero active entry at index $index."
        }
        if (($value -band 0xf0) -ne 0) {
            throw "Bitmask lookup bank $bank index $index expected a low-nibble bitfield."
        }
    }
}

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

# 6. Resolve the 32-byte bitmask lookup's shape and reachable bounds from
#    raw MIPS instructions. Register numbers follow the standard MIPS ABI:
#    zero=0, v0=2, a0=4, a1=5, t0=8, t1=9, t2=10, t6=14, t7=15, s1=17.
$calls5178 = @(Get-JalCallSites ([Convert]::ToInt64("801e5178", 16)))
$calls5308 = @(Get-JalCallSites ([Convert]::ToInt64("801e5308", 16)))
if ($calls5178.Count -ne 1 -or $calls5178[0] -ne [Convert]::ToInt64("801e53f8", 16)) {
    throw "Expected FUN_801e5178's sole in-overlay JAL at 0x801e53f8."
}
if ($calls5308.Count -ne 1 -or $calls5308[0] -ne [Convert]::ToInt64("801e41c8", 16)) {
    throw "Expected FUN_801e5308's sole in-overlay JAL at 0x801e41c8."
}

# Init writes zero to caller-state +1372, later reloads that same word into
# a1, and calls FUN_801e5308. FUN_801e5308 forwards a1 to FUN_801e5178 as a0.
Assert-Instruction "801e4180" @{ opcode = 0x2b; rs = 17; rt = 0; immediate = 1372 } "Selector zero store"
Assert-Instruction "801e41c4" @{ opcode = 0x23; rs = 17; rt = 5; immediate = 1372 } "Selector reload"
Assert-Instruction "801e53fc" @{ opcode = 0; rs = 5; rt = 0; rd = 4; funct = 0x21 } "Selector forward in JAL delay slot"

# FUN_801e5178 builds table_base + row + (selector << 4). Its row-0 and
# row-16 branches both jump around the lookup, and the outer-bank-zero branch
# skips it on the first output-bank pass. Thus the only reachable table reads
# use selector 0 and row 1..15.
Assert-Instruction "801e5188" @{ opcode = 0x0f; rs = 0; rt = 2; immediate = 0x801e } "Lookup base LUI"
Assert-Instruction "801e518c" @{ opcode = 0x09; rs = 2; rt = 14; immediate = 0x6b84 } "Lookup base low half"
Assert-Instruction "801e51a8" @{ opcode = 0x05; rs = 8; rt = 0 } "Row-zero bypass"
Assert-Instruction "801e51c0" @{ opcode = 0x05; rs = 8; rt = 2 } "Row-sixteen bypass"
Assert-Instruction "801e51d8" @{ opcode = 0x04; rs = 10; rt = 0 } "First output-bank lookup bypass"
Assert-Instruction "801e522c" @{ opcode = 0; rs = 0; rt = 15; rd = 2; shamt = 4; funct = 0 } "Selector times sixteen"
Assert-Instruction "801e5230" @{ opcode = 0; rs = 8; rt = 2; rd = 2; funct = 0x21 } "Row plus bank offset"
Assert-Instruction "801e5234" @{ opcode = 0; rs = 2; rt = 14; rd = 9; funct = 0x21 } "Lookup address addition"
Assert-Instruction "801e5250" @{ opcode = 0x24; rs = 9; rt = 3; immediate = 0 } "Bitmask byte load"
Assert-Instruction "801e52d4" @{ opcode = 0x0a; rs = 8; rt = 2; immediate = 17 } "Seventeen-row loop bound"

$report = [ordered]@{
    schema_version                  = 2
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
    bitmask_lookup_base              = "0x801e6b84"
    bitmask_lookup_banks             = 2
    bitmask_lookup_bank_bytes        = 16
    bitmask_lookup_zero_sentinel     = $true
    bitmask_lookup_active_nonzero    = $true
    bitmask_lookup_low_nibble_only   = $true
    reachable_bitmask_bank           = 0
    reachable_bitmask_indices        = "1..15"
    bitmask_lookup_bytes             = 32
    still_unresolved_bytes           = 48
    valid                            = $true
}

$report | ConvertTo-Json -Depth 4
