#!/bin/bash
clear

# 1.Crea un script que te pida un número y te muestre por pantalla si ese número es mayor o menor de 100.

# echo "Indica un número:"
# read num

read -p "Indica un número: " num

if test $num -gt 100
then
	echo "El número $num es mayor de 100."
elif test $num -lt 100
then
	echo "El número $num es menor de 100."
fi


exit 0
