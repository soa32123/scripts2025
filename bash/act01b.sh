#!/bin/bash
clear

echo "Dime un número: "
read num

if test $num -gt 100
then
	echo "El $num es mayor de 100."
fi
if test $num -lt 100
then
	echo "El nñumero $num es menor de 100."
fi




exit 0
