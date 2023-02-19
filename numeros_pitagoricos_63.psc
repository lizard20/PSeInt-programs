// 63. Diseñar un módulo que reciba tres números enteros a, b, c como
//     parámetro y evalúe si a^2=b^2+c^2 si la ecuación se cumple

Funcion es_tripleta_pitagorica(a,b,c)
	Definir a2, b2, c2 Como Entero
	
	a2 <- a*a
	b2 <- b*b
	c2 <- c*c
	si a2 = (b2+c2) Entonces
		Escribir "Los valores satisfacen la ecuacion"
	SiNo
		Escribir "Los valores NO satisfacen la ecuación"
	FinSi
	
FinFuncion

Funcion crear_matriz_tripletas(matriz,n,m)
	Definir i,j Como Entero
	
	Para i<-1 Hasta n Hacer
		Para j <- 1 Hasta m Hacer
			matriz[i,j] = azar(20)
		FinPara
	FinPara
	
	// Tabla de tripletas validas
	matriz[n-7,1] <- 5
	matriz[n-7,2] <- 4   
	matriz[n-7,3] <- 3
	
	matriz[n-5,1] <- 13
	matriz[n-5,2] <- 12   
	matriz[n-5,3] <- 5
	
	matriz[n-4,1] <- 17
	matriz[n-4,2] <- 15   
	matriz[n-4,3] <- 8
	
	matriz[n-2,1] <- 29
	matriz[n-2,2] <- 21   
	matriz[n-2,3] <- 20
	
	matriz[n,1] <- 41
	matriz[n,2] <- 40   
	matriz[n,3] <- 9
	
FinFuncion



Proceso  main
	Definir n_filas, n_cols, indice Como Entero
	
	n_filas <- 10
	n_cols <- 3
	
	Dimension tripletas[n_filas,n_cols]
	crear_matriz_tripletas(tripletas,n_filas, n_cols)
	
	indice = azar(n_filas) +1
	Escribir tripletas[indice,1], " ", tripletas[indice,2], " ", tripletas[indice,3]
	es_tripleta_pitagorica(tripletas[indice,1], tripletas[indice,2], tripletas[indice,3])
	
FinProceso
	
