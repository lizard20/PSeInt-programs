// 2. Diseñar un módulo que reciba un carácter y devuelva verdadero si es
// 	  una vocal o falso en caso contrario.
Funcion n <- es_vocal(c)
	Definir n Como Logico
	c <- Minusculas(c)
	si c = 'a' o c = 'e' o c = 'i' o c = 'o' o c = 'u' o c = 'á' o c = 'é' o c = 'í' o c = 'ó' o c = 'ú'  Entonces
		n <- Verdadero
	SiNo
		n <- Falso
	FinSi
	
FinFuncion

Proceso Main
	Definir c Como Caracter
	Definir resultado Como Logico
	
	Escribir "Determina si el carácter ingresado es o no una vocal"
		// 	  una vocal o falso 
	Escribir Sin Saltar "Ingrese un caracter: "
	Leer c
	
	resultado <- es_vocal(c)
	si resultado = Verdadero Entonces
		Escribir c, ", SI es una vocal"
	sino
		Escribir c, ", NO es una vocal "
	FinSi
	
FinProceso
	
