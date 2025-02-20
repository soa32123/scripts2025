#!/bin/bash
clear
# Mostrar los ficheros regulares

# Opción 1
# ls -l|grep ^-|tr -s " "|cut -f9 -d" "

# Opción 2
datos=`ls ./jordi/`

cd jordi

for i in $datos
do
	echo "Comprobando el elemento => $i"
	if test -f $i
	then
		echo "$i es un fichero regular"
	fi
done

cd ..

exit 0
