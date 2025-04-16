#!/bin/bash
clear

# 22.Script que compruebe si un ordenador está encendido o no.

# PC1 -> ping -> PC2  => PC2 -> ping -> PC1

read -p "Indique la dirección IP del ordenador a comprobar: " dirip

if ping -c4 $dirip >/dev/null 2>/dev/null # &>/dev/null
then
	echo "El ordenador con IP $dirip está encendido."
else
	echo "El ordenador con IP $dirip NO está encendido."
fi


exit 0
