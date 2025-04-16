#!/bin/bash
clear

# 15.Contar el número de elementos que hay en el directorio que tú indiques.

read -p "Indique el directorio: " direct

conteo=0	# Variable para el conteo de elementos

datos=`ls $direct`

for i in $datos
do
	let conteo=$conteo+1
done

echo "El número de elementos es: $conteo"



exit 0
