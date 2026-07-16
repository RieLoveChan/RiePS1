[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Leaf })]
    [string]$ExePath,

    [string]$Function = 'FUN_8007eea8',

    [string]$ToolchainBin,

    [string]$OutDir
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
$manifestPath = Join-Path $repoRoot 'config\ddr5thmix\build.json'
$manifest = Get-Content -Raw -LiteralPath $manifestPath | ConvertFrom-Json

if (-not $OutDir) {
    $OutDir = Join-Path $repoRoot 'build\ddr5thmix'
}

function ConvertFrom-HexAddress {
    param([Parameter(Mandatory = $true)][string]$Value)

    if ($Value -notmatch '^0x[0-9a-fA-F]+$') {
        throw "Invalid hexadecimal address: $Value"
    }

    return [Convert]::ToUInt64($Value.Substring(2), 16)
}

function Resolve-CrossTool {
    param([Parameter(Mandatory = $true)][string]$Name)

    $executable = "$Name.exe"
    $candidateDirs = [System.Collections.Generic.List[string]]::new()

    if ($ToolchainBin) {
        $candidateDirs.Add($ToolchainBin)
    }
    if ($env:MIPS_TOOLCHAIN_BIN) {
        $candidateDirs.Add($env:MIPS_TOOLCHAIN_BIN)
    }
    if ($env:APPDATA) {
        $candidateDirs.Add((Join-Path $env:APPDATA 'mips\mips\bin'))
    }

    foreach ($candidateDir in $candidateDirs) {
        $candidate = Join-Path $candidateDir $executable
        if (Test-Path -LiteralPath $candidate -PathType Leaf) {
            return (Resolve-Path -LiteralPath $candidate).Path
        }
    }

    $command = Get-Command $Name -CommandType Application -ErrorAction SilentlyContinue
    if ($command) {
        return $command.Source
    }

    throw "Could not find $Name. Pass -ToolchainBin or set MIPS_TOOLCHAIN_BIN."
}

function Get-ByteHash {
    param([Parameter(Mandatory = $true)][byte[]]$Bytes)

    $sha256 = [System.Security.Cryptography.SHA256]::Create()
    try {
        return [Convert]::ToHexString($sha256.ComputeHash($Bytes)).ToLowerInvariant()
    }
    finally {
        $sha256.Dispose()
    }
}

$entries = @($manifest.functions | Where-Object { $_.name -eq $Function })
if ($entries.Count -ne 1) {
    throw "Expected exactly one manifest entry for '$Function'; found $($entries.Count)."
}
$entry = $entries[0]

$actualExeHash = (Get-FileHash -Algorithm SHA256 -LiteralPath $ExePath).Hash.ToLowerInvariant()
$expectedExeHash = $manifest.executable.sha256.ToLowerInvariant()
if ($actualExeHash -ne $expectedExeHash) {
    throw "Executable SHA-256 mismatch. Expected $expectedExeHash; got $actualExeHash."
}

$assembler = Resolve-CrossTool "$($manifest.toolchain.target)-as"
$compiler = Resolve-CrossTool "$($manifest.toolchain.target)-gcc"
$objcopy = Resolve-CrossTool "$($manifest.toolchain.target)-objcopy"
$objdump = Resolve-CrossTool "$($manifest.toolchain.target)-objdump"

$LASTEXITCODE = 0
$compilerVersion = (& $compiler -dumpfullversion).Trim()
if ($LASTEXITCODE -ne 0 -or $compilerVersion -ne $manifest.toolchain.gcc_version) {
    throw "Compiler version mismatch. Expected GCC $($manifest.toolchain.gcc_version); got '$compilerVersion'."
}

$LASTEXITCODE = 0
$assemblerVersion = (& $assembler --version | Select-Object -First 1)
if ($LASTEXITCODE -ne 0 -or $assemblerVersion -notmatch [regex]::Escape($manifest.toolchain.binutils_version)) {
    throw "Assembler version mismatch. Expected binutils $($manifest.toolchain.binutils_version); got '$assemblerVersion'."
}

$sourcePath = Join-Path $repoRoot $entry.source
if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
    throw "Function source is missing: $sourcePath"
}

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
$objectPath = Join-Path $OutDir "$Function.o"
$binaryPath = Join-Path $OutDir "$Function.bin"
$referencePath = Join-Path $OutDir "$Function.reference.bin"
$disassemblyPath = Join-Path $OutDir "$Function.objdump.txt"
$reportPath = Join-Path $OutDir "$Function.match.json"

& $assembler -EL -march=r3000 -mabi=32 -o $objectPath $sourcePath
if ($LASTEXITCODE -ne 0) {
    throw "Assembler failed with exit code $LASTEXITCODE."
}

& $objcopy -O binary "--only-section=$($entry.section)" $objectPath $binaryPath
if ($LASTEXITCODE -ne 0) {
    throw "objcopy failed with exit code $LASTEXITCODE."
}

$disassembly = & $objdump -dr -m mips:3000 $objectPath
if ($LASTEXITCODE -ne 0) {
    throw "objdump failed with exit code $LASTEXITCODE."
}
$disassembly | Set-Content -LiteralPath $disassemblyPath -Encoding utf8

$functionAddress = ConvertFrom-HexAddress $entry.address
$loadAddress = ConvertFrom-HexAddress $manifest.executable.load_address
$fileOffset = [uint64]$manifest.executable.header_size + $functionAddress - $loadAddress
$functionSize = [int]$entry.size
$referenceBytes = [byte[]]::new($functionSize)
$stream = [System.IO.File]::OpenRead((Resolve-Path -LiteralPath $ExePath).Path)
try {
    if ($fileOffset + [uint64]$functionSize -gt [uint64]$stream.Length) {
        throw "Reference range exceeds executable length."
    }
    $stream.Position = [int64]$fileOffset
    $bytesRead = $stream.Read($referenceBytes, 0, $functionSize)
    if ($bytesRead -ne $functionSize) {
        throw "Read $bytesRead reference bytes; expected $functionSize."
    }
}
finally {
    $stream.Dispose()
}
[System.IO.File]::WriteAllBytes($referencePath, $referenceBytes)

$builtBytes = [System.IO.File]::ReadAllBytes($binaryPath)
$matches = $builtBytes.Length -eq $referenceBytes.Length
if ($matches) {
    for ($index = 0; $index -lt $referenceBytes.Length; $index++) {
        if ($builtBytes[$index] -ne $referenceBytes[$index]) {
            $matches = $false
            break
        }
    }
}

$report = [ordered]@{
    schema_version = 1
    function = $Function
    address = $entry.address
    executable_sha256 = $actualExeHash
    executable_file_offset = ('0x{0:x}' -f $fileOffset)
    source = $entry.source
    compiler = "GCC $compilerVersion"
    assembler = $assemblerVersion
    expected_size = $functionSize
    built_size = $builtBytes.Length
    reference_sha256 = Get-ByteHash $referenceBytes
    built_sha256 = Get-ByteHash $builtBytes
    byte_match = $matches
}
$report | ConvertTo-Json | Set-Content -LiteralPath $reportPath -Encoding utf8

if (-not $matches) {
    $expectedHex = [Convert]::ToHexString($referenceBytes).ToLowerInvariant()
    $builtHex = [Convert]::ToHexString($builtBytes).ToLowerInvariant()
    throw "Byte mismatch for $Function. Expected $expectedHex; got $builtHex. Report: $reportPath"
}

[pscustomobject]$report
