#!/bin/bash
clear

# Código de errores
# 1 -> El fichero no existe
# 2 -> La ruta de destino no existe
# 3 -> Problemas para copiar

# Crea un script que te pida el nombre de un fichero y una ruta absoluta.
# Se debe copiar el fichero indicado a la ruta que hayas indicado.

read -p "Indica el nombre del fichero a copiar: " fitx
read -p "Indica la ruta donde copiar el fichero: " ruta

if ! test -f $fitx
then
	echo "El fichero $fitx no existe."
	exit 1
fi

if ! test -d $ruta
then
	echo "La ruta $ruta no existe."
	exit 2
fi

if cp $fitx $ruta &>/dev/null
then
	echo "Se copió el fichero $fitx a la ruta $ruta."
else
	echo "Problemas al copiar el fichero."
	exit 3
fi



exit 0
