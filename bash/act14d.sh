#!/bin/bash
clear

# Script que nos muestra el nombre de los ficheros TXT vacíos.

datos=`cat datos.txt`

for i in $datos
do
	tam=`echo $i|cut -f2 -d";"`
	nom=`echo $i|cut -f1 -d";"`
	# echo "Comprobamos fichero => $nom de tamaño => $tam"
	if test $tam -eq 0
	then
		echo "$nom está vacío."
	fi
done

exit 0
