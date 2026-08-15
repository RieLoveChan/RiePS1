[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputDir,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [Parameter(Mandatory = $true)][string]$OutJson,
    [uint32]$PrefixOffset = 8,
    [uint32]$RequiredFirstWord = 8,
    [uint32]$PrefixMagic = 2147487892
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-Sha256([byte[]]$Bytes) {
    [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($Bytes)).ToLowerInvariant()
}

$source = (Resolve-Path -LiteralPath $InputDir).Path
$destination = [IO.Path]::GetFullPath($OutDir)
if (-not (Test-Path -LiteralPath $destination)) {
    if ($PSCmdlet.ShouldProcess($destination, 'Create composite-resource output directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}
$manifestParent = Split-Path -Parent ([IO.Path]::GetFullPath($OutJson))
if ($manifestParent -and -not (Test-Path -LiteralPath $manifestParent)) {
    if ($PSCmdlet.ShouldProcess($manifestParent, 'Create manifest directory')) {
        New-Item -ItemType Directory -Path $manifestParent | Out-Null
    }
}

$decoder = Join-Path $PSScriptRoot 'Expand-ResourceLz.ps1'
$rows = [Collections.Generic.List[object]]::new()
foreach ($resource in Get-ChildItem -LiteralPath $source -File | Sort-Object Name) {
    $bytes = [IO.File]::ReadAllBytes($resource.FullName)
    if ($bytes.Length -lt $PrefixOffset + 4) { continue }
    if ([BitConverter]::ToUInt32($bytes, 0) -ne $RequiredFirstWord) { continue }
    if ([BitConverter]::ToUInt32($bytes, [int]$PrefixOffset) -ne $PrefixMagic) { continue }

    $temp = Join-Path ([IO.Path]::GetTempPath()) ('ps1-lz-prefix-' + [guid]::NewGuid().ToString() + '.bin')
    try {
        [IO.File]::WriteAllBytes($temp, $bytes[[int]$PrefixOffset..($bytes.Length - 1)])
        $base = [IO.Path]::GetFileNameWithoutExtension($resource.Name)
        $prefixName = "$base.prefix.bin"
        $prefixPath = Join-Path $destination $prefixName
        $decoded = & $decoder -InputPath $temp -OutPath $prefixPath -AllowTrailing
        if (-not $decoded.terminated -or $decoded.input_consumed -le 0 -or $decoded.trailing_input_bytes -le 0) {
            throw "Expected a terminated LZ prefix with trailing bytes in $($resource.Name)"
        }
        $prefixEnd = [int]$PrefixOffset + [int]$decoded.input_consumed
        $tail = [byte[]]::new($bytes.Length - $prefixEnd)
        [Array]::Copy($bytes, $prefixEnd, $tail, 0, $tail.Length)
        $base = [IO.Path]::GetFileNameWithoutExtension($resource.Name)
        $tailName = "$base.tail.bin"
        $tailPath = Join-Path $destination $tailName
        if ($PSCmdlet.ShouldProcess($tailPath, 'Write decoder-delimited trailing range')) {
            [IO.File]::WriteAllBytes($tailPath, $tail)
        }
        $rows.Add([pscustomobject]@{
            source_file = $resource.Name
            source_sha256 = Get-Sha256 $bytes
            prefix_offset = ('0x{0:x8}' -f $PrefixOffset)
            compressed_consumed = $decoded.input_consumed
            prefix_file = $prefixName
            prefix_output_bytes = $decoded.output_bytes
            prefix_output_sha256 = $decoded.output_sha256
            tail_offset = ('0x{0:x8}' -f $prefixEnd)
            tail_bytes = $tail.Length
            tail_file = $tailName
            tail_sha256 = Get-Sha256 $tail
        })
    }
    finally {
        Remove-Item -LiteralPath $temp -Force -ErrorAction SilentlyContinue
    }
}
$result = [pscustomobject]@{
    prefix_offset = ('0x{0:x8}' -f $PrefixOffset)
    prefix_magic = ('0x{0:x8}' -f $PrefixMagic)
    resource_count = $rows.Count
    tail_bytes = ($rows | Measure-Object tail_bytes -Sum).Sum
    resources = @($rows)
}
$result | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $OutJson -Encoding utf8
$result | Select-Object resource_count, tail_bytes