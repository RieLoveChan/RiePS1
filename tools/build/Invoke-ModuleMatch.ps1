[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Leaf })]
    [string]$ExePath,

    [string]$Module = 'mode-control',

    [string]$ToolchainBin,

    [string]$OutDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
$manifestPath = Join-Path $repoRoot 'config\ddr5thmix\build.json'
$manifest = Get-Content -Raw -LiteralPath $manifestPath | ConvertFrom-Json
$modules = @($manifest.modules | Where-Object { $_.name -eq $Module })
if ($modules.Count -ne 1) {
    throw "Expected exactly one module named '$Module'; found $($modules.Count)."
}

$moduleEntry = $modules[0]
$functionNames = @($moduleEntry.functions | ForEach-Object { [string]$_ })
if ($functionNames.Count -eq 0) {
    throw "Module '$Module' contains no functions."
}

$duplicates = @($functionNames | Group-Object | Where-Object { $_.Count -ne 1 })
if ($duplicates.Count -ne 0) {
    throw "Module '$Module' contains duplicate function names: $($duplicates.Name -join ', ')."
}

foreach ($functionName in $functionNames) {
    $matches = @($manifest.functions | Where-Object { $_.name -eq $functionName })
    if ($matches.Count -ne 1) {
        throw "Module '$Module' references '$functionName', which has $($matches.Count) manifest entries."
    }
}

if (-not $OutDir) {
    $OutDir = Join-Path $repoRoot "build\ddr5thmix\modules\$Module"
}
New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

$functionScript = Join-Path $PSScriptRoot 'Invoke-FunctionMatch.ps1'
$reports = [System.Collections.Generic.List[object]]::new()
foreach ($functionName in $functionNames) {
    $arguments = @{
        ExePath = $ExePath
        Function = $functionName
        OutDir = $OutDir
    }
    if ($ToolchainBin) {
        $arguments.ToolchainBin = $ToolchainBin
    }
    $reports.Add((& $functionScript @arguments))
}

$expectedBytes = 0
foreach ($functionName in $functionNames) {
    $entry = @($manifest.functions | Where-Object { $_.name -eq $functionName })[0]
    $expectedBytes += [int]$entry.size
}

$summary = [ordered]@{
    schema_version = 1
    module = $Module
    description = [string]$moduleEntry.description
    function_count = $functionNames.Count
    expected_bytes = $expectedBytes
    executable_sha256 = [string]$manifest.executable.sha256
    byte_match = (@($reports | Where-Object { -not $_.byte_match }).Count -eq 0)
    functions = @($reports | ForEach-Object {
        [ordered]@{
            name = $_.function
            address = $_.address
            size = $_.expected_size
            reference_sha256 = $_.reference_sha256
            built_sha256 = $_.built_sha256
            byte_match = $_.byte_match
        }
    })
}

$summaryPath = Join-Path $OutDir "$Module.match.json"
$summary | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $summaryPath -Encoding utf8
[pscustomobject]$summary
