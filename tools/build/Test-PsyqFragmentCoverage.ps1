[CmdletBinding()]
param(
    # Symbol-map CSV (tracked).
    [string]$CsvPath = "docs/games/ddr5thmix/symbol-map.csv",
    # Root of ghidra_psx_ldr's per-version PsyQ signature databases (git-ignored
    # tool install; see /docs/tooling/ghidra-setup.md for the documented install).
    [string]$PsyqDataRoot,
    # Optional numeric SDK-version directory filter, e.g. "440" for PsyQ 4.4.0.
    [string]$Version = "440"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Convert-HexAddress { param([string]$Value) [Convert]::ToInt64($Value.Trim().Replace("0x", ""), 16) }

if (-not (Test-Path -LiteralPath $CsvPath)) { throw "Symbol map not found at $CsvPath" }
if ([string]::IsNullOrWhiteSpace($PsyqDataRoot)) {
    $repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
    $PsyqDataRoot = Join-Path $repoRoot 'tools\local\ghidra_12.1.2_PUBLIC\Ghidra\Extensions\ghidra_psx_ldr\data\psyq'
}
$versionDir = Join-Path $PsyqDataRoot $Version
if (-not (Test-Path -LiteralPath $versionDir)) { throw "PsyQ signature data version dir not found at $versionDir. Install ghidra_psx_ldr per /docs/tooling/ghidra-setup.md." }

$rows = @(Import-Csv -LiteralPath $CsvPath)
$main = @($rows | Where-Object { $_.overlay -eq "main" })

# group main-overlay <prefix>_OBJ_<offset> rows into runs by (prefix, implied base)
$runs = @{}
foreach ($r in $main) {
    $m = [regex]::Match($r.proposed_name, "^(?<p>.+)_OBJ_(?<o>[0-9A-Fa-f]+)$")
    if (-not $m.Success) { continue }
    $addr = Convert-HexAddress $r.address
    $base = $addr - [Convert]::ToInt64($m.Groups['o'].Value, 16)
    $key = "$($m.Groups['p'].Value)|$base"
    if (-not $runs.ContainsKey($key)) { $runs[$key] = [System.Collections.Generic.List[object]]::new() }
    $runs[$key].Add([pscustomobject]@{ address = $addr; size = [int]$r.size; name = $r.proposed_name; confidence = $r.confidence })
}

# row spans (start, end, name, confidence) for coverage checks
$spans = @($main | ForEach-Object {
    $a = Convert-HexAddress $_.address
    [pscustomobject]@{ start = $a; end = $a + [int]$_.size; name = $_.proposed_name; confidence = $_.confidence }
} | Sort-Object start)

function Test-Covered { param([int64]$Addr)
    foreach ($s in $spans) {
        if ($Addr -ge $s.start -and $Addr -lt $s.end) { return $s }
    }
    return $null
}

# DB index
$db = @{}
foreach ($libFile in @(Get-ChildItem -LiteralPath $versionDir -Filter *.json)) {
    $entries = Get-Content -LiteralPath $libFile.FullName -Raw | ConvertFrom-Json
    foreach ($entry in $entries) {
        $obj = $entry.name
        if (-not $obj -or -not $entry.PSObject.Properties['labels']) { continue }
        if (-not $db.ContainsKey($obj)) { $db[$obj] = [System.Collections.Generic.List[object]]::new() }
        $db[$obj].Add([pscustomobject]@{
            lib = $libFile.Name
            labels = @($entry.labels | ForEach-Object { [pscustomobject]@{ name = $_.name; offset = [int64]$_.offset } })
        })
    }
}
if ($db.Count -eq 0) { throw "No PsyQ objects loaded from $versionDir - cannot run coverage check." }

$single = @($runs.GetEnumerator() | Where-Object { $_.Value.Count -eq 1 })
$failures = [System.Collections.Generic.List[object]]::new()
$checked = 0; $covered = 0; $uncovered = 0

foreach ($kv in ($single | Sort-Object { [int64]($_.Key.Split('|')[1]) })) {
    $parts = $kv.Key.Split('|')
    $prefix = $parts[0]; $base = [int64]$parts[1]
    $dbObj = "$prefix.OBJ"
    if (-not $db.ContainsKey($dbObj)) {
        $failures.Add([pscustomobject]@{ fragment = $prefix; reason = "no DB object $dbObj" }); continue
    }
    foreach ($entry in $db[$dbObj]) {
        foreach ($lab in $entry.labels) {
            $at = $base + $lab.offset
            $checked++
            $cov = Test-Covered $at
            if ($cov) { $covered++ } else {
                $uncovered++
                $failures.Add([pscustomobject]@{ fragment = $prefix; reason = ("DB label {0} at 0x{1:x8} uncovered" -f $lab.name, $at) })
            }
        }
    }
}

Write-Output "single-row fragments: $($single.Count); DB labels checked: $checked; covered: $covered; uncovered: $uncovered"
if ($failures.Count -gt 0) {
    $failures | Format-Table -AutoSize | Out-String -Width 200 | Write-Output
    Write-Output "FAIL: $($failures.Count) uncovered DB label address(es)"
    exit 1
}
Write-Output "PASS: every DB label of every single-row fragment lands inside an existing symbol-map row"
