#!/bin/bash
clear

for i in `seq 1 1 10`
do
	echo "El valor recogido es => $i"
	useradd usuario$i -m
	echo "usuario$i:1234" | chpasswd 
done


exit 0
