[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$SectionManifestPath,
    [Parameter(Mandatory = $true)][string]$SectionDir,
    [string]$MusicDatabaseJson,
    [string]$OutJson = 'work/ddr5thmix-extract/music-command-table-inventory.json',
    [int]$ExpectedResourceCount = 47
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Format-WordTriple {
    param([byte[]]$Bytes, [int]$Offset)
    ('{0:x8} {1:x8} {2:x8}' -f
        [BitConverter]::ToUInt32($Bytes, $Offset),
        [BitConverter]::ToUInt32($Bytes, $Offset + 4),
        [BitConverter]::ToUInt32($Bytes, $Offset + 8))
}

$sectionManifest = @(Get-Content -Raw -LiteralPath $SectionManifestPath | ConvertFrom-Json)
$sectionRoot = (Resolve-Path -LiteralPath $SectionDir).Path
$sections = @($sectionManifest | Where-Object { $_.section -eq 1 } | Sort-Object slot)
if ($sections.Count -ne $ExpectedResourceCount) {
    throw "Expected $ExpectedResourceCount section-1 entries, found $($sections.Count)"
}
if (($sections.slot | Sort-Object -Unique).Count -ne $ExpectedResourceCount) {
    throw 'Section-1 slots are not unique'
}

$titles = @{}
if ($MusicDatabaseJson) {
    $database = Get-Content -Raw -LiteralPath $MusicDatabaseJson | ConvertFrom-Json
    foreach ($record in $database.records) { $titles[[int]$record.resource_slot] = $record.title }
}

$terminal = $null
$rows = [Collections.Generic.List[object]]::new()
foreach ($section in $sections) {
    $path = Join-Path $sectionRoot $section.file
    $bytes = [IO.File]::ReadAllBytes($path)
    if ($bytes.Length -lt 16 -or (($bytes.Length - 12) % 4) -ne 0) {
        throw "Section 1 is not a 12-byte header plus 32-bit words: slot $($section.slot)"
    }
    $declaredBytes = [BitConverter]::ToUInt32($bytes, 0)
    if ($declaredBytes -ne $bytes.Length) {
        throw "Section-1 length mismatch in slot $($section.slot): declared $declaredBytes, actual $($bytes.Length)"
    }
    $wordCount = [int](($bytes.Length - 12) / 4)
    $headerWords = ('{0:x8} {1:x8}' -f [BitConverter]::ToUInt32($bytes, 4), [BitConverter]::ToUInt32($bytes, 8))
    $first = ('{0:x8}' -f [BitConverter]::ToUInt32($bytes, 12))
    $lastOffset = $bytes.Length - 4
    $last = ('{0:x8}' -f [BitConverter]::ToUInt32($bytes, $lastOffset))
    if ($null -eq $terminal) { $terminal = $last }
    elseif ($last -ne $terminal) { throw "Terminal record differs in slot $($section.slot)" }
    $rows.Add([pscustomobject][ordered]@{
        slot = [int]$section.slot
        title = if ($titles.ContainsKey([int]$section.slot)) { $titles[[int]$section.slot] } else { $null }
        declared_bytes = [int]$declaredBytes
        header_words = $headerWords
        word_count = $wordCount
        first_word = $first
        terminal_word = $last
        sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $path).Hash.ToLowerInvariant()
    })
}

$result = [ordered]@{
    schema_version = 1
    tool = 'Inventory-MusicCommandTables.ps1'
    section_manifest = (Resolve-Path -LiteralPath $SectionManifestPath).Path
    resource_count = $rows.Count
    table_bytes = ($rows | Measure-Object declared_bytes -Sum).Sum
    word_bytes = 4
    header_bytes = 12
    terminal_word = $terminal
    tables = @($rows)
}
$parent = Split-Path -Parent $OutJson
if ($parent) { New-Item -ItemType Directory -Force -Path $parent | Out-Null }
$result | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $OutJson -Encoding utf8
[pscustomobject]$result | Select-Object resource_count, table_bytes, word_bytes, header_bytes, terminal_word
