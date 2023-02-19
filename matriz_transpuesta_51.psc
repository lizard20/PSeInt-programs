// 51. Diseñar un módulo que reciba dos matrices y devuelva verdadero si una
// 	   matriz es la transpuesta de la otra y falso en caso contrario.

Funcion resultado <- es_transpuesta(matriz_a,matriz_b,n,m)
	Definir resultado Como Logico
	Definir i,j Como Entero
	
	resultado <- Verdadero
	i <- 1
	j <- 1
	Mientras i <= n & resultado = Verdadero Hacer
		Mientras j <= m & resultado = Verdadero Hacer
			Si matriz_a[i,j] <> matriz_b[j,i] Entonces
				resultado <- Falso
			FinSi
			j <- j +1
		FinMientras
		i <- i +1
	FinMientras
FinFuncion

Funcion transponer_matriz(matriz,matriz_t,n,m)
	Definir i,j Como Entero
	
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz_t[j,i] <- matriz[i,j] 
		FinPara
	FinPara
FinFuncion

Funcion crear_matriz_casi_transpuesta(matriz,matriz_t,n,m)
	Definir i, j, na, ma Como Entero
	
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz_t[j,i] <- matriz[i,j] 
		FinPara
	FinPara
	
	na <- azar(n) + 1
	ma <- azar(m) + 1
	
	Para i <- 1 Hasta na Hacer
		Para j <- 1 Hasta ma Hacer
			matriz_t[j,i] = azar(10)
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

// Llena una matriz  con valores aleatorios
Funcion crear_matriz(matriz,n,m)
	Definir i,j Como Entero
	
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz[i,j] = azar(10)
		FinPara
	FinPara
FinFuncion

Proceso main
	Definir n_filas, m_cols, escoger_matriz Como Entero
	Definir transpuesta Como Logico
	
	n_filas <- 5
	m_cols <- 4
	Dimension matriz(n_filas,m_cols)
	Dimension matriz_t(m_cols, n_filas)
	
	crear_matriz(matriz,n_filas,m_cols)
	
	// Matrices de prueba
	escoger_matriz = azar(2)
	
	Si escoger_matriz = 0 Entonces
		transponer_matriz(matriz,matriz_t,n_filas,m_cols)
	SiNo
		crear_matriz_casi_transpuesta(matriz,matriz_t,n_filas,m_cols)
	FinSi
	
	imprimir_matriz(matriz,n_filas,m_cols)
	Escribir "-------------"
	imprimir_matriz(matriz_t,m_cols,n_filas)
	
	transpuesta <- es_transpuesta(matriz,matriz_t,n_filas,m_cols)
	Si transpuesta = Verdadero Entonces
		Escribir "La matriz es transpuesta"
	SiNo
		Escribir "La matriz no es transpuesta"
	FinSi
	
FinProceso
