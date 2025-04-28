Clear-Host

# 10.Solicita un número y que muestre por pantalla su tabla de multiplicar 
# (haz dos versiones, una usando el for y otra sin usarlo).

[int]$num=read-host("Indique un número")

# Versión 1
$resul=$num*0
Write-Host "$num x 0 = $resul"
$resul=$num*1
Write-Host "$num x 1 = $resul"
$resul=$num*2
Write-Host "$num x 2 = $resul"
$resul=$num*3
Write-Host "$num x 3 = $resul"
$resul=$num*4
Write-Host "$num x 4 = $resul"
$resul=$num*5
Write-Host "$num x 5 = $resul"
$resul=$num*6
Write-Host "$num x 6 = $resul"
$resul=$num*7
Write-Host "$num x 7 = $resul"
$resul=$num*8
Write-Host "$num x 8 = $resul"
$resul=$num*9
Write-Host "$num x 9 = $resul"
$resul=$num*10
Write-Host "$num x 10 = $resul"

# Versión 2
# $i++ => $i=$i+1
for($i=0;$i -le 10; $i++){
    $resul=$num*$i
    Write-Host "$num x $i = $resul"
}




exit 0