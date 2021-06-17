#!/bin/bash

read -p "Elija una opcion (1 o 2): " opcion

case $opcion in
"saludar")
	echo "hola!"
;;
"despedir")
	echo "chau!"
;;
*)
	echo "viva perón"
;;
esac
