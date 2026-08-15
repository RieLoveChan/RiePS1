[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$InputDir,
    [Parameter(Mandatory = $true)][string]$OutJson,
    [string]$Filter = '*.bin',
    [byte]$ExpectedByte = 255,
    [uint32]$RequiredFirstWord = 4294967295
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$source = (Resolve-Path -LiteralPath $InputDir).Path
$rows = [Collections.Generic.List[object]]::new()
foreach ($file in Get-ChildItem -LiteralPath $source -File -Filter $Filter | Sort-Object Name) {
    $bytes = [IO.File]::ReadAllBytes($file.FullName)
    if ($bytes.Length -lt 4 -or [BitConverter]::ToUInt32($bytes, 0) -ne $RequiredFirstWord) { continue }
    $uniform = $true
    for ($offset = 0; $offset -lt $bytes.Length; $offset++) {
        if ($bytes[$offset] -ne $ExpectedByte) { $uniform = $false; break }
    }
    $rows.Add([pscustomobject]@{
        file = $file.Name
        bytes = $bytes.Length
        uniform = $uniform
        sha256 = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash.ToLowerInvariant()
    })
}
$result = [pscustomobject]@{
    input_directory = $source
    filter = $Filter
    required_first_word = ('0x{0:x8}' -f $RequiredFirstWord)
    expected_byte = ('0x{0:x2}' -f $ExpectedByte)
    candidate_count = $rows.Count
    uniform_count = @($rows | Where-Object uniform).Count
    uniform_bytes = ($rows | Where-Object uniform | Measure-Object bytes -Sum).Sum
    results = @($rows)
}
$result | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath $OutJson -Encoding utf8
$result | Select-Object candidate_count, uniform_count, uniform_bytes