#!/bin/bash
clear

# 8.Copiar todos los ficheros con extensión txt a ./backup (recuerda crear el directorio).

# Versión 1
#cp ./pruebas/*.txt ./pruebas/backup/

# Versión 2

if cp ./pruebas/*.txt ./pruebas/backup/ >/dev/null 2>/dev/null	# &>/dev/null
then
	echo "Se ha llevado a cabo la copia correctamente."
else
	echo "Hubo un problema al copiar. Llame al administrador."
fi

exit 0
