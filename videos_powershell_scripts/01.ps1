Clear-Host

# 1.Crea un script que te pida un número y te muestre por pantalla si ese número es mayor o menor de 100.

# [int]$num=0

[int]$num=Read-Host("Indique un número")

if($num -gt 100){
    Write-Host "El número $num es mayor de 100."
}elseif($num -lt 100){
    Write-Host "El número $num es menor de 100."

}



exit 0