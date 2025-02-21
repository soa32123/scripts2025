#!/bin/bash
clear

mia=0	# Variable donde guardo el mayor
datos=`cat num.txt`

for i in $datos
do
	# echo "DATO => $i"
	if test $i -gt $mia
	then
		mia=$i
	fi
done

echo "El mayor número almacenado en el fichero es $mia"

exit 0
