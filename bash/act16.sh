#!/bin/bash
clear

cant=0	# Inicializamos la variable
datos=`ls ./jordi`

cd jordi

for i in $datos
do
	if test -f $i
	then
		let cant=$cant+1
	fi

done

cd .. # Salimos de jordi

echo "Hay un total de $cant ficheros regulares."


exit 0
