#!/bin/bash

vocales=(a e i o u)
read -p "Escriba una frase (5 silabas): " frase1

for i in $frase1
do
	if [ ${vocales[@]} =~ ${i} ]
	then
		echo $i
		sleep 5
	fi
done
