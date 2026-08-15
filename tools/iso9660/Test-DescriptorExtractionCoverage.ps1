[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$ManifestPath,
    [Parameter(Mandatory = $true)][string]$InputDir,
    [Parameter(Mandatory = $true)][string]$OutJson
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$manifest = @(Get-Content -Raw -LiteralPath $ManifestPath | ConvertFrom-Json)
$source = (Resolve-Path -LiteralPath $InputDir).Path
$rows = [Collections.Generic.List[object]]::new()
foreach ($entry in $manifest) {
    if ([string]::IsNullOrWhiteSpace($entry.file) -or $entry.bytes -le 0 -or [string]::IsNullOrWhiteSpace($entry.sha256)) {
        throw 'Descriptor manifest has an incomplete entry'
    }
    $path = Join-Path $source $entry.file
    $exists = Test-Path -LiteralPath $path -PathType Leaf
    $actualBytes = if ($exists) { (Get-Item -LiteralPath $path).Length } else { $null }
    $actualHash = if ($exists -and $actualBytes -eq $entry.bytes) { (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant() } else { $null }
    $valid = $exists -and $actualBytes -eq $entry.bytes -and $actualHash -eq $entry.sha256
    $rows.Add([pscustomobject]@{file=$entry.file;expected_bytes=$entry.bytes;actual_bytes=$actualBytes;expected_sha256=$entry.sha256;actual_sha256=$actualHash;valid=$valid})
}
$result = [pscustomobject]@{
    manifest_path = (Resolve-Path -LiteralPath $ManifestPath).Path
    input_directory = $source
    descriptor_count = $rows.Count
    descriptor_bytes = ($rows | Measure-Object expected_bytes -Sum).Sum
    valid_count = @($rows | Where-Object valid).Count
    invalid_count = @($rows | Where-Object { -not $_.valid }).Count
    results = @($rows)
}
$result | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $OutJson -Encoding utf8
$result | Select-Object descriptor_count, descriptor_bytes, valid_count, invalid_count
if ($result.invalid_count -ne 0) { exit 1 }