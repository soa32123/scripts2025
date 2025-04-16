#!/bin/bash
clear

# 14.Contar el número de directorios que hay en el directorio que tú indiques.

read -p "Indica el directorio: " direct

conteo=0	# Variable para contar el número de directorios

datos=`ls -l $direct|grep ^d|tr -s " "|tr " " "#"`
# datos=`ls -l|grep ^d|tr -s " "|cut -f9 -d" "`

for i in $datos
do
	let conteo=$conteo+1
done

echo "el número de directorios es: $conteo"


exit 0
