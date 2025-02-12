#!/bin/bash
clear

echo "Dime un número: "
read num

if test $num -gt 100
then
	echo "El $num es mayor de 100."
elif test $num -lt 100
then
	echo "El nñumero $num es menor de 100."
else
	echo "El número $num es justamente 100."
fi




exit 0
