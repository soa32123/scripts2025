#!/bin/bash
clear

# 19.Script que borre aquellos directorios que estén vacíos.

# Versión 1
# find ./pruebas -type d -empty -exec rmdir {} \; &>/dev/null

# Versión 2

datos=`ls -l ./pruebas|tail -n+2|grep ^d|tr -s " "|cut -f9 -d" "`

for i in $datos
do
	nlin=`ls -l ./pruebas/$i|tail -n+2|wc -l`
	if test $nlin -eq 0
	then
		if rmdir ./pruebas/$i &>/dev/null
		then
			echo "Se borró el directorio ./pruebas/$i de manera correcta."
		else
			echo "Problemas al borrar el directorio ./pruebas/$i. Llame al administrador."
		fi
	fi

done



exit 0
