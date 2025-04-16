#!/bin/bash
clear

# 13.Contar el número de ficheros regulares que hay en el directorio que tú indiques.

read -p "Indique el directorio con el que trabajar: " direct
conteo=0	# Variable para contar los ficheros regulares

# Versión 1
datos=`ls $direct`


# Versión 2
#datos2=`ls -l $direct|tr -s " "|grep ^-`

for i in $datos
do
	if test -f $direct/$i
	then
		let conteo=$conteo+1
	fi

done

echo "El número total de ficherois regulares es: $conteo"

exit 0
