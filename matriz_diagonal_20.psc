// 20.Diseñar un módulo que reciba una matriz de cualquier dimensión y
// devuelva verdadero si es matriz diagonal y falso en caso contrario.

// Si la matriz es diagonal retorna un valor Verdadero. 
// En caso contraio retorna un valor Falso
Funcion bandera_cero <- es_matriz_diagonal(matriz,n, m)
	Definir bandera_cero Como Logico
	Definir i,j Como Entero
	
	bandera_cero <- Verdadero
	i <- 1
	j <- 1
	Mientras  i <= n & bandera_cero = Verdadero Hacer
		j <- 1
		Mientras j <= m & bandera_cero = Verdadero Hacer
			Si i <> j & matriz[i,j] <> 0 Entonces
				bandera_cero <- Falso
			FinSi
			j <- j+1
		FinMientras
		i <- i+1
	FinMientras
FinFuncion

// Llena una matriz cuadrada con valores aleatorios
Funcion crear_matriz(matriz,n,m)
	Definir i,j Como Entero
	
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz[i,j] = azar(10)
		FinPara
	FinPara
FinFuncion

// Crea una matriz diagonal
Funcion crear_matriz_diagonal(matriz,n,m)
	Definir i,j Como Entero
	
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

// Crea una matriz diagonal
Funcion crear_matriz_casi_diagonal(matriz,n,m)
	Definir i,j, na, ma Como Entero
	
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			Si i=j Entonces
				matriz[i,j] = azar(10)
			SiNo
				matriz[i,j] = 0
			FinSi
		FinPara
	FinPara
	
	na <- azar(n) + 1
	ma <- azar(m) + 1
	
	Para i<-1 Hasta na Hacer
		Para j <- 1 Hasta ma Hacer
			matriz[i,j] = azar(10)
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
	Definir n_filas, m_cols  Como Entero
	Definir diagonal Como Logico
	
	n_filas <- 4
	m_cols <- n_filas
	Dimension matriz(n_filas,m_cols)
	
	Escribir "Detecta si la matriz es diagonal o no"
	
	// Matrices de prueba
	escoger_matriz = azar(3)	
	Segun escoger_matriz Hacer
		0:
			crear_matriz(matriz, n_filas,m_cols)
		1:
			crear_matriz_diagonal(matriz,n_filas,m_cols)
		De Otro Modo:
			crear_matriz_casi_diagonal(matriz,n_filas,m_cols)
	Fin Segun
	
	// Imprime matriz
	imprimir_matriz(matriz, n_filas,m_cols)
	
	diagonal <- es_matriz_diagonal(matriz,n_filas,m_cols)
	si diagonal = Verdadero Entonces
		Escribir "La matriz es diagonal"
	SiNo
		Escribir "La matriz no es diagonal"
	FinSi
	
FinProceso
