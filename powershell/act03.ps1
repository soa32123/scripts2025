clear-host

[int]$edad=read-host "Dime tu edad"

if($edad -gt 21){
    write-output "Eres mayor de 21. Puedes beber."
}else{
    write-output "Eres menor de 21. No puedes beber."
}

exit 0