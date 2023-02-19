// 25.Diseñar un módulo que reciba como parámetro un carácter, dentro del
//    código pregunte si el carácter es 'A', 'O' ó 'N' realice operaciones, en
//    caso contrario que imprima en pantalla el texto "Carácter invalido". Si el
//	  carácter es 'A' se mostrará en pantalla la tabla de verdad del AND para
//	  dos valores booleanos, si el carácter es 'O' se imprimirá en pantalla la
//	  tabla de verdad del OR para dos valores booleanos, en el caso de que el
//	  carácter sea 'N' se imprimirá la tabla de verdad del NOT para un valor
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
			Escribir "Caracter inválido"
	Fin Segun
FinFuncion


Proceso main
	Escribir "Programa que imprime las operaciones booleanas"
	Escribir "Ingrese A, O o N"
	Leer str
	operaciones_booleanas(str)
FinProceso
	