clear-host

# Recogemos el número de la tabla que queremos mostrar.
[int]$num=read-host "Indica el número"

# Realizamos los calculos y los mostramos por pantalla

$res=$num*0
write-host "$num x 0 = $res"

$res=$num*1
write-host "$num x 1 = $res"

$res=$num*2
write-host "$num x 2 = $res"

$res=$num*3
write-host "$num x 3 = $res"

$res=$num*4
write-host "$num x 4 = $res"

$res=$num*5
write-host "$num x 5 = $res"

$res=$num*6
write-host "$num x 6 = $res"

$res=$num*7
write-host "$num x 7 = $res"

$res=$num*8
write-host "$num x 8 = $res"

$res=$num*9
write-host "$num x 9 = $res"

$res=$num*10
write-host "$num x 10 = $res"

exit 0