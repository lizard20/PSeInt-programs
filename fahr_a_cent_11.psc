// 11.Dise�ar un m�dulo que reciba la temperatura en grados Fahrenheit y
// devuelva la temperatura en grados cent�grados.

Funcion c <- f2c(f)
	Definir c Como Real
	c <- (f-32)*5/9
FinFuncion

Proceso main
	Definir f, c  Como Real
	
	Escribir "Ingrese la temperatura en grados fharenheit: "
	Leer f
	
	c <- f2c(f)
	
	Escribir f, " grados fahrenheit = ", c " grados centigrados"
FinProceso