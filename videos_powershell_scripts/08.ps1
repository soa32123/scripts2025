Clear-Host

# 8.Copiar todos los ficheros con extensión txt a .\backup

# Versión 1
Copy-Item *.txt .\backup\

# Versión 2
$datos=Get-ChildItem -File *.txt

foreach($i in $datos){
    # write-host "Dato recogido => $i"
    Copy-Item $i .\backup\
}






exit 0