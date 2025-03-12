#!/bin/bash
clear

# Código de errorres
# 1 -> el fichero indicado no existe.

read -p "Indica el nombre de un fichero: " fitx

if test -f $fitx
then
	perm=`ls -l $fitx|tr -s " "|cut -f1 -d" "|cut -c2,3,4`	
	up=`ls -l $fitx|tr -s " "|cut -f3 -d" "`	
	tam=`ls -l $fitx|tr -s " "|cut -f5 -d" "`
	echo "Permisos: $perm => Usuario: $up => Tamaño: $tam"
else
	echo "El fichero que has indicado no existe."
	exit 1
fi

exit 0
