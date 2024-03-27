$array1 = @("Notepad", "MSEdge", "MSpaint") 
foreach ($app in $array1) {Start-Process -filepath $app}
$array1b = Get-Process | Format-Table processname
Write-Host $array1b
