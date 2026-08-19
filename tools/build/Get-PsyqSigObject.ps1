[CmdletBinding()]
param(
    # Root of ghidra_psx_ldr's per-version PsyQ signature databases (git-ignored
    # tool install; see /docs/tooling/ghidra-setup.md for the documented install).
    [string]$PsyqDataRoot,
    # SDK object filename to dump all labels for, e.g. "SYS.OBJ".
    [string]$Object,
    # Function label to locate across the database, e.g. "SsStart".
    [string]$Label,
    # Optional numeric SDK-version directory filter, e.g. "440" for PsyQ 4.4.0.
    [string]$Version
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($Object) -and [string]::IsNullOrWhiteSpace($Label)) {
    throw "Specify -Object <SDK object name> or -Label <function label> (or both)."
}
if ([string]::IsNullOrWhiteSpace($PsyqDataRoot)) {
    $repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
    $PsyqDataRoot = Join-Path $repoRoot 'tools\local\ghidra_12.1.2_PUBLIC\Ghidra\Extensions\ghidra_psx_ldr\data\psyq'
}
if (-not (Test-Path -LiteralPath $PsyqDataRoot)) {
    throw "PsyQ signature data root not found at $PsyqDataRoot. Install ghidra_psx_ldr per /docs/tooling/ghidra-setup.md."
}

$versionDirs = @(Get-ChildItem -LiteralPath $PsyqDataRoot -Directory | Where-Object { $_.Name -match '^\d+$' } | Sort-Object Name)
if ($Version) { $versionDirs = @($versionDirs | Where-Object { $_.Name -eq $Version }) }
if ($versionDirs.Count -eq 0) { throw "No SDK version directories found under $PsyqDataRoot." }

$out = [System.Collections.Generic.List[object]]::new()
foreach ($vdir in $versionDirs) {
    foreach ($libFile in @(Get-ChildItem -LiteralPath $vdir.FullName -Filter *.json)) {
        $entries = Get-Content -LiteralPath $libFile.FullName -Raw | ConvertFrom-Json
        foreach ($entry in $entries) {
            $objName = $entry.name
            if (-not $entry.PSObject.Properties['labels']) { continue }
            foreach ($lab in @($entry.labels)) {
                $matchObject = ($Object -and $objName -eq $Object)
                $matchLabel = ($Label -and $lab.name -eq $Label)
                if ($matchObject -or $matchLabel) {
                    $out.Add([pscustomobject]@{
                        version = $vdir.Name
                        lib = $libFile.Name
                        object = $objName
                        label = $lab.name
                        offset = ("0x{0:x}" -f [int64]$lab.offset)
                    })
                }
            }
        }
    }
}

if ($out.Count -eq 0) {
    Write-Output "NO MATCH (version=$Version object=$Object label=$Label)"
    exit 1
}
$out | Sort-Object version, lib, object, @{ Expression = { [Convert]::ToInt64(($_.offset -replace '^0x', ''), 16) } } | Format-Table -AutoSize | Out-String -Width 220 | Write-Output
