[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$OverlayPath = "work/ddr5thmix-overlays/inst-demo.bin",

    [Parameter(Mandatory = $false)]
    [string]$ManifestPath = "config/ddr5thmix/inst-demo-overlay.json",

    [Parameter(Mandatory = $false)]
    [string]$ToolchainBin
)

$ErrorActionPreference = 'Stop'

function Get-ToolchainExecutable {
    param([Parameter(Mandatory = $true)][string]$Name)

    $executable = if ($IsWindows -or ($env:OS -like '*Windows*')) { "$Name.exe" } else { $Name }
    $candidateDirs = [System.Collections.Generic.List[string]]::new()

    if ($ToolchainBin) {
        $candidateDirs.Add((Resolve-Path -LiteralPath $ToolchainBin).Path)
    }
    if ($env:MIPS_TOOLCHAIN_BIN) {
        $candidateDirs.Add((Resolve-Path -LiteralPath $env:MIPS_TOOLCHAIN_BIN).Path)
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

$as = Get-ToolchainExecutable -Name 'mipsel-none-elf-as'
$ld = Get-ToolchainExecutable -Name 'mipsel-none-elf-ld'
$objcopy = Get-ToolchainExecutable -Name 'mipsel-none-elf-objcopy'

if (-not (Test-Path -LiteralPath $OverlayPath)) {
    if (Test-Path -LiteralPath "work/ddr5thmix-extract/read_dt.bin") {
        Write-Host "Extracting overlay from work/ddr5thmix-extract/read_dt.bin..."
        pwsh -File tools/ghidra/Import-RawOverlay.ps1 `
            -InputPath work/ddr5thmix-extract/read_dt.bin `
            -OutputPath work/ddr5thmix-overlays/inst-demo.bin `
            -Offset 0x1630000 -Length 0x2e58 `
            -ExpectedSha256 3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb `
            -BaseAddress 0x801e4000
    } else {
        throw "Overlay binary not found at $OverlayPath and read_dt.bin not present."
    }
}

$overlayBytes = [System.IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $OverlayPath).Path)
$hasher = [System.Security.Cryptography.SHA256]::Create()
$hash = [System.BitConverter]::ToString($hasher.ComputeHash($overlayBytes)).Replace('-', '').ToLowerInvariant()

$expectedSha256 = "3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb"
if ($hash -ne $expectedSha256) {
    throw "Overlay SHA256 mismatch. Expected $expectedSha256; got $hash"
}

$manifest = Get-Content -LiteralPath $ManifestPath -Raw | ConvertFrom-Json
$baseAddr = [int64]"0x801e4000"

$scratchDir = "build/ddr5thmix/overlays/inst-demo"
if (-not (Test-Path -LiteralPath $scratchDir)) {
    New-Item -ItemType Directory -Path $scratchDir -Force | Out-Null
}

$asmPath = "src/ddr5thmix/overlays/inst_demo/InstDemoOverlay.s"
$objPath = Join-Path $scratchDir "InstDemoOverlay.o"

& $as -EL -march=r3000 -mtune=r3000 -o $objPath $asmPath
if ($LASTEXITCODE -ne 0) {
    throw "Assembler failed for $asmPath"
}

# Build symbol definitions
$symDefs = [System.Collections.Generic.List[string]]::new()
foreach ($f in $manifest.functions) {
    $symDefs.Add("$($f.name) = $($f.address);")
    if ($null -ne $f.symbols) {
        foreach ($prop in $f.symbols.PSObject.Properties) {
            $symDefs.Add("$($prop.Name) = $($prop.Value);")
        }
    }
}

$totalBytes = 0
$matchedCount = 0

foreach ($f in $manifest.functions) {
    $funcName = [string]$f.name
    $startAddr = [int64]"$($f.address)"
    $size = [int]$f.size
    $secName = [string]$f.section
    
    $ldScript = Join-Path $scratchDir "$funcName.ld"
    $linkedElf = Join-Path $scratchDir "$funcName.elf"
    $binPath = Join-Path $scratchDir "$funcName.bin"
    
    $ldLines = [System.Collections.Generic.List[string]]::new()
    $ldLines.Add("OUTPUT_ARCH(mips)")
    $ldLines.Add("SECTIONS")
    $ldLines.Add("{")
    $ldLines.Add("    . = $($f.address);")
    $ldLines.Add("    $secName : { KEEP(*($secName)) }")
    $ldLines.Add("    /DISCARD/ : { *(*) }")
    $ldLines.Add("}")
    foreach ($line in $symDefs) {
        $ldLines.Add($line)
    }
    
    $ldLines | Set-Content -LiteralPath $ldScript -Encoding ascii
    
    & $ld -EL -T $ldScript -e $funcName -o $linkedElf $objPath
    if ($LASTEXITCODE -ne 0) {
        throw "Linker failed for $funcName"
    }
    
    & $objcopy -O binary $linkedElf $binPath
    if ($LASTEXITCODE -ne 0) {
        throw "Objcopy failed for $funcName"
    }
    
    $builtBytes = [System.IO.File]::ReadAllBytes($binPath)
    $off = [int]($startAddr - $baseAddr)
    
    $match = $true
    if ($builtBytes.Length -ne $size) {
        $match = $false
    } else {
        for ($i = 0; $i -lt $size; $i++) {
            if ($builtBytes[$i] -ne $overlayBytes[$off + $i]) {
                $match = $false
                break
            }
        }
    }
    
    if (-not $match) {
        throw "Byte mismatch for function $funcName at address $($f.address)"
    }
    
    $matchedCount++
    $totalBytes += $size
}

$report = [ordered]@{
    schema_version    = 1
    module            = "inst-demo-overlay"
    description       = "Complete 70-function executable surface of the inst-demo overlay."
    function_count    = $matchedCount
    expected_bytes    = $totalBytes
    executable_sha256 = $hash
    byte_match        = $true
}

$report | ConvertTo-Json -Depth 4
