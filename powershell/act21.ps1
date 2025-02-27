clear-host

$dirIP=read-host "Indique la IP del ordenador a comprobar"

$resultado = Test-NetConnection -ComputerName $dirIP -InformationLevel Quiet

if ($resultado) {
    Write-Output "El equipo con IP $ip está encendido."
} else {
    Write-Output "El equipo con IP $ip está apagado o no responde."
}

exit 0