[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputPath,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [int]$Alignment = 2048
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Read-UInt32BigEndian([byte[]]$Bytes, [int]$Offset) {
    return (([uint32]$Bytes[$Offset] -shl 24) -bor
            ([uint32]$Bytes[$Offset + 1] -shl 16) -bor
            ([uint32]$Bytes[$Offset + 2] -shl 8) -bor
            [uint32]$Bytes[$Offset + 3])
}

$input = (Resolve-Path -LiteralPath $InputPath).Path
$destination = [IO.Path]::GetFullPath($OutDir)
$length = (Get-Item -LiteralPath $input).Length
if (-not (Test-Path -LiteralPath $destination)) {
    if ($PSCmdlet.ShouldProcess($destination, 'Create VAG extraction directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}
$stream = [IO.File]::Open($input, 'Open', 'Read', 'Read')
try {
    $header = [byte[]]::new(48)
    $index = 0
    for ([int64]$offset = 0; $offset + $header.Length -le $length; $offset += $Alignment) {
        $stream.Seek($offset, [IO.SeekOrigin]::Begin) | Out-Null
        $read = 0
        while ($read -lt $header.Length) {
            $n = $stream.Read($header, $read, $header.Length - $read)
            if ($n -le 0) { throw "Short read at 0x$($offset.ToString('x'))" }
            $read += $n
        }
        if ([Text.Encoding]::ASCII.GetString($header, 0, 4) -ne 'VAGp') { continue }
        $dataSize = Read-UInt32BigEndian $header 12
        if ($dataSize -eq 0 -or $offset + 48 + $dataSize -gt $length) { continue }
        $name = [Text.Encoding]::ASCII.GetString($header, 32, 16).Trim([char]0)
        $safeName = ($name -replace '[^A-Za-z0-9._-]', '_')
        if ([string]::IsNullOrWhiteSpace($safeName)) { $safeName = 'unnamed' }
        $target = Join-Path $destination ("{0:D4}_{1}.vag" -f $index, $safeName)
        if ($PSCmdlet.ShouldProcess($target, "Extract VAG at 0x$($offset.ToString('x'))")) {
            $stream.Seek($offset, [IO.SeekOrigin]::Begin) | Out-Null
            $remaining = [int64]48 + $dataSize
            $buffer = [byte[]]::new(65536)
            $output = [IO.File]::Open($target, 'Create', 'Write', 'None')
            try {
                while ($remaining -gt 0) {
                    $want = [int][Math]::Min($buffer.Length, $remaining)
                    $got = $stream.Read($buffer, 0, $want)
                    if ($got -le 0) { throw "Short payload at 0x$($offset.ToString('x'))" }
                    $output.Write($buffer, 0, $got)
                    $remaining -= $got
                }
            }
            finally { $output.Dispose() }
        }
        $index++
    }
    [pscustomobject]@{ input_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant(); sample_count = $index; out_dir = $destination }
}
finally {
    $stream.Dispose()
}
