#!/bin/bash
clear

for i in `seq 1 1 10`
do
	echo "El valor recogido es => $i"
	userdel -r usuario$i
done


exit 0
