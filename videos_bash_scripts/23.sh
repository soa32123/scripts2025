#!/bin/bash
clear

# 23.Script que muestre cuál es la capacidad total que ocupan todos los ficheros 
# regulares de un directorio que indiques.

read -p "Indica un directorio: " direct

datos=`ls -l $direct|grep ^-|tr -s " "|cut -f5 -d" "`
ttotal=0	# Variable que almacena la capacidad total

for i in $datos
do
	let ttotal=$ttotal+$i
done

echo "La capacidad total es $ttotal"

exit 0
