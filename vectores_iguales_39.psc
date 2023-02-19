// 39.Diseñar un módulo que reciba dos arreglos y devuelva verdadero si los
//	  dos arreglos son iguales y falso en caso contrario.

Funcion bandera <- son_iguales(v1, v2, n)
	Definir bandera Como Logico
	Definir i Como Entero
	
	bandera <- Verdadero
	i <- 1
	mientras i <= n y bandera = Verdadero Hacer
		Si v1[i] <> v2[i] Entonces
			bandera <- Falso
		FinSi
		i <- i +1
	FinMientras
FinFuncion

Funcion crear_vector(v,n)
	Definir  i Como Entero
	
	Para i <- 1 Hasta n Hacer
		v[i] <- azar(10)
	FinPara
FinFuncion

Funcion escribir_vector(v,n)
	Para i <- 1 Hasta n Hacer
		Escribir Sin Saltar v[i], " " 
	FinPara
	Escribir ""
FinFuncion

Proceso main
	Definir v1, v2,  n Como Entero
	Definir ret Como Logico
	
	n <- 10
	Dimension v1(n)
	Dimension v2(n)
	
	crear_vector(v1,n)
	escribir_vector(v1,n)
	
	crear_vector(v2,n)
	escribir_vector(v2,n)
	
	ret <- son_iguales(v1, v2, n)
	
	Escribir "Programa que verifica que dos arreglos son iguales o no"
	Si ret = Verdadero Entonces
		Escribir "Los vectores SI son iguales"
	SiNo
		Escribir "Los vectores No son iguales"
	FinSi
	
	
FinProceso
	