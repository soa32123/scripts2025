#!/bin/bash
clear

echo "Dime tu edad: "
read edad

if test $edad -lt 18
then
	echo "No puedes entrar."
elif test $edad -ge 65
then
	echo "¿Para qué quieres entrar?"
else
	echo "Tú puedes entrar si no estás casado."
fi




exit 0
