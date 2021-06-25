#!/bin/bash

result=0
sumar() {
	local a="esta es la variable local a"
	b="esta es la variable global b"
	result=$(($1 + $2))
	echo "El resultado de la suma es $result"
}

arreglo=(2 4 3 3 1 5)

ant=0
for i in ${arreglo[*]}
do
	sumar $i $ant
	ant=$i
done


echo $a
echo $b
exit 0


