// 35.Diseñar un módulo que reciba como parámetro una matriz triangular
//    superior cuadrada y convertir esta matriz en una matriz simétrica.

Funcion crear_matriz_simetrica(matriz, n)
	Definir i,j Como Entero
	
	Para i <- 1 Hasta n Hacer
		Para j <- 1 Hasta n Hacer
			si i > j Entonces
				matriz[i,j] <- matriz[j,i]
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion crear_matriz_triangular(matriz, n)
	Definir i,j Como Entero
	
	Para i <- 1 Hasta n Hacer
		Para j <- 1 Hasta n Hacer
			si i > j Entonces
				matriz[i,j] <- 0
			Sino 
				matriz[i,j] <- azar(10)
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion imprimir_matriz (matriz, n,m)
	Para i <- 1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinFuncion

Proceso main
	Definir n Como Entero
	
	n <- 5
	Dimension matriz(n,n)
	
	Escribir "Convierte una matriz triangular superior en una matriz simetrica"
	crear_matriz_triangular(matriz, n)
	Escribir "Matriz triangular superior"
	imprimir_matriz(matriz, n, n)
	crear_matriz_simetrica(matriz, n)
	Escribir "Matriz simétrica"
	imprimir_matriz(matriz, n, n)
FinProceso
	