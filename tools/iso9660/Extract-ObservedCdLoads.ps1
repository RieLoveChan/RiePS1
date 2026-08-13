[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$InputPath,
    [Parameter(Mandatory = $true)][string]$TracePath,
    [Parameter(Mandatory = $true)][string]$OutDir,
    [Parameter()][int]$BaseLba = 20000
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$input = (Resolve-Path -LiteralPath $InputPath).Path
$trace = Get-Content -Raw -LiteralPath $TracePath | ConvertFrom-Json
$destination = [IO.Path]::GetFullPath($OutDir)
$inputLength = (Get-Item -LiteralPath $input).Length
if (-not (Test-Path -LiteralPath $destination)) {
    if ($PSCmdlet.ShouldProcess($destination, 'Create observed CD-load extraction directory')) {
        New-Item -ItemType Directory -Path $destination | Out-Null
    }
}

$seen = @{}
$manifest = [Collections.Generic.List[object]]::new()
$source = [IO.File]::Open($input, 'Open', 'Read', 'Read')
try {
    foreach ($event in $trace.cd_read_events) {
        $lba = [int64]$event.lba
        $size = [int64]$event.request_size
        if ($lba -lt $BaseLba -or $size -le 0) { continue }
        $offset = ($lba - $BaseLba) * 2048
        if ($offset -lt 0 -or $offset + $size -gt $inputLength) { continue }
        $key = "$lba/$size"
        if ($seen.ContainsKey($key)) { continue }
        $seen[$key] = $true
        $fileName = 'frame_{0:D5}_lba_{1:x5}_offset_{2:x8}_size_{3:x8}.bin' -f [int]$event.frame, $lba, $offset, $size
        $target = Join-Path $destination $fileName
        if ($PSCmdlet.ShouldProcess($target, "Extract observed CD request at LBA $lba")) {
            $source.Seek($offset, [IO.SeekOrigin]::Begin) | Out-Null
            $remaining = $size
            $buffer = [byte[]]::new(65536)
            $output = [IO.File]::Open($target, 'Create', 'Write', 'None')
            try {
                while ($remaining -gt 0) {
                    $wanted = [int][Math]::Min($buffer.Length, $remaining)
                    $read = $source.Read($buffer, 0, $wanted)
                    if ($read -le 0) { throw "Short read at offset 0x$($offset.ToString('x'))" }
                    $output.Write($buffer, 0, $read)
                    $remaining -= $read
                }
            } finally { $output.Dispose() }
        }
        $manifest.Add([pscustomobject]@{
            frame = [int]$event.frame; lba = $lba; lba_hex = ('0x{0:x8}' -f $lba)
            file_offset = $offset; file_offset_hex = ('0x{0:x8}' -f $offset)
            request_size = $size; request_size_hex = ('0x{0:x8}' -f $size)
            file = $fileName; sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $target).Hash.ToLowerInvariant()
        })
    }
} finally { $source.Dispose() }

$manifestPath = Join-Path $destination 'manifest.json'
$manifest | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $manifestPath -Encoding utf8
[pscustomobject]@{
    input_sha256 = (Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant()
    trace_completed = [bool]$trace.completed
    extracted_count = $manifest.Count
    manifest_path = $manifestPath
}