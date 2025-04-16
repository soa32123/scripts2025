#!/bin/bash
clear

# 18.Script que borre aquellos ficheros regulares que estén vacíos.

datos=`ls ./pruebas`

for i in $datos
do
	if test -f ./pruebas/$i
	then
		tam=`du ./pruebas/$i|cut -f1`
		nom=`du ./pruebas/$i|cut -f2`
		if test $tam -eq 0
		then
			if rm $nom &>/dev/null	# >/dev/null 2>/dev/null
			then
				echo "Borrado existoso de => $nom."
			else
				echo "Problemas al borrar $nom. Llame al administrador."
			fi
		fi
	fi
done


exit 0
