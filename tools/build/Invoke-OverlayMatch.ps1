[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$OverlayPath = "work/ddr5thmix-overlays/inst-demo.bin",

    [Parameter(Mandatory = $false)]
    [string]$ManifestPath = "config/ddr5thmix/inst-demo-overlay.json",

    [Parameter(Mandatory = $false)]
    [string]$ToolchainBin
)

Set-StrictMode -Off
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

# Toolchain version validation
$asVerOutput = & $as --version 2>&1 | Out-String
$ldVerOutput = & $ld --version 2>&1 | Out-String
$objcopyVerOutput = & $objcopy --version 2>&1 | Out-String

if ($asVerOutput -notmatch '2\.43') {
    throw "mipsel-none-elf-as version 2.43 required. Got: $asVerOutput"
}
if ($ldVerOutput -notmatch '2\.43') {
    throw "mipsel-none-elf-ld version 2.43 required. Got: $ldVerOutput"
}
if ($objcopyVerOutput -notmatch '2\.43') {
    throw "mipsel-none-elf-objcopy version 2.43 required. Got: $objcopyVerOutput"
}

if (-not (Test-Path -LiteralPath $OverlayPath)) {
    if (Test-Path -LiteralPath "work/ddr5thmix-extract/read_dt.bin") {
        Write-Host "Extracting overlay from work/ddr5thmix-extract/read_dt.bin..."
        $outputFullPath = [System.IO.Path]::GetFullPath($OverlayPath)
        New-Item -ItemType Directory -Force -Path (Split-Path -Parent $outputFullPath) | Out-Null
        $sourceStream = [System.IO.File]::OpenRead(
            (Resolve-Path -LiteralPath "work/ddr5thmix-extract/read_dt.bin").Path
        )
        try {
            $sourceStream.Position = 0x1630000
            $extractedBytes = [byte[]]::new(0x2e58)
            $totalRead = 0
            while ($totalRead -lt $extractedBytes.Length) {
                $read = $sourceStream.Read($extractedBytes, $totalRead, $extractedBytes.Length - $totalRead)
                if ($read -eq 0) {
                    throw "Short read after $totalRead of $($extractedBytes.Length) overlay bytes."
                }
                $totalRead += $read
            }
        }
        finally {
            $sourceStream.Dispose()
        }
        [System.IO.File]::WriteAllBytes($outputFullPath, $extractedBytes)
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
$dataAsmPath = "src/ddr5thmix/overlays/inst_demo/InstDemoOverlayData.s"
$dataObjPath = Join-Path $scratchDir "InstDemoOverlayData.o"

& $as -EL -march=r3000 -mtune=r3000 -o $objPath $asmPath
if ($LASTEXITCODE -ne 0) {
    throw "Assembler failed for $asmPath"
}

& $as -EL -march=r3000 -mtune=r3000 -o $dataObjPath $dataAsmPath
if ($LASTEXITCODE -ne 0) {
    throw "Assembler failed for $dataAsmPath"
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
$funcReports = [System.Collections.Generic.List[object]]::new()

foreach ($f in $manifest.functions) {
    $funcName = [string]$f.name
    $startAddr = [int64]"$($f.address)"
    $size = [int]$f.size
    $secName = [string]$f.section
    $refSha256 = [string]$f.reference_sha256

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
    $builtSha256 = [System.BitConverter]::ToString($hasher.ComputeHash($builtBytes)).Replace('-', '').ToLowerInvariant()
    $off = [int]($startAddr - $baseAddr)

    # Compute reference slice hash from overlay
    $refSlice = [byte[]]::new($size)
    [System.Buffer]::BlockCopy($overlayBytes, $off, $refSlice, 0, $size)
    $actualRefSha256 = [System.BitConverter]::ToString($hasher.ComputeHash($refSlice)).Replace('-', '').ToLowerInvariant()

    if ($refSha256 -and ($actualRefSha256 -ne $refSha256)) {
        throw "Manifest reference SHA256 mismatch for $funcName. Expected $refSha256; got $actualRefSha256"
    }

    $match = ($builtSha256 -eq $actualRefSha256)

    if (-not $match) {
        throw "Byte/hash mismatch for function $funcName at address $($f.address). Reference: $actualRefSha256; Built: $builtSha256"
    }

    $matchedCount++
    $totalBytes += $size

    $funcReports.Add([ordered]@{
        name             = $funcName
        address          = $f.address
        size             = $size
        reference_sha256 = $actualRefSha256
        built_sha256     = $builtSha256
        byte_match       = $match
    })
}

$dataBytes = 0
$matchedDataCount = 0
$dataReports = [System.Collections.Generic.List[object]]::new()

foreach ($d in $manifest.data_sections) {
    $dataName = [string]$d.name
    $startAddr = [int64]"$($d.address)"
    $size = [int]$d.size
    $secName = [string]$d.section
    $refSha256 = [string]$d.reference_sha256

    $ldScript = Join-Path $scratchDir "data-$dataName.ld"
    $linkedElf = Join-Path $scratchDir "data-$dataName.elf"
    $binPath = Join-Path $scratchDir "data-$dataName.bin"

    $ldLines = [System.Collections.Generic.List[string]]::new()
    $ldLines.Add("OUTPUT_ARCH(mips)")
    $ldLines.Add("SECTIONS")
    $ldLines.Add("{")
    $ldLines.Add("    . = $($d.address);")
    $ldLines.Add("    $secName : { KEEP(*($secName)) }")
    $ldLines.Add("    /DISCARD/ : { *(*) }")
    $ldLines.Add("}")
    foreach ($line in $symDefs) {
        $ldLines.Add($line)
    }
    $ldLines | Set-Content -LiteralPath $ldScript -Encoding ascii

    & $ld -EL -T $ldScript -o $linkedElf $dataObjPath
    if ($LASTEXITCODE -ne 0) {
        throw "Linker failed for data section $dataName"
    }
    & $objcopy -O binary $linkedElf $binPath
    if ($LASTEXITCODE -ne 0) {
        throw "Objcopy failed for data section $dataName"
    }

    $builtBytes = [System.IO.File]::ReadAllBytes($binPath)
    if ($builtBytes.Length -ne $size) {
        throw "Built data section $dataName has $($builtBytes.Length) bytes; expected $size."
    }
    $builtSha256 = [System.BitConverter]::ToString($hasher.ComputeHash($builtBytes)).Replace('-', '').ToLowerInvariant()
    $off = [int]($startAddr - $baseAddr)
    $refSlice = [byte[]]::new($size)
    [System.Buffer]::BlockCopy($overlayBytes, $off, $refSlice, 0, $size)
    $actualRefSha256 = [System.BitConverter]::ToString($hasher.ComputeHash($refSlice)).Replace('-', '').ToLowerInvariant()

    if ($actualRefSha256 -ne $refSha256) {
        throw "Manifest reference SHA256 mismatch for data section $dataName. Expected $refSha256; got $actualRefSha256"
    }
    if ($builtSha256 -ne $actualRefSha256) {
        throw "Byte/hash mismatch for data section $dataName at address $($d.address). Reference: $actualRefSha256; Built: $builtSha256"
    }

    $matchedDataCount++
    $dataBytes += $size
    $dataReports.Add([ordered]@{
        name             = $dataName
        address          = $d.address
        size             = $size
        reference_sha256 = $actualRefSha256
        built_sha256     = $builtSha256
        byte_match       = $true
    })
}

$report = [ordered]@{
    schema_version    = 2
    module            = "inst-demo-overlay"
    description       = "Complete 70-function executable surface of the inst-demo overlay."
    function_count    = $matchedCount
    expected_bytes    = $totalBytes
    executable_sha256 = $hash
    byte_match        = (($matchedCount -eq $manifest.functions.Count) -and ($matchedDataCount -eq $manifest.data_sections.Count))
    selected_byte_match  = (($matchedCount -eq $manifest.functions.Count) -and ($matchedDataCount -eq $manifest.data_sections.Count))
    selected_data_sections = $matchedDataCount
    selected_data_bytes    = $dataBytes
    selected_total_bytes   = ($totalBytes + $dataBytes)
    overlay_total_bytes    = [int]$manifest.overlay.length
    whole_overlay_match    = (($totalBytes + $dataBytes) -eq [int]$manifest.overlay.length)
    toolchain         = [ordered]@{
        as      = "GNU binutils 2.43"
        ld      = "GNU binutils 2.43"
        objcopy = "GNU binutils 2.43"
    }
    functions         = $funcReports
    data_sections     = $dataReports
}

$report | ConvertTo-Json -Depth 4
