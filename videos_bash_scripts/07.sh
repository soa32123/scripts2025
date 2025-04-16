#!/bin/bash
clear

# 7.Mostrar todos los directorios que existen en el directorio en el que te encuentras.

ls -l|grep ^d|tr -s " "|cut -f9 -d" "




exit 0
