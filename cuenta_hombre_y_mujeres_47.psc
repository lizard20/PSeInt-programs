// 47.Diseñar un módulo que reciba dos arreglos de caracteres, cada arreglo//  
//    representa la población masculina o femenina de una empresa. cada
//    posición del arreglo sólo debe contener o el carácter 'h' (hombre) o el
//    carácter 'm'(mujer). El módulo debe imprimir cuantos hombres y
//    mujeres existen en la empresa.

Funcion contador <- contar(v,n,c)
	Definir i, contador Como Entero
	
	contador <- 0
	Para i <- 1 Hasta n Hacer
		Si v[i] = c Entonces
			contador <- contador + 1
		FinSi
	FinPara
	
FinFuncion
Funcion contar_poblacion(v1,n, v2, m)
	Definir hombres, mujeres Como Entero
	
	hombres <- contar(v1,n,'h')
	hombres <- hombres + contar(v2, m, 'h')
	
	mujeres <- contar(v1, n, 'm')
	mujeres <- mujeres + contar(v2, m,'m')
	
	Escribir "Numero total de mujeres: ", mujeres
	Escribir "Numero total de hombres: ", hombres
FinFuncion

Funcion crear_vector(v, n)
	Definir i, genero Como Entero
	
	Para i<- 1 Hasta n Hacer
		genero <- azar(2)
		Si genero = 0 Entonces
			v[i] <- 'h'
		SiNo
			v[i] <- 'm'
		FinSi
	FinPara
FinFuncion

Funcion escribir_vector(v,n)
	Para i<- 1 Hasta n Hacer
		Escribir Sin Saltar v[i], " " 
	FinPara
	Escribir ""
FinFuncion

Proceso main
	Definir l, k Como Entero 
	
	l <- 15
	k <- 10
	
	Dimension poblacion1(l)
	Dimension poblacion2(k)
	
	Escribir "Cuenta el numero total de hombres y mujeres de dos poblaciones"
	crear_vector(poblacion1, l)
	Escribir Sin Saltar "Poblacion 1: "
	escribir_vector(poblacion1, l)
	
	crear_vector(poblacion2, k)
	Escribir  Sin Saltar "Poblacion 2: "
	escribir_vector(poblacion2, k)
	
	contar_poblacion(poblacion1, l, poblacion2, k)
	
	
FinProceso
