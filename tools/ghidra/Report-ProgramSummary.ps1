#Requires -Version 5.1
<#
Runs ghidra_scripts/ReportProgramSummary.java against an already-imported and
analyzed program in a headless Ghidra project, printing image base, entry
point, language, PsyQ Version (if ghidra_psx_ldr's signature analyzer matched
one), memory block layout, and function/symbol counts.
#>
param(
    [Parameter(Mandatory = $true)][string]$ProjectDir,
    [Parameter(Mandatory = $true)][string]$ProjectName,
    [Parameter(Mandatory = $true)][string]$ProgramName,
    [string]$GhidraInstallDir = "S:\repos\rie_ps1\tools\local\ghidra_12.1.2_PUBLIC",
    [string]$JavaHome = "S:\repos\rie_ps1\tools\local\jdk25",
    [string]$ScriptPath = "S:\repos\rie_ps1\tools\ghidra\scripts"
)

$ErrorActionPreference = 'Stop'
$env:JAVA_HOME = $JavaHome

"" | & "$GhidraInstallDir\support\analyzeHeadless.bat" $ProjectDir $ProjectName `
    -process $ProgramName -noanalysis `
    -scriptPath $ScriptPath -postScript ReportProgramSummary.java

if ($LASTEXITCODE -ne 0) {
    throw "analyzeHeadless exited with code $LASTEXITCODE"
}
