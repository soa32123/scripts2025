#!/bin/bash
clear

num=`find . -type f -maxdepth 1 |wc -l`

echo "Hay $num ficheros regulares"


exit 0
