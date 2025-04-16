#!/bin/bash
clear

# 26. Crea un script que indique el nombre de aquellos usuarios que sean personas y no del sistema.

usu=`cat /etc/passwd|cut -f1,3 -d":"`

for i in $usu
do
	usuario=`echo $i|cut -f1 -d":"`
	usuarioid=`echo $i|cut -f2 -d":"`

	if test $usuarioid -ge 1000
	then
		echo "El usuario $usuario es un usuario real."
	fi
done



exit 0
