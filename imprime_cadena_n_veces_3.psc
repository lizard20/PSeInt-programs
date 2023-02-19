// 3. Diseñar un módulo que reciba una cadena y un valor entero y muestre
//    en pantalla dicha cadena cuantas veces indique el entero.
Funcion imprime_cadena(str, n)
	para i <- 1 Hasta n Hacer
		Escribir str
	FinPara
FinFuncion
	
Proceso main
	Definir n Como Entero
	Definir str como cadena
	
	Escribir "Imprime la cadena ingresada n veces"
	Escribir Sin Saltar"Ingrese una cadena: "
	Leer str
	Escribir Sin Saltar"Numero de veces que se desea imprimir la cadena: "
	Leer n
	
	//Escribir n
	imprime_cadena(str,n)
FinProceso
	