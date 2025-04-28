Clear-Host

# 7.Mostrar todos los directorios que existen en el directorio en el que te encuentras.

# Versión 1
Get-ChildItem -Directory

# Versión 2
$datos=Get-ChildItem -Directory

foreach($i in $datos){
    write-host "Dato recogido =>$i"
}






exit 0