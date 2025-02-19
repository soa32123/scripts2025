#!/bin/bash
clear

read -p "Número: " num1

for i in `seq 0 1 10`
do
	let resul=$num1*$i
	echo "$num1*$i= $resul"
done








exit 0
