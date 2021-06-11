#!/usr/bin/python
import separasilabas

vocales=['a','e','i','o','u']

def check_silabas(num_silabas):
	ok=False
	while not ok:
		frase = input('Escriba una frase de {} silabas: '.format(num_silabas)) 
		palabra= frase
		silabas = separasilabas.silabizer()
		cant_silabas=len(silabas(palabra))
		if cant_silabas == num_silabas:
			ok = True
			return frase
		else:
			print("La frase {} no es de {} silabas".format(frase, num_silabas))



frase1=check_silabas(5)
frase2=check_silabas(7)
frase3=check_silabas(5)

print("Su Haiku es:")
print(frase1)
print(frase2)
print(frase3)
