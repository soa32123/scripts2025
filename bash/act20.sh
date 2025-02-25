#!/bin/bash
clear

# Script que sume todos los números que hay en un fichero .txt (un número por cada lína)

datos=`cat num.txt`
ntotal=0

for i in $datos
do
	let ntotal=$ntotal+$i	
done

echo "La suma total es de $ntotal."

exit 0
