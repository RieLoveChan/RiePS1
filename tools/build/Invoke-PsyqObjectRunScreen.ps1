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

# --- group main-overlay <prefix>_OBJ_<offset> rows into runs by (prefix, implied base) ---
$rows = @(Import-Csv -LiteralPath $CsvPath)
$runs = @{}  # "prefix|base" -> list of [address, size]
foreach ($r in $rows) {
    if ($r.overlay -ne "main") { continue }
    $m = [regex]::Match($r.proposed_name, "^(?<p>.+)_OBJ_(?<o>[0-9A-Fa-f]+)$")
    if (-not $m.Success) { continue }
    $addr = Convert-HexAddress $r.address
    $base = $addr - [Convert]::ToInt64($m.Groups['o'].Value, 16)
    $key = "$($m.Groups['p'].Value)|$base"
    if (-not $runs.ContainsKey($key)) { $runs[$key] = [System.Collections.Generic.List[object]]::new() }
    $runs[$key].Add([pscustomobject]@{ address = $addr; size = [int]$r.size })
}

# --- load DB version dir: obj -> list of (lib, labels) ---
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
if ($db.Count -eq 0) { throw "No PsyQ objects loaded from $versionDir - cannot screen runs; refusing to report NO_DB_OBJECT for everything." }

$known = @('SYS','FORMAT','SSSTART','S_SCA','PRESET','PADENTRY','PADMAIN','PADCMD','BIOS','UT_REV','VSYNC')

$out = [System.Collections.Generic.List[object]]::new()
foreach ($key in ($runs.Keys | Sort-Object)) {
    $parts = $key.Split('|')
    $prefix = $parts[0]
    $base = [int64]$parts[1]
    $xs = @($runs[$key] | Sort-Object address)
    $end = [int64](($xs | ForEach-Object { $_.address + $_.size } | Measure-Object -Maximum).Maximum)
    $extent = $end - $base
    $addrs = @($xs | ForEach-Object { $_.address })
    $dbObj = "$prefix.OBJ"
    $verdicts = [System.Collections.Generic.List[object]]::new()
    if ($db.ContainsKey($dbObj)) {
        foreach ($entry in $db[$dbObj]) {
            $nLabels = @($entry.labels).Count
            if ($nLabels -eq 0) { continue }
            $maxOff = [int64](($entry.labels | ForEach-Object { $_.offset } | Measure-Object -Maximum).Maximum)
            $aligned = @($entry.labels | Where-Object { $addrs -contains ($base + $_.offset) }).Count
            if ($aligned -ge 1 -and ($maxOff + 1) -le $extent) { $v = "ALIGNED_COMPLETE" }
            elseif ($aligned -ge 1) { $v = "ALIGNED_TRUNCATED" }
            else { $v = "NAME_ONLY" }
            $verdicts.Add("$($entry.lib):$v(aligned=$aligned/$nLabels,max=0x$('{0:x}' -f $maxOff))")
        }
    }
    if ($verdicts.Count -eq 0) { $verdicts.Add("NO_DB_OBJECT") }
    $out.Add([pscustomobject]@{
        prefix = $prefix
        base = ("0x{0:x8}" -f $base)
        rows = $xs.Count
        extent = ("0x{0:x}" -f $extent)
        db_object = $dbObj
        status = if ($known -contains $prefix) { "already_handled" } else { "candidate" }
        verdict = ($verdicts -join '; ')
    })
}

$out | Sort-Object base | Format-Table -AutoSize | Out-String -Width 260 | Write-Output
