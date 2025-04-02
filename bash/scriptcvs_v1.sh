#!/bin/bash
clear

datos=`cat datos.csv|tail -n+2`

for i in $datos
do
	usu=`echo $i|cut -f1 -d","`
	con=`echo $i|cut -f2 -d","`
	gs=`echo $i|cut -f3 -d","`
	if useradd $usu -G $gs -m
	then
		echo "$usu:$con" | chpasswd		
	else
		echo "Problemas al crear el usuario $usu"
	fi
done
exit 0
