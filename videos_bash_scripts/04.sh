#!/bin/bash
clear

# 4.Crea un script en el cuál te pidan tu nombre. Si tu nombre es "julian", "julia", "julen" o "lucia" 
# debe mostrarte un mensaje de  bienvenida y si es otro, decirte que vuelvas más tarde.

read -p "Indique su nombre: " nom

if test $nom == "julian"
then
	echo "Bienvenido $nom."
elif test $nom == "julia"
then
	echo "Bienvenida $nom."
elif test $nom == "julen" || test $nom == "Julen"
then
	echo "Bienvenido $nom."
elif test $nom == "lucia"
then
	echo "Bienvenida $nom."
else
	echo "No vuelvas más."
fi


exit 0
