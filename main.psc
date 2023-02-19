Funcion bandera <- es_letra(a)
	Definir  bandera Como Logico
	Definir i Como Entero
	
	letras <- "abcdefghijklmnopqrstuvwxyz"
	bandera <- Falso
	i <- 1
	Mientras i <= Longitud(letras) y bandera = Falso
		Si a = Subcadena(letras,i,i) Entonces
			bandera <- Verdadero
		FinSi
		i <- i + 1
	FinMientras
FinFuncion

Funcion es_valida_la_cadena(str)
	
	
FinFuncion

Funcion cadena_a_arreglo(v, n, str)
	Definir i Como Entero
	
	Si Longitud(str) >= 5 Entonces
		Para i<- 1 Hasta n Hacer
			v[i] <- Subcadena(str,i,i)
		FinPara
	FinSi
FinFuncion

Proceso main
	Definir nombre_usuario como Cadena
	Definir n Como Entero
	
	n <- 5
	Dimension v(5)
	Escribir "Ingrese nombre de usuario: "
	Leer str
	Escribir str 
	
	
FinProceso
	