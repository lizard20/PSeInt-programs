// 8. Diseñar un módulo que reciba un arreglo de enteros y devuelva la suma
//    de sus valores (considerar la dimensión).

Funcion suma <- suma_enteros(num, n)
	Definir suma, temp Como Entero
	temp <- 0
	Para i <- 1 Hasta n Hacer
		temp <- temp + num[i]
	FinPara
	suma <- temp
FinFuncion

Proceso main
	Definir s, num, dim como Entero
	dim <- 5
	
	Dimension num[dim]
	
	Para i <- 1 Hasta dim Hacer
		num[i] <- azar(10)
	FinPara
	
	Escribir "Suma los valores de un vector"
	Para i<- 1 Hasta dim Hacer
		Escribir Sin Saltar num[i], " "
	FinPara
	
	
	s <- suma_enteros(num, dim)
	Escribir ""
	Escribir  "Suma: ", s
FinProceso
