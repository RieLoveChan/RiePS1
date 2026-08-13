[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)][string]$BinPath,
    [string]$OutJson = 'work/ddr5thmix-extract/iso-asset-inventory.json',
    [string]$ExtractDir,
    [int]$SectorSize = 2352,
    [int]$SectorHeaderSize = 24,
    [int]$SectorDataSize = 2048
)
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'
function Read-Sector { param([IO.FileStream]$Stream,[uint32]$Lba)
    $Stream.Seek([int64]$Lba*$SectorSize+$SectorHeaderSize,[IO.SeekOrigin]::Begin)|Out-Null
    $b=New-Object byte[] $SectorDataSize;$n=$Stream.Read($b,0,$SectorDataSize)
    if($n-ne$SectorDataSize){throw "Short sector at LBA $Lba"};$b
}
function Read-Extent { param([IO.FileStream]$Stream,[uint32]$Lba,[uint32]$Size)
    $count=[int][Math]::Ceiling($Size/$SectorDataSize);$out=New-Object byte[] $Size;$written=0
    for($i=0;$i-lt$count;$i++){ $b=Read-Sector $Stream ($Lba+$i);$take=[Math]::Min($SectorDataSize,$Size-$written);[Array]::Copy($b,0,$out,$written,$take);$written+=$take };$out
}
function Read-Records { param([byte[]]$Data)
    $rows=@();$p=0
    while($p-lt$Data.Length){$len=$Data[$p];if($len-eq0){$p=([Math]::Floor($p/$SectorDataSize)+1)*$SectorDataSize;continue};if($p+$len-gt$Data.Length){throw "Directory record exceeds extent at $p"};$nl=$Data[$p+32];$nb=$Data[($p+33)..($p+32+$nl)];if($nl-eq1-and$nb[0]-eq0){$name='.'}elseif($nl-eq1-and$nb[0]-eq1){$name='..'}else{$name=[Text.Encoding]::ASCII.GetString($nb)};$rows += [pscustomobject]@{Name=$name;ExtentLba=[BitConverter]::ToUInt32($Data,$p+2);Size=[BitConverter]::ToUInt32($Data,$p+10);IsDir=[bool]($Data[$p+25]-band2)};$p+=$len};$rows
}
function Measure-Extent { param([IO.FileStream]$Stream,[uint32]$Lba,[uint32]$Size,[string]$Target)
    $count=[int][Math]::Ceiling($Size/$SectorDataSize);$hash=[Security.Cryptography.SHA256]::Create();$zero=$true;$written=0;$output=$null
    try { if($Target){$parent=Split-Path -Parent $Target;if($parent){New-Item -ItemType Directory -Force -Path $parent|Out-Null};$output=[IO.File]::Open($Target,'Create','Write','None')};for($i=0;$i-lt$count;$i++){ $b=Read-Sector $Stream ($Lba+$i);$take=[Math]::Min($SectorDataSize,$Size-$written);if($take-ne$b.Length){$part=New-Object byte[] $take;[Array]::Copy($b,0,$part,0,$take);$b=$part};if($zero){foreach($v in $b){if($v-ne0){$zero=$false;break}}};$hash.TransformBlock($b,0,$b.Length,$null,0)|Out-Null;if($output){$output.Write($b,0,$b.Length)};$written+=$take};$hash.TransformFinalBlock([byte[]]::new(0),0,0)|Out-Null;[pscustomobject]@{sha256=([BitConverter]::ToString($hash.Hash)).Replace('-','').ToLowerInvariant();all_zero=$zero;extracted_to=if($Target){(Resolve-Path -LiteralPath $Target).Path}else{$null}}}finally{if($output){$output.Dispose()};$hash.Dispose()}
}
$bin=(Resolve-Path -LiteralPath $BinPath).Path;$parent=Split-Path -Parent $OutJson;if($parent){New-Item -ItemType Directory -Force -Path $parent|Out-Null};if($ExtractDir){New-Item -ItemType Directory -Force -Path $ExtractDir|Out-Null}
$stream=[IO.File]::Open($bin,'Open','Read','Read');try{$pvd=Read-Sector $stream 16;if($pvd[0]-ne1-or[Text.Encoding]::ASCII.GetString($pvd,1,5)-ne'CD001'){throw 'Sector 16 is not ISO 9660 PVD'};$queue=[Collections.Generic.Queue[object]]::new();$queue.Enqueue([pscustomobject]@{Path='/';Lba=[BitConverter]::ToUInt32($pvd,158);Size=[BitConverter]::ToUInt32($pvd,166)});$files=[Collections.Generic.List[object]]::new();while($queue.Count){$dir=$queue.Dequeue();foreach($e in Read-Records (Read-Extent $stream $dir.Lba $dir.Size)){if($e.Name-in @('.','..')){continue};$name=$e.Name-replace ';[0-9]+$','';$path=if($dir.Path-eq'/'){('/'+$name)}else{$dir.Path+'/'+$name};if($e.IsDir){$queue.Enqueue([pscustomobject]@{Path=$path;Lba=$e.ExtentLba;Size=$e.Size});continue};$target=$null;if($ExtractDir){$target=Join-Path $ExtractDir ($path.TrimStart('/').Replace('/','\'))};$m=Measure-Extent $stream $e.ExtentLba $e.Size $target;$files.Add([pscustomobject][ordered]@{iso_path=$path;record_name=$e.Name;extent_lba=$e.ExtentLba;size=$e.Size;sha256=$m.sha256;all_zero=$m.all_zero;extracted_to=$m.extracted_to})}};$result=[ordered]@{schema_version=1;tool='Inventory-IsoAssets.ps1';bin_path=$bin;sector_size=$SectorSize;sector_header_size=$SectorHeaderSize;sector_data_size=$SectorDataSize;file_count=$files.Count;files=@($files)};$result|ConvertTo-Json -Depth 5|Set-Content -LiteralPath $OutJson -Encoding utf8;[pscustomobject]$result}finally{$stream.Dispose()}