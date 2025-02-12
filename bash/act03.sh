#!/bin/bash
clear

echo "Dime tu edad: "
read edad

if test $edad -gt 21
then
	echo "Bebe con moderación."
else
	echo "No puedes beber."
fi



exit 0
