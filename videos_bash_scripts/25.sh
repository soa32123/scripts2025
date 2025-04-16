#!/bin/bash
clear

# 25. A partir de un fichero csv (datos.csv) que contiene tres campos, el nombre de un usuario
# su contraseña y el grupo secundario al que hay que añadirlo, generar un script
# que lea el fichero csv y cree un usuario, con la contraseña indicada y añadiéndolo
# al grupo que se indique. Se debe hacer control de errores.

datos=`cat ./datos.csv|tail -n+2`

for i in $datos
do
	usu=`echo $i|cut -f1 -d","`
	contra=`echo $i|cut -f2 -d","`
	gs=`echo $i|cut -f3 -d","`

	if cat /etc/group|grep -w ^$gs &>/dev/null
	then
		echo "Grupo $gs existe. Se procede a crear el usuario."
	else
		echo "grupo $gs no existe. Se procede a crearlo."
		if groupadd $gs &/dev/null
		then
			echo "Grupo $gs creado."
		else
			echo "Grupo $gs no creado. Póngase en contacto con el administrador."
			echo "Grupo $gs no creado. Póngase en contacto con el administrador." >> 25.log
			
		fi
	fi

	if useradd -m $usu -G $gs &>/dev/null
	then
		echo "Usuario $usu creado y añadido al grupo $gs."
	else
		echo "Error al crear el usuario $usu. Póngase en contacto con el administrador."
		echo "Error al crear el usuario $usu. Póngase en contacto con el administrador." >> 25.log
	fi
done



exit 0
