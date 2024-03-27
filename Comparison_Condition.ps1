$line1 = "Do you have model number: MT5437 for john.doe@sharklasers.com?"
$line2 = "What model number for john.doe@sharklasers.com?"


$pattern = '[A-Za-z]{2}\d{2,5}'
$line1, $line2 | ForEach-object {
 if ($_ -match $pattern){
    Write-Host $Matches[0]": $_"
 }
 else{
    write-host "no matches found on: $_"
 }
}  
