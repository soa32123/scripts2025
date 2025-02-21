#!/bin/bash
clear

# Script que nos muestra el nombre de los ficheros TXT vacíos.

datos=`ls ./jordi/*.txt`

for i in $datos
do
	# echo "Comprobando el fichero $i"
	if ! test -s $i
	then
		echo "El fichero $i está vacío."
	fi
done

exit 0
