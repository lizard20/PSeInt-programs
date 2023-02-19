// 59.Diseñar un módulo que reciba un arreglo de m números enteros y
//    muestre el mayor de ellos y en qué posición se encuentra.
Funcion encontrar_mayor(v, n)
	Definir	 i, max, idx Como Entero
	
	max <- v[1]
	idx <- 1
	Para i<- 2 Hasta n Hacer
		Si max < v[i] Entonces
			max <- v[i]
			idx <- i
		FinSi
	FinPara
	Escribir "maximo valor: ", max
	Escribir "indice: ", idx
FinFuncion

Funcion crear_vector(v, n)
	Definir	 i Como Entero
	
	Para i<- 1 Hasta n Hacer
		v[i] = azar(100)
	FinPara
FinFuncion

Funcion escribir_vector(v,n)
	Para i<- 1 Hasta n Hacer
		Escribir Sin Saltar v[i], " " 
	FinPara
	Escribir ""
FinFuncion

Proceso main
	Definir n Como Entero
	
	n <- 15
	Dimension v(n)
	
	Escribir "Programa que encuentra el mayor entero de un arreglo"
	crear_vector(v,n)
	escribir_vector(v,n)
	encontrar_mayor(v,n)
	
FinProceso
