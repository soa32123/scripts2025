clear-host

$cant=0

for($i=2; $i -le 100; $i=$i+2){
    $cant=$cant+$i
}

Write-Output "La suma de todos los números pares es => $cant"

exit 0