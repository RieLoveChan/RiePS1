[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$BinPath,
    [Parameter(Mandatory = $true)][uint32]$StartLba,
    [Parameter(Mandatory = $true)][uint32]$FileSize,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [string]$OutJson = 'work/ddr5thmix-extract/xa-audio-inventory.json',
    [int]$SectorSize = 2352,
    [int]$UserDataSize = 2048
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$bin = (Resolve-Path -LiteralPath $BinPath).Path
$destination = [IO.Path]::GetFullPath($OutDir)
$parent = Split-Path -Parent $OutJson
if ($parent) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
if (-not (Test-Path -LiteralPath $destination)) {
    if ($PSCmdlet.ShouldProcess($destination, 'Create XA extraction directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}
$sectorCount = [uint32][Math]::Ceiling($FileSize / $UserDataSize)
$groups = @{}
$stream = [IO.File]::Open($bin, 'Open', 'Read', 'Read')
try {
    $sector = [byte[]]::new($SectorSize)
    for ($index = 0; $index -lt $sectorCount; $index++) {
        $lba = $StartLba + $index
        $stream.Seek([int64]$lba * $SectorSize, [IO.SeekOrigin]::Begin) | Out-Null
        $read = 0
        while ($read -lt $SectorSize) {
            $n = $stream.Read($sector, $read, $SectorSize - $read)
            if ($n -le 0) { throw "Short sector at LBA $lba" }
            $read += $n
        }
        $fileId = $sector[16]
        $channel = $sector[17]
        $submode = $sector[18]
        if (($submode -band 0x04) -eq 0) { continue }
        $key = ('file_{0:x2}_channel_{1:x2}' -f $fileId, $channel)
        if (-not $groups.ContainsKey($key)) {
            $target = Join-Path $destination ($key + '.str')
            $groups[$key] = [ordered]@{
                file_id = ('0x{0:x2}' -f $fileId)
                channel = ('0x{0:x2}' -f $channel)
                sector_count = 0
                first_lba = $lba
                last_lba = $lba
                end_markers = 0
                raw_stream = $target
                writer = $null
            }
        }
        $group = $groups[$key]
        if ($null -eq $group.writer -and $PSCmdlet.ShouldProcess($group.raw_stream, "Demultiplex XA $key")) {
            $group.writer = [IO.File]::Open($group.raw_stream, 'Create', 'Write', 'None')
        }
        if ($null -ne $group.writer) { $group.writer.Write($sector, 0, $sector.Length) }
        $group.sector_count++
        $group.last_lba = $lba
        if (($submode -band 0x80) -ne 0) { $group.end_markers++ }
    }
}
finally {
    $stream.Dispose()
    foreach ($group in $groups.Values) { if ($null -ne $group.writer) { $group.writer.Dispose(); $group.Remove('writer') } }
}
$streams = @($groups.GetEnumerator() | Sort-Object Name | ForEach-Object { [pscustomobject]$_.Value })
$result = [ordered]@{
    schema_version = 1
    tool = 'Demux-XaAudio.ps1'
    raw_track_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $bin).Hash.ToLowerInvariant()
    start_lba = $StartLba
    file_size = $FileSize
    sector_count = $sectorCount
    audio_stream_count = $streams.Count
    streams = $streams
}
$result | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $OutJson -Encoding utf8
[pscustomobject]@{ raw_track_sha256 = $result.raw_track_sha256; audio_stream_count = $result.audio_stream_count; out_dir = $destination; out_json = (Resolve-Path -LiteralPath $OutJson).Path }
