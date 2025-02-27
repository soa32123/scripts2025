clear-host

$datos=Get-Content num.txt
$mayor=0 # Almacenaremos el número mayor
Write-Output "$datos"
foreach ($i in $datos){
    if($i -gt $mayor){
        $mayor=$i
    }
}

Write-Output "El número mayor es $mayor"

exit 0