// 6. Diseñar un módulo que reciba una cadena y muestre en pantalla cuantas
//    a's, b's y c's contiene.

Funcion contador(str)
	Definir na, nb, nc como Entero 
	Definir c Como Caracter
	
	str <- Minusculas(str)
	na <- 0
	nb <- 0
	nc <- 0
	Para i <- 1 Hasta Longitud(str) Hacer
		c <- subcadena(str, i,i)
		si  c = 'a' Entonces
			na <- na + 1
		Sino Si c = 'b' Entonces
				nb <- nb + 1
			SiNo Si c = 'c' Entonces
					nc <- nc + 1
				FinSi
			FinSi
		FinSi
	FinPara
	Escribir "numero de as: ", na
	Escribir "numero de bs: ", nb
	Escribir "numero de cs: ", nc
FinFuncion

Proceso main
	Definir str Como Cadena
	
	Escribir "muestra el numero de a, b y c contiene la cadena"
	Escribir Sin Saltar "Ingrese una cadena: "
	Leer  str
	
	contador(str)
FinProceso