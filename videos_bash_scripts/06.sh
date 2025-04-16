#!/bin/bash
clear

# 6.Mostrar todos los ficheros regulares del directorio en el que te encuentras.

ls -l ./pruebas/|grep ^-|tr -s " "|cut -f9 -d" "



exit 0
