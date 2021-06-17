#!/bin/bash

: ' Comentario de multiples lineas

# For con un indice
for (( i=100; i>0; i-- ))
do
	echo "El valor de i es $i"
done

# For in de elmentos declarados en el lugar
for fruta in "banana" "manazana" "pera" "tomaté" 78 "89"
do
	echo "El valor de elemento es $fruta"
done


# For in de elementos declarados en un arreglo
puertos=(80 8080 443 8443 20 21 22 25 143)

for puerto in ${puertos[*]}
do
	echo "Se va a probar el puerto $puerto"
done

termina el comentario de multiples lineas'


cant_archivos=0
cant_dirs=0

help="Uso con -a se pone mas informacion"
if [ $# -ne 1 ]
then
	echo "Se solicita un argumento: un path de un directorio existente"
	cat $0
	exit 1
fi

path=$1

if [ ! -d $path ]
then
	echo "No existe el directorio $path"
	exit 2
fi

files=$(ls $path)

for arch in $files
do
	if [ -d "$path/$arch" ]
	then
		echo "El archivo $arch es un directorio"
		let cant_dirs++
	else
		echo "El $arch es un archivo"
		let cant_archivos++
	fi
done

echo "El directorio $path tiene:"
echo "$cant_dirs directorios"
echo "$cant_archivos archivos"

: ' Comentario de multiples lineas

termina el comentario de multiples lineas'
