// 49.Diseñar un módulo que reciba una cadena y muestre en pantalla la
//    cadena en orden inverso es decir si la cadena recibida es por ejemplo
//    "amor" la cadena invertida mostrada en pantalla debería ser "roma".

funcion invertir_cadena(str)
	Definir i,j Como Entero
	Definir str_inv como Cadena
	
	str_inv <- ""
	j <- Longitud(str)
	Para i<- 1 Hasta Longitud(str) Hacer
		str_inv <- Concatenar(str_inv,Subcadena(str,j,j))
		j = j - 1
	FinPara
	Escribir str
	Escribir  str_inv
	
FinFuncion

Proceso main
	Definir str como Cadena
	
	Escribir "Invierte una cadena de entrada"
	Escribir "Ingrese cadena: "
	Leer str
	
	invertir_cadena(str)
FinProceso
	