// 38.Diseñar un módulo que reciba una cadena y si existen caracteres
//    numéricos sume sus valores correspondientes en una variable entera y
//    la retorne.

funcion suma <- suma_digitos_de_cadena(str)
	Definir suma Como Entero
	Definir s Como Cadena
	
	suma <- 0
	Para i<- 1 Hasta Longitud(str) Hacer
		s <- Subcadena(str,i,i)
		Si s='1' o s='2' o s='3' o s='4' o s='5' o s='6' o s='7' o s='8' o s='9' Entonces
			suma <- suma + ConvertirANumero(s)
		FinSi
	FinPara
FinFuncion


Proceso main
	Definir suma Como Entero
	Definir str Como cadena
	
	Escribir "Programa que suma los digitos de una cadena"
	Escribir Sin Saltar "Ingrese cadena: "
	Leer str
	
	suma <- suma_digitos_de_cadena(str)
	Escribir "Suma de los digitos de la cadena: ", suma
FinProceso
	