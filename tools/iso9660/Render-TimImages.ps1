[CmdletBinding(SupportsShouldProcess = $true)]
param(
 [Parameter(Mandatory=$true)][string]$InputPath,
 [Parameter(Mandatory=$true)][string]$OutDir,
 [ValidateRange(0,255)][int]$PaletteIndex=0
)
Set-StrictMode -Version Latest
$ErrorActionPreference='Stop'
Add-Type -AssemblyName System.Drawing
function U16([byte[]]$b,[int]$o){[BitConverter]::ToUInt16($b,$o)}
function U32([byte[]]$b,[int]$o){[BitConverter]::ToUInt32($b,$o)}
function C([uint16]$v){$r=(($v -band 0x1f)*255/31);$g=((($v -shr 5)-band 0x1f)*255/31);$bl=((($v -shr 10)-band 0x1f)*255/31);$a=if(($v -band 0x7fff)-eq 0){0}else{255};[Drawing.Color]::FromArgb($a,[int]$r,[int]$g,[int]$bl)}
$input=(Resolve-Path -LiteralPath $InputPath).Path;$b=[IO.File]::ReadAllBytes($input);$out=[IO.Path]::GetFullPath($OutDir)
if(-not(Test-Path -LiteralPath $out)){if($PSCmdlet.ShouldProcess($out,'Create TIM render directory')){New-Item -ItemType Directory -Path $out|Out-Null}}
$items=[Collections.Generic.List[object]]::new();$n=0
for($o=0;$o -le $b.Length-20;$o+=4){
 if((U32 $b $o)-ne 0x10){continue};$f=U32 $b ($o+4);if(($f-band(-bnot 0x0b))-ne 0){continue};$mode=$f-band 3;if($mode -eq 3){continue};$bpp=@(4,8,16)[$mode];$p=$o+8;$clut=$null;$palettes=0
 if(($f-band 8)-ne 0){$l=U32 $b $p;if($l-lt 12-or $p+$l+12-gt $b.Length){continue};$cw=U16 $b ($p+8);$ch=U16 $b ($p+10);if($cw-lt 1-or $ch-lt 1-or $l-ne(12+2*$cw*$ch)){continue};$clut=$p+12;$palettes=$ch;$p+=$l}
 $l=U32 $b $p;if($l-lt 12-or $p+$l-gt $b.Length){continue};$ww=U16 $b ($p+8);$h=U16 $b ($p+10);if($l-ne(12+2*$ww*$h)){continue};$ppw=@(4,2,1)[$mode];$w=$ww*$ppw;if($bpp-ne 16-and $null-eq $clut){continue};$usePal=[Math]::Min($PaletteIndex,[Math]::Max(0,$palettes-1));$pix=$p+12;$file=('tim_{0:D3}_offset_{1:x6}_{2}bpp_{3}x{4}.png'-f $n,$o,$bpp,$w,$h);$target=Join-Path $out $file
 if($PSCmdlet.ShouldProcess($target,'Render TIM image')){$bmp=[Drawing.Bitmap]::new($w,$h,[Drawing.Imaging.PixelFormat]::Format32bppArgb);try{for($y=0;$y-lt $h;$y++){for($x=0;$x-lt $w;$x++){if($bpp-eq 4){$v=$b[$pix+$y*$ww*2+[int]($x/4)];$i=if(($x%2)-eq 0){$v-band 15}else{$v-shr 4}}elseif($bpp-eq 8){$i=$b[$pix+$y*$ww*2+[int]($x/2)]}else{$color=C (U16 $b ($pix+2*($y*$w+$x)));$bmp.SetPixel($x,$y,$color);continue};$color=C (U16 $b ($clut+2*($usePal*$(if($bpp-eq 4){16}else{256})+$i)));$bmp.SetPixel($x,$y,$color)}};$bmp.Save($target,[Drawing.Imaging.ImageFormat]::Png)}finally{$bmp.Dispose()}}
 $items.Add([pscustomobject]@{index=$n;offset=('0x{0:x}'-f $o);file=$file;bpp=$bpp;width=$w;height=$h;palette_count=$palettes;palette_used=$usePal});$n++
}
$items|ConvertTo-Json -Depth 3|Set-Content -LiteralPath (Join-Path $out 'manifest.json') -Encoding utf8
[pscustomobject]@{input_sha256=(Get-FileHash -Algorithm SHA256 -LiteralPath $input).Hash.ToLowerInvariant();rendered_count=$n;out_dir=$out}