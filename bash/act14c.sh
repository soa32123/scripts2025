#!/bin/bash
clear

# Script que nos muestra el nombre de los ficheros TXT vacíos.

datos=`ls ./jordi/*.txt`

for i in $datos
do
	tam=`du $i|cut -f1`
	if test $tam -eq 0
	then
		echo "$i está vacío."
	fi
done

exit 0
