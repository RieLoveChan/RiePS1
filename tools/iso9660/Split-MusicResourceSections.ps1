[CmdletBinding(SupportsShouldProcess=$true)]
param([Parameter(Mandatory=$true)][string]$ManifestPath,[Parameter(Mandatory=$true)][string]$InputDir,[Parameter(Mandatory=$true)][string]$OutDir)
Set-StrictMode -Version Latest;$ErrorActionPreference='Stop'
$manifest=Get-Content -Raw -LiteralPath $ManifestPath|ConvertFrom-Json;$src=(Resolve-Path -LiteralPath $InputDir).Path;$dest=[IO.Path]::GetFullPath($OutDir)
if(-not(Test-Path -LiteralPath $dest)){if($PSCmdlet.ShouldProcess($dest,'Create music-section directory')){New-Item -ItemType Directory -Path $dest|Out-Null}}
$rows=[Collections.Generic.List[object]]::new()
foreach($item in $manifest|Where-Object{$_.title}){$b=[IO.File]::ReadAllBytes((Join-Path $src $item.file));if($b.Length-lt 12){throw "Short slot $($item.slot)"};$o=@(0..2|ForEach-Object{[BitConverter]::ToUInt32($b,$_ * 4)})
 if($o[0]-ne 12-or $o[1]-lt $o[0]-or $o[2]-lt $o[1]-or $o[2]-gt $b.Length){throw "Invalid section offsets for slot $($item.slot)"}
 $ends=@($o[1],$o[2],$b.Length);for($i=0;$i-lt 3;$i++){$n='slot_{0:D2}_section_{1}.bin' -f $item.slot,$i;$p=Join-Path $dest $n;$len=$ends[$i]-$o[$i];if($PSCmdlet.ShouldProcess($p,'Write validated music-resource section')){$x=[byte[]]::new($len);[Array]::Copy($b,$o[$i],$x,0,$len);[IO.File]::WriteAllBytes($p,$x)};$rows.Add([pscustomobject]@{slot=$item.slot;title=$item.title;section=$i;offset=$o[$i];bytes=$len;file=$n})}}
$rows|ConvertTo-Json -Depth 3|Set-Content -LiteralPath (Join-Path $dest 'manifest.json') -Encoding utf8
[pscustomobject]@{resource_count=(@($manifest|Where-Object{$_.title}).Count);section_count=$rows.Count;section_bytes=(($rows|Measure-Object bytes -Sum).Sum)}
