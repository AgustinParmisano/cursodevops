#!/bin/bash

echo "Invocacion del Script $0"
echo "Primer parametro $1"
echo "Segundo parametro $2"
echo "Tercer parametro $3"
echo "Cantidad de argumentos $#"
echo "Todos los argumentos $*"
for i in $*
do
	echo "Estamos en el argumento $i"
done
