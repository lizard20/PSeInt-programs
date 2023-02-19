// 9. Diseñar un módulo que muestre los pares encontrados entre 1 y 50.

Funcion es_par(n)
	Para i<-1 Hasta n Hacer
		Si i % 2 = 0 Entonces
			Escribir i, " es par"
		FinSi
	FinPara
	
FinFuncion

Proceso main
	Escribir  "Numeros pares encontrados entre 1 y 50"
	
	es_par(50)
FinProceso