Clear-Host

# 2.Modifica el script anterior para que también te muestre el mensaje  "has introducido justamente el número 100".

[int]$num=Read-Host("Introduce un número")


# Versión 1
if($num -gt 100){
    write-host "El número $num es mayor de 100."
}elseif($num -lt 100){
    write-host "El número $num es menor de 100."
}elseif($num -eq 100){
    Write-Host "Has introducido justamente el número 100."
}

# Versión 2
if($num -gt 100){
    write-host "El número $num es mayor de 100."
}elseif($num -lt 100){
    write-host "El número $num es menor de 100."
}else{
    Write-Host "Has introducido justamente el número 100."
}



exit 0