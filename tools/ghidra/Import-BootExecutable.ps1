#Requires -Version 5.1
<#
Imports and auto-analyzes a PS1 boot executable into a Ghidra headless project
using the ghidra_psx_ldr PSX loader. Wraps analyzeHeadless.bat with the two
non-obvious fixes this project needed:
  - The loader must be passed by its Java simple class name ("PsxLoader"),
    not its display name ("PSX Executables Loader") -- Ghidra's
    LoaderService.getLoaderClassByName() matches getClass().getSimpleName().
  - stdin must be fed something (even empty) because analyzeHeadless.bat's
    launch.bat detects PowerShell's `&`-invocation as if double-clicked
    (checks token 2 of %cmdcmdline% for "/c") and calls `pause` on any
    non-zero exit, which hangs forever with no stdin attached.
#>
param(
    [Parameter(Mandatory = $true)][string]$ExePath,
    [Parameter(Mandatory = $true)][string]$ProjectDir,
    [Parameter(Mandatory = $true)][string]$ProjectName,
    [string]$GhidraInstallDir = "S:\repos\rie_ps1\tools\local\ghidra_12.1.2_PUBLIC",
    [string]$JavaHome = "S:\repos\rie_ps1\tools\local\jdk25",
    [string]$LoaderClass = "PsxLoader"
)

$ErrorActionPreference = 'Stop'
$env:JAVA_HOME = $JavaHome

New-Item -ItemType Directory -Force -Path $ProjectDir | Out-Null

"" | & "$GhidraInstallDir\support\analyzeHeadless.bat" $ProjectDir $ProjectName `
    -import $ExePath -loader $LoaderClass -overwrite

if ($LASTEXITCODE -ne 0) {
    throw "analyzeHeadless exited with code $LASTEXITCODE"
}
