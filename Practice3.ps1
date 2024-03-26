$array1 = get-random -Minimum -10 -Maximum 0
$array2 = get-random -minimum -1 -maximum 20 
$array = $array1..$array2 

$arrayrev = $array2..$array1 
$arrayrev
