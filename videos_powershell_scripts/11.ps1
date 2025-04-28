Clear-Host

# 11.Imprimir por pantalla el nombre de los ficheros con extensión txt que estén vacíos.

 Get-ChildItem -File *.txt

 Write-Host "*************************"

 Get-ChildItem -File | Where-Object { $_.Length -eq 0 }

 Get-ChildItem -File | Where-Object { $_.Mode }




exit 0