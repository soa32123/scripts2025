clear-host

# Existe otros métodos alternativos.
# Hacer uso de Get-ChildItem y la columna Mode "-*"
# Hacer uso de Get-Item y PsiContainer

$cantidadDirectorios=0 # Variable para contar ficheros regulares.

$elementos=Get-ChildItem

foreach($i in $elementos){

    if (Test-Path $i -PathType Container) {
        Write-Output "$i es un directorio."
        $cantidadDirectorios=$cantidadDirectorios+1
    } elseif (Test-Path $i -PathType Leaf) {
        Write-Output "$i es un archivo."
    }
}

write-output "En total hay $cantidadDirectorios directorios en el directorio actual."

exit 0