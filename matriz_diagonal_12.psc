// 20.Diseñar un módulo que reciba una matriz de cualquier dimensión y
// devuelva verdadero si es matriz diagonal y falso en caso contrario.

// Si la matriz es diagonal retorna un valor Verdadero. 
// En caso contraio retorna un valor Falso
Funcion bandera_cero <- es_matriz_diagonal(matriz, n, m)
	Definir bandera_cero Como Logico
	Definir i,j Como Entero
	
	bandera_cero <- Verdadero
	i <- 1
	j <- 1
	Mientras  i <= n & bandera_cero = Verdadero Hacer
		Mientras j <= m & bandera_cero = Verdadero Hacer
			Si i <> j & matriz(i,j) <> 0 Entonces
				bandera_cero <- Falso
			FinSi
			j <- j+1
		FinMientras
		i <- i+1
	FinMientras
FinFuncion

// Llena una matriz cuadrada con valores aleatorios
Funcion crear_matriz(matriz, n,m)
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz[i,j] = azar(10)
		FinPara
	FinPara
FinFuncion

// Crea una matriz diagonal
Funcion crear_matriz_diagonal(matriz, n,m)
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			Si i=j Entonces
				matriz[i,j] = azar(10)
			SiNo
				matriz[i,j] = 0
			FinSi
		FinPara
	FinPara
FinFuncion

// imprime matriz
Funcion imprimir_matriz (matriz, n,m)
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			Escribir Sin Saltar matriz[i,j], " "
		FinPara
		Escribir ""
	FinPara
FinFuncion

Proceso main
	Definir matriz Como Real
	Definir n, m  Como Entero
	Definir diagonal Como Logico
	
	// n numero de filas, y m numero de columans
	n <- 4
	m <- n
	Dimension matriz(n,m)
	
	// Matrices de prueba
	// Genera una matriz cuadrada
	crear_matriz(matriz, n,m)

	// Genera una matriz diagonal
	//crear_matriz_diagonal(matriz, n,m) 
	//
	
	// Imprime matriz
	imprimir_matriz(matriz, n,m)
	
	diagonal <- es_matriz_diagonal(matriz,n,m)
	si diagonal = Verdadero Entonces
		Escribir "La matriz es diagonal"
	SiNo
		Escribir "La matriz no es diagonal"
	FinSi
	
FinProceso
