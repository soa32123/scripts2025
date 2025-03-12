#!/bin/bash
clear

# Código de errores
# 1 -> Opción del menú incorrecta
# 2 -> No se pudo crear el usuario
# 3 -> No se pudo crear el grupo
# 4 -> Problemas para añadir el usuario al grupo

# Crea un script que muestre un menú con tres opciones.
# La opción 1 debe pedirte el nombre del usuario y crearlo.
# La opción 2 debe pedirte el nombre de un grupo y crearlo.
# La opción 3 debe pedirte el nombre de un usuario y un grupo y añadir dicho
# usuario al grupo indicado.
# Se debe hacer control de errores.


echo "1- Crear usuario"
echo "2- Crear grupo"
echo "3- Aádir usuario a grupo"

read -p "Indica la opción a ejecutar [1-3]: " opc

if test $opc -eq 1
then
	read -p "Indica el nombre del usuario a crear: " usu
	if useradd -m $usu &>/dev/null
	then
		echo "Usuario $usu creado."	
	else
		echo "Problemas al crear el usuario $usu."
		exit 2
	fi

elif test $opc -eq 2
then
	read -p "Indica el nombre del grupo a crear: " grup
	if addgroup $grup &>/dev/null
	then
		echo "Grupo $grup creado."	
	else
		echo "Problemas al crear el grupo $grup."
		exit 2
	fi

elif test $opc -eq 3
then

	read -p "Indica el nombre del usuario: " usu
	read -p "Indica el nombre del grupo: " grup
	if usermod $usu -aG $grup &>/dev/null
	then
		echo "Usuario $usu añadido al grupo $grup."	
	else
		echo "Problemas al añadir el usuario $usu al grupo $grup."
		exit 2
	fi
else
	echo "Usted no escogió una opción correcta."
	echo "Sólo existen tres opciones en el menú."
	exit 1
fi


exit 0
