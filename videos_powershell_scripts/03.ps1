Clear-Host

# 3.Crea un script en el cuál indicas tu edad y si eres mayor de 18 años podrás conducir sino no podrás.

[int]$edad=Read-Host("Indique su edad")

if($edad -ge 18){
    Write-Host "Puedes conducir."
}else{
    Write-Host "No puedes conducir."
}






exit 0