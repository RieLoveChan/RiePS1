[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$OverlayPath = "work/ddr5thmix-overlays/inst-demo.bin",

    [Parameter(Mandatory = $false)]
    [string]$ExePath = "work/ddr5thmix-extract/exe/SLPM_868.97_1"
)

<#
Verifies the structural claims made for the previously-unresolved
0x801e6b6c-0x801e6e57 (748-byte) data range of the inst-demo overlay
(see /docs/games/ddr5thmix/inst-demo-overlay-map.csv and
/docs/games/ddr5thmix/inst-demo-overlay.md). Every claim here is
purely structural (offsets, sizes, zero/nonzero state, pointer-table
arithmetic) and never asserts or embeds the literal non-zero byte
content of any data table, per this project's ban on tracking
copyrighted overlay bytes.

Checks:
  1. Overlay SHA-256 gate (same reference hash as the rest of the
     inst-demo-overlay toolchain).
  2. The former 24-byte gaps are tails of adjacent fixed-stride tables:
     the first completes a 28-byte all-zero sentinel record after 13
     populated init records, and the second supplies two all-zero rows
     completing a 16 x 12-byte timing/preset table.
  3. The 460-byte tail (0x801e6c8c-0x801e6e57) is entirely zero in the
     static ROM image -- consistent with it being a runtime-populated
     scratch/record area rather than compiled-in data.
  4. The data after the command list contains a 14-slot init table
     (28-byte stride,
     starting at 0x801e69fc) whose targets are exactly
     0x801e6c8c + i*0x20 for i in 0..12 -- the reproducible evidence
     tying FUN_801e5040's init-time record population loop to the
     13 x 32-byte draw-parameter record array. Slot 13 is a complete
     all-zero sentinel record consumed by the walker's next-pointer test.
  5. The 192-byte timing/threshold record table (0x801e6ba4-0x801e6c63)
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
  7. Raw main-executable MIPS decoding verifies the only runtime caller
     computes RNG modulo 12 before passing the timing-table selector to
     the overlay init entry, bounding reachable timing rows to 0..11.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $OverlayPath)) {
    if (Test-Path -LiteralPath "work/ddr5thmix-extract/read_dt.bin") {
        Write-Host "Extracting overlay from work/ddr5thmix-extract/read_dt.bin..."
        $outputFullPath = [System.IO.Path]::GetFullPath($OverlayPath)
        New-Item -ItemType Directory -Force -Path (Split-Path -Parent $outputFullPath) | Out-Null
        $sourceStream = [System.IO.File]::OpenRead(
            (Resolve-Path -LiteralPath "work/ddr5thmix-extract/read_dt.bin").Path
        )
        try {
            $sourceStream.Position = 0x1630000
            $extractedBytes = [byte[]]::new(0x2e58)
            $totalRead = 0
            while ($totalRead -lt $extractedBytes.Length) {
                $read = $sourceStream.Read(
                    $extractedBytes,
                    $totalRead,
                    $extractedBytes.Length - $totalRead
                )
                if ($read -eq 0) {
                    throw "Short read after $totalRead of $($extractedBytes.Length) overlay bytes."
                }
                $totalRead += $read
            }
        }
        finally {
            $sourceStream.Dispose()
        }
        [System.IO.File]::WriteAllBytes($outputFullPath, $extractedBytes)
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

if (-not (Test-Path -LiteralPath $ExePath)) {
    throw "Main executable not found at $ExePath. Extract it from the lawful input per docs/games/ddr5thmix/revision-manifest.md."
}
$exeBytes = [System.IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $ExePath).Path)
$exeHash = [System.BitConverter]::ToString($hasher.ComputeHash($exeBytes)).Replace('-', '').ToLowerInvariant()
$expectedExeSha256 = "4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee"
if ($exeHash -ne $expectedExeSha256) {
    throw "Executable SHA256 mismatch. Expected $expectedExeSha256; got $exeHash"
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

function Get-ExeInstruction {
    param([string]$HexAddr)
    $address = [Convert]::ToInt64($HexAddr, 16)
    $fileBase = [Convert]::ToInt64("8001a000", 16)
    $offset = [int]($address - $fileBase)
    $word = [int64][System.BitConverter]::ToUInt32($exeBytes, $offset)
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

function Assert-ExeInstruction {
    param([string]$HexAddr, [hashtable]$Expected, [string]$Label)
    $instruction = Get-ExeInstruction $HexAddr
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

# 2. Former gaps: a complete 28-byte sentinel record and two zero timing rows.
Test-AllZero -StartHex "801e6b68" -Length 28 -Label "Init-table sentinel record (0x801e6b68)" | Out-Null
Test-AllZero -StartHex "801e6c4c" -Length 24 -Label "Timing-table zero rows 14-15 (0x801e6c4c)" | Out-Null

# 3. The 460-byte record-array tail is entirely zero at rest.
Test-AllZero -StartHex "801e6c8c" -Length 460 -Label "Record-array tail (0x801e6c8c-0x801e6e57)" | Out-Null

# 5. The two ranges resolved by the 2026-07-23 full-auto-analysis pass are
#    compiled-in literal data (not runtime scratch), so they must not be
#    all-zero. This asserts presence of real content without reading or
#    embedding any specific byte value.
Test-NotAllZero -StartHex "801e6ba4" -Length 192 -Label "Timing/threshold record table (0x801e6ba4-0x801e6c63)" | Out-Null
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

$sentinelRecordBase = $pointerTableBase + ($expectedCount * $stride)
Test-AllZero -StartHex ('{0:x8}' -f $sentinelRecordBase) -Length $stride -Label "14th init-table sentinel record" | Out-Null
if (($pointerTableBase + (14 * $stride)) -ne [Convert]::ToInt64("801e6b84", 16)) {
    throw "Fourteen 28-byte init records must end exactly at the bitmask table base."
}
for ($i = 0; $i -lt 14; $i++) {
    Test-NotAllZero -StartHex ('{0:x8}' -f ([Convert]::ToInt64("801e6ba4", 16) + ($i * 12))) -Length 12 -Label "Timing record $i" | Out-Null
}
for ($i = 14; $i -lt 16; $i++) {
    Test-AllZero -StartHex ('{0:x8}' -f ([Convert]::ToInt64("801e6ba4", 16) + ($i * 12))) -Length 12 -Label "Timing record $i" | Out-Null
}
if (([Convert]::ToInt64("801e6ba4", 16) + (16 * 12)) -ne [Convert]::ToInt64("801e6c64", 16)) {
    throw "Sixteen 12-byte timing records must end exactly at the flag-array base."
}

# FUN_801e5040 walks 28-byte rows and tests the next row's first pointer.
Assert-Instruction "801e5084" @{ opcode = 0x23; rs = 2; rt = 3; immediate = 0x69fc } "Init-table first-pointer load"
Assert-Instruction "801e5090" @{ opcode = 0x09; rs = 2; rt = 4; immediate = 0x69fc } "Init-table base"
Assert-Instruction "801e5100" @{ opcode = 0x09; rs = 4; rt = 4; immediate = 28 } "Init-table row advance"
Assert-Instruction "801e5108" @{ opcode = 0x23; rs = 4; rt = 2; immediate = 0 } "Init-table next-pointer test"
Assert-Instruction "801e5110" @{ opcode = 0x05; rs = 2; rt = 0 } "Init-table sentinel branch"
Assert-Instruction "801e5114" @{ opcode = 0x09; rs = 5; rt = 5; immediate = 28 } "Init-table field-pointer advance"

# FUN_801e5758 computes base + signed_index*12 and reads all three words.
Assert-Instruction "801e5868" @{ opcode = 0x0f; rs = 0; rt = 3; immediate = 0x801e } "Timing-table base LUI"
Assert-Instruction "801e586c" @{ opcode = 0x09; rs = 3; rt = 3; immediate = 0x6ba4 } "Timing-table base low half"
Assert-Instruction "801e587c" @{ opcode = 0; rs = 0; rt = 17; rd = 2; shamt = 1; funct = 0 } "Timing index times two"
Assert-Instruction "801e5880" @{ opcode = 0; rs = 2; rt = 17; rd = 2; funct = 0x21 } "Timing index times three"
Assert-Instruction "801e5884" @{ opcode = 0; rs = 0; rt = 2; rd = 2; shamt = 2; funct = 0 } "Timing index times twelve"
Assert-Instruction "801e5888" @{ opcode = 0; rs = 2; rt = 3; rd = 2; funct = 0x21 } "Timing record address"

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

# 7. The main executable computes unsigned RNG % 12 and passes it as a1 in
#    the delay slot of its sole direct call to the overlay init entry.
Assert-ExeInstruction "8005467c" @{ opcode = 0x0f; rs = 0; rt = 3; immediate = 0xaaaa } "Modulo-12 reciprocal high half"
Assert-ExeInstruction "80054680" @{ opcode = 0x0d; rs = 3; rt = 3; immediate = 0xaaab } "Modulo-12 reciprocal low half"
Assert-ExeInstruction "80054684" @{ opcode = 0; rs = 2; rt = 3; funct = 0x19 } "Modulo-12 unsigned multiply"
Assert-ExeInstruction "8005468c" @{ opcode = 0; rs = 0; rt = 8; rd = 4; shamt = 3; funct = 0x02 } "Modulo-12 quotient shift"
Assert-ExeInstruction "80054698" @{ opcode = 0; rs = 0; rt = 3; rd = 3; shamt = 2; funct = 0 } "Modulo-12 quotient times twelve"
Assert-ExeInstruction "8005469c" @{ opcode = 0; rs = 2; rt = 3; rd = 2; funct = 0x23 } "Modulo-12 remainder"
Assert-ExeInstruction "800546a4" @{ opcode = 3; target = 0x0007904f } "Overlay init call"
Assert-ExeInstruction "800546a8" @{ opcode = 0x0c; rs = 2; rt = 5; immediate = 0xff } "Timing-selector argument"

$report = [ordered]@{
    schema_version                  = 3
    overlay_sha256                   = $hash
    executable_sha256                = $exeHash
    tail_range_start                 = "0x801e6b6c"
    tail_range_end                   = "0x801e6e57"
    tail_range_bytes                 = 748
    record_array_tail_zero_bytes     = 460
    pointer_table_base               = "0x801e69fc"
    pointer_table_stride_bytes       = $stride
    pointer_table_active_entries     = $foundCount
    pointer_table_total_slots        = 14
    pointer_table_zero_sentinel      = "0x801e6b68"
    record_array_base                = "0x801e6c8c"
    record_stride_bytes              = $recordStride
    timing_record_table_base         = "0x801e6ba4"
    timing_record_table_bytes        = 192
    timing_record_table_slots        = 16
    timing_record_populated_slots    = 14
    timing_record_zero_slots         = 2
    reachable_timing_indices         = "0..11"
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
    structurally_resolved_bytes      = 748
    still_unresolved_bytes           = 0
    valid                            = $true
}

$report | ConvertTo-Json -Depth 4
