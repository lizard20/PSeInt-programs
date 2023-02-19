// 23. Diseñar un módulo que lea tantos caracteres hasta que se hayan
//     proporcionado 100 letras del alfabeto. Si el usuario no proporciona
//     caracteres alfabéticos entonces debe volverse a leer el carácter hasta
//     que sea alfabético.

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

Funcion lee_caracteres_alfabeticos()
	Definir n como Entero
	Definir c Como Caracter
	
	n <- 0
	Repetir 
		Leer c 
		c <- Minusculas(c)
		Si es_letra(c) Entonces
			n <- n + 1
		Sino 
			Escribir "No es una letra del alfabeto"
		FinSi
	Hasta Que n = 100
	Escribir "Ha ingresado 100 caracteres alfabéticos"
FinFuncion

Proceso main
	Escribir "Ingresar 100 caracteres alfabéticos"
	lee_caracteres_alfabeticos()
FinProceso
	