#!/bin/bash
clear

# 27. Crea un script al cual se le pase por argumento el nombre de un grupo. 
# Debe comprobar si existe y decir si hay usuarios que usen dicho grupo como 
# grupo secundario.

# Código errores:
#
# 1 - Número de argumentos incorrecto.
# 2 - Grupo no existe.


if test $# -ne 1
then
	echo "Se ejecutó de manera incorrecta el script."
	echo "Debe ejecutar: $0 nombreGrupo"
	exit 1
fi

if cat /etc/group|grep -w ^$1 &>/dev/null
then
	usuarios=`cat /etc/group|grep -w ^$1|cut -f4 -d":"`
else
	echo "El grupo indicado no existe."
	exit 2
fi

echo "Los usuarios que usan el grupo $1 como grupo secundario son: $usuarios"








exit 0
