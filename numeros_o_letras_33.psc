// 33. Diseñar un módulo que reciba dos caracteres y devuelva verdadero si los
//     dos son letras o números, y falso en caso contrario.

Funcion bandera <- es_numero(a)
	Definir  bandera Como Logico
	Definir i Como Entero
	
	num <- "0123456789"
	bandera <- Falso
	i <- 1
	Mientras i <= Longitud(num) y bandera = Falso
		Si a = Subcadena(num,i,i) Entonces
			bandera <- Verdadero
		FinSi
		i <- i + 1
	FinMientras
	
FinFuncion

Funcion bandera <- es_letra(a)
	Definir  bandera Como Logico
	Definir i Como Entero
	
	letras <- "abcdefghijklmnñopqrstuvwxyz"
	bandera <- Falso
	i <- 1
	Mientras i <= Longitud(letras) y bandera = Falso
		Si a = Subcadena(letras,i,i) Entonces
			bandera <- Verdadero
		FinSi
		i <- i + 1
	FinMientras
FinFuncion

Funcion ret <- son_letras_o_numeros(a,b)
	Definir ret Como Logico
	
	Si (es_numero(a) y es_numero(b)) o (es_letra(a) y es_letra(b)) Entonces
		ret <- Verdadero
	SiNo
		ret <- Falso
	FinSi
	

FinFuncion

Proceso main
	Definir ret Como Logico
	Definir str como Cadena
	
	Escribir "Verifica que los caracteres sean ambos sean números o letras"
	Escribir "Ingrese dos caracteres: "
	Leer str
	
	ret <- son_letras_o_numeros(Minusculas(Subcadena(str,1,1)), Minusculas(Subcadena(str,2,2)))
	Si ret = Verdadero Entonces
		Escribir "Ambos son numeros o letras"
	SiNo
		Escribir "No son ambos  numeros o letras"
	FinSi
FinProceso
	