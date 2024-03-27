Create an array containing a range with a random starting and stopping point. The starting point will be a random number from -10 through 0. The ending point will be a random number from 1 through 20.

  $list1 = get-random -Maximum 0 -Minimum -10
  $list2 = Get-Random -Maximum 20 -Minimum 1
  $array1 = $list1..$list2
  $array1

OR

  $array = (get-random -minimum -10 -maximum 1)..(get-random -minimum 1 -maximum 21)
Create a variable that contains the contents of the array in reverse

  $array2 = [array]::Reverse($array1)
  $array2

OR

  $reverse = [($array.length-1)..0]
Arrays and Hash Tables
Create two empty hash tables with the following names: 1.employee1 2.employee2

  $employee1= {}
  $employee2= {}
Using the following table of key-value pairs, apply each key-value to the empty hash tables.

  $employee1 = [ordered]@{first = "Mary"; Last = "Hopper"; ID = 001; Job = "Software Developer"}
  $employee2 = [ordered]@{first = "John"; Last = "Williams"; ID = 002; Job = "Web Developer"}
Now add a new key called Username which holds a contraction of the employee’s first initial then last name then ID. (i.e. mhopper001).

  $employee1.Add("Username", "mhopper001")
  $employee2.Add("Username", "jwilliams002")
Mary got promoted to "Software Lead" so the job key for Mary needs to be changed to "Software Lead"

  $employee1.Job = "Software Lead"
Create a new hash table called "employee3" that contains the following values with the respective keys.

  $employee3 = @{first = "Alex"; Last = "Moran"; ID = 003; Job = "Software Developer"}
Add a new key called "Status" that holds the values:

  $employee1.Add("Status", "Management")
  $employee2.Add("Status", "Intermediate")
  $employee3.Add("Status", "Entry Level")
The Pipeline
Display the start time of the earliest and latest running processes

  $earliest = Get-Process | select StartTime, Name | sort-object -property 'LastUsed' -Descending | Select-Object -First 1
  $latest = Get-Process | select StartTime, Name | sort-object -property 'LastUsed' -Descending | Select-Object -Last 1

  $earliest, $latest //to display

OR 

  get-process | where-object{$_.StartTime} | measure-object -property -minimum -maximum | select-object -property minimum, maximum
Identify a cmdlet that returns the current date and time then using this cmdlet and Select-object, display only the current day of the week

  Get-Date | select-object -property 'DayofWeek'
Identify a cmdlet that displays a list of installed hotfixes.

  get-hotfix
Extend the expression to sort the list by install date, and display only the install date and hotfix ID

  get-hotfix | select InstalledOn, HotFixID | Sort-Object -Property 'InstalledOn'
Extend the expression further, but this time sort by description, include description, hotfix ID, and install Date.

  get-hotfix | select InstalledOn, HotFixID, Description | Sort-Object -Property 'Description'
