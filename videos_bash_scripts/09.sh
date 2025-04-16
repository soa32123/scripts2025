#!/bin/bash
clear

# 9.Imprimir por pantalla los números 10 9 8 7 6 5 4 3 2 1 0 (haz dos versiones, una usando el for y otra sin usarlo).

# Versión 1

echo "10"
echo "9"
echo "8"
echo "7"
echo "6"
echo "5"
echo "4"
echo "3"
echo "2"
echo "1"
echo "0"

# Versión 2
for i in `seq 10 -1 0`
do
	echo "$i"
done




exit 0
