[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory=$true)][string]$MusicDatabaseJson,
    [Parameter(Mandatory=$true)][string]$InputPath,
    [Parameter(Mandatory=$true)][string]$OutDir,
    [int]$BaseLba = 20000
)
Set-StrictMode -Version Latest
$ErrorActionPreference='Stop'
$input=(Resolve-Path -LiteralPath $InputPath).Path
$db=Get-Content -Raw -LiteralPath $MusicDatabaseJson|ConvertFrom-Json
$dest=[IO.Path]::GetFullPath($OutDir)
if(-not(Test-Path -LiteralPath $dest)){if($PSCmdlet.ShouldProcess($dest,'Create music-resource extraction directory')){New-Item -ItemType Directory -Path $dest|Out-Null}}
$bytes=[IO.File]::ReadAllBytes($input);$items=[Collections.Generic.List[object]]::new()
foreach($slot in $db.resourceSlotTable.slots){
 if($slot.descriptor_address -eq '0x00000000'){continue}
 $size=[Convert]::ToInt64($slot.descriptor_word_00.Substring(2),16);$lba=[Convert]::ToInt64($slot.descriptor_word_04.Substring(2),16);$offset=($lba-$BaseLba)*2048
 if($size -le 0 -or $offset -lt 0 -or $offset+$size -gt $bytes.Length){throw "Slot $($slot.slot) has out-of-bounds descriptor"}
 $name='slot_{0:D2}_lba_{1:x5}_offset_{2:x8}_size_{3:x8}.bin' -f $slot.slot,$lba,$offset,$size;$target=Join-Path $dest $name
 if($PSCmdlet.ShouldProcess($target,'Write descriptor-addressed resource')){$data=[byte[]]::new($size);[Array]::Copy($bytes,$offset,$data,0,$size);[IO.File]::WriteAllBytes($target,$data)}
 $items.Add([pscustomobject]@{slot=$slot.slot;music_id=$slot.music_id;title=$slot.record_title;lba=$lba;offset=$offset;bytes=$size;file=$name;sha256=(Get-FileHash -LiteralPath $target -Algorithm SHA256).Hash.ToLowerInvariant()})
}
$items|ConvertTo-Json -Depth 4|Set-Content -LiteralPath (Join-Path $dest 'manifest.json') -Encoding utf8
[pscustomobject]@{input_sha256=(Get-FileHash -LiteralPath $input -Algorithm SHA256).Hash.ToLowerInvariant();extracted_count=$items.Count;extracted_bytes=(($items|Measure-Object bytes -Sum).Sum)}
