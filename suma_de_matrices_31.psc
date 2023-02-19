// 31.Diseñar un módulo que reciba tres matrices y verifique si la suma de las
// dos primeras es igual a la tercera, si es así debe mostrar el mensaje "la
// ecuación se cumple".

Funcion es_suma_de_matrices(A,B,C,m,n)
	Definir temp,i,j Como Entero
	Definir bandera  Como Logico
	
	Dimension temp(m,n)
	suma_de_matrices(A,B,temp,m,n)
	//crear_matriz(temp, m,n)
	
	i <- 1
	j <- 1
	bandera <- Verdadero
	Mientras i <= m y bandera = Verdadero Hacer
		Mientras j <= n y bandera = Verdadero Hacer
			Si temp[i,j] <> C[i,j] Entonces
				bandera <- Falso
			FinSi
			j <- j +1
		FinMientras
		i <- i +1
	FinMientras
	
	Si bandera = Verdadero Entonces
		Escribir "La ecuación se cumple"
	FinSi
	
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

Funcion suma_de_matrices(A,B,C, m,n)
	Definir i,j Como Entero
	
	Para i <- 1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			C[i,j] = A[i,j] + B[i,j]
		FinPara
	FinPara
FinFuncion


Proceso main
	Definir m,n Como Entero
	Definir A,B,C Como Entero
	
	m <- 3
	n <- 3
	
	Dimension A(m,n)
	crear_matriz(A,m,n)
	
	Dimension B(m,n)
	crear_matriz(B,m,n)
	
	Dimension C(m,n)
	crear_matriz(C,m,n)
	
	suma_de_matrices(A,B, C, m, n)
	es_suma_de_matrices(A,B,C,m,n)
	
FinProceso
	