// 5. Diseñar un módulo que reciba un entero n y devuelva la sumatoria
//    respecto a i, donde i=1 y va hasta n.

Funcion s <- suma(n)
	Definir s Como Entero
	
	s <- n*(n + 1)/2
FinFuncion

Proceso main
	Definir n, s Como Entero
	
	Escribir "Suma de 1 a n"
	Escribir Sin Saltar "Ingrese un entero, n: "
	Leer n
	
	s = suma (n)
	
	Escribir "La sumatoria hasta ", n " numeros es: ", s 
	
FinProceso

