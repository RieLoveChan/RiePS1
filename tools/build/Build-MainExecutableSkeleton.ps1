[CmdletBinding()]
param(
    [string]$ManifestPath = 'config/ddr5thmix/build.json',
    [string]$OutDir = 'build/ddr5thmix/main-skeleton',
    [string]$ToolchainBin
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
$manifestFile = (Resolve-Path -LiteralPath (Join-Path $repoRoot $ManifestPath)).Path
$manifest = Get-Content -Raw -LiteralPath $manifestFile | ConvertFrom-Json
$outPath = Join-Path $repoRoot $OutDir
New-Item -ItemType Directory -Force -Path $outPath | Out-Null

function Resolve-Tool {
    param([Parameter(Mandatory = $true)][string]$Name)
    $candidateDirs = [System.Collections.Generic.List[string]]::new()
    if ($ToolchainBin) { $candidateDirs.Add((Resolve-Path -LiteralPath $ToolchainBin).Path) }
    if ($env:MIPS_TOOLCHAIN_BIN) { $candidateDirs.Add((Resolve-Path -LiteralPath $env:MIPS_TOOLCHAIN_BIN).Path) }
    if ($env:APPDATA) { $candidateDirs.Add((Join-Path $env:APPDATA 'mips\mips\bin')) }
    foreach ($dir in $candidateDirs) {
        $candidate = Join-Path $dir ($Name + '.exe')
        if (Test-Path -LiteralPath $candidate -PathType Leaf) { return (Resolve-Path -LiteralPath $candidate).Path }
    }
    $command = Get-Command $Name -CommandType Application -ErrorAction SilentlyContinue
    if ($command) { return $command.Source }
    throw "Could not find $Name. Pass -ToolchainBin or set MIPS_TOOLCHAIN_BIN."
}

$as = Resolve-Tool "$($manifest.toolchain.target)-as"
$gcc = Resolve-Tool "$($manifest.toolchain.target)-gcc"
$ld = Resolve-Tool "$($manifest.toolchain.target)-ld"
$objcopy = Resolve-Tool "$($manifest.toolchain.target)-objcopy"
$gccVersion = (& $gcc -dumpfullversion).Trim()
if ($gccVersion -ne [string]$manifest.toolchain.gcc_version) { throw "Expected GCC $($manifest.toolchain.gcc_version), got $gccVersion." }
$asVersion = (& $as --version | Select-Object -First 1)
if ($asVersion -notmatch [regex]::Escape([string]$manifest.toolchain.binutils_version)) { throw "Assembler version is not binutils $($manifest.toolchain.binutils_version)." }

$groups = @($manifest.functions | Group-Object source)
$objects = [System.Collections.Generic.List[string]]::new()
$sourceRows = [System.Collections.Generic.List[object]]::new()
foreach ($group in $groups) {
    $relative = [string]$group.Name
    $source = Join-Path $repoRoot $relative
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) { throw "Missing source: $relative" }
    $languages = @($group.Group | Select-Object -ExpandProperty language -Unique)
    if ($languages.Count -ne 1) { throw "Mixed languages in source: $relative" }
    $stem = [IO.Path]::GetFileNameWithoutExtension($source)
    $object = Join-Path $outPath ($stem + '.o')
    if ($languages[0] -eq 'asm') {
        & $as -EL -march=r3000 -mabi=32 -o $object $source
    } elseif ($languages[0] -eq 'c') {
        $flags = @($group.Group[0].cflags | ForEach-Object { [string]$_ })
        & $gcc @flags -c -o $object $source
    } else {
        throw "Unsupported language '$($languages[0])' in $relative"
    }
    if ($LASTEXITCODE -ne 0) { throw "Compilation failed: $relative" }
    $objects.Add($object)
    $sourceRows.Add([pscustomobject]@{ source = $relative; language = $languages[0]; functions = $group.Count; object = $object })
}

$ordered = @($manifest.functions | Sort-Object { [Convert]::ToUInt64(([string]$_.address).Substring(2), 16) })
$sections = @($ordered | ForEach-Object { [string]$_.section })
if (@($sections | Group-Object | Where-Object Count -gt 1).Count -ne 0) { throw 'Duplicate manifest sections.' }
$ldScript = Join-Path $outPath 'main-skeleton.ld'
$lines = [System.Collections.Generic.List[string]]::new()
$lines.Add('OUTPUT_ARCH(mips)')
$lines.Add('SECTIONS')
$lines.Add('{')
foreach ($entry in $ordered) {
    $lines.Add("  . = $($entry.address);")
    $lines.Add("  $($entry.section) : { KEEP(*($($entry.section))) }")
}
$lines.Add('}')
[IO.File]::WriteAllLines($ldScript, $lines, [Text.Encoding]::ASCII)

$elf = Join-Path $outPath 'ddr5thmix-main-skeleton.elf'
& $ld -EL -r -T $ldScript -o $elf $objects
if ($LASTEXITCODE -ne 0) { throw 'Relocatable link failed.' }

$map = Join-Path $outPath 'ddr5thmix-main-skeleton.map.json'
$summary = [ordered]@{
    schema_version = 1
    kind = 'relocatable_main_executable_skeleton'
    target = [string]$manifest.target
    executable_sha256 = [string]$manifest.executable.sha256
    toolchain = [ordered]@{ target = [string]$manifest.toolchain.target; gcc = $gccVersion; binutils = [string]$manifest.toolchain.binutils_version }
    function_count = $ordered.Count
    selected_bytes = [int](($ordered | Measure-Object -Property size -Sum).Sum)
    source_count = $sourceRows.Count
    object_count = $objects.Count
    elf_path = $elf
    linker_script = $ldScript
    psx_exe = $false
    unresolved_data_and_runtime = $true
    sources = @($sourceRows)
}
$summary | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $map -Encoding utf8
[pscustomobject]$summary