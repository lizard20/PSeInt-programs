// 37.Diseñar un módulo que reciba tres arreglos de enteros de cualquier
// 	  dimensión y un valor entero, y muestre en pantalla cuantas veces
//    aparece ese valor en cada arreglo.

Funcion contador <- contar_en_vector(v,n,a)
	Definir i, contador Como Entero
	
	contador <- 0
	Para i <- 1 Hasta n Hacer
		Si v[i] = a Entonces
			contador <- contador + 1
		FinSi
	FinPara
FinFuncion

Funcion contar_en_3_arreglos(v1,v2,v3,n1,n2,n3,a)
	Definir contador como Entero
	
	contador <- 0
	contador <- contar_en_vector(v1,n1,a)
	Escribir  "El valor ", a, " aparece ", contador, " veces en el primer arreglo"
	contador <- contar_en_vector(v2,n2,a)
	Escribir  "El valor ", a, " aparece ", contador, " veces en el segundo arreglo"
	contador <- contar_en_vector(v3,n3,a)
	Escribir  "El valor ", a, " aparece ", contador, " veces en el tercer arreglo"
FinFuncion

Funcion crear_vector(v,n)
	Definir  i Como Entero
	
	Para i <- 1 Hasta n Hacer
		v[i] <- azar(100)
	FinPara
FinFuncion

Funcion imprimir_vector(v,n)
	Para i <- 1 Hasta n Hacer
		Escribir Sin Saltar v[i], " " 
	FinPara
	Escribir ""
FinFuncion


Proceso main
	Definir v1, v2, v3, n1, n2, n3, a Como Entero	
	
	n1 <- 20
	n2 <- 25
	n3 <- 15 
	a <- azar(100)
	Dimension v1(n1)
	Dimension v2(n2)
	Dimension v3(n3)
	
	crear_vector(v1,n1)
	imprimir_vector(v1,n1)
	crear_vector(v2,n2)
	imprimir_vector(v2,n2)
	crear_vector(v3,n3)
	imprimir_vector(v3,n3)
	
	contar_en_3_arreglos(v1,v2,v3,n1,n2,n3,a)
	
FinProceso
