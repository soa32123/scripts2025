#!/bin/bash
clear

# 29. Crea un script que lea de un fichero CSV el comando y parámetros que posteriormente
# debe ejecutar.
# El fichero CSV contendrá tres campos, el 1er campo será el comando a ejecutar, el 2do
# campo será la fuente de datos y el 3er campo el destino.
# Un ejemplo, cp,/f1.txt,/home/backup/ => copiaría el fichero /f1.txt a /home/backup/

datos=`cat ./29.csv|tail -n+2`

for i in $datos
do
	comando=`echo $i|cut -f1 -d","`	
	origen=`echo $i|cut -f2 -d","`	
	destino=`echo $i|cut -f3 -d","`	

	if $comando $origen $destino &>/dev/null
	then
		echo "El comando: $comando $origen $destino se ejecutó correctamente."
	else
		echo "El comando: $comando $origen $destino NO se ejecutó correctamente. Póngase en contacto con el administrador."
	fi
done



exit 0
