// 4. Dise�ar un m�dulo que reciba dos enteros a, b y devuelva y devuelva la
//    potencia correspondiente a^b.
Funcion n <- potencia(a, b)
	Definir n Como Entero
	
	n <- a ^ b
FinFuncion

Proceso main
	Definir a, b, c Como Entero
	
	Escribir "Calcula la potencia b de un n�mero a"
	Escribir Sin Saltar "Ingrese el n�mero entero a: "
	Leer a
	Escribir Sin Saltar "Ingrese la potencia entera b: "
	Leer b
	
	c = potencia (a,b)
	
	Escribir a, " elevado a ", b, " = ", c
FinProceso
