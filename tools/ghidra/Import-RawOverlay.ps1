#Requires -Version 5.1
<#
Extracts a hash-gated byte range from a lawfully supplied local file, imports
it into Ghidra with BinaryLoader at its runtime address, and optionally dumps
known entry points. The extracted overlay and Ghidra project must remain in
git-ignored paths.
#>
param(
    [Parameter(Mandatory = $true)][string]$InputPath,
    [Parameter(Mandatory = $true)][string]$OutputPath,
    [Parameter(Mandatory = $true)][long]$Offset,
    [Parameter(Mandatory = $true)][int]$Length,
    [Parameter(Mandatory = $true)][ValidatePattern('^[0-9a-fA-F]{64}$')]
    [string]$ExpectedSha256,
    [Parameter(Mandatory = $true)][string]$BaseAddress,
    [Parameter(Mandatory = $true)][string]$ProjectDir,
    [Parameter(Mandatory = $true)][string]$ProjectName,
    [string[]]$EntryPoints = @(),
    [string]$BlockName = 'overlay',
    [string]$GhidraInstallDir = 'S:\repos\rie_ps1\tools\local\ghidra_12.1.2_PUBLIC',
    [string]$JavaHome = 'S:\repos\rie_ps1\tools\local\jdk25',
    [string]$ScriptPath = 'S:\repos\rie_ps1\tools\ghidra\scripts'
)

$ErrorActionPreference = 'Stop'

if ($Offset -lt 0 -or $Length -le 0) {
    throw 'Offset must be non-negative and Length must be positive.'
}

$source = Get-Item -LiteralPath $InputPath
if ($Offset + $Length -gt $source.Length) {
    throw "Requested range exceeds input length $($source.Length)."
}

$bytes = [byte[]]::new($Length)
$stream = [System.IO.File]::OpenRead($source.FullName)
try {
    $stream.Position = $Offset
    $total = 0
    while ($total -lt $Length) {
        $read = $stream.Read($bytes, $total, $Length - $total)
        if ($read -eq 0) {
            throw "Short read after $total of $Length bytes."
        }
        $total += $read
    }
}
finally {
    $stream.Dispose()
}

$sha256 = [System.Security.Cryptography.SHA256]::Create()
try {
    $actualSha256 = [BitConverter]::ToString($sha256.ComputeHash($bytes)).Replace('-', '').ToLowerInvariant()
}
finally {
    $sha256.Dispose()
}

if ($actualSha256 -ne $ExpectedSha256.ToLowerInvariant()) {
    throw "Overlay SHA-256 mismatch: expected $ExpectedSha256, got $actualSha256."
}

$outputFullPath = [System.IO.Path]::GetFullPath($OutputPath)
$outputDir = Split-Path -Parent $outputFullPath
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
[System.IO.File]::WriteAllBytes($outputFullPath, $bytes)

$env:JAVA_HOME = $JavaHome
$analyzeHeadless = Join-Path $GhidraInstallDir 'support\analyzeHeadless.bat'
$programName = Split-Path -Leaf $outputFullPath

$importArgs = @(
    $ProjectDir, $ProjectName,
    '-import', $outputFullPath,
    '-loader', 'BinaryLoader',
    '-loader-baseAddr', $BaseAddress,
    '-loader-blockName', $BlockName,
    '-processor', 'PSX:LE:32:default',
    '-cspec', 'default',
    '-overwrite'
)
'' | & $analyzeHeadless @importArgs
if ($LASTEXITCODE -ne 0) {
    throw "Overlay import exited with code $LASTEXITCODE."
}

if ($EntryPoints.Count -gt 0) {
    $normalizedEntryPoints = foreach ($entryPoint in $EntryPoints) {
        if ($entryPoint -match '^-?[0-9]+$') {
            $numericAddress = [long]::Parse($entryPoint)
            if ($numericAddress -lt 0) {
                $numericAddress += 0x100000000L
            }
            '0x{0:x8}' -f $numericAddress
        }
        else {
            $entryPoint
        }
    }
    $dumpArgs = @(
        $ProjectDir, $ProjectName,
        '-process', $programName,
        '-noanalysis',
        '-scriptPath', $ScriptPath,
        '-postScript', 'DumpFunctionDetail.java'
    ) + $normalizedEntryPoints
    '' | & $analyzeHeadless @dumpArgs
    if ($LASTEXITCODE -ne 0) {
        throw "Entry-point dump exited with code $LASTEXITCODE."
    }
}

[pscustomobject]@{
    Input = $source.FullName
    Offset = ('0x{0:x}' -f $Offset)
    Length = $Length
    Sha256 = $actualSha256
    Output = $outputFullPath
    BaseAddress = $BaseAddress
    ProgramName = $programName
}
