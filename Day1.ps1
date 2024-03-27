Ensure that you have the latest copy of help by updating your help system
  get-help update*
  ans: update-help
Which cmdlets deal with the viewing/manipulating of processes?
  get-process
Display a list of services installed on your local computer.
  get-service
What cmdlets are used to write or output objects or text to the screen?
  Write-Output
  Write-Host
What cmdlets can be used to create, modify, list, and delete variables?
  get-variable
  set-variable
  Remove-Variable
  New-Variable
What cmdlet can be used, other than Get-Help, to find and list other cmdlets?
  get-command
Find the cmdlet that is used to prompt the user for input.
  read-host
Display a list of running processes.
  get-process
Display a list of all running processes that start with the letter "s".
  get-process -name s*
Find the cmdlet and its purpose for the following aliases:
a. gal get-alias

b. dir get-childitem

c. echo Write-output

d. ? where-object

e. % ForEach-Object

f. ft Format-Table

Display a list of Windows Firewall Rules.
  Show-NetFirewallRule
Create a new alias called "gh" for the cmdlet "Get-Help"
  set-alias gh get-help
Create a variable called "var1" that holds a random number between 25-50.
  $var1 = get-random -minimum 25 -Maximum 50
Create a variable called "var2" that holds a random number between 1-10.
  $var2 = get-random -minimum 1 -Maximum 10
Create a variable called "sum" that holds the sum of var1 and var2.
  $sum = $var1 + $var2
Create a variable called "sub" that holds the difference of var1 and var2.
  $sub = $var1 - $var2
Create a variable called "prod" that holds the product of var1 and var2.
  $prod = $var1 * $var2
Create a variable called "prod" that holds the product of var1 and var2.
  $quo = $var1 / $var2
Replace the variables in text with their values in the following format:
  "$sum = $var1 + $var2"
Replace the variables in text with their values in the following format:
  "$sub = $var1 - $var2"
Replace the variables in text with their values in the following format:
  "$prod = $var1 * $var2"
Replace the variables in text with their values in the following format:
  "$quo = $var1 / $var2"
