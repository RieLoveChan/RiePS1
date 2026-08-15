[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputPath,
    [Parameter()][string]$OutJson,
    [Parameter()][string]$ExtractDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function U32([byte[]]$Bytes, [int]$Offset) { [BitConverter]::ToUInt32($Bytes, $Offset) }
function Get-Hash([byte[]]$Bytes) {
    $sha = [Security.Cryptography.SHA256]::Create()
    try { [Convert]::ToHexString($sha.ComputeHash($Bytes)).ToLowerInvariant() } finally { $sha.Dispose() }
}

$input = (Resolve-Path -LiteralPath $InputPath).Path
$bytes = [IO.File]::ReadAllBytes($input)
$models = [Collections.Generic.List[object]]::new()
for ($offset = 0; $offset -le $bytes.Length - 40; $offset += 4) {
    if ((U32 $bytes $offset) -ne 0x41 -or (U32 $bytes ($offset + 4)) -ne 0) { continue }
    $objects = U32 $bytes ($offset + 8)
    if ($objects -lt 1 -or $objects -gt 64 -or $offset + 12 + 28 * $objects -gt $bytes.Length) { continue }
    $objectBase = $offset + 12
    $end = $offset + 12 + 28 * $objects
    $valid = $true
    for ($i = 0; $i -lt $objects; $i++) {
        $entry = $objectBase + 28 * $i
        $vertexOffset = U32 $bytes $entry; $vertexCount = U32 $bytes ($entry + 4)
        $normalOffset = U32 $bytes ($entry + 8); $normalCount = U32 $bytes ($entry + 12)
        $primitiveOffset = U32 $bytes ($entry + 16); $primitiveCount = U32 $bytes ($entry + 20)
        if ($vertexCount -gt 65535 -or $normalCount -gt 65535 -or $primitiveCount -gt 65535) { $valid = $false; break }
        foreach ($range in @(@($vertexOffset, $vertexCount * 8), @($normalOffset, $normalCount * 8))) {
            $rangeEnd = $objectBase + $range[0] + $range[1]
            if ($rangeEnd -gt $bytes.Length) { $valid = $false; break }
            if ($rangeEnd -gt $end) { $end = $rangeEnd }
        }
        if (-not $valid) { break }
        $cursor = $objectBase + $primitiveOffset
        for ($packet = 0; $packet -lt $primitiveCount; $packet++) {
            if ($cursor + 4 -gt $bytes.Length) { $valid = $false; break }
            $packetBytes = 4 + $bytes[$cursor + 1] * 4; $mode = $bytes[$cursor + 3]
            if ($packetBytes -lt 8 -or $cursor + $packetBytes -gt $bytes.Length -or $mode -lt 0x20 -or $mode -gt 0x7f) { $valid = $false; break }
            $cursor += $packetBytes
        }
        if (-not $valid) { break }
        if ($cursor -gt $end) { $end = $cursor }
    }
    if (-not $valid) { continue }
    $model = [byte[]]::new($end - $offset); [Array]::Copy($bytes, $offset, $model, 0, $model.Length)
    $models.Add([pscustomobject]@{ offset = $offset; offset_hex = '0x{0:x}' -f $offset; bytes = $model.Length; object_count = $objects; sha256 = Get-Hash $model })
}
if ($ExtractDir) {
    $destination = [IO.Path]::GetFullPath($ExtractDir)
    if (-not (Test-Path -LiteralPath $destination) -and $PSCmdlet.ShouldProcess($destination, 'Create TMD extraction directory')) { New-Item -ItemType Directory -Path $destination | Out-Null }
    foreach ($model in $models) {
        $fileName = 'tmd_{0:x8}.tmd' -f $model.offset; $target = Join-Path $destination $fileName
        if ($PSCmdlet.ShouldProcess($target, 'Write validated TMD model')) { [IO.File]::WriteAllBytes($target, $bytes[$model.offset..($model.offset + $model.bytes - 1)]) }
        $model | Add-Member -NotePropertyName file -NotePropertyValue $fileName
    }
}
$result = [pscustomobject]@{ input_path = $input; input_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant(); tmd_count = $models.Count; models = @($models) }
if ($OutJson) { $result | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $OutJson -Encoding utf8 }
$result
