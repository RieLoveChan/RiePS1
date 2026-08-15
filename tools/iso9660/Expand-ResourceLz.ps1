[CmdletBinding(SupportsShouldProcess=$true)]
param([Parameter(Mandatory=$true)][string]$InputPath,[Parameter(Mandatory=$true)][string]$OutPath,[int]$MaxOutputBytes=4194304)
Set-StrictMode -Version Latest;$ErrorActionPreference='Stop'
$src=[IO.File]::ReadAllBytes((Resolve-Path -LiteralPath $InputPath));$out=[Collections.Generic.List[byte]]::new();$p=0;$done=$false
while(-not $done){if($p-ge$src.Length){throw 'Unexpected end before control byte'};$flags=$src[$p++];for($bit=0;$bit-lt 8;$bit++){if(($flags-band(1-shl$bit))-eq 0){if($p-ge$src.Length){throw 'Unexpected end in literal'};$out.Add($src[$p++]);continue};if($p-ge$src.Length){throw 'Unexpected end in token'};$tag=$src[$p++]
 if(($tag-band 0x80)-eq 0){if($p-ge$src.Length){throw 'Unexpected end in long back-reference'};$length=($tag-shr 2)+3;$distance=(($tag-band 3)-shl 8)-bor$src[$p++]}
 elseif(($tag-band 0x40)-eq 0){$length=(($tag-shr 4)-band 3)+2;$distance=($tag-band 15)+1}
 elseif($tag-eq 255){$done=$true;break}
 else{$length=($tag-band 63)+8;if($p+$length-gt$src.Length){throw 'Unexpected end in run'};for($i=0;$i-lt$length;$i++){$out.Add($src[$p++])};continue}
 if($out.Count+$length-gt$MaxOutputBytes){throw "Output exceeds $MaxOutputBytes bytes"};if($distance-lt 1-or$distance-gt$out.Count){throw "Invalid back-reference distance $distance"};for($i=0;$i-lt$length;$i++){$out.Add($out[$out.Count-$distance])}}
}
$target=[IO.Path]::GetFullPath($OutPath);$parent=Split-Path -Parent $target;if($parent-and-not(Test-Path $parent)){New-Item -ItemType Directory -Path $parent|Out-Null};if($PSCmdlet.ShouldProcess($target,'Write LZ-expanded resource')){[IO.File]::WriteAllBytes($target,$out.ToArray())};[pscustomobject]@{input_bytes=$src.Length;output_bytes=$out.Count;input_consumed=$p;terminated=$done;output_sha256=(Get-FileHash $target -Algorithm SHA256).Hash.ToLowerInvariant()}
