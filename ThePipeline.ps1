Display the start time of the earliest and latest running processes
Identify a cmdlet that returns the current date and time then using this cmdlet and Select-object, display only the current day of the week
  
  $earliest = Get-Process | select Name, StartTime | sort-object -property 'LastUsed' -Descending | select-object -First 1
  $latest = Get-Process | select Name, StartTime | sort-object -property 'LastUsed' -Descending | Select-Object -Last 1

  $earliest, $latest 


Identify a cmdlet that returns the current date and time then using this cmdlet and Select-object, display only the current day of the week

  Get-Date | select-object -property 'DayofWeek'


Identify a cmdlet that displays a list of installed hotfixes.

  get-hotfix

Extend the expression to sort the list by install date, and display only the install date and hotfix ID

  get-hotfix | select InstallDate, HotFixID | Sort-Object -Property 'InstallDate'

Extend the expression further, but this time sort by description, include description, hotfix ID, and install Date.

  get-hotfix | select InstallDate, HotFixID, Description | Sort-Object -Property 'Description'
