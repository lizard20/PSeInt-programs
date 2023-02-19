// 57. Diseñar un módulo que reciba una cadena y devuelva cuantos caracteres
//    numéricos (0-9) contiene.

funcion contar <- contar_digitos(str)
	Definir contar Como Entero
	Definir c Como cadena
	
	contar <- 0
	Para i <- 1 Hasta Longitud(str) Hacer
		c <- Subcadena(str,i,i)
		Si c='0' o c='1' o c='2' o c='3' o c='4' o c='5' o c='6' o c='7' o c='8' o c='9' Entonces
			contar <- contar + 1
		FinSi
	FinPara
FinFuncion

Proceso main
	Definir str como Cadena
	Definir n Como Entero
	
	Escribir "Cuenta el número de dígitos en una cadena"
	Escribir Sin Saltar "Ingrese cadena: "
	Leer str
	
	n <- contar_digitos(str)
	
	Escribir  "número de dígitos: ", n
FinProceso
