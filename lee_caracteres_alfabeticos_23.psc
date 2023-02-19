// 23. Dise�ar un m�dulo que lea tantos caracteres hasta que se hayan
//     proporcionado 100 letras del alfabeto. Si el usuario no proporciona
//     caracteres alfab�ticos entonces debe volverse a leer el car�cter hasta
//     que sea alfab�tico.

Funcion bandera <- es_letra(a)
	Definir  bandera Como Logico
	Definir i Como Entero
	
	letras <- "abcdefghijklmn�opqrstuvwxyz"
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
	Escribir "Ha ingresado 100 caracteres alfab�ticos"
FinFuncion

Proceso main
	Escribir "Ingresar 100 caracteres alfab�ticos"
	lee_caracteres_alfabeticos()
FinProceso
	