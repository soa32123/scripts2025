#!/bin/bash
clear

# Opción 1

# find . -type f -name *.txt -exec cp {} ./backup/

# Opción 2

for i in `ls ./jordi/*.txt`
do
	cp $i ./backup/
done

# Opción 3 (marc)

cp ./jordi/*.txt ./backup/

exit 0
