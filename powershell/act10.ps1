clear-host

# Recogemos todos los elementos del directorio actual
$elements=Get-ChildItem *.txt

foreach($i in $elements){
    #write-host "Comprobando elemento => $i"

    # Length es el tamaño del fichero
    if($i.Length -eq 0){
        write-host "El fichero txt => $i está vacío."
    }

}

exit 0