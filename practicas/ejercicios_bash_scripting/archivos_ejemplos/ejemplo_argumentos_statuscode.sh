#!/bin/bash

# Verificar si un usuario pasado por parametro tiene permisos de ejecucion para un archivo pasado por parametro

help="Se debe enviar 1er argumento: un usuario, 2do argumento: un archivo o directorio existente"

verificar_parametros() {
	if [ $# -ne 2 ]; then
		echo "La cantidad de argumentos debe ser 2"
		echo $help
		exit 8
	fi
	return 0
}

verificar_usuario() {
	usuarios=($(cat /etc/passwd | awk -F":" '{ print $1 }'))

	encontro=0
	for u in ${usuarios[*]}
	do
		if [ $u = $1 ];
		then
			echo "el usuario $1 existe!!"
			encontro=1
			break
		fi
	done

	if [ $encontro -eq 0 ];
	then
		echo "El usuario $1 enviado por parametro no existe"
		echo $help
		exit 13
	fi
	return 0
}

verificar_archivo() {
ruta_archivo=$1

	if [ ! -e $ruta_archivo ];
	then
		echo "El archivo $ruta_archivo no es valido o no existe"
		echo $help
		exit 1
	fi
	return 0
}

verificar_permisos() {
ruta_archivo=$2

	if [ -x $ruta_archivo ];
	then
		echo "El usuario $1 tiene permisos de ejecucion en el archivo $ruta_archivo"
		return 0
	else
		echo "El usuario $1 NO tiene permisos de ejecucion en el archivo $ruta_archivo"
		return 1
	fi

}


verificar_parametros $1 $2
verificar_usuario $1
verificar_archivo $2
verificar_permisos $1 $2

echo "Verificar permisos termino con status code $?"

exit 0

