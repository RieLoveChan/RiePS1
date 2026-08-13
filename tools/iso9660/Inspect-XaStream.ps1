[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$BinPath,
    [Parameter(Mandatory = $true)][uint32]$StartLba,
    [Parameter(Mandatory = $true)][uint32]$FileSize,
    [string]$OutJson = 'work/ddr5thmix-extract/xa-stream-inspection.json',
    [int]$SectorSize = 2352,
    [int]$UserDataOffset = 24,
    [int]$UserDataSize = 2048
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Hex([byte[]]$Bytes) {
    ([Convert]::ToHexString($Bytes)).ToLowerInvariant()
}

$bin = (Resolve-Path -LiteralPath $BinPath).Path
$parent = Split-Path -Parent $OutJson
if ($parent) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
$sectorCount = [uint32][Math]::Ceiling($FileSize / $UserDataSize)
$subheaders = @{}
$runs = [Collections.Generic.List[object]]::new()
$standardHeaders = [Collections.Generic.List[object]]::new()
$payloadPrefixes = @{}
$stream = [IO.File]::Open($bin, 'Open', 'Read', 'Read')
try {
    $sector = [byte[]]::new($SectorSize)
    $active = $null
    for ($index = 0; $index -lt $sectorCount; $index++) {
        $lba = $StartLba + $index
        $stream.Seek([int64]$lba * $SectorSize, [IO.SeekOrigin]::Begin) | Out-Null
        $read = 0
        while ($read -lt $SectorSize) {
            $n = $stream.Read($sector, $read, $SectorSize - $read)
            if ($n -le 0) { throw "Short sector at LBA $lba" }
            $read += $n
        }
        $subheader = Hex $sector[16..19]
        if (-not $subheaders.ContainsKey($subheader)) { $subheaders[$subheader] = 0 }
        $subheaders[$subheader]++
        if ($null -eq $active -or $active.subheader -ne $subheader) {
            if ($null -ne $active) { $runs.Add([pscustomobject]$active) }
            $active = [ordered]@{ start_lba = $lba; start_sector = $index; sector_count = 0; subheader = $subheader }
        }
        $active.sector_count++

        $prefix = Hex $sector[$UserDataOffset..($UserDataOffset + 15)]
        if (-not $payloadPrefixes.ContainsKey($prefix)) { $payloadPrefixes[$prefix] = 0 }
        $payloadPrefixes[$prefix]++
        $magic = [BitConverter]::ToUInt32($sector, $UserDataOffset)
        if ($magic -eq 0x80010160) {
            $standardHeaders.Add([pscustomobject][ordered]@{
                lba = $lba; sector = $index
                current_sector = [BitConverter]::ToUInt16($sector, $UserDataOffset + 4)
                sector_count = [BitConverter]::ToUInt16($sector, $UserDataOffset + 6)
                frame_number = [BitConverter]::ToUInt32($sector, $UserDataOffset + 8)
                frame_size = [BitConverter]::ToUInt32($sector, $UserDataOffset + 12)
                width = [BitConverter]::ToUInt16($sector, $UserDataOffset + 16)
                height = [BitConverter]::ToUInt16($sector, $UserDataOffset + 18)
            })
        }
    }
    if ($null -ne $active) { $runs.Add([pscustomobject]$active) }
    $result = [ordered]@{
        schema_version = 1
        tool = 'Inspect-XaStream.ps1'
        bin_path = $bin
        raw_track_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $bin).Hash.ToLowerInvariant()
        start_lba = $StartLba
        file_size = $FileSize
        sector_size = $SectorSize
        user_data_offset = $UserDataOffset
        user_data_size = $UserDataSize
        sector_count = $sectorCount
        xa_subheaders = @($subheaders.GetEnumerator() | Sort-Object Name | ForEach-Object { [pscustomobject][ordered]@{ value = $_.Key; sector_count = $_.Value } })
        subheader_runs = @($runs)
        standard_str_headers = @($standardHeaders)
        distinct_user_data_prefixes_16 = $payloadPrefixes.Count
        most_common_user_data_prefixes_16 = @($payloadPrefixes.GetEnumerator() | Sort-Object -Property @{ Expression = 'Value'; Descending = $true }, Name | Select-Object -First 16 | ForEach-Object { [pscustomobject][ordered]@{ value = $_.Key; sector_count = $_.Value } })
    }
    $result | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutJson -Encoding utf8
    [pscustomobject]$result
}
finally {
    $stream.Dispose()
}
