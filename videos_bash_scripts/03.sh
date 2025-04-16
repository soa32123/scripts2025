#!/bin/bash
clear

# 3.Crea un script en el cuál indicas tu edad y si eres mayor de 18 años podrás conducir sino no podrás.

read -p "Indique su edad: " edad

if test $edad -ge 18
then
	echo "Usted puede conducir."
else
	echo "Usted no puede conducir aún."
fi


exit 0
