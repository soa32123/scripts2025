 clear-host

 # Si tu nombre es "julian", "julia", "julen" o "lucia" d

 [string]$nom=read-host "Dime tu nombre"

 if($nom -like "julian"){
    write-output "Hola Julian."
 }elseif($nom -like "julia"){
    write-output "Hola Julia."
 }elseif($nom -like "julen"){
    write-output "Hola Julen."
 }elseif($nom -like "lucia"){
    write-output "Hola Lucia."
 }else{
    Write-Output "Usuario desconocido. ¡Auxilio!"
 }

 exit 0