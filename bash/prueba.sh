#!/bin/bash
#clear

for i in `ls ./jordi/*.txt`
do
	if test -s $i
	then
		echo "El fichero $i tiene datos."
	else
		echo "El fichero $i está vacío."
	fi
done



exit 0
