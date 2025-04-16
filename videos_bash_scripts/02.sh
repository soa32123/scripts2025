#!/bin/bash
clear

# 2.Modifica el script anterior para que también te muestre el mensaje  "has introducido justamente el número 100".

read -p "Indique el número: " num

if test $num -gt 100
then
	echo "El número $num es mayor de 100."
elif test $num -lt 100
then
	echo "El número $num es menor de 100."
else
	echo "el número es 100."
fi


exit 0
