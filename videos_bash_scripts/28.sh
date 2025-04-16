#!/bin/bash
clear

# 28. Crea un script que muestre la información de los usuarios que no sean del sistema
# como se indica a continuación --->  usuario => nombre del grupo principal => directorio home => UID

datos=`cat /etc/passwd|cut -f1,3,4,6 -d":"`

for i in $datos
do
	nom=`echo $i|cut -f1 -d":"`
	usuid=`echo $i|cut -f2 -d":"`
	dirhome=`echo $i|cut -f4 -d":"`
	grupop=`echo $i|cut -f3 -d":"`

	# Comprobamos si el usuario es una persona a partir de su ID >= 1000

	if test $usuid -ge 1000
	then
		nomgrup=`cat /etc/group|cut -f1,3 -d":"|grep -w $grupop$|cut -f1 -d":"`
		echo "$nom => $nomgrup => $dirhome => $usuid"
	fi
done
exit 0

