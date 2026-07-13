#Requires -Version 5.1
<#
Reads a raw Mode2/2352 ISO 9660 data track, resolves SYSTEM.CNF, extracts the
named boot executable, hashes it, and parses its PS-X EXE header. Prints a
single JSON object to stdout so results can be captured as reproducible
evidence for a revision manifest.
#>
param(
    [Parameter(Mandatory = $true)][string]$BinPath,
    [int]$SectorSize = 2352,
    [int]$SectorHeaderSize = 24,
    [int]$SectorDataSize = 2048,
    [string]$OutDir
)

$ErrorActionPreference = 'Stop'

function Read-Sector {
    param([System.IO.FileStream]$Stream, [uint32]$Lba)
    $offset = [int64]$Lba * $SectorSize + $SectorHeaderSize
    $Stream.Seek($offset, [System.IO.SeekOrigin]::Begin) | Out-Null
    $buf = New-Object byte[] $SectorDataSize
    $read = $Stream.Read($buf, 0, $SectorDataSize)
    if ($read -ne $SectorDataSize) { throw "Short read at LBA $Lba (got $read bytes)" }
    return $buf
}

function Read-Extent {
    param([System.IO.FileStream]$Stream, [uint32]$Lba, [uint32]$Size)
    $sectors = [Math]::Ceiling($Size / $SectorDataSize)
    $out = New-Object byte[] $Size
    $written = 0
    for ($i = 0; $i -lt $sectors; $i++) {
        $sec = Read-Sector -Stream $Stream -Lba ($Lba + $i)
        $take = [Math]::Min($SectorDataSize, $Size - $written)
        [Array]::Copy($sec, 0, $out, $written, $take)
        $written += $take
    }
    return $out
}

function ConvertFrom-DirectoryRecords {
    param([byte[]]$Data)
    $entries = @()
    $pos = 0
    while ($pos -lt $Data.Length) {
        $len = $Data[$pos]
        if ($len -eq 0) {
            # Zero-padding to the next sector boundary; skip to it.
            $nextSector = [Math]::Floor($pos / $SectorDataSize) * $SectorDataSize + $SectorDataSize
            if ($nextSector -le $pos) { break }
            $pos = $nextSector
            continue
        }
        $extentLba = [BitConverter]::ToUInt32($Data, $pos + 2)
        $dataLen = [BitConverter]::ToUInt32($Data, $pos + 10)
        $flags = $Data[$pos + 25]
        $nameLen = $Data[$pos + 32]
        $nameBytes = $Data[($pos + 33)..($pos + 32 + $nameLen)]
        $name = [System.Text.Encoding]::ASCII.GetString($nameBytes)
        $entries += [pscustomobject]@{
            Name      = $name
            ExtentLba = $extentLba
            Size      = $dataLen
            IsDir     = [bool]($flags -band 0x02)
        }
        $pos += $len
    }
    return $entries
}

$fs = [System.IO.File]::Open($BinPath, 'Open', 'Read', 'Read')
try {
    # Primary Volume Descriptor: logical sector 16, type 1, identifier "CD001".
    $pvd = Read-Sector -Stream $fs -Lba 16
    if ($pvd[0] -ne 1) { throw "Sector 16 is not a Primary Volume Descriptor (type=$($pvd[0]))" }
    $ident = [System.Text.Encoding]::ASCII.GetString($pvd, 1, 5)
    if ($ident -ne 'CD001') { throw "Sector 16 missing CD001 identifier (got '$ident')" }

    $rootRecord = $pvd[156..189]
    $rootLba = [BitConverter]::ToUInt32($rootRecord, 2)
    $rootSize = [BitConverter]::ToUInt32($rootRecord, 10)

    $rootDir = Read-Extent -Stream $fs -Lba $rootLba -Size $rootSize
    $rootEntries = ConvertFrom-DirectoryRecords -Data $rootDir

    $sysCnf = $rootEntries | Where-Object { $_.Name -like 'SYSTEM.CNF*' } | Select-Object -First 1
    if (-not $sysCnf) { throw 'SYSTEM.CNF not found in root directory' }

    $sysCnfBytes = Read-Extent -Stream $fs -Lba $sysCnf.ExtentLba -Size $sysCnf.Size
    $sysCnfText = [System.Text.Encoding]::ASCII.GetString($sysCnfBytes)

    $bootMatch = [regex]::Match($sysCnfText, 'BOOT\s*=\s*cdrom:\\?([^\r\n;]+)(;\d+)?')
    if (-not $bootMatch.Success) { throw "No BOOT= line found in SYSTEM.CNF" }
    $bootFileName = $bootMatch.Groups[1].Value.TrimStart('\')

    $bootEntry = $rootEntries | Where-Object { $_.Name -like "$bootFileName*" } | Select-Object -First 1
    if (-not $bootEntry) { throw "Boot executable '$bootFileName' not found in root directory" }

    $exeBytes = Read-Extent -Stream $fs -Lba $bootEntry.ExtentLba -Size $bootEntry.Size

    $sha256 = [System.Security.Cryptography.SHA256]::Create()
    $sha1 = [System.Security.Cryptography.SHA1]::Create()
    $exeSha256 = ([BitConverter]::ToString($sha256.ComputeHash($exeBytes))).Replace('-', '').ToLowerInvariant()
    $exeSha1 = ([BitConverter]::ToString($sha1.ComputeHash($exeBytes))).Replace('-', '').ToLowerInvariant()

    $magic = [System.Text.Encoding]::ASCII.GetString($exeBytes, 0, 8)
    $header = $null
    if ($magic -eq 'PS-X EXE') {
        $header = [ordered]@{
            pc0    = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x10)
            gp0    = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x14)
            t_addr = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x18)
            t_size = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x1C)
            d_addr = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x20)
            d_size = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x24)
            b_addr = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x28)
            b_size = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x2C)
            s_addr = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x30)
            s_size = '0x{0:X8}' -f [BitConverter]::ToUInt32($exeBytes, 0x34)
        }
    }

    $result = [ordered]@{
        binPath          = (Resolve-Path $BinPath).Path
        pvdIdentifier     = $ident
        systemCnf         = [ordered]@{
            extentLba = $sysCnf.ExtentLba
            size      = $sysCnf.Size
            text      = $sysCnfText.Trim()
        }
        bootExecutable    = [ordered]@{
            name      = $bootEntry.Name
            extentLba = $bootEntry.ExtentLba
            size      = $bootEntry.Size
            sha256    = $exeSha256
            sha1      = $exeSha1
            magic     = $magic
            header    = $header
        }
        rootDirectory     = $rootEntries | ForEach-Object {
            [ordered]@{ name = $_.Name; extentLba = $_.ExtentLba; size = $_.Size; isDir = $_.IsDir }
        }
    }

    if ($OutDir) {
        New-Item -ItemType Directory -Force -Path $OutDir | Out-Null
        $exePath = Join-Path $OutDir ($bootEntry.Name -replace '[\\/:*?"<>|;]', '_')
        [System.IO.File]::WriteAllBytes($exePath, $exeBytes)
        $result.extractedTo = $exePath
    }

    $result | ConvertTo-Json -Depth 6
}
finally {
    $fs.Dispose()
}
