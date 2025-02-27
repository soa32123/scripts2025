clear-host

$datos=Get-content num.txt
$total=0

Write-Output "$datos"

foreach($i in $datos){
    $total=$total+$i
}

Write-Output "El total es => $total"
exit 0