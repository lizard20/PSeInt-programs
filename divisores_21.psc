// 21.Diseñar un módulo que reciba un arreglo y muestre en pantalla para
//   cada elemento sus divisores.

Funcion divisores(v, n)
	Definir i,j Como Entero
	
	Para i <- 1 Hasta n Hacer
		Escribir "Para: ", v[i], " sus divisores son: " 
		Para  j <- 1 Hasta v[i] Hacer
			Si v[i] % j = 0 Entonces
				Escribir Sin Saltar j, " "
			FinSi
		FinPara
		Escribir  ""
FinPara
	
FinFuncion

Funcion crear_vector(v,n)
	Definir  i Como Entero
	
	Para i <- 1 Hasta n Hacer
		v[i] <- azar(100)
	FinPara
FinFuncion

Funcion escribir_vector(v,n)
	Para i <- 1 Hasta n Hacer
		Escribir Sin Saltar v[i], " " 
	FinPara
	Escribir ""
FinFuncion

Proceso main
	Definir n Como Entero
	
	n <- 5
	Dimension v(n)
	
	Escribir "Encuentra los divisores de cada elemento de un arreglo"
	crear_vector(v,n)
	escribir_vector(v,n)
	divisores(v,n)
	
FinProceso
	