Comparison and Condition
Find and extract the model number from the provided lines of text. If there isn’t a model number then display to the user that a model number wasn’t found

  $line1 = "Do you have model number: MT5437 for john.doe@sharklasers.com?" $line2 = "What model number for john.doe@sharklasers.com?"

  $pattern =' MT(\d{4})'
  $word = $line1.split()[5] -match $pattern
foreach($word in $line1){
  if ($word -match $pattern){
    write-host $line1.split()[5]
    }
  else{
    "Model not found!"
  }
}

foreach($word in $line2){
  if ($word -match $pattern){
    write-host $line1.split()[5]
    }
  else{
    "Model not found!"
  }
}
Check both lines for model numbers and report individually the line and model number if found.

  $line1, $line2 | ForEachObject {
if ($_ -match $pattern) {
  Write-Host $Matches[0]": $_"
else{
  Write-Host "Model not found!"
}
}
Looping & Iteration
Use an array to iterate and open the following Notepad MS Edge MSpaint

Query the processes Kill the processes from PowerShell

   $array3 = "notepad.exe", "msedge.exe", "mspaint.exe"

 foreach ($proc in $array3){
   Start-Process -FilePath $proc
 }

   $array4 = "notepad", "MSEdge", "MSPaint"
 foreach ($proc in $array4){
   Get-Process -Name $proc
}

 foreach ($proc in $array4){
   Stop-Process -name $proc
 }


OR

  $procs = "notepad", "MSEdge", "MSPaint"
  $procs | ForEach-Object {Start-process $_}
  Get-Process $procs
  Stop-Process -name $procs
Use an array to iterate and open the following Notepad MS Edge MSpaint Query the processes Save the ProcessIDs to a text file called procs.txt Iterate through the ProcessIDs in the text file and kill them

  $procs = "notepad", "MSEdge", "MSPaint"
  $procs | ForEach-Object {Start-process $_}

foreach($proc in $procs){
   (get-process -name $proc).id | add-content -path .\procs.txt
}
get-content "C:\Users\student\Desktop\procs.txt" | foreach-object{stop-process -id $_}
Use an array to iterate and open the following Notepad MS Edge MSpaint Query the processes and display only the following information in order by process ID Process ID Process Name The time the process started The amount of time the process has spent on the processor The amount of memory assigned to the process

  $procs = "notepad", "MSEdge", "MSPaint"
  $procs | ForEach-Object {Start-process $_}

foreach($proc in $procs){
 get-process | where-object{$_.name -like $proc} | format-table -property id, name, starttime, totalprocessortime, virtualmemorysize, workingset64

}
Create Functions
Write a function that returns the Ordinal date of the current date.

function Get-OrdinalDate{
    Param(
        [system.DateTime]$date
)

    switch ($date.Day) 
{
    {$_ -in 1,21,31} { 'st'}
    {$_ -in 2,22} { 'nd'}
    {$_ -in 3,23} {'rd'}
    Default {'th'}
    }
}

  $date = (Get-Date).AddDays(1)
  $output = $date.ToString('dddd MMMM d yyyy', [CultureInfo]::CreateSpecificCulture('en-US'))
  $output -replace '( \d{4})$', ('{0}$1'-f (Get-OrdinalDate $date))

OR

function ordinalNumber {
    Process {
    $Dayofyear = (Get-Date).DayOfYear
    $year = Get-Date -Format yyyy
    return $ordinaldate1 = $year + "-" $Dayofyear
    }
Create a function that takes a number(n) as an argument and returns the square(n^2) of the number.

function Get-SquareNum ([int] $n) {
  $result = [Math]::Pow($n,2)
  return $result
  }

  $n = Read-Host 'Enter a number'
  $result = Get-SquareNum $n
  Write-Output "$n * $n = $result"
Create a function that takes three (3) arguments and returns the product of the arguments.

function Get-Product{
Param(
   [parameter(Mandatory=$true)]
   $var3,
   [parameter(Mandatory=$true)]
   $var4,
   [parameter(Mandatory=$true)]
   $var5
   )
Begin {
    $prod = 0
    }
Process {
    $prod = [int]$var3 * [int]$var4 * [int]$var5
    }
End {
    $prod
    }
}
Function Parameters
Create a function that takes two(2) integer values, $a and $b, that are the lengths of two(2) legs of a right triangle and returns the length of the hypotenuse

    function Pythag {
        param(
        [parameter(Mandatory=$true)]
        $a,
        [parameter(Mandatory=$true)]
        $b
        )
        Process {
            $ab = ([int]$a * [int]$a) + ([int]$b * [int]$b)
            return "The hypotenuse is: " + [Math]::Sqrt($ab)
        }
        }
Create a function that takes two(2) values, $a and $b, as two(2) angles in degrees of a triangle. Return the value of the missing angle.

    function MissingAngle {
        param(
       [parameter(Mandatory=$true)]
        $b,
        [parameter(Mandatory=$true)]
        $c
        )
        Process {

            $d = 180 - ([int]$b + [int]$c)
            return $d
            }
    }
