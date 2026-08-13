[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$InputPath,
    [string]$OutJson = 'work/ddr5thmix-extract/vag-sample-inventory.json',
    [int]$Alignment = 2048
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Read-UInt32BigEndian([byte[]]$Bytes, [int]$Offset) {
    return (([uint32]$Bytes[$Offset] -shl 24) -bor
            ([uint32]$Bytes[$Offset + 1] -shl 16) -bor
            ([uint32]$Bytes[$Offset + 2] -shl 8) -bor
            [uint32]$Bytes[$Offset + 3])
}

$input = (Resolve-Path -LiteralPath $InputPath).Path
$parent = Split-Path -Parent $OutJson
if ($parent) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
$length = (Get-Item -LiteralPath $input).Length
$samples = [Collections.Generic.List[object]]::new()
$stream = [IO.File]::Open($input, 'Open', 'Read', 'Read')
try {
    $header = [byte[]]::new(48)
    for ([int64]$offset = 0; $offset + $header.Length -le $length; $offset += $Alignment) {
        $stream.Seek($offset, [IO.SeekOrigin]::Begin) | Out-Null
        $read = 0
        while ($read -lt $header.Length) {
            $n = $stream.Read($header, $read, $header.Length - $read)
            if ($n -le 0) { throw "Short read at 0x$($offset.ToString('x'))" }
            $read += $n
        }
        if ([Text.Encoding]::ASCII.GetString($header, 0, 4) -ne 'VAGp') { continue }
        $dataSize = Read-UInt32BigEndian $header 12
        $sampleRate = Read-UInt32BigEndian $header 16
        if ($dataSize -eq 0 -or $offset + 48 + $dataSize -gt $length) { continue }
        $name = [Text.Encoding]::ASCII.GetString($header, 32, 16).Trim([char]0)
        $samples.Add([pscustomobject][ordered]@{
            header_offset = ('0x{0:x}' -f $offset)
            header_sector = [int64]($offset / $Alignment)
            data_offset = ('0x{0:x}' -f ($offset + 48))
            data_size = $dataSize
            sample_rate_hz = $sampleRate
            name = $name
        })
    }
    $result = [ordered]@{
        schema_version = 1
        tool = 'Inventory-VagSamples.ps1'
        input_path = $input
        input_size = $length
        input_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant()
        alignment = $Alignment
        sample_count = $samples.Count
        unique_names = @($samples | Select-Object -ExpandProperty name | Sort-Object -Unique)
        samples = @($samples)
    }
    $result | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $OutJson -Encoding utf8
    [pscustomobject]@{
        input_sha256 = $result.input_sha256
        sample_count = $result.sample_count
        unique_name_count = $result.unique_names.Count
        out_json = (Resolve-Path -LiteralPath $OutJson).Path
    }
}
finally {
    $stream.Dispose()
}
