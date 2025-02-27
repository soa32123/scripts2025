clear-host

$datos=get-childitem *.txt

# Falta añadir control de errores

foreach($fitx in $datos){
    write-host "Copiando $fitx a .\backup\"
    cp $fitx .\backup\
}

exit 0