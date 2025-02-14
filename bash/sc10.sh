#!/bin/bash
clear

# Script que comprueba si un fichero existe y es un fichero.

# echo "Dimer el nombre del fichero: "
# read fitx

read -p "Dime el nombre del fichero que quieres comprobar: " elem	# Recojo el nombre a comprobar

if test -d $elem
then
	echo "$elem es un directorio y existe."
else
	echo "$elem NO es un diretorio o NO existe."
fi


exit 0
