#!/bin/bash
clear

# Script que compruebe si un ordenador está encendido o no.

# Podemos hacer uso del comando ping para comprobar si está encendido o no.

read -p "Indica la dirercción IP del PC: " dir

# Debemos añadir >/dev/null 2>/dev/null o &>/dev/null

if ping -c 4 $dir &>/dev/null
then
	echo "PC con ip $dir encendido."
else
	echo "PC con ip $dir APAGADO."
fi


exit 0
