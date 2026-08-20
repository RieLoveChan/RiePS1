[CmdletBinding()]
param(
    [string]$ManifestPath = 'config/ddr5thmix/build.json',
    [string]$OutDir = 'build/ddr5thmix/main-candidate',
    [string]$SymbolMapCsv = 'docs/games/ddr5thmix/symbol-map.csv',
    [string]$ToolchainBin
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
$manifest = Get-Content -Raw -LiteralPath (Join-Path $repoRoot $ManifestPath) | ConvertFrom-Json
$outPath = Join-Path $repoRoot $OutDir
New-Item -ItemType Directory -Force -Path $outPath | Out-Null

function Resolve-Tool {
    param([Parameter(Mandatory = $true)][string]$Name)
    $dirs = [System.Collections.Generic.List[string]]::new()
    if ($ToolchainBin) { $dirs.Add((Resolve-Path -LiteralPath $ToolchainBin).Path) }
    if ($env:MIPS_TOOLCHAIN_BIN) { $dirs.Add((Resolve-Path -LiteralPath $env:MIPS_TOOLCHAIN_BIN).Path) }
    if ($env:APPDATA) { $dirs.Add((Join-Path $env:APPDATA 'mips\mips\bin')) }
    foreach ($dir in $dirs) {
        $candidate = Join-Path $dir ($Name + '.exe')
        if (Test-Path -LiteralPath $candidate -PathType Leaf) { return (Resolve-Path -LiteralPath $candidate).Path }
    }
    $command = Get-Command $Name -CommandType Application -ErrorAction SilentlyContinue
    if ($command) { return $command.Source }
    throw "Could not find $Name. Pass -ToolchainBin or set MIPS_TOOLCHAIN_BIN."
}

function ConvertFrom-HexAddress {
    param([Parameter(Mandatory = $true)][string]$Value)
    [Convert]::ToUInt64($Value.Trim().Replace('0x', ''), 16)
}

function Get-Sha256 {
    param([Parameter(Mandatory = $true)][byte[]]$Bytes)
    $sha256 = [Security.Cryptography.SHA256]::Create()
    try { [Convert]::ToHexString($sha256.ComputeHash($Bytes)).ToLowerInvariant() }
    finally { $sha256.Dispose() }
}

if (-not ($manifest.executable.PSObject.Properties.Name -contains 'psx_exe')) { throw 'Manifest lacks executable.psx_exe header fields.' }
$header = $manifest.executable.psx_exe
foreach ($field in @('entry_point', 'global_pointer', 'text_address', 'text_size', 'data_address', 'data_size', 'bss_address', 'bss_size', 'stack_address', 'stack_size')) {
    if (-not ($header.PSObject.Properties.Name -contains $field)) { throw "Missing executable.psx_exe.$field." }
}

$as = Resolve-Tool "$($manifest.toolchain.target)-as"
$gcc = Resolve-Tool "$($manifest.toolchain.target)-gcc"
$ld = Resolve-Tool "$($manifest.toolchain.target)-ld"
$objcopy = Resolve-Tool "$($manifest.toolchain.target)-objcopy"
$gccVersion = (& $gcc -dumpfullversion).Trim()
if ($gccVersion -ne [string]$manifest.toolchain.gcc_version) { throw "Expected GCC $($manifest.toolchain.gcc_version), got $gccVersion." }

[uint64]$loadAddress = ConvertFrom-HexAddress ([string]$manifest.executable.load_address)
[int]$headerSize = [int]$manifest.executable.header_size
[uint64]$textAddress = ConvertFrom-HexAddress ([string]$header.text_address)
[int]$textSize = [int](ConvertFrom-HexAddress ([string]$header.text_size))
if ($textAddress -ne $loadAddress -or $headerSize -ne 2048) { throw 'Manifest does not describe a standard single-text-segment PS-X EXE.' }

$objectsBySource = @{}
$groups = @($manifest.functions | Group-Object source)
foreach ($group in $groups) {
    $relative = [string]$group.Name
    $source = Join-Path $repoRoot $relative
    if (-not (Test-Path -LiteralPath $source -PathType Leaf)) { throw "Missing source: $relative" }
    $languages = @($group.Group | Select-Object -ExpandProperty language -Unique)
    if ($languages.Count -ne 1) { throw "Mixed languages in source: $relative" }
    $object = Join-Path $outPath (([IO.Path]::GetFileNameWithoutExtension($source)) + '.o')
    if ($languages[0] -eq 'asm') { & $as -EL -march=r3000 -mabi=32 -o $object $source }
    elseif ($languages[0] -eq 'c') { & $gcc @($group.Group[0].cflags | ForEach-Object { [string]$_ }) -c -o $object $source }
    else { throw "Unsupported language '$($languages[0])' in $relative" }
    if ($LASTEXITCODE -ne 0) { throw "Compilation failed: $relative" }
    $objectsBySource[$relative] = $object
}

# Individual objects retain MIPS relocations.  Link each translation unit at
# the manifest addresses before extracting its sections, using only address
# metadata already tracked by the project (never bytes from the reference EXE).
$resolvedSymbols = @{}
foreach ($entry in @($manifest.functions)) {
    $resolvedSymbols[[string]$entry.name] = [string]$entry.address
    if ($entry.PSObject.Properties.Name -contains 'symbols') {
        foreach ($symbol in $entry.symbols.PSObject.Properties) { $resolvedSymbols[$symbol.Name] = [string]$symbol.Value }
    }
}
$csvPath = Join-Path $repoRoot $SymbolMapCsv
foreach ($row in @(Import-Csv -LiteralPath $csvPath)) {
    if ($row.address -match '^0x8[0-9a-fA-F]{7}$' -and $row.proposed_name -match '^[A-Za-z_][A-Za-z0-9_]*$') {
        if (-not $resolvedSymbols.ContainsKey($row.proposed_name)) { $resolvedSymbols[$row.proposed_name] = $row.address }
    }
}
$payload = [byte[]]::new($textSize)
$written = [bool[]]::new($textSize)
$records = [System.Collections.Generic.List[object]]::new()
$ordered = @($manifest.functions | Sort-Object { ConvertFrom-HexAddress ([string]$_.address) })
foreach ($entry in $ordered) {
    [uint64]$address = ConvertFrom-HexAddress ([string]$entry.address)
    [int]$size = [int]$entry.size
    [int]$offset = [int]($address - $textAddress)
    if ($offset -lt 0 -or $offset + $size -gt $textSize) { throw "Function $($entry.name) lies outside the PS-X EXE text range." }
    for ($i = 0; $i -lt $size; $i++) { if ($written[$offset + $i]) { throw "Overlapping function byte at 0x$('{0:x8}' -f ($address + $i))." } }
    $sectionPath = Join-Path $outPath ($entry.name + '.bin')
    $extractPath = $objectsBySource[[string]$entry.source]
    if ($entry.PSObject.Properties.Name -contains 'symbols') {
        $functionScript = Join-Path $outPath ($entry.name + '.ld')
        $functionElf = Join-Path $outPath ($entry.name + '.elf')
        $functionLines = [System.Collections.Generic.List[string]]::new()
        $functionLines.Add('OUTPUT_ARCH(mips)')
        $functionLines.Add('SECTIONS')
        $functionLines.Add('{')
        $functionLines.Add("  . = $($entry.address);")
        $functionLines.Add("  $($entry.section) : { KEEP(*($($entry.section))) }")
        $functionLines.Add('  /DISCARD/ : { *(*) }')
        $functionLines.Add('}')
        $functionSymbols = @{}
        foreach ($name in $resolvedSymbols.Keys) { $functionSymbols[$name] = $resolvedSymbols[$name] }
        foreach ($symbol in $entry.symbols.PSObject.Properties) { $functionSymbols[$symbol.Name] = [string]$symbol.Value }
        foreach ($name in @($functionSymbols.Keys | Sort-Object)) { $functionLines.Add("$name = $($functionSymbols[$name]);") }
        [IO.File]::WriteAllLines($functionScript, $functionLines, [Text.Encoding]::ASCII)
        & $ld -EL -T $functionScript -e $entry.name -o $functionElf $extractPath
        if ($LASTEXITCODE -ne 0) { throw "Link failed for $($entry.name)." }
        $extractPath = $functionElf
    }
    & $objcopy -O binary "--only-section=$($entry.section)" $extractPath $sectionPath
    if ($LASTEXITCODE -ne 0) { throw "objcopy failed for $($entry.name)." }
    [byte[]]$bytes = [IO.File]::ReadAllBytes($sectionPath)
    if ($bytes.Length -ne $size) { throw "Section length mismatch for $($entry.name): expected $size, got $($bytes.Length)." }
    $builtHash = Get-Sha256 $bytes
    if ($builtHash -ne [string]$entry.built_sha256) { throw "Built hash mismatch for $($entry.name): expected $($entry.built_sha256), got $builtHash." }
    [Array]::Copy($bytes, 0, $payload, $offset, $size)
    for ($i = 0; $i -lt $size; $i++) { $written[$offset + $i] = $true }
    $records.Add([ordered]@{ name = [string]$entry.name; address = [string]$entry.address; size = $size; sha256 = $builtHash })
}

function Write-UInt32LE { param([byte[]]$Buffer, [int]$Offset, [uint64]$Value) [Array]::Copy([BitConverter]::GetBytes([uint32]$Value), 0, $Buffer, $Offset, 4) }
$psxHeader = [byte[]]::new($headerSize)
[Text.Encoding]::ASCII.GetBytes('PS-X EXE') | ForEach-Object -Begin { $i = 0 } -Process { $psxHeader[$i++] = $_ }
Write-UInt32LE $psxHeader 0x10 (ConvertFrom-HexAddress ([string]$header.entry_point))
Write-UInt32LE $psxHeader 0x14 (ConvertFrom-HexAddress ([string]$header.global_pointer))
Write-UInt32LE $psxHeader 0x18 $textAddress
Write-UInt32LE $psxHeader 0x1c $textSize
Write-UInt32LE $psxHeader 0x20 (ConvertFrom-HexAddress ([string]$header.data_address))
Write-UInt32LE $psxHeader 0x24 (ConvertFrom-HexAddress ([string]$header.data_size))
Write-UInt32LE $psxHeader 0x28 (ConvertFrom-HexAddress ([string]$header.bss_address))
Write-UInt32LE $psxHeader 0x2c (ConvertFrom-HexAddress ([string]$header.bss_size))
Write-UInt32LE $psxHeader 0x30 (ConvertFrom-HexAddress ([string]$header.stack_address))
Write-UInt32LE $psxHeader 0x34 (ConvertFrom-HexAddress ([string]$header.stack_size))

$candidatePath = Join-Path $outPath 'ddr5thmix-main-candidate.exe'
$stream = [IO.File]::Create($candidatePath)
try { $stream.Write($psxHeader, 0, $psxHeader.Length); $stream.Write($payload, 0, $payload.Length) }
finally { $stream.Dispose() }

$coveredBytes = @($written | Where-Object { $_ }).Count
$zeroFillBytes = 0
if ($manifest.executable.PSObject.Properties.Name -contains 'zero_fill_ranges') {
    foreach ($range in @($manifest.executable.zero_fill_ranges)) {
        [uint64]$rangeStart = ConvertFrom-HexAddress ([string]$range.start)
        [uint64]$rangeEnd = ConvertFrom-HexAddress ([string]$range.end)
        if ($rangeEnd -le $rangeStart -or $rangeStart -lt $textAddress -or $rangeEnd -gt $textAddress + [uint64]$textSize) {
            throw "Invalid zero-fill range '$($range.name)'."
        }
        [int]$rangeOffset = [int]($rangeStart - $textAddress)
        [int]$rangeSize = [int]($rangeEnd - $rangeStart)
        for ($i = 0; $i -lt $rangeSize; $i++) {
            if ($written[$rangeOffset + $i]) { throw "Zero-fill range '$($range.name)' overlaps a reconstructed section." }
            if ($payload[$rangeOffset + $i] -ne 0) { throw "Zero-fill range '$($range.name)' is not zero." }
        }
        $zeroFillBytes += $rangeSize
    }
}
$summary = [ordered]@{
    schema_version = 1
    kind = 'partial_psx_exe_candidate'
    target = [string]$manifest.target
    executable_sha256 = [string]$manifest.executable.sha256
    toolchain = [ordered]@{ target = [string]$manifest.toolchain.target; gcc = $gccVersion; binutils = [string]$manifest.toolchain.binutils_version }
    psx_exe_path = $candidatePath
    candidate_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $candidatePath).Hash.ToLowerInvariant()
    psx_header = $header
    function_count = $ordered.Count
    verified_function_bytes = $coveredBytes
    verified_zero_fill_bytes = $zeroFillBytes
    verified_text_bytes = $coveredBytes + $zeroFillBytes
    unresolved_text_bytes = $textSize - $coveredBytes - $zeroFillBytes
    zero_filled_unresolved_text = $true
    bootable = $false
    whole_executable_match = $false
    functions = @($records)
}
$summary | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath (Join-Path $outPath 'ddr5thmix-main-candidate.map.json') -Encoding utf8
[pscustomobject]$summary
