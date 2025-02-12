#!/bin/bash
clear

echo "Dime tu nombre: "
read nom

if test $nom == "julian"
then
	echo "Hola julian."
elif test $nom == "julia"
then
	echo "Hola julia."
elif test $nom == "lucia"
then
	echo "Hola lucia."
elif test $nom == "julen"
then
	echo "Hola julen."
else
	echo "¿Tú quien eres?"
fi



exit 0
