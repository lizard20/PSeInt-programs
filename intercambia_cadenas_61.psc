// 61.Diseñar un módulo que reciba dos cadenas de la misma longitud e
//    intercambie sus valores posición a posición, es decir, si la 
//    cadena1="hello" y la cadena2="emma" después del módulo debería
//    quedar cadena1="emma" y cadena2="hola".

Funcion intercambiar_cadenas(str1, str2)
	Definir temp1, temp2 Como Cadena
	Definir c Como Caracter
	Definir i, n Como Entero
	
	
	Si Longitud(str1) = Longitud(str2) Entonces
		Escribir "Cadena1: ", str1, "   Cadena2: ", str2
		n <- Longitud(str1)
		temp1 <- str1
		str1<- ""
		temp2 <- str2
		str2<-""
		Para i<- 1 Hasta n  Hacer
			str1 <- Concatenar(str1, Subcadena(temp2,i,i))
			str2 <- Concatenar(str2, Subcadena(temp1,i,i))
		FinPara
	Sino
		Escribir "Las cadenas NO son de la misma longitud"
	FinSi
	Escribir "Cadena1: ", str1, "   Cadena2: ", str2
FinFuncion


Proceso main
	Definir cadena1, cadena2,temp como Cadena
	
	
	Escribir "Programa que intercambia dos cadenas de la misma longitud"
	Escribir Sin Saltar"Inserte cadena 1: "
	Leer  cadena1 
	
	Escribir Sin Saltar "Inserte cadena 2: "
	Leer  cadena2
	
	intercambiar_cadenas(cadena1, cadena2)
	
FinProceso
	