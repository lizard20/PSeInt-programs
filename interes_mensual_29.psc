// 29.Suponga que un individuo desea invertir su capital en un banco y desea
//    saber cu�nto dinero ganara despu�s de un mes si el banco paga a raz�n
// 	  de 2% mensual, dise�ar un m�dulo que devuelva esa cantidad.

Funcion ret <- interes(n)
	Definir ret, interes_mensual  Como Real
	
	interes_mensual <- 0.02
	ret <- n * interes_mensual
FinFuncion

Proceso main
	Definir capital_inicial, ganancia Como Real
	
	Escribir "Calcula el inter�s de 2% mensual del capital inicial"
	
	capital_inicial <- azar(1000000) + 1
	
	ganancia <- interes(capital_inicial)
	
	Escribir  "Capital inicial:", capital_inicial, " pesos"
	Escribir  "Inter�s mensual: ", ganancia, " pesos"
FinProceso
	