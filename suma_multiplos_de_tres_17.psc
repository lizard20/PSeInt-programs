//17. Elaborar un m�dulo que calcule la suma de los n�meros m�ltiplos de 3 a
//    partir del n�mero 9 y finaliza en el n�mero 45, no deben incluirse en la
//    suma los n�meros comprendidos entre 21 y 27.

Funci�n sumar_multiplos_de_tres()
Definir i, suma, n Como Entero
	suma <- 0
	n <- 45
	inicio <- 9
	Para i <- inicio Hasta n Hacer
		Si i%3 = 0 y  i<>21 y i<> 24 y i <> 27 Entonces
			suma <- suma + i
		FinSi
	FinPara
	Escribir "Suma: ", suma
FinFuncion

Proceso main
	Escribir "Suma multiplos de 3 a partir de 9, pero se excluye el intervalo de 21 a 27"
	sumar_multiplos_de_tres()
FinProceso
	