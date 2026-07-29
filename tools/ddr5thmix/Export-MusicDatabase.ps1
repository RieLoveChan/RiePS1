#Requires -Version 5.1
<#
Exports the DDR 5th Mix (Japan, SLPM-86897) linked music_info table from a
lawfully extracted PS-X EXE. The original source marker says
"data/mdb/mdb.bin", but the marker function is a no-op; the runtime tables are
already linked into the executable.
#>
param(
    [Parameter(Mandatory = $true)][string]$ExePath,
    [string]$OutCsv,
    [string]$OutJson
)

$ErrorActionPreference = 'Stop'

$ExpectedSha256 = '4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee'
$LoadAddress = [int64][Convert]::ToUInt32('8001A800', 16)
$ExeHeaderSize = 0x800
$RecordAddress = [uint32][Convert]::ToUInt32('800DF3D8', 16)
$RecordCount = 47
$RecordSize = 0x1c
$ValidIdAddress = [uint32][Convert]::ToUInt32('800DF900', 16)
$ValidIdCount = 50
$ResourcePointerAddress = [uint32][Convert]::ToUInt32('800DF14C', 16)
$ResourceSlotCount = 50

function Convert-AddressToFileOffset {
    param([uint32]$Address)
    $offset = [int64]$Address - $LoadAddress + $ExeHeaderSize
    if ($offset -lt $ExeHeaderSize -or $offset -ge $script:Bytes.Length) {
        throw ('Address 0x{0:X8} falls outside the loaded PS-X EXE body' -f $Address)
    }
    return [int]$offset
}

function Read-CStringAtAddress {
    param([uint32]$Address)
    $offset = Convert-AddressToFileOffset -Address $Address
    $end = $offset
    while ($end -lt $script:Bytes.Length -and $script:Bytes[$end] -ne 0) {
        $end++
    }
    if ($end -eq $script:Bytes.Length) {
        throw ('Unterminated string at address 0x{0:X8}' -f $Address)
    }
    return [System.Text.Encoding]::ASCII.GetString($script:Bytes, $offset, $end - $offset)
}

function Get-DifficultyNibble {
    param([uint16]$Packed, [int]$Index)
    return ($Packed -shr ((2 - $Index) * 4)) -band 0xf
}

$resolvedExe = (Resolve-Path -LiteralPath $ExePath).Path
$script:Bytes = [System.IO.File]::ReadAllBytes($resolvedExe)
$sha256 = (Get-FileHash -LiteralPath $resolvedExe -Algorithm SHA256).Hash.ToLowerInvariant()
if ($sha256 -ne $ExpectedSha256) {
    throw "Unexpected executable revision: SHA-256 $sha256 (expected $ExpectedSha256)"
}

$magic = [System.Text.Encoding]::ASCII.GetString($script:Bytes, 0, 8)
if ($magic -ne 'PS-X EXE') {
    throw "Input is not a PS-X EXE (magic '$magic')"
}

$recordOffset = Convert-AddressToFileOffset -Address $RecordAddress
$records = @(
    for ($index = 0; $index -lt $RecordCount; $index++) {
        $offset = $recordOffset + $index * $RecordSize
        $single = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x08)
        $double = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x0a)
        $titleAddress = [BitConverter]::ToUInt32($script:Bytes, $offset + 0x18)

        [pscustomobject][ordered]@{
            record_index = $index
            menu_code = $script:Bytes[$offset + 0x03]
            resource_slot = $script:Bytes[$offset + 0x03] - 1
            music_id = ('0x{0:X4}' -f [BitConverter]::ToUInt16($script:Bytes, $offset + 0x00))
            title = Read-CStringAtAddress -Address $titleAddress
            bpm_primary = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x14)
            bpm_secondary = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x16)
            single_basic = Get-DifficultyNibble -Packed $single -Index 0
            single_trick = Get-DifficultyNibble -Packed $single -Index 1
            single_maniac = Get-DifficultyNibble -Packed $single -Index 2
            double_basic = Get-DifficultyNibble -Packed $double -Index 0
            double_trick = Get-DifficultyNibble -Packed $double -Index 1
            double_maniac = Get-DifficultyNibble -Packed $double -Index 2
            unlock_bit = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x12)
            artwork_selector = ('0x{0:X2}' -f $script:Bytes[$offset + 0x02])
            field_04 = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x04)
            field_06 = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x06)
            flags_0c = ('0x{0:X4}' -f [BitConverter]::ToUInt16($script:Bytes, $offset + 0x0c))
            is_long_song = ([BitConverter]::ToUInt16($script:Bytes, $offset + 0x0c) -band 0x0100) -ne 0
            field_0e = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x0e)
            field_10 = [BitConverter]::ToUInt16($script:Bytes, $offset + 0x10)
            title_address = ('0x{0:X8}' -f $titleAddress)
        }
    }
)

$validIdOffset = Convert-AddressToFileOffset -Address $ValidIdAddress
$validIds = @(
    for ($index = 0; $index -lt $ValidIdCount; $index++) {
        '0x{0:X4}' -f [BitConverter]::ToUInt16($script:Bytes, $validIdOffset + $index * 2)
    }
)

$resourcePointerOffset = Convert-AddressToFileOffset -Address $ResourcePointerAddress
$resourceSlots = @(
    for ($index = 0; $index -lt $ResourceSlotCount; $index++) {
        $id = $validIds[$index]
        $descriptorAddress = [BitConverter]::ToUInt32(
            $script:Bytes, $resourcePointerOffset + $index * 4)
        $record = @($records | Where-Object music_id -eq $id)
        if ($record.Count -gt 1) {
            throw "Music ID $id maps to multiple music_info records"
        }

        $descriptorWord00 = $null
        $descriptorWord04 = $null
        if ($descriptorAddress -ne 0) {
            $descriptorOffset = Convert-AddressToFileOffset -Address $descriptorAddress
            $descriptorWord00 = '0x{0:X8}' -f [BitConverter]::ToUInt32(
                $script:Bytes, $descriptorOffset)
            $descriptorWord04 = '0x{0:X8}' -f [BitConverter]::ToUInt32(
                $script:Bytes, $descriptorOffset + 4)
        }

        [pscustomobject][ordered]@{
            slot = $index
            music_id = $id
            record_menu_code = if ($record.Count -eq 1) { $record[0].menu_code } else { $null }
            record_title = if ($record.Count -eq 1) { $record[0].title } else { $null }
            descriptor_address = ('0x{0:X8}' -f $descriptorAddress)
            descriptor_word_00 = $descriptorWord00
            descriptor_word_04 = $descriptorWord04
        }
    }
)

if (($records.menu_code | Sort-Object -Unique).Count -ne $RecordCount) {
    throw 'menu_code is not unique across all 47 records'
}
if (($records.title | Where-Object { -not $_ }).Count -ne 0) {
    throw 'One or more title pointers resolved to an empty string'
}
if (($records.music_id | Sort-Object -Unique).Count -ne $RecordCount) {
    throw 'music_id is not unique across all 47 records'
}

$recordsByMenu = @($records | Sort-Object menu_code)
for ($index = 0; $index -lt $RecordCount; $index++) {
    if ($recordsByMenu[$index].menu_code -ne $index + 1) {
        throw "menu_code sequence is not contiguous at resource slot $index"
    }
    if ($recordsByMenu[$index].music_id -ne $validIds[$index]) {
        throw "music_info/resource-slot ID mismatch at slot $index"
    }
}
if (@($resourceSlots | Where-Object { $_.record_menu_code -ne $null }).Count -ne $RecordCount) {
    throw 'The 50 resource slots do not map to exactly 47 music_info records'
}
if (($resourceSlots[47].descriptor_address -eq '0x00000000') -or
    ($resourceSlots[48].descriptor_address -eq '0x00000000') -or
    ($resourceSlots[49].descriptor_address -ne '0x00000000')) {
    throw 'Unexpected descriptor presence pattern in the three non-record resource slots'
}

if ($OutCsv) {
    $parent = Split-Path -Parent $OutCsv
    if ($parent) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
    $records | Sort-Object menu_code | Export-Csv -LiteralPath $OutCsv -NoTypeInformation -Encoding utf8
}

$report = [ordered]@{
    executable = [ordered]@{ path = $resolvedExe; sha256 = $sha256 }
    sourceMarker = 'data/mdb/mdb.bin'
    recordTable = [ordered]@{
        address = ('0x{0:X8}' -f $RecordAddress)
        count = $RecordCount
        recordSize = $RecordSize
    }
    resourceSlotTable = [ordered]@{
        address = ('0x{0:X8}' -f $ValidIdAddress)
        descriptorPointerAddress = ('0x{0:X8}' -f $ResourcePointerAddress)
        count = $ValidIdCount
        slots = $resourceSlots
    }
    records = $records | Sort-Object menu_code
}

if ($OutJson) {
    $parent = Split-Path -Parent $OutJson
    if ($parent) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
    $report | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutJson -Encoding utf8
}
else {
    $report | ConvertTo-Json -Depth 6
}
