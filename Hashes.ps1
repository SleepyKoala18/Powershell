Arrays & Hash Tables 


$employee1 = [ordered]@{}

$employee1.First = "Mary"
$employee1.add("Last","Hopper")
$employee1["ID"] = "001" 
$employee1["Job"] = "Software Lead" 

$employee2 = [ordered]@{}

$employee2.First = "John"
$employee2.add("Last","Williams")
$employee2["ID"] = "002" 
$employee2["Job"] = "Web Developer"

$employee1.Username = "mhopper001"
$employee2["Username"] = "jwilliams002"

$employee3 = [Ordered]@{} 

$employee1.Status = "Management"
$employee2["Status"] = "Intermediate"
