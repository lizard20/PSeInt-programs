// 53.Diseñar un módulo que reciba dos enteros n, k y devuelva el resultado
// de evaluar combinatorio(n,k) = n! / (k! * (n- k)!) .

Funcion res <- combinatorio(n,k)
	Definir res Como Entero
	
	Si (n-k) > 0 Entonces
		res <- factorial(n)/factorial(k)
		res <- res/factorial(n-k)
	SiNo
		Si (n-k) = 0 Entonces
			res <- 1
		FinSi
	FinSi
 FinFuncion

Funcion res <- factorial(n)
	Definir res, i Como Entero
	
	res <- 1
	Para i <- 1 Hasta n Hacer
		res = res*i
	FinPara
FinFuncion

Proceso main
	Definir res, n, k Como Entero
	// Números n y k de prueba
	n <- -1
	k <-1
	Mientras n < k Hacer
		n <- azar(12) + 1
		k <- azar(12) + 1
	FinMientras
	//
	res <- combinatorio(n,k)	
	Escribir "Programa que calcula el combinatorio de n y k, donde n >= k"
	Escribir "Combinatoria de ", n, " y ", k ": ", res
FinProceso
	