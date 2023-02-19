Funcion ret <- es_suma_mayor_igual(matriz1, matriz2,n1,m1,n2,m2)
	Definir ret Como Logico
	Definir suma1, suma2 Como Entero
	
	suma1 <- sumar_elementos_matriz(matriz1, n1, m1)
	suma2 <- sumar_elementos_matriz(matriz2, n2, m2)
	
	Si suma1 >= suma2 Entonces
		ret <- Verdadero
	SiNo
		ret <- Falso
	FinSi
FinFuncion

Funcion suma <- sumar_elementos_matriz(matriz, n,m)
	Definir suma,i,j Como Entero
	
	suma <- 0
	Para i<- 1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			suma <- suma + matriz[i,j]
		FinPara
	FinPara
FinFuncion


Funcion crear_matriz(matriz, n, m)
	Definir i,j Como Entero
	
	Para i <- 1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz[i,j] <- azar(10)
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

Proceso  main
	Definir n1,m1, n2,m2 Como Entero
	Definir ret Como Logico
	
	n1 <- 4
	m1 <- 3	
	Dimension matriz1(n1,m1)
	
	n2 <- 3
	m2 <- 4
	Dimension matriz2(n2,m2)
	crear_matriz(matriz1, n1,m1 )
	imprimir_matriz(matriz1, n1,m1)
	Escribir ""
	crear_matriz(matriz2, n2,m2 )
	imprimir_matriz(matriz2, n2,m2)
	
	ret <- es_suma_mayor_igual(matriz1, matriz2, n1,m1,n2,m2)
	Si ret = Verdadero Entonces
		Escribir "La suma de los elementos de la primera matriz SI es mayor o igual que la segunda"
	SiNo
		Escribir "La suma de los elementos de la primera matriz NO es mayor o igual que la segunda"
	FinSi
FinProceso

	