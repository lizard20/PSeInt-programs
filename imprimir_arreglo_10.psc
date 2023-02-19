// 10. Diseñar un módulo que reciba un arreglo de enteros y su dimensión 
//     e imprima todos sus valores.

Funcion sumar(n, dim)
	Para i<-1 Hasta dim Hacer
		Escribir Sin Saltar n[i], " "
	FinPara

FinFuncion

Proceso main
	Definir dim, n Como Entero
	dim <- 10
	Dimension n[dim]
	
	Para i<-1 Hasta dim Hacer
		n[i] <- azar(10)
	FinPara
	Escribir "imprime los valores de un arreglo"
	sumar(n, dim)
	Escribir  ""
	
FinProceso