#!/bin/bash
clear

read -p "Dime un número: " num

if test $num -gt 10 -a test $num -lt 5
then
	echo "ESTAMOS DENTRO"
else
	echo "ESTAMOS FUERA"
fi


if test $num -gt 10 -o test $num -lt 5
then
	echo "ESTAMOS DENTRO 2"
else
	echo "ESTAMOS FUERA 2"
fi

exit 0
