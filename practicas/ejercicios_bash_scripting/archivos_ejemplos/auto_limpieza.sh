#!/bin/bash

estado_server=$(ps -A | grep python3 | wc -l)

if [ $estado_server -ne 1 ]
then
	echo "El demonio del servidor http está offline"
	echo "Iniciando servidor http en puerto 8888"
	python3 -m http.server 8888 &
	estado_server=$(ps -A | grep python3 | wc -l)
	while [ $estado_server -ne 1 ]
	do
		sleep 3
		echo "El servidor no se inicio todavia"
		python3 -m http.server 8888 &
		estado_server=$(ps -A | grep python3 | wc -l)
	done
	echo "Se inicio el servidor http en el puerto 8888"
else
	echo "El server está corriendo sin problemas"
fi


peso_archivo_index=50

apagar_servidor() {
	echo "Obteniendo el pid del servidor http con python3"
	pid_servidor=$(ps -A | grep python3 | awk -F" " '{ print $1 }')
	echo "Terminando proceso con pid $pid_servidor del servidor http con python3"
	kill -9 $pid_servidor
}

recrea_desde_backup() {
	echo "Recreando index.html desde backup"
	cp index.html.back index.html
}

while true
do
	peso_actual=$(wc -c index.html | awk -F" " '{ print $1 }')
	sleep 10
	echo "Verificando archivo index.html"
	if [ $peso_archivo_index -ne $peso_actual ]
	then
		echo "El archivo index.html fue modificado sin aviso"
		recrea_desde_backup
	fi
done

exit 0

