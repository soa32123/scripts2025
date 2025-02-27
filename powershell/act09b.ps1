clear-host

# Recogemos el valor para la tabla de multiplicar
[int]$num=read-host "Indica el número"

# Método 1
# foreach($i in 0..10){}

for($i=0;$i -le 10;$i=$i+1){
    $res=$num*$i
    write-host "$num x $i = $res"
}

exit 0