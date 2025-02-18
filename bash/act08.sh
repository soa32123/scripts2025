#!/bin/bash
clear

# Calculadora simple. Pide dos números y muestra la +,-,* y /.

read -p "Dime el número 1: " num1
read -p "Dime el número 2: " num2

# x=expr $num1+$num2  x=$(($num1+$num2)) x=$[$num1+$num2]
let res=$num1+$num2
echo "La operación $num1+$num2=$res"

let res=$num1-$num2
echo "La operación $num1-$num2=$res"

let res=$num1*$num2
echo "La operación $num1*$num2=$res"

let res=$num1/$num2
echo "La operación $num1/$num2=$res"

let res=$num1%$num2
echo "La operación $num1%$num2=$res"


exit 0
