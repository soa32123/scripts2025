#!/bin/bash
clear

read -p "Dime el nombre de un usuario: " usu

if useradd -m $usu &>/dev/null
then
	echo "El usuario $usu se ha creado correctamente."
else
	echo "El usuario $usu no se ha podido crear."
	exit 1
fi

exit 0
