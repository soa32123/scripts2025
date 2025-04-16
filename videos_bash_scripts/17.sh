#!/bin/bash
clear

# 17.Script que sume todos los números que hay en un fichero .txt (un número por cada lína)

datos=`cat ./pruebas/numeros.txt`
conteo=0	# Variable para el conteo

for i in $datos
do
	let conteo=$conteo+$i
done

echo "El valor total es: $conteo"


exit 0
