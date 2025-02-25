#!/bin/bash
clear

# Script que te pida un número y te muestre su factorial.

read -p "Indica un número: " num

valor=1

for i in `seq $num -1 1`
do
	let valor=$valor*$i	
done

echo "El factorial de $num es => $valor"

exit 0
