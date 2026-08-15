[CmdletBinding()]
param([Parameter(Mandatory=$true)][string]$ManifestPath,[Parameter(Mandatory=$true)][string]$InputDir,[string]$OutJson='work/ddr5thmix-extract/descriptor-header-inventory.json')
Set-StrictMode -Version Latest
$ErrorActionPreference='Stop'
$manifest=@(Get-Content -Raw -LiteralPath $ManifestPath|ConvertFrom-Json|ForEach-Object{$_})
$root=(Resolve-Path -LiteralPath $InputDir).Path
$rows=@(foreach($entry in $manifest){$b=[IO.File]::ReadAllBytes((Join-Path $root $entry.file));[pscustomobject]@{lba=[int64]$entry.lba;bytes=[int64]$b.Length;word_00=if($b.Length-ge4){'0x{0:x8}' -f [BitConverter]::ToUInt32($b,0)}else{'short'};word_04=if($b.Length-ge8){'0x{0:x8}' -f [BitConverter]::ToUInt32($b,4)}else{'short'}}})
if($rows.Count-ne$manifest.Count){throw 'Local descriptor count changed during inventory'}
$families=@(foreach($g in ($rows|Group-Object word_00|Sort-Object Name)){$x=@($g.Group);[pscustomobject][ordered]@{word_00=$g.Name;resource_count=$x.Count;total_bytes=($x|Measure-Object bytes -Sum).Sum;min_bytes=($x|Measure-Object bytes -Minimum).Minimum;max_bytes=($x|Measure-Object bytes -Maximum).Maximum;distinct_word_04=@($x.word_04|Sort-Object -Unique).Count;example_lbas=@($x|Select-Object -First 4 -ExpandProperty lba)}})
$result=[ordered]@{schema_version=1;tool='Inventory-DescriptorHeaders.ps1';descriptor_count=$rows.Count;descriptor_bytes=($rows|Measure-Object bytes -Sum).Sum;family_count=$families.Count;families=$families}
$parent=Split-Path -Parent $OutJson;if($parent){New-Item -ItemType Directory -Force -Path $parent|Out-Null};$result|ConvertTo-Json -Depth 5|Set-Content -LiteralPath $OutJson -Encoding utf8;[pscustomobject]$result|Select-Object descriptor_count,descriptor_bytes,family_count