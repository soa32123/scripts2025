#!/bin/bash
clear

read -p "Dime el nombre del elemento que quieres comprobar: " nom

if test -f $nom
then
	echo "$nom es un fichero regular y extiste."
elif test -d $nom
then
	echo "$nom es un directorio y existe."
else
	echo "$nom NO es un directorio NI un fichero regular o no EXISTE."
fi



exit 0
