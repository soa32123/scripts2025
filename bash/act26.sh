#!/bin/bash
clear

# Script que muestre cuál es la capacidad total que ocupa todos los ficheros 
# regulares de un directorio que indiques.

tam=0

for i in `ls`
do
	if test -f $i
	then
		tamfitx=`ls -l $i|tr -s " "|cut -f5 -d" "`
		echo "El tamaño de $i es $tamfitx"
		let tam=$tam+$tamfitx
	fi
done

echo "El tamaño total es $tam."

exit 0
