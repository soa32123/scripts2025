#!/bin/bash
clear

# Script que comprueba si un fichero existe y es un fichero.

# echo "Dimer el nombre del fichero: "
# read fitx

read -p "Dime el nombre del fichero que quieres comprobar: " fitx	# Recojo el nombre a comprobar

if test -f $fitx
then
	echo "$fitx es un fichero regular y existe."
else
	echo "$fitx NO es un fichero regular o NO existe."
fi


exit 0
