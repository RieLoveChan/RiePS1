[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputDir,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [Parameter(Mandatory = $true)][string]$OutJson,
    [uint32]$ExpectedCount = 27
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Get-Sha256([byte[]]$Bytes) {
    [Convert]::ToHexString([Security.Cryptography.SHA256]::HashData($Bytes)).ToLowerInvariant()
}

$source = (Resolve-Path -LiteralPath $InputDir).Path
$destination = [IO.Path]::GetFullPath($OutDir)
if (-not (Test-Path -LiteralPath $destination)) {
    if ($PSCmdlet.ShouldProcess($destination, 'Create counted-offset output directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}
$rows = [Collections.Generic.List[object]]::new()
foreach ($resource in Get-ChildItem -LiteralPath $source -File | Sort-Object Name) {
    $bytes = [IO.File]::ReadAllBytes($resource.FullName)
    if ($bytes.Length -lt 20 -or [BitConverter]::ToUInt32($bytes, 0) -ne $ExpectedCount) { continue }
    $headerBytes = [int](5 + $ExpectedCount) * 4
    if ($bytes.Length -lt $headerBytes) { throw "Short counted-offset resource: $($resource.Name)" }
    $declaredEnd = [BitConverter]::ToUInt32($bytes, 16)
    $offsets = @(for ($index = 0; $index -lt $ExpectedCount; $index++) { [BitConverter]::ToUInt32($bytes, 20 + $index * 4) })
    if ($declaredEnd -gt $bytes.Length -or $declaredEnd -le $offsets[-1]) { throw "Invalid declared end in $($resource.Name)" }
    if (@($offsets | Where-Object { $_ -lt $headerBytes -or $_ -ge $declaredEnd }).Count -ne 0) { throw "Invalid section offset in $($resource.Name)" }
    for ($index = 1; $index -lt $offsets.Count; $index++) {
        if ($offsets[$index] -le $offsets[$index - 1]) { throw "Non-increasing section offsets in $($resource.Name)" }
    }
    $base = [IO.Path]::GetFileNameWithoutExtension($resource.Name)
    for ($index = 0; $index -lt $offsets.Count; $index++) {
        $start = [int]$offsets[$index]
        $end = if ($index + 1 -lt $offsets.Count) { [int]$offsets[$index + 1] } else { [int]$declaredEnd }
        $section = [byte[]]::new($end - $start)
        [Array]::Copy($bytes, $start, $section, 0, $section.Length)
        $name = '{0}.section_{1:D2}.bin' -f $base, $index
        $path = Join-Path $destination $name
        if ($PSCmdlet.ShouldProcess($path, 'Write counted-offset resource section')) { [IO.File]::WriteAllBytes($path, $section) }
        $rows.Add([pscustomobject]@{source_file=$resource.Name;section=$index;offset=('0x{0:x8}' -f $start);bytes=$section.Length;file=$name;sha256=Get-Sha256 $section;kind='section'})
    }
    $tailBytes = $bytes.Length - [int]$declaredEnd
    if ($tailBytes -gt 0) {
        $tail = [byte[]]::new($tailBytes);[Array]::Copy($bytes, [int]$declaredEnd, $tail, 0, $tail.Length)
        $tailName = "$base.tail.bin";$tailPath=Join-Path $destination $tailName
        if ($PSCmdlet.ShouldProcess($tailPath, 'Write undeclared trailing range')) { [IO.File]::WriteAllBytes($tailPath, $tail) }
        $rows.Add([pscustomobject]@{source_file=$resource.Name;section=$null;offset=('0x{0:x8}' -f $declaredEnd);bytes=$tail.Length;file=$tailName;sha256=Get-Sha256 $tail;kind='tail'})
    }
}
$result=[pscustomobject]@{expected_count=$ExpectedCount;resource_count=@($rows|Select-Object -ExpandProperty source_file -Unique).Count;section_count=@($rows|Where-Object{$_.section -ne $null}).Count;section_bytes=($rows|Where-Object{$_.section -ne $null}|Measure-Object bytes -Sum).Sum;tail_count=@($rows|Where-Object{$_.kind-eq'tail'}).Count;tail_bytes=($rows|Where-Object{$_.kind-eq'tail'}|Measure-Object bytes -Sum).Sum;entries=@($rows)}
$result|ConvertTo-Json -Depth 4|Set-Content -LiteralPath $OutJson -Encoding utf8
$result|Select-Object resource_count,section_count,section_bytes,tail_count,tail_bytes