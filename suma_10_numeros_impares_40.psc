// 40. Escriba un m�dulo en el que se pida al usuario ingresar 10 n�meros
//     enteros impares para sumarlos. Elabore el m�dulo de manera que no se
//     arruine si el usuario escribe algunos enteros pares. El m�dulo debe salir
//     del ciclo e imprimir la suma s�lo cuando se hayan ingresado los 10
//     enteros impares.

funcion Lee_numeros_impares()
	Definir n, contador, suma Como Entero
		
	contador <- 1
	suma <- 0
	
	Escribir "Ingrese 10 n�meros impares: "
	Mientras contador <= 10 Hacer	
		Leer n
		Si n%2 <> 0 Entonces
			contador <- contador + 1
			suma <- suma + n 
		FinSi
	FinMientras
	Escribir "suma: ", suma
FinFuncion

Proceso main
	Escribir "Programa que suma 10 numeros impares ingresados"
	Lee_numeros_impares()
FinProceso
	