#!/bin/bash
clear

# 20.Script que te pida un número y te muestre su factorial.

# 4! = 4*3*2*1
# 7! = 7*6*5*4*3*2*1

factorial=1	# Variable donde guardaremos el resultado. Factorial de un número.

read -p "Indique un número para calcular su factorial: " num

for i in `seq 1 1 $num`
do
	let factorial=$factorial*$i
done

echo "El factorial de $num es => $factorial"

exit 0
