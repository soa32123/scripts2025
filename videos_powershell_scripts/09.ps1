Clear-Host

# 9.Imprimir por pantalla los números 10 9 8 7 6 5 4 3 2 1 0
# (haz dos versiones, una usando el for y otra sin usarlo).

# Versión 1
Write-Host "10"
Write-Host "9"
Write-Host "8"
Write-Host "7"
Write-Host "6"
Write-Host "5"
Write-Host "4"
Write-Host "3"
Write-Host "2"
Write-Host "1"
Write-Host "0"

# Version 2
# $i-- => $i=$i-1
for($i=10;$i -ge 0;$i--){
    Write-Host "$i"
}


exit 0