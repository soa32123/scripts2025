Clear-Host

# 4.Crea un script en el cuál te pidan tu nombre. Si tu nombre es "julian", "julia", "julen" o "lucia" 
# debe mostrarte un mensaje de bienvenida y si es otro, decirte que vuelvas más tarde.

$nombre=Read-Host("Indique su nombre")

if($nombre -eq "Julian"){
    Write-Host "Bienvenido $nombre"
}elseif($nombre -eq "Julia"){
    Write-Host "Bienvenida $nombre"
}elseif($nombre -eq "Julen"){
    Write-Host "Bienvenido $nombre"
}elseif($nombre -eq "Lucia"){
    Write-Host "Bienvenida $nombre"
}else{
    write-host "Persona no identificada."
}





exit 0