// 7. Diseñar un módulo que reciba dos cadenas y devuelva verdadero si son
//    iguales o falso en caso contrario.

Funcion salida <- cadena_tamanio(s1, s2)
	Definir salida Como Logico
	
	Si Longitud(s1) = Longitud(s2) Entonces
		salida <- Verdadero
	SiNo
		salida <- Falso
	FinSi
FinFuncion

Proceso main
	Definir str1, str2 como Cadena
	Definir res Como Logico
	
	Escribir "Reibe dos cadenas y devuelva verdadero si son iguales o falso en caso contrario"
	Escribir Sin Saltar "Ingrese cadena: "
	Leer str1
	
	Escribir Sin Saltar "Ingrese cadena: "
	Leer str2
	
	res <- cadena_tamanio(str1, str2)
	
	Si res = Verdadero Entonces
		Escribir "Las cadenas son del mismo tamaño"
	SiNo
		Escribir "Las cadenas son de distinto tamanio"
	FinSi
	
FinProceso