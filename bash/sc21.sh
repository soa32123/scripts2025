#!/bin/bash
clear

for i in `ls ./jordi/`
do
	echo "El valor recogido es => $i"
	# du -h ./jordi/$i
	cd jordi
	du -h $i
	cd ..

done



exit 0
