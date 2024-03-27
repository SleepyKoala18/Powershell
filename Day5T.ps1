<# 4 #>
function q1($var2,$var3,$var4,$var5) {
    <# The parameters listed are the values of all angles
       in a polygon except one. Find and return the value
       of the remaining angle. If an impossible angle 
       is found, return -1. 
       The formula to find the sum of all angles of a 
       polygon is `(n-2) * 180`, where `n` is the total 
       number of angles. An impossible angle is one that 
       is zero degrees (or less) or 360 degree (or more). 
       #>
       $sum = ((5-2) * 180)
       $last = $sum - ($var2 + $var3 + $var4 + $var5)
       if ($last -In 1..359) {
            return $last
       } else {
            return -1
       }
}
function q2($arr,$key) {
    <# Search the 2 dimensional array for the first occurance 
      of key at column index 0 and return the value at column
      index 2 of the same row. Return -1 if the key is not found.
    #>
    foreach ($line in $arr) {
        if ($line[0] -eq $key) {
            return $line[2]
        }
    }
    Write-Output -1

}
function q3 {
    <# In a loop, prompt the user to enter a string until
       the user enters an empty string (length of 0) to 
       stop. Return the string with the maximum 
       length that the user entered."
	#>
    $arr = @()
    do {
        $usr = read-host
        $arr += $usr
    } until ($usr.Length -eq 0)
    return ($arr | sort length -Descending | select -first 1)
}
function q4($filename,$start) {
    <# Return the line of text from the file given by the `$filename
	   argument that begins with the text specified by `$start.
	   If no line in the file begins with the `$start text, return 
	   $null."
	#>
    $contents = (Get-Content $filename) 
    foreach($line in $contents) {
        if($line.startswith($start)) {
            return $line
        }
    }
    return $null

}
function q5($path) {
    <# Return the services in Stopped status sorted
       descending by their Name
	#>
    Get-Service | Where-Object { $Psitem.Status -eq 'Stopped' } | Sort-Object -Property name -Descending
}
function q6($filename) {
    <# Write each of the elements provided on the pipeline to the
       file specified by the $filename argument on separate lines
	#>
    $nums = @($input)
    foreach ( $item in $nums ) {
        add-content -path $filename -Value $item
    }
    return $sum
}
function q7 {
	<# Return the list of all startup apps that have an 
       AppId 'not ending in }'.
    #>
    return (Get-StartApps | Where-Object -Property Appid -NotMatch "}$")
    
}
function q8($arr) {
    <# Combine the provided `$arr argument into a string separated 
       by a '-' between each element and return 
       this string #>
       
       $arr -join '-'
}
function q9($addr) {
	<# Return `$true when the given argument is an IPv4 address
	   within the class 'E' otherwise return `$false. 
       For an IPv4 address to be within class 'E', it
       must fall within the range '240.0.0.0' to
       '254.255.255.255'. 
	#>
    $ip = $addr.split('.')
    if ([int]$ip[0] -in 240..254) {
        return $true
    } else {
        return $false
    }
}
function q10 () {

    <# Return the current date/time as a string formatted in 
       the following way:
       YearMonthDay@Hour:Minute:Second
       For example, If the current date/time is 5 minutes and 
       2 seconds after 3 PM on February 8th, 2018, the return 
       value should be:  20180208@15:05:02
    #>
    Get-Date -format "yyyyMMdd@hh:mm:ss"
}
