#!/bin/bash
clear
# Mostrar los ficheros regulares


# Opción 2
datos=`ls ./jordi/`

echo "Los datos que hemos recogido son: $datos"

cd jordi

for i in $datos
do
	echo "Comprobando el elemento => $i"
	if test -d $i
	then
		echo "$i es un directorio."
	else
		echo "$i NO es un directorio."
	fi
done

cd ..

exit 0
