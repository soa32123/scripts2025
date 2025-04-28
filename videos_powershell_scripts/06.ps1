Clear-Host

# 6.Mostrar todos los ficheros del directorio en el que te encuentras.

# Versión 1
Get-ChildItem -File

# Versión 2
$datos=Get-ChildItem -File

foreach($i in $datos){
    Write-Host "Dato recogido => $i"
}


exit 0