#!/bin/bash
clear

# Mostrar la suma de todos los números pares que existen entre el1 y el 100.

cant=0

for i in `seq 2 2 100`
do
	let cant=$cant+$i
done

echo "La suma de todos los números desde el 1 al 100 es $cant"


exit 0
