// 19. Define un módulo que recibiendo un vector y un entero devuelva la
//     existencia o no de dicho entero en el vector.

Funcion bandera <- encontrar_entero_en_vector(v,n, a)
	Definir i  Como Entero
	Definir bandera Como Logico
	
	bandera <- Falso
	i <- 1
	Mientras i <= n y bandera = Falso
		Si v[i] = a Entonces
			bandera <- Verdadero
		FinSi
		i <- i + 1
	FinMientras
	
	
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
	Definir a, n Como Entero
	Definir existe Como Logico
	
	// n, numero de elementos del vector
	n <- 20
	a <- azar(100)
	Dimension v(n)
	
	crear_vector(v,n)
	
	existe <- encontrar_entero_en_vector(v,n,a) 
	
	escribir_vector(v,n)
	Si existe = Verdadero Entonces
		Escribir "El numero ", a, " SI esta en el vector"
	SiNo
		Escribir "El numero ", a, " No esta en el vector"
	FinSi
	
FinProceso

	