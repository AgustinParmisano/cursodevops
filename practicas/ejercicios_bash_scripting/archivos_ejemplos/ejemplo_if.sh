#!/bin/bash

if [ "$(whoami)" = "root" ]
then
	echo "Soy el usuario root"
else
	echo "Entro al ELSE porque soy el usuario $(whoami)"
fi


#Ejemplos para ELIF

# Pregunto la fecha con date y cuento si es jue o lun
hoy_es_jueves=$(date | grep -c jue)
hoy_es_lunes=$(date | grep -c lun)

if [ "$hoy_es_lunes" = "1" ]
then
	echo "Hoy es Lunes"
elif [ "$hoy_es_jueves" = "1" ]
then
	echo "Hoy es Jueves"
else
	echo "Hoy no es ni lunes ni jueves"
fi


