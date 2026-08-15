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

$input = (Resolve-Path -LiteralPath $InputPath).Path
$bytes = [IO.File]::ReadAllBytes($input)
$destination = $null
if ($ExtractDir) {
    $destination = [IO.Path]::GetFullPath($ExtractDir)
    if (-not (Test-Path -LiteralPath $destination) -and $PSCmdlet.ShouldProcess($destination, 'Create TIM extraction directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}
$entries = [Collections.Generic.List[object]]::new()
for ($offset = 0; $offset -le $bytes.Length - 20; $offset += 4) {
    if ((Read-UInt32Le $bytes $offset) -ne 0x10) { continue }
    $flags = Read-UInt32Le $bytes ($offset + 4)
    if (($flags -band (-bnot 0x0b)) -ne 0) { continue }
    $bpp = switch ($flags -band 3) { 0 { 4 } 1 { 8 } 2 { 16 } default { continue } }
    $cursor = $offset + 8
    $hasClut = ($flags -band 8) -ne 0
    if ($hasClut) {
        $clutBytes = Read-UInt32Le $bytes $cursor
        if ($clutBytes -lt 12 -or $cursor + $clutBytes -gt $bytes.Length) { continue }
        $clutWidth = Read-UInt16Le $bytes ($cursor + 8)
        $clutHeight = Read-UInt16Le $bytes ($cursor + 10)
        if ($clutWidth -lt 1 -or $clutHeight -lt 1 -or $clutBytes -ne (12 + 2 * $clutWidth * $clutHeight)) { continue }
        $cursor += $clutBytes
    }
    $imageBytes = Read-UInt32Le $bytes $cursor
    if ($imageBytes -lt 12 -or $cursor + $imageBytes -gt $bytes.Length) { continue }
    $widthWords = Read-UInt16Le $bytes ($cursor + 8)
    $height = Read-UInt16Le $bytes ($cursor + 10)
    if ($imageBytes -ne (12 + 2 * $widthWords * $height)) { continue }
    $pixelsPerWord = switch ($bpp) { 4 { 4 } 8 { 2 } 16 { 1 } }
    $entry = [pscustomobject]@{
        offset = $offset; offset_hex = ('0x{0:x}' -f $offset); bpp = $bpp
        has_clut = $hasClut; width_pixels = $widthWords * $pixelsPerWord
        height_pixels = $height; serialized_bytes = $cursor + $imageBytes - $offset
    }
    if ($destination) {
        $fileName = 'tim_{0:x8}_{1}bpp_{2}x{3}.tim' -f $offset, $bpp, $entry.width_pixels, $height
        $target = Join-Path $destination $fileName
        if ($PSCmdlet.ShouldProcess($target, 'Write validated raw TIM image')) {
            $content = [byte[]]::new($entry.serialized_bytes)
            [Array]::Copy($bytes, $offset, $content, 0, $content.Length)
            [IO.File]::WriteAllBytes($target, $content)
        }
        $entry | Add-Member -NotePropertyName file -NotePropertyValue $fileName
    }
    $entries.Add($entry)
}
$result = [pscustomobject]@{
    input_path = $input
    input_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant()
    tim_count = $entries.Count
    images = @($entries)
}
if ($OutJson) { $result | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $OutJson -Encoding utf8 }
$result
