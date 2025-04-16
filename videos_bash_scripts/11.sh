#!/bin/bash
clear

# 11.Imprimir por pantalla el nombre de los ficheros con extensión txt que estén vacíos.

# Recoger el nombre de todos los ficheros
# Comprobar el tamaño de cada fichero, uno por uno.
# Aquellos que ocupen 0, mostrar el nombre.

datos=`ls ./pruebas/*.txt`
for i in $datos
do
	if test -f $i
	then
		tam=`du $i|cut -f1`
		nom=`du $i|cut -f2`
		if test $tam -eq 0
		then
			echo "El fichero $nom ocupa 0 y tiene extensión .txt."
		fi
	fi
done

exit 0
