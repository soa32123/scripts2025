#!/bin/bash
clear

# Script que borre aquellos ficheros regulares que estén vacíos.

fitx=`ls ./jordi`

cd jordi

for i in $fitx
do
	if test -f $i
	then
		if ! test -s $i
		then
			echo "Procedemos a borrar $i..."
			rm $i
		fi
	fi
done

cd ..

exit 0
