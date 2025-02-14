#!/bin/bash
clear

# Script que comprueba si un fichero existe y es un fichero.

# echo "Dimer el nombre del fichero: "
# read fitx

read -p "Dime el nombre del fichero que quieres comprobar: " elem	# Recojo el nombre a comprobar

if test -r $elem
then
	echo "$elem tiene permisos r."
else
	echo "$elem NO tiene permisos r."
fi


exit 0
