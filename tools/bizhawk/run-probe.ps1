[CmdletBinding()]
param(
    [Parameter()]
    [string] $EmuHawkPath = 'D:\_Emulators\_MULTI\BizHawk-2.11-win-x64\EmuHawk.exe',

    [Parameter()]
    [string] $GamePath,

    [Parameter()]
    [string] $ChdmanPath,

    [Parameter()]
    [ValidateRange(1, 36000)]
    [int] $Frames = 600,

    [Parameter()]
    [ValidateRange(5, 600)]
    [int] $ReportTimeoutSeconds = 120,

    [Parameter()]
    [string] $LuaPath,

    [Parameter()]
    [string] $MoviePath,

    [Parameter()]
    [string] $ConfigPath
)

$ErrorActionPreference = 'Stop'
$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path

if (-not $ChdmanPath) {
    $ChdmanPath = Join-Path $repoRoot 'tools\local\chdman\chdman.exe'
}

if (-not (Test-Path -LiteralPath $EmuHawkPath -PathType Leaf)) {
    throw "EmuHawk was not found at: $EmuHawkPath"
}

if (-not $GamePath) {
    $games = @(Get-ChildItem -LiteralPath (Join-Path $repoRoot 'input\chd') -Filter '*.chd' -File)
    if ($games.Count -ne 1) {
        throw "Pass -GamePath when input/chd does not contain exactly one CHD. Found $($games.Count)."
    }
    $GamePath = $games[0].FullName
}

$resolvedGame = (Resolve-Path -LiteralPath $GamePath).Path
$runId = Get-Date -Format 'yyyyMMdd-HHmmss'
$outputDir = Join-Path $repoRoot "runtime\bizhawk\runs\$runId"
New-Item -ItemType Directory -Path $outputDir -Force | Out-Null

$launchGame = $resolvedGame
if ([IO.Path]::GetExtension($resolvedGame) -ieq '.chd') {
    if (-not (Test-Path -LiteralPath $ChdmanPath -PathType Leaf)) {
        throw "chdman is required to create BizHawk-compatible CUE/BIN files: $ChdmanPath"
    }
    $discDir = Join-Path $outputDir 'disc'
    New-Item -ItemType Directory -Path $discDir -Force | Out-Null
    $cuePath = Join-Path $discDir 'game.cue'
    $binPath = Join-Path $discDir 'game.bin'
    & $ChdmanPath extractcd -i $resolvedGame -o $cuePath -ob $binPath
    if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $cuePath -PathType Leaf)) {
        throw "chdman failed to extract the CHD (exit code $LASTEXITCODE)."
    }
    $launchGame = $cuePath
}

$sourceConfigPath = if ($ConfigPath) {
    (Resolve-Path -LiteralPath $ConfigPath -ErrorAction Stop).Path
} else {
    Join-Path (Split-Path -Parent $EmuHawkPath) 'config.ini'
}
if (-not (Test-Path -LiteralPath $sourceConfigPath -PathType Leaf)) {
    throw "BizHawk config was not found beside EmuHawk: $sourceConfigPath"
}
$runConfigPath = Join-Path $outputDir 'bizhawk-config.ini'
$configText = [IO.File]::ReadAllText($sourceConfigPath)
$singleInstancePattern = [regex]::new('"SingleInstanceMode"\s*:\s*(true|false)')
if (-not $singleInstancePattern.IsMatch($configText)) {
    throw 'Expected SingleInstanceMode=true in the configured BizHawk profile.'
}
$runConfigText = $singleInstancePattern.Replace($configText, '"SingleInstanceMode": false', 1)
foreach ($setting in @('AutoLoadLastSaveSlot', 'AutoSaveLastSaveSlot')) {
    $pattern = [regex]::new('"' + $setting + '"\s*:\s*(true|false)')
    if (-not $pattern.IsMatch($runConfigText)) {
        throw "Expected $setting=true in the configured BizHawk profile."
    }
    $runConfigText = $pattern.Replace($runConfigText, '"' + $setting + '": false', 1)
}
[IO.File]::WriteAllText($runConfigPath, $runConfigText, [Text.UTF8Encoding]::new($false))

if (-not $LuaPath) {
    $LuaPath = Join-Path $repoRoot 'tools\bizhawk\probe.lua'
}
if (-not (Test-Path -LiteralPath $LuaPath -PathType Leaf)) {
    throw "Lua probe script was not found at: $LuaPath"
}
$luaPath = (Resolve-Path -LiteralPath $LuaPath).Path
$moviePath = $null
if ($MoviePath) {
    if (-not (Test-Path -LiteralPath $MoviePath -PathType Leaf)) {
        throw "Movie file was not found at: $MoviePath"
    }
    $moviePath = (Resolve-Path -LiteralPath $MoviePath).Path
}
$wrapperPath = Join-Path $outputDir 'run-probe.lua'
$escapeLua = { param([string] $Value) $Value.Replace('\', '\\').Replace('"', '\"') }
$wrapper = @(
    'RIE_BIZHAWK_OUTPUT = "' + (& $escapeLua $outputDir) + '"'
    'RIE_BIZHAWK_FRAMES = ' + $Frames.ToString([Globalization.CultureInfo]::InvariantCulture)
    'dofile("' + (& $escapeLua $luaPath) + '")'
) -join "`n"
[IO.File]::WriteAllText($wrapperPath, $wrapper + "`n", [Text.UTF8Encoding]::new($false))

$arguments = @("--config=$runConfigPath", "--lua=$wrapperPath")
if ($moviePath) {
    $arguments += "--movie=$moviePath"
}
$arguments += $launchGame
& $EmuHawkPath @arguments
if ($LASTEXITCODE -ne 0) {
    throw "EmuHawk exited with code $LASTEXITCODE."
}

$reportPath = Join-Path $outputDir 'report.json'
$deadline = [DateTime]::UtcNow.AddSeconds($ReportTimeoutSeconds)
$report = $null
do {
    if (Test-Path -LiteralPath $reportPath -PathType Leaf) {
        try {
            $report = Get-Content -Raw -LiteralPath $reportPath | ConvertFrom-Json -ErrorAction Stop
        } catch {
            $report = $null
        }
    }
    if ($null -eq $report) {
        Start-Sleep -Milliseconds 200
    }
} while ($null -eq $report -and [DateTime]::UtcNow -lt $deadline)

if ($null -eq $report) {
    $stagePath = Join-Path $outputDir 'probe-stage.log'
    $stage = if (Test-Path -LiteralPath $stagePath) { Get-Content -Raw -LiteralPath $stagePath } else { 'Lua did not start.' }
    throw "BizHawk did not create a complete report within $ReportTimeoutSeconds seconds. Stage: $stage"
}
if ($report.requested_frames -ne $Frames) {
    throw "BizHawk report requested_frames=$($report.requested_frames), expected $Frames."
}

Write-Output $reportPath
