#!/bin/bash
clear

# Script que muestre un menú por pantalla con tres opciones. La opción 1 debe 
# pedir un número y decir si es par o impar, la opción 2 debe pedir el nombre 
# de un usuario y crearlo en el sistema y la opción tres, debe pedir el nombre 
# de un grupo y crearlo.

# Comentar el uso de >/dev/null 2>/dev/null y &>/dev/null

echo "1- Par o impar"
echo "2- Crear usuario"
echo "3- Crear grupo"

read -p "Escoja una opción [1-3]: " opc

if test $opc -eq 1
then
	read -p "Indica un número: " num
	let mod=$num%2
	if test $mod -eq 0
	then
		echo "$num es PAR."
	else
		echo "$num es IMPAR."
	fi
elif test $opc -eq 2
then
	read -p "Indica el nombre de un usuario a crear: " usu
	if useradd $usu -m
	then
		echo "Usuario $usu creado correctamente."
	else
		echo "Usuario $usu no se ha podido crear correctamente."
	fi
elif test $opc -eq 3
then
	read -p "Indica el nombre del grupo a crear: " grp
	if addgroup $grp
	then
		echo "Grupo $grp creado correctamente."
	else
		echo "Grupo $grp no se ha podido crear correctamente."
	fi

else
	echo "Usted ha escogido una opción incorrecta."
fi



exit 0
