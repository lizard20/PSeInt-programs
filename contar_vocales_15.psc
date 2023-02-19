// 15.Diseñar un módulo que reciba tres arreglos de tipo carácter y un
//    muestre en pantalla el total de vocales en cada arreglo.

Funcion contador <- contar_vocales(v, n)
	Definir i,j, contador Como Entero
	Definir vocales Como Cadena
	
	vocales <- "aeiouáéíóúAEIOUÁÉÍÓÚ"
	contador <- 0
	Para i<-1 Hasta n Hacer
		Para j<-1 Hasta Longitud(vocales) Hacer
			Si v[i] = Subcadena(vocales, j,j)
				contador <- contador  + 1 
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion contar(v1, v2, v3, n1, n2, n3)
	Definir contador Como Entero
	
	contador <- 0
	contador <- contar_vocales(v1,n1)
	Escribir "Número total de vocales en el primer arreglo: ", contador
	contador <- 0
	contador <- contar_vocales(v2, n2)
	Escribir "Número total de vocales en el segundo arreglo: ", contador
	contador <- 0
	contador <- contar_vocales(v3, n3)
	Escribir "Número total de vocales en el tercer arreglo: ", contador
	
	
FinFuncion

Funcion convertir_cadena_a_arreglo(str, v)
	Definir i Como Entero
	Para i<- 1 Hasta Longitud(str) Hacer
		v[i] <- Subcadena(str, i, i)
	FinPara
FinFuncion

Proceso main
	Definir v1, v2, v3 Como Caracter
	Definir str1, str2, str3 como  Cadena
	Definir n1, n2, n3, n Como Entero
	
	Escribir "Cuenta el número de caracteres en cada arreglo"
	Escribir "Ingrese tres palabras: "
	Leer str1
	Leer str2
	Leer str3
	
	str1 <- Minusculas(str1)
	str2 <- Minusculas(str2)
	str3 <- Minusculas(str3)
	
	n1 <- Longitud(str1)
	Dimension v1(n1)
	
	n2 <- Longitud(str2)
	Dimension v2(n2)
	
	n3 <- Longitud(str3)
	Dimension v3(n3)
	
	
	convertir_cadena_a_arreglo(str1, v1)
	convertir_cadena_a_arreglo(str2, v2)
	convertir_cadena_a_arreglo(str3, v3)
	
	contar(v1, v2, v3, n1, n2, n3)
	
	
FinProceso
