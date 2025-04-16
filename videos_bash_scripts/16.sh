#!/bin/bash
clear

# 16.Dime el número mayor que hay dentro de un fichero txt que tiene diez números -uno por cada línea-.

datos=`cat ./pruebas/numeros.txt`
num=0

for i in $datos
do
	if test $i -gt $num
	then
		num=$i
	fi
done

echo "El número mayor es: $num"


exit 0
