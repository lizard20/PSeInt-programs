// 1. Diseñar un módulo que reciba dos enteros y devuelva el mayor de los
//    dos, en caso de que sean iguales regrese el primer valor.

Funcion n <- igual_o_mayor(a,b)
	Si a >= b Entonces
		n <- a
	SiNo
		n <- b
	FinSi
FinFuncion

Proceso Main
	Definir a, b, c Como Entero
	
	Escribir  "Recibe dos enteros y devuelva el mayor de ambos"
	Escribir Sin Saltar "Ingrese el primer entero: "
	Leer a
	Escribir Sin Saltar "Ingrese el segundo entero: "
	Leer b
	
	c = igual_o_mayor(a,b)
	
	Escribir  "El número mayor o igual es: ", c
FinProceso
	