[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputPath,
    [Parameter()][string]$OutJson,
    [Parameter()][string]$ExtractDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Read-UInt16Le([byte[]]$Bytes, [int]$Offset) {
    [BitConverter]::ToUInt16($Bytes, $Offset)
}
function Read-UInt32Le([byte[]]$Bytes, [int]$Offset) {
    [BitConverter]::ToUInt32($Bytes, $Offset)
}
function Get-Sha256([byte[]]$Bytes) {
    $sha = [Security.Cryptography.SHA256]::Create()
    try { [Convert]::ToHexString($sha.ComputeHash($Bytes)).ToLowerInvariant() }
    finally { $sha.Dispose() }
}

$input = (Resolve-Path -LiteralPath $InputPath).Path
$bytes = [IO.File]::ReadAllBytes($input)
$banks = [Collections.Generic.List[object]]::new()
for ($offset = 0; $offset -le $bytes.Length - 0x20; $offset += 4) {
    if ([Text.Encoding]::ASCII.GetString($bytes, $offset, 4) -ne 'pBAV') { continue }
    $version = Read-UInt32Le $bytes ($offset + 4)
    $declaredBytes = Read-UInt32Le $bytes ($offset + 0x0c)
    $programCount = Read-UInt16Le $bytes ($offset + 0x12)
    $toneCount = Read-UInt16Le $bytes ($offset + 0x14)
    $vagUpperIndex = Read-UInt16Le $bytes ($offset + 0x16)
    if ($version -ne 7 -or $declaredBytes -lt 0x0a20 -or $offset + $declaredBytes -gt $bytes.Length) { continue }
    if ($programCount -lt 1 -or $programCount -gt 128 -or $toneCount -gt $programCount * 16 -or $vagUpperIndex -gt 254) { continue }
    $sizeTableOffset = $offset + 0x20 + 0x800 + $programCount * 0x200
    $sampleDataOffset = $sizeTableOffset + 0x200
    if ($sampleDataOffset -gt $offset + $declaredBytes) { continue }
    $samples = [Collections.Generic.List[object]]::new()
    $cursor = $sampleDataOffset
    $valid = $true
    for ($index = 0; $index -le $vagUpperIndex; $index++) {
        $sampleBytes = (Read-UInt16Le $bytes ($sizeTableOffset + $index * 2)) * 8
        if ($cursor + $sampleBytes -gt $offset + $declaredBytes) { $valid = $false; break }
        $sample = [byte[]]::new($sampleBytes)
        [Array]::Copy($bytes, $cursor, $sample, 0, $sampleBytes)
        $samples.Add([pscustomobject]@{ index = $index; offset = $cursor; offset_hex = '0x{0:x}' -f $cursor; bytes = $sampleBytes; sha256 = Get-Sha256 $sample })
        $cursor += $sampleBytes
    }
    if (-not $valid -or $cursor -ne $offset + $declaredBytes) { continue }
    $banks.Add([pscustomobject]@{
        offset = $offset; offset_hex = '0x{0:x}' -f $offset; version = $version; declared_bytes = $declaredBytes;
        program_count = $programCount; tone_count = $toneCount; vag_upper_index = $vagUpperIndex; sample_count = $samples.Count;
        sample_data_offset = $sampleDataOffset; validated = $true; samples = @($samples)
    })
}
if ($ExtractDir) {
    $destination = [IO.Path]::GetFullPath($ExtractDir)
    if (-not (Test-Path -LiteralPath $destination) -and $PSCmdlet.ShouldProcess($destination, 'Create VAB extraction directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
    foreach ($bank in $banks) {
        foreach ($sample in $bank.samples) {
            $fileName = 'vab_{0:x8}_sample_{1:D3}.spuadpcm' -f $bank.offset, $sample.index
            $target = Join-Path $destination $fileName
            if ($PSCmdlet.ShouldProcess($target, 'Write validated raw SPU ADPCM sample')) {
                $content = [byte[]]::new($sample.bytes)
                [Array]::Copy($bytes, $sample.offset, $content, 0, $sample.bytes)
                [IO.File]::WriteAllBytes($target, $content)
            }
            $sample | Add-Member -NotePropertyName file -NotePropertyValue $fileName
        }
    }
}
$result = [pscustomobject]@{ input_path = $input; input_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant(); vab_count = $banks.Count; banks = @($banks) }
if ($OutJson) { $result | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutJson -Encoding utf8 }
$result
