// 12.Define un módulo que reciba un vector de enteros y devuelva el
//    elemento mayor de todos.

Funcion max <- encontrar_maximo(n, dim)
	Definir max Como Entero
	
	max <- n[1]
	Para i<-1 Hasta dim Hacer
		Si n[i] > max Entonces
			max <- n[i]
		FinSi
	FinPara
FinFuncion

Proceso main
	Definir n, dim, m  Como Entero
	dim <- 10
	Dimension n[dim]
	
	Escribir "Devuelve el elemento mayor de un vector" 
	
	Para i<- 1 Hasta dim Hacer
		n[i] <- azar(100)
		Escribir Sin Saltar n[i], " "
	FinPara
	
	m <- encontrar_maximo(n, dim)
	Escribir ""
	Escribir "El mayor numero es: ", m
FinProceso
