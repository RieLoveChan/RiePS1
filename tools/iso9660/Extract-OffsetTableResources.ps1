[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputDir,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [Parameter(Mandatory = $true)][string]$OutJson,
    [uint32]$HeaderBytes = 0x44
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-Sha256([byte[]]$Bytes) {
    [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($Bytes)).ToLowerInvariant()
}

$source = (Resolve-Path -LiteralPath $InputDir).Path
$destination = [IO.Path]::GetFullPath($OutDir)
if (-not (Test-Path -LiteralPath $destination)) {
    if ($PSCmdlet.ShouldProcess($destination, 'Create indexed-resource output directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}

$rows = [Collections.Generic.List[object]]::new()
$resources = Get-ChildItem -LiteralPath $source -File | Sort-Object Name
foreach ($resource in $resources) {
    $bytes = [IO.File]::ReadAllBytes($resource.FullName)
    if ($bytes.Length -lt 4) { continue }
    if ([BitConverter]::ToUInt32($bytes, 0) -ne $HeaderBytes) { continue }
    if ($bytes.Length -lt $HeaderBytes) { throw "Short indexed resource: $($resource.Name)" }

    $entryCount = [int](($HeaderBytes / 4) - 1)
    $entries = for ($entry = 0; $entry -lt $entryCount; $entry++) {
        [BitConverter]::ToUInt32($bytes, 4 + ($entry * 4))
    }
    $present = @($entries | Where-Object { $_ -ne 0 })
    if (@($present | Where-Object { $_ -lt $HeaderBytes -or $_ -ge $bytes.Length -or ($_ % 4) -ne 0 }).Count -ne 0) {
        throw "Invalid indexed-resource offset in $($resource.Name)"
    }
    if (@($present | Sort-Object -Unique).Count -ne $present.Count) {
        throw "Duplicate indexed-resource offset in $($resource.Name)"
    }

    $boundaries = @($present | Sort-Object) + @([uint32]$bytes.Length)
    for ($entry = 0; $entry -lt $entryCount; $entry++) {
        $start = $entries[$entry]
        if ($start -eq 0) { continue }
        $end = @($boundaries | Where-Object { $_ -gt $start } | Select-Object -First 1)[0]
        if ($null -eq $end -or $end -le $start) { throw "Unbounded indexed-resource entry in $($resource.Name)" }
        $length = [int]($end - $start)
        $section = [byte[]]::new($length)
        [Array]::Copy($bytes, [int]$start, $section, 0, $length)
        $name = '{0}_entry_{1:D2}_offset_{2:x8}_size_{3:x8}.bin' -f [IO.Path]::GetFileNameWithoutExtension($resource.Name), $entry, $start, $length
        $target = Join-Path $destination $name
        if ($PSCmdlet.ShouldProcess($target, 'Write bounds-validated indexed resource section')) {
            [IO.File]::WriteAllBytes($target, $section)
        }
        $rows.Add([pscustomobject]@{
            source_file = $resource.Name
            source_sha256 = Get-Sha256 $bytes
            entry = $entry
            offset = ('0x{0:x8}' -f $start)
            bytes = $length
            file = $name
            sha256 = Get-Sha256 $section
        })
    }
}

$result = [pscustomobject]@{
    header_bytes = ('0x{0:x8}' -f $HeaderBytes)
    source_directory = $source
    resource_count = @($rows | Select-Object -ExpandProperty source_file -Unique).Count
    section_count = $rows.Count
    section_bytes = ($rows | Measure-Object bytes -Sum).Sum
    sections = @($rows)
}
$result | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $OutJson -Encoding utf8
$result | Select-Object header_bytes, resource_count, section_count, section_bytes
