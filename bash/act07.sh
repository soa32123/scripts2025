#!/bin/bash
clear

# vamos a comprobar las siguientes condiciones:
# -z -> Comprueba si variable está vacía.
# -e -> Comprueba si existe.
# -s -> comprueba si un fichero NO está vacío

read -p "Indiqe su nombre: " nom
if test -z $nom
then
	echo "No has introducido tu nombre."
else
	echo "Hola $nom."
fi

read -p "Indique el nombre del elemento a comprobar si existe: " fitx
if test -e $fitx
then
	echo "$fitx existe."
else
	echo "$fitx NO existe."
fi

read -p "Dime el fichero a comprobar si está vacío: " compr
if test -s $compr
then
	echo "$compr NO está vacío."
else
	echo "$compr está vacío."
fi



exit 0
