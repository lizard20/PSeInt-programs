// 25.Dise�ar un m�dulo que reciba como par�metro un car�cter, dentro del
//    c�digo pregunte si el car�cter es 'A', 'O' � 'N' realice operaciones, en
//    caso contrario que imprima en pantalla el texto "Car�cter invalido". Si el
//	  car�cter es 'A' se mostrar� en pantalla la tabla de verdad del AND para
//	  dos valores booleanos, si el car�cter es 'O' se imprimir� en pantalla la
//	  tabla de verdad del OR para dos valores booleanos, en el caso de que el
//	  car�cter sea 'N' se imprimir� la tabla de verdad del NOT para un valor
//    booleano

Funcion imprimir_and()
	Escribir	"A  B | A AND B"
	Escribir 	"-----|--------"
	Escribir 	"0  0 |    0 "
	Escribir 	"0  1 |    0"
	Escribir 	"1  0 |    0"
	Escribir 	"1  1 |    1"
FinFuncion

Funcion imprimir_or()
	Escribir	"A  B | A OR B"
	Escribir 	"-----|--------"
	Escribir 	"0  0 |    0 "
	Escribir 	"0  1 |    1"
	Escribir 	"1  0 |    1"
	Escribir 	"1  1 |    1"
FinFuncion

Funcion imprimir_not()
	Escribir	"A | NOT A"
	Escribir 	"--|------"
	Escribir 	"0 |   1 "
	Escribir 	"1 |   0"
FinFuncion

Funcion operaciones_booleanas(c)
	Segun c Hacer
			'A':
				imprimir_and()
			'O':
				imprimir_or()
			'N':
				imprimir_not()
		De Otro Modo:
			Escribir "Caracter inv�lido"
	Fin Segun
FinFuncion


Proceso main
	Escribir "Programa que imprime las operaciones booleanas"
	Escribir "Ingrese A, O o N"
	Leer str
	operaciones_booleanas(str)
FinProceso
	