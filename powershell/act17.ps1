clear-host

# Borrar ficheros que estén vacíos

$elementos=Get-childitem .\jordi\

Write-Output "Elementos => $elementos"

# Recorremos todos los eleentos para encontrar
# los ficheros y comprobar si están vacíos.
foreach($i in $elementos){
    
    # Comprobamos si el elemento es un fichero
    if(Test-Path .\jordi\$i -PathType Leaf){
    
        # Comprobamos si está vacío.
        if($i.Length -eq 0){
            Remove-Item .\jordi\$i # Sería mejor usar try...catch

        }
    }

}

exit 0