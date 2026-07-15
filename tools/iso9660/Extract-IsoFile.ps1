#Requires -Version 5.1
<#
Extracts one file by ISO 9660 path from a raw Mode2/2352 data track and emits
its extent, size, and hashes as JSON. This is intended for lawful local inputs;
write proprietary output only beneath an ignored workspace such as work/.
#>
param(
    [Parameter(Mandatory = $true)][string]$BinPath,
    [Parameter(Mandatory = $true)][string]$IsoPath,
    [string]$OutFile,
    [int]$SectorSize = 2352,
    [int]$SectorHeaderSize = 24,
    [int]$SectorDataSize = 2048
)

$ErrorActionPreference = 'Stop'

function Read-Sector {
    param([System.IO.FileStream]$Stream, [uint32]$Lba)
    $offset = [int64]$Lba * $SectorSize + $SectorHeaderSize
    $Stream.Seek($offset, [System.IO.SeekOrigin]::Begin) | Out-Null
    $buffer = New-Object byte[] $SectorDataSize
    $read = $Stream.Read($buffer, 0, $SectorDataSize)
    if ($read -ne $SectorDataSize) {
        throw "Short read at LBA $Lba (got $read bytes)"
    }
    return $buffer
}

function Read-Extent {
    param([System.IO.FileStream]$Stream, [uint32]$Lba, [uint32]$Size)
    $sectorCount = [Math]::Ceiling($Size / $SectorDataSize)
    $output = New-Object byte[] $Size
    $written = 0
    for ($i = 0; $i -lt $sectorCount; $i++) {
        $sector = Read-Sector -Stream $Stream -Lba ($Lba + $i)
        $take = [Math]::Min($SectorDataSize, $Size - $written)
        [Array]::Copy($sector, 0, $output, $written, $take)
        $written += $take
    }
    return $output
}

function ConvertFrom-DirectoryRecords {
    param([byte[]]$Data)
    $entries = @()
    $position = 0
    while ($position -lt $Data.Length) {
        $recordLength = $Data[$position]
        if ($recordLength -eq 0) {
            $position = ([Math]::Floor($position / $SectorDataSize) + 1) * $SectorDataSize
            continue
        }
        if (($position + $recordLength) -gt $Data.Length) {
            throw "Directory record at byte $position exceeds directory extent"
        }

        $nameLength = $Data[$position + 32]
        $nameBytes = $Data[($position + 33)..($position + 32 + $nameLength)]
        if ($nameLength -eq 1 -and $nameBytes[0] -eq 0) {
            $name = '.'
        }
        elseif ($nameLength -eq 1 -and $nameBytes[0] -eq 1) {
            $name = '..'
        }
        else {
            $name = [System.Text.Encoding]::ASCII.GetString($nameBytes)
        }

        $entries += [pscustomobject]@{
            Name      = $name
            ExtentLba = [BitConverter]::ToUInt32($Data, $position + 2)
            Size      = [BitConverter]::ToUInt32($Data, $position + 10)
            IsDir     = [bool]($Data[$position + 25] -band 0x02)
        }
        $position += $recordLength
    }
    return $entries
}

function Test-IsoNameMatch {
    param([string]$RecordName, [string]$RequestedName)
    $nameWithoutVersion = $RecordName -replace ';[0-9]+$', ''
    return $nameWithoutVersion.Equals($RequestedName, [System.StringComparison]::OrdinalIgnoreCase)
}

$resolvedBinPath = (Resolve-Path -LiteralPath $BinPath).Path
$segments = @($IsoPath -replace '\\', '/' -split '/' | Where-Object { $_ -and $_ -ne '.' })
if ($segments.Count -eq 0) {
    throw 'IsoPath must identify a file'
}

$stream = [System.IO.File]::Open($resolvedBinPath, 'Open', 'Read', 'Read')
try {
    $pvd = Read-Sector -Stream $stream -Lba 16
    $identifier = [System.Text.Encoding]::ASCII.GetString($pvd, 1, 5)
    if ($pvd[0] -ne 1 -or $identifier -ne 'CD001') {
        throw "Sector 16 is not an ISO 9660 Primary Volume Descriptor"
    }

    $current = [pscustomobject]@{
        Name      = '/'
        ExtentLba = [BitConverter]::ToUInt32($pvd, 158)
        Size      = [BitConverter]::ToUInt32($pvd, 166)
        IsDir     = $true
    }

    for ($index = 0; $index -lt $segments.Count; $index++) {
        $directoryBytes = Read-Extent -Stream $stream -Lba $current.ExtentLba -Size $current.Size
        $entries = ConvertFrom-DirectoryRecords -Data $directoryBytes
        $requested = $segments[$index]
        $next = $entries | Where-Object {
            $_.Name -notin '.', '..' -and (Test-IsoNameMatch -RecordName $_.Name -RequestedName $requested)
        } | Select-Object -First 1
        if (-not $next) {
            throw "ISO path component '$requested' not found while resolving '$IsoPath'"
        }
        if ($index -lt ($segments.Count - 1) -and -not $next.IsDir) {
            throw "ISO path component '$requested' is not a directory"
        }
        $current = $next
    }

    if ($current.IsDir) {
        throw "ISO path '$IsoPath' resolves to a directory, not a file"
    }

    $bytes = Read-Extent -Stream $stream -Lba $current.ExtentLba -Size $current.Size
    $sha256 = [System.Security.Cryptography.SHA256]::Create()
    $sha1 = [System.Security.Cryptography.SHA1]::Create()
    try {
        $sha256Text = ([BitConverter]::ToString($sha256.ComputeHash($bytes))).Replace('-', '').ToLowerInvariant()
        $sha1Text = ([BitConverter]::ToString($sha1.ComputeHash($bytes))).Replace('-', '').ToLowerInvariant()
    }
    finally {
        $sha256.Dispose()
        $sha1.Dispose()
    }

    $result = [ordered]@{
        binPath      = $resolvedBinPath
        isoPath      = ($segments -join '/')
        recordName   = $current.Name
        extentLba    = $current.ExtentLba
        size         = $current.Size
        sha256       = $sha256Text
        sha1         = $sha1Text
    }

    if ($OutFile) {
        $parent = Split-Path -Parent $OutFile
        if ($parent) {
            New-Item -ItemType Directory -Force -Path $parent | Out-Null
        }
        [System.IO.File]::WriteAllBytes($OutFile, $bytes)
        $result.extractedTo = (Resolve-Path -LiteralPath $OutFile).Path
    }

    $result | ConvertTo-Json -Depth 4
}
finally {
    $stream.Dispose()
}
