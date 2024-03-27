<# 1 #>
function q1($var1,$var2,$var3,$var4) {
    return $var1 * $var2 * $var3 * $var4
    <# Return the product of the arguments #>
}
function q2($arr,$rows,$cols,$key) {
    <# Search the 2 dimensional array for the first occurance of key at column index 0
       and return the value at column index 9 of the same row.
       Return -1 if the key is not found.
    #>
    foreach ($line in $arr) {
        if ($line[0] -eq $key) {
            return $line[9]
        }
    }
    Write-Output -1
}
function q3 {
    <# In a loop, prompt the user to enter positive integers one at time.
       Stop when the user enters a -1. Return the maximum positive
       value that was entered."
	#>
    $arr = @()
    do {
        $usr = read-host
        $arr += $usr
    } until ($usr -eq "-1")
    return ($arr | Measure-Object -Maximum).Maximum
}
function q4($filename,$whichline) {
    <# Return the line of text from the file given by the `$filename
	   argument that corresponds to the line number given by `$whichline.
	   The first line in the file corresponds to line number 0."
	#>
    Get-Content $filename | Select-Object -Index $whichline
    
}
function q5($path) {
    <# Return the child items from the given path sorted
       ascending by their Name
	#>
    $chile = get-childitem $path | sort name
    return $chile

}
function q6 {
    <# Return the sum of all elements provided on the pipeline
	#>



		$nums = @($input)
        foreach ( $item in $nums ) {
            $sum += $item
        }
        return $sum

}
function q7 {
	<# Return only those commands whose noun is process #>
    Get-Command -noun Process
}
function q8($adjective) {
    <# Return the string 'PowerShell is ' followed by the adjective given
	   by the `$adjective argument
	#>    
    return "PowerShell is $adjective"
}
function q9($addr) {
	<# Return `$true when the given argument is a valid IPv4 address,
	   otherwise return `$false. For the purpose of this function, regard
	   addresses where all octets are in the range 0-255 inclusive to
	   be valid.
	#>
    try {
        if ([IpAddress]$addr){
            return $true
        } else {
            return $false
        }
                
    }
    catch { return $false }
    
    
}
function q10 ($filepath,$lasthash) {
    <# Return `$true if the contents of the file given in the
       `$filepath argument have changed since `$lasthash was
       computed. `$lasthash is the previously computed SHA256
       hash (as a string) of the contents of the file. #>
       $newhash = (Get-FileHash -Algorithm SHA256 $filepath).hash
       if ( $newhash -eq $lasthash ) {
            return $false
       } else {
            return $true
       }
}
