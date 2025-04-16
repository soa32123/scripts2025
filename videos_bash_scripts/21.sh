#!/bin/bash
clear

# 21.Mostrar la suma de todos los números pares que existen entre el 1 y el 100.

conteo=0	# Variable para llevar el conteo.

# Versión 1

for i in `seq 1 1 100`
do
	let par=$i%2
	if test $par -eq 0
	then
		#echo "$i es par."
		let conteo=$conteo+$i
	fi
done

echo "La suma de todos los valores pares que hay entre el 1 y el 100 es => $conteo"

# Versión 2

conte=0 

for i in `seq 2 2 100`
do
	let conte0=$conteo+$i
done

echo "La suma de todos los valores pares que hay entre el 1 y el 100 es => $conteo"

exit 0
