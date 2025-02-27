clear-host

# Existe otros métodos alternativos.
# Hacer uso de Get-ChildItem y la columna Mode "-*"
# Hacer uso de Get-Item y PsiContainer

$cantidadElementos=0 # Variable para contar ficheros regulares.

#$ruta=read-host "Indica la ruta"
#$elementos=Get-ChildItem $ruta

$elementos=Get-ChildItem

foreach($i in $elementos){

    $cantidadElementos=$cantidadElementos+1
   
}

write-output "En total hay $cantidadElementos elementos en el directorio actual."

exit 0