// 43. Diseñar un módulo que reciba dos enteros (base, exponente) y devuelva
//     la potencia correspondiente, considerar que el exponente es positivo.

Funcion ret <- elevar_a_exponente(base, exponente)
	Definir ret Como Entero
	
	ret <- 1
	Si exponente > 0 Entonces
		Para i <- 1 Hasta exponente Hacer
			ret <- ret*base
		FinPara
	FinSi
FinFuncion


Proceso main
	Definir ret, base, exponente Como Entero
	
	base <-  azar(100) 
	exponente <- azar(5) + 1
	ret <- elevar_a_exponente(base,exponente)
	Escribir base, " elevado a ", exponente, " = ", ret
FinProceso
	