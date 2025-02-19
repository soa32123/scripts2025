#!/bin/bash
clear
# Mostrar los ficheros regulares


# Opción 2
datos=`ls ./jordi/`

for i in $datos
do
	echo "Comprobando el elemento => $i"
	if test -d $i
	then
		echo "$i es un directorio"
	fi
done



exit 0
