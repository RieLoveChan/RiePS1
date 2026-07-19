[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$CsvPath = "docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv",

    [Parameter(Mandatory = $false)]
    [int]$ExpectedTotalBytes = 11864,

    [Parameter(Mandatory = $false)]
    [int64]$ExpectedStart = [Convert]::ToInt64("801e4000", 16),

    [Parameter(Mandatory = $false)]
    [int64]$ExpectedEnd = [Convert]::ToInt64("801e6e57", 16)
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Test-Path -LiteralPath $CsvPath)) {
    throw "Range map CSV not found at $CsvPath"
}

$rows = Get-Content -LiteralPath $CsvPath | Select-Object -Skip 1 | ForEach-Object {
    $fields = $_.Split(',')
    [ordered]@{
        start_address = $fields[0].Trim()
        end_address   = $fields[1].Trim()
        size          = [int]$fields[2].Trim()
        type          = $fields[3].Trim()
        confidence    = $fields[4].Trim()
        source_status = $fields[5].Trim()
        description   = $fields[6].Trim()
    }
}

if ($rows.Count -eq 0) {
    throw "Range map CSV contains no rows."
}

# 1. Start address check
$firstStart = [Convert]::ToInt64($rows[0].start_address.Replace('0x',''), 16)
if ($firstStart -ne $ExpectedStart) {
    throw "Range map does not start at expected 0x$($ExpectedStart.ToString('x')). Got: $($rows[0].start_address)"
}

# 2. End address check
$lastEnd = [Convert]::ToInt64($rows[-1].end_address.Replace('0x',''), 16)
if ($lastEnd -ne $ExpectedEnd) {
    throw "Range map does not end at expected 0x$($ExpectedEnd.ToString('x')). Got: $($rows[-1].end_address)"
}

# 3. Check each row consistency, gaps, and overlaps
$totalBytes = 0
$prevEnd = $ExpectedStart - 1

foreach ($i in 0..($rows.Count - 1)) {
    $row = $rows[$i]
    $start = [Convert]::ToInt64($row.start_address.Replace('0x',''), 16)
    $end = [Convert]::ToInt64($row.end_address.Replace('0x',''), 16)
    $size = $row.size

    # Check start/end/size consistency
    $calculatedSize = [int]($end - $start + 1)
    if ($calculatedSize -ne $size) {
        throw "Row $i ($($row.start_address)-$($row.end_address)) size mismatch: CSV claims $size bytes, calculated $calculatedSize bytes."
    }

    # Check overlaps
    if ($start -le $prevEnd) {
        throw "Overlap detected at row $i ($($row.start_address)): start 0x{0:x8} is <= previous end 0x{1:x8}." -f ($start -band 0xFFFFFFFF), ($prevEnd -band 0xFFFFFFFF)
    }

    # Check gaps
    if ($start -ne ($prevEnd + 1)) {
        $gapSize = $start - ($prevEnd + 1)
        throw "Gap of $gapSize bytes detected before row $i ($($row.start_address))."
    }

    $totalBytes += $size
    $prevEnd = $end
}

# 4. Total sum check
if ($totalBytes -ne $ExpectedTotalBytes) {
    throw "Total range map byte sum mismatch. Expected $ExpectedTotalBytes bytes; got $totalBytes bytes."
}

$startHex = "0x{0:x8}" -f ($ExpectedStart -band 0xFFFFFFFF)
$endHex   = "0x{0:x8}" -f ($ExpectedEnd -band 0xFFFFFFFF)

$report = [ordered]@{
    schema_version        = 1
    range_map             = $CsvPath
    start_address         = $startHex
    end_address           = $endHex
    total_intervals       = $rows.Count
    total_bytes           = $totalBytes
    contiguous_no_gaps    = $true
    contiguous_no_overlap = $true
    valid                 = $true
}

$report | ConvertTo-Json -Depth 4
