#!/bin/bash
clear

# Scripts que borre aquellos directorios que estén vacíos.

# Método 1

# find . -type d -maxdepth 1 -empty -exec rmdir {} ;

# Método 2

datos=`ls`

for i in $datos
do
	if test -d $i
	then
		cant=`ls $i|wc -l`
		if test $cant -eq 0
		then
			echo "Procedemos a borrar el directorio $i."
			rmdir $i
		fi
	fi 
done



exit 0
