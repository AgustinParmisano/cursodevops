# Ejercicios Comandos Bash y Scripts Basicos

## 1. Comandos (para cada inciso explique qué comandos utilizó).

### a. Escribir en un archivo "Hoy es {nombre dia} {numero dia} {mes año}" sin utilizar ningun editor de texto.
### b. Escribir en un archivo las primeras 3 lineas del archivo /etc/passwd sin utiizar ningun editor de texto. 
### c. Escribir en un archivo todos los usuarios del sistema que tengan como Shell /bin/false. Debe escribir solo el usuario.
### d. Escriba en un archivo la cantidad de lineas del archivo /var/log/auth.log que contengan la palabra opened y NO contengan la palabra root
### e. Para todos los archivos en /var/log/ que terminen su nombre con la palabra ".log" escriba en un archivo los siguientes datos: nombre archivo:peso en bytes:dia mes ultima modificacion
### f. Escriba en un archivo las distintas Shells que aparecen en el archivo /etc/passwd de forma única y ordenada alfabeticamente (tip: con awk print $NF imprime la ultima columna posible para cada linea)
### g. Escriba en un archivo la ruta absoluta de todos los archivos creados o modificados en /var/ entre el 1 de abril al 1 de mayo del año 2021
### h. Realice una copia de este archivo y cambie todos los caracteres "#" por caracteres "-"
### i. Realice una copia de este archivo y cambie todos las vocales por su misma letra en mayuscula.
### j. Realice una copia de este archivo y cambie todos los caracteres "###" por caracteres "-", los caracteres "##" por caracteres "*".

## 2. Bash Scripting Basico

### a. For loop
Realizar un script que visualice por pantalla los números del 1 al 100 así como sus cuadrados.

### b. Menu básico
Desarrollar un script que muestre 3 opciones al usuario: Listar, DondeEstoy y QuienEsta.Según la opción elegida se le debe mostrar:
Listar: lista el contenido del directoria actual.
DondeEstoy: muestra el directorio donde me encuentro ubicado.
QuienEsta: muestra los usuarios conectados al sistema

### c. Parametros básico
Crear un script que reciba como parámetro el nombre de un archivo e informe si elmismo existe o no, y en caso afirmativo indique si es un directorio o un archivo. 
En caso de que no exista el archivo/directorio cree un directorio con el nombre recibido como parámetro

### d. Condicionales
Desarrolle un script que renombre solo archivos de un directorio pasadocomo parametro agregandole una CADENA, contemplando las opciones:
“-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del archivo
“-b CADENA”: renombra el fichero concantenado CADENA al principio del nombre del archivo

Ejemplo:
Si tengo los siguientes archivos: /tmp/a /tmp/b
Al ejecutar: ./renombra /tmp/ -a EJ
Obtendré como resultado: /tmp/aEJ /tmp/bEJ
Y si ejecuto: ./renombra /tmp/ -b EJ
El resultado será: /tmp/EJa /tmp/EJb

