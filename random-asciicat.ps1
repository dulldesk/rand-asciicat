[string[]]$lines = cat $PSScriptRoot\asciicat.txt -Encoding UTF8

$cattot = $lines.length - ($lines | measure -line).lines +1
$catno = [math]::floor((random -min 0 -max $cattot))

# get starting index
$ind = 0
for ($i=1;$i -le $catno; $i++) {
	$ind = [array]::IndexOf($lines,'',$ind)+1;
}

for ($i = $ind; $i -lt $lines.length -and $lines[$i].trim() -ne ''; $i++) {
	write-output $lines[$i]
}
