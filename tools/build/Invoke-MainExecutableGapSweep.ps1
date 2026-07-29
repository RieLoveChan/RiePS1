[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Leaf })]
    [string]$ExePath,

    [string]$CsvPath = "docs/games/ddr-5th-mix-jp-symbol-map.csv",
    [string]$ManifestPath = "config/ddr5thmix/build.json",
    [string]$CodeStart = "8001a800",
    [string]$CodeEnd = "8011b000",
    [string]$OutJson
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function ConvertFrom-HexAddress {
    param([Parameter(Mandatory = $true)][string]$Value)
    return [Convert]::ToUInt64($Value.Trim().Replace('0x', ''), 16)
}

if (-not (Test-Path -LiteralPath $CsvPath)) { throw "Symbol map not found at $CsvPath" }
if (-not (Test-Path -LiteralPath $ManifestPath)) { throw "Manifest not found at $ManifestPath" }

$manifest = Get-Content -Raw -LiteralPath $ManifestPath | ConvertFrom-Json
$actualExeHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $ExePath).Hash.ToLowerInvariant()
$expectedExeHash = $manifest.executable.sha256.ToLowerInvariant()
if ($actualExeHash -ne $expectedExeHash) {
    throw "Executable SHA-256 mismatch. Expected $expectedExeHash; got $actualExeHash."
}
[uint64]$loadAddress = ConvertFrom-HexAddress $manifest.executable.load_address
[uint64]$headerSize = [uint64]$manifest.executable.header_size

[uint64]$codeStart = ConvertFrom-HexAddress $CodeStart
[uint64]$codeEnd = ConvertFrom-HexAddress $CodeEnd
if ($codeEnd -le $codeStart) { throw "CodeEnd must be greater than CodeStart." }

$rows = @(Import-Csv -LiteralPath $CsvPath | Where-Object { $_.overlay -eq 'main' -and $_.address -match '^0x8' })
$ranges = @(
    $rows | ForEach-Object {
        [pscustomobject]@{
            addr = ConvertFrom-HexAddress $_.address
            size = [int]$_.size
        }
    } | Where-Object { $_.addr -lt $codeEnd } | Sort-Object addr
)

# Merge into non-overlapping covered intervals (a handful of rows in this
# project's inventory have auto-analysis-derived sizes that overrun a
# since-verified neighbor; merging on max-end absorbs that without masking
# it -- true overlaps are reported separately below).
$merged = New-Object System.Collections.Generic.List[object]
$overlaps = New-Object System.Collections.Generic.List[object]
foreach ($r in $ranges) {
    $s = $r.addr
    $e = [Math]::Min($r.addr + [uint64]$r.size, $codeEnd)
    if ($merged.Count -gt 0 -and $s -lt $merged[$merged.Count - 1].e) {
        $overlaps.Add([pscustomobject]@{ addr = ('0x{0:x8}' -f $s); into_end = ('0x{0:x8}' -f $merged[$merged.Count - 1].e) })
    }
    if ($merged.Count -gt 0 -and $s -le $merged[$merged.Count - 1].e) {
        if ($e -gt $merged[$merged.Count - 1].e) { $merged[$merged.Count - 1].e = $e }
    }
    else {
        $merged.Add([pscustomobject]@{ s = $s; e = $e })
    }
}

$gaps = New-Object System.Collections.Generic.List[object]
[uint64]$cursor = $codeStart
foreach ($m in $merged) {
    if ($m.s -gt $cursor) { $gaps.Add([pscustomobject]@{ addr = $cursor; size = [int]($m.s - $cursor) }) }
    if ($m.e -gt $cursor) { $cursor = $m.e }
}
if ($cursor -lt $codeEnd) { $gaps.Add([pscustomobject]@{ addr = $cursor; size = [int]($codeEnd - $cursor) }) }

$fs = [System.IO.File]::OpenRead($ExePath)
$classified = @(
    $gaps | ForEach-Object {
        $offset = $headerSize + $_.addr - $loadAddress
        $fs.Position = [int64]$offset
        $buf = New-Object byte[] $_.size
        $read = $fs.Read($buf, 0, $_.size)
        if ($read -ne $_.size) { throw ('Short read at 0x{0:x8}: expected {1}, got {2}.' -f $_.addr, $_.size, $read) }
        $zeroCount = 0
        foreach ($b in $buf) { if ($b -eq 0) { $zeroCount++ } }
        [pscustomobject]@{
            address        = ('0x{0:x8}' -f $_.addr)
            size           = $_.size
            zero_bytes     = $zeroCount
            nonzero_bytes  = $_.size - $zeroCount
            all_zero       = ($zeroCount -eq $_.size)
        }
    }
)
$fs.Close()

$totalCodeBytes = [int]($codeEnd - $codeStart)
$totalCoveredBytes = ($merged | ForEach-Object { [int]($_.e - $_.s) } | Measure-Object -Sum).Sum
$totalGapBytes = ($classified | Measure-Object size -Sum).Sum
$allZeroGapBytes = ($classified | Where-Object all_zero | Measure-Object size -Sum).Sum
$nonzeroGapBytes = $totalGapBytes - $allZeroGapBytes

$report = [ordered]@{
    schema_version       = 1
    executable_sha256    = $actualExeHash
    code_start           = ('0x{0:x8}' -f $codeStart)
    code_end             = ('0x{0:x8}' -f $codeEnd)
    total_code_bytes     = $totalCodeBytes
    covered_intervals    = $merged.Count
    total_covered_bytes  = $totalCoveredBytes
    overlap_count        = $overlaps.Count
    overlaps             = $overlaps
    gap_count            = $classified.Count
    total_gap_bytes      = $totalGapBytes
    all_zero_gap_bytes   = $allZeroGapBytes
    nonzero_gap_bytes    = $nonzeroGapBytes
    gaps                 = $classified
}

if ($OutJson) {
    $report | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutJson -Encoding utf8
}

[pscustomobject]@{
    schema_version      = $report.schema_version
    total_code_bytes    = $totalCodeBytes
    total_covered_bytes = $totalCoveredBytes
    overlap_count       = $overlaps.Count
    gap_count           = $classified.Count
    total_gap_bytes     = $totalGapBytes
    all_zero_gap_bytes  = $allZeroGapBytes
    nonzero_gap_bytes   = $nonzeroGapBytes
}
