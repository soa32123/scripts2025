#!/bin/bash
clear

# 10.Solicita un número y que muestre por pantalla su tabla de multiplicar 
# (haz dos versiones, una usando el for y otra sin usarlo).

read -p "Indique un número del 1 al 10: " num

# Versión 1

let resul=$num*0
echo "$num x 0 = $resul"
let resul=$num*1
echo "$num x 1 = $resul"
let resul=$num*2
echo "$num x 2 = $resul"
let resul=$num*3
echo "$num x 3 = $resul"
let resul=$num*4
echo "$num x 4 = $resul"
let resul=$num*5
echo "$num x 5 = $resul"
let resul=$num*6
echo "$num x 6 = $resul"
let resul=$num*7
echo "$num x 7 = $resul"
let resul=$num*8
echo "$num x 8 = $resul"
let resul=$num*9
echo "$num x 9 = $resul"
let resul=$num*10
echo "$num x 10 = $resul"


# Versión 2

for i in `seq 0 1 10`
do
	let resul=$num*$i
	echo "$num x $i = $resul"
done

exit 0
