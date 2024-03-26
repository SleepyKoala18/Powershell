$earliest = Get-Process | select Name, StartTime | sort-object -property 'LastUsed' -Descending | select-object -First 1
$latest = Get-Process | select Name, StartTime | sort-object -property 'LastUsed' -Descending | Select-Object -Last 1

$earliest, $latest 
