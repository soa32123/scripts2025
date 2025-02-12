#!/bin/bash
clear

echo "Dime tu edad: "
read edad

if test $edad -ge 18
then
	echo "Puedes entrar."
else
	echo "No puedes entrar."

fi




exit 0
