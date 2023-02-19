// 13.Diseñar un módulo que reciba los lados de un triángulo y devuelva uno si
//	  es equilátero, dos si es isósceles y 0 si no cumple ninguno de los dos
//	  criterios.

Funcion res <- es_isosceles_o_equilatero(a,b,c)
	Definir res Como Entero
	
	
	Si a = b y b = c Entonces // es quilatero
		res <- 1
	Sino Si a = b o a = c o b = c Entonces // es isosceles
			res <- 2
		SiNo			// es escaleno
			res <- 0
		FinSi
	FinSi
FinFuncion

Funcion genera_triangulo(v)
	Definir a,b,c, n Como Entero
	
	n <- 3
	
	a <- azar(n) + 1
	b <- azar(n) + 1
	c <- azar(n) + 1
	
	v[1] <- a/2
	v[2] <- b/2
	v[3] <- c/2
FinFuncion

Proceso main
	Definir res  Como Real
	Definir v Como  Real
	
	Dimension v(3)
	genera_triangulo(v)
	
	Escribir "a: ", v[1], " b: ", v[2], " c: ", v[3]
	
	res <- es_isosceles_o_equilatero(v[1],v[2],v[3])
	Segun res Hacer
		1:
			Escribir "El triángulo es equilatero"
		2:
			Escribir "El triángulo es isosceles"
		De Otro Modo:
			Escribir "El triángulo es escaleno"
	Fin Segun
FinProceso
	