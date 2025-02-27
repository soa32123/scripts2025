clear-host

[int]$num=read-host "Dime un número"

if($num -gt 100){
    write-output "El número $num es mayor que 100."
}elseif ($num -lt 100){
    write-output "El número $num es menor que 100."
}else{
    write-output "El número es exactamente 100."
}

exit 0