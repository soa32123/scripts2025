clear-host

[int]$num=read-host "Indique un número"
$resul=1
for($i=$num; $i -ge 1 ; $i=$i-1){
    $resul=$resul*$i
}

Write-Output "El factorial de $num => $resul"
exit 0