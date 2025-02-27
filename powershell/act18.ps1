clear-host

$elementos=Get-ChildItem .\jordi

Write-Output "Elementos => $elementos"

foreach($i in $elementos){
    
    # Comprobamos si el elemento es un directorio
    if(Test-Path .\jordi\$i -PathType Container){
        $cant=Get-Childitem .\jordi\$i
        if($cant.Count -eq 0){
            Write-Output "$i VACÍO."
            Remove-Item .\jordi\$i # Sería mejor try...catch
        }
    }
}


exit 0