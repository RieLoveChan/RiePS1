[CmdletBinding()]
param(
    [string]$CsvPath = "docs/games/ddr-5th-mix-jp-symbol-map.csv",
    [string]$Prefix = "SYS",
    [int64]$ObjectStart = [Convert]::ToInt64("800381e8", 16),
    [int64]$ObjectEnd = [Convert]::ToInt64("8003b114", 16)
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Convert-HexAddress {
    param([string]$Value)
    return [Convert]::ToInt64($Value.Trim().Replace("0x", ""), 16)
}

if (-not (Test-Path -LiteralPath $CsvPath)) { throw "Symbol map not found at $CsvPath" }
if ($ObjectEnd -le $ObjectStart) { throw "ObjectEnd must be greater than ObjectStart." }

$rows = @(Import-Csv -LiteralPath $CsvPath)
$objectRows = @(
    $rows | ForEach-Object {
        if ($_.proposed_name -match "^(?<prefix>.+)_OBJ_(?<offset>[0-9A-Fa-f]+)$") {
            $address = Convert-HexAddress $_.address
            [pscustomobject]@{
                prefix = $Matches.prefix
                offset = [Convert]::ToInt64($Matches.offset, 16)
                address = $address
                size = [int]$_.size
                end_exclusive = $address + [int]$_.size
                proposed_name = $_.proposed_name
            }
        }
    } | Where-Object {
        $_.prefix -eq $Prefix -and $_.address -ge $ObjectStart -and $_.end_exclusive -le $ObjectEnd
    } | Sort-Object address, offset
)
if ($objectRows.Count -eq 0) { throw "No OBJ rows for prefix $Prefix fall within the requested range." }

$bases = @($objectRows | ForEach-Object { $_.address - $_.offset } | Sort-Object -Unique)
$baseConsistent = ($bases.Count -eq 1 -and $bases[0] -eq $ObjectStart)
$offsetMonotonic = $true
for ($i = 1; $i -lt $objectRows.Count; $i++) {
    if ($objectRows[$i].offset -lt $objectRows[$i - 1].offset) { $offsetMonotonic = $false; break }
}

$intervalRows = @(
    $rows | ForEach-Object {
        $address = Convert-HexAddress $_.address
        $size = [int]$_.size
        [pscustomobject]@{
            address = $address
            end_exclusive = $address + $size
            size = $size
            name = $_.proposed_name
        }
    } | Where-Object {
        $_.address -ge $ObjectStart -and $_.end_exclusive -le $ObjectEnd -and $_.size -gt 0
    } | Sort-Object address, end_exclusive
)

$merged = [System.Collections.Generic.List[object]]::new()
foreach ($row in $intervalRows) {
    if ($merged.Count -eq 0 -or $row.address -gt $merged[$merged.Count - 1].end_exclusive) {
        $merged.Add([pscustomobject]@{ address = $row.address; end_exclusive = $row.end_exclusive })
    } elseif ($row.end_exclusive -gt $merged[$merged.Count - 1].end_exclusive) {
        $merged[$merged.Count - 1].end_exclusive = $row.end_exclusive
    }
}

$gaps = [System.Collections.Generic.List[object]]::new()
$cursor = $ObjectStart
foreach ($interval in $merged) {
    if ($interval.address -gt $cursor) {
        $gaps.Add([pscustomobject]@{
            start_address = ("0x{0:x8}" -f ($cursor -band 0xffffffff))
            end_address = ("0x{0:x8}" -f (($interval.address - 1) -band 0xffffffff))
            size = [int]($interval.address - $cursor)
        })
    }
    if ($interval.end_exclusive -gt $cursor) { $cursor = $interval.end_exclusive }
}
if ($cursor -lt $ObjectEnd) {
    $gaps.Add([pscustomobject]@{
        start_address = ("0x{0:x8}" -f ($cursor -band 0xffffffff))
        end_address = ("0x{0:x8}" -f (($ObjectEnd - 1) -band 0xffffffff))
        size = [int]($ObjectEnd - $cursor)
    })
}

$coveredBytes = 0
foreach ($interval in $merged) { $coveredBytes += [int]($interval.end_exclusive - $interval.address) }
$spanBytes = [int]($ObjectEnd - $ObjectStart)
[ordered]@{
    schema_version = 1
    evidence_level = "candidate_only"
    symbol_map = $CsvPath
    prefix = $Prefix
    object_start = ("0x{0:x8}" -f ($ObjectStart -band 0xffffffff))
    object_end_exclusive = ("0x{0:x8}" -f ($ObjectEnd -band 0xffffffff))
    span_bytes = $spanBytes
    obj_rows = $objectRows.Count
    implied_bases = @($bases | ForEach-Object { "0x{0:x8}" -f ($_ -band 0xffffffff) })
    base_consistent = $baseConsistent
    offsets_monotonic = $offsetMonotonic
    interval_rows = $intervalRows.Count
    merged_intervals = $merged.Count
    covered_bytes = $coveredBytes
    gap_bytes = ($spanBytes - $coveredBytes)
    gaps = @($gaps)
    complete_byte_account = (($spanBytes - $coveredBytes) -eq 0)
    boundary_claim = $false
    valid = ($baseConsistent -and $offsetMonotonic)
} | ConvertTo-Json -Depth 6
