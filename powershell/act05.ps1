clear-host

$datos=Get-ChildItem

foreach($dato in $datos){
    # Método 1
    $m=$dato.PSIsContainer
    write-host "ESTO ==> $m"
    # Método 2
    if($dato.Mode -match "d"){
        write-host ""
    }else{
        Write-Output "$dato es un fichero."
    }

    # Método 3
    if(-not($dato.Mode -match "d")){
        write-host "$dato es un fichero."
    }

}


exit 0