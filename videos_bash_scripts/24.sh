#!/bin/bash
clear

# 24.Script que muestre un menú por pantalla con tres opciones. 
# La opción 1 debe pedir un número y decir si es par o impar, 
# la opción 2 debe pedir el nombre de un usuario y crearlo en el sistema y 
# la opción tres, debe pedir el nombre de un grupo y crearlo.

# Códigos de errores:
#
# 1 - Se escogió una opción del menú incorrecta.


echo "1- Par o impar."
echo "2- Crear usuario."
echo "3- Crear grupo."

read -p "Escoja una opción [1-3]: " opc

if test $opc -eq 1
then
	read -p "Indique un número: " num
	let parimpar=$num%2
	if test $parimpar -eq 0
	then
		echo "El número $num es par."
	else
		echo "El número $num es impar."
	fi
elif test $opc -eq 2
then
	read -p "Indique el nombre del usuario a crear: " usu
	if useradd $usu -m &>/dev/null
	then
		echo "El usuario $usu se creó correctamente."
	else
		echo "El usuario $usu no pudo crearse. Póngase en contacto con el administrador."
	fi
elif test $opc -eq 3
then
	read -p "Indique el nombre del grupo a crear: " grup
	if groupadd $grup &>/dev/null
	then
		echo "El grupo $grup se creó correctamente."
	else
		echo "El grupo $grup no pudo crearse. Póngase en contacto con el administrador."
	fi
else
	echo "Usted no escogió una opción correcta."
	exit 1
fi

exit 0
