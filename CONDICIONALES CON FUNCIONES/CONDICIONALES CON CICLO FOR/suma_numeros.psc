// Funci�n para pedir un n�mero
Funcion dato <- PedirNumero(mensaje)
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

// Funci�n que suma dos n�meros
Funcion resultado <- SumarDosNumeros(a, b)
	resultado <- a + b
FinFuncion

Algoritmo suma_numeros
	Definir lista_numeros, i, numero, suma_total Como Entero
	
	suma_total <- 0
	
	// Pedir cu�ntos n�meros sumar
	lista_numeros <- PedirNumero("�Cu�ntos n�meros deseas sumar? ")
	
	// Ciclo For en el algoritmo principal
	Para i <- 1 Hasta lista_numeros Con Paso 1 Hacer
		numero <- PedirNumero("Ingresa el n�mero " + ConvertirATexto(i) + ": ")
		
		// Usar funci�n para sumar
		suma_total <- SumarDosNumeros(suma_total, numero)
	FinPara
	
	Escribir "El total de la suma es: ", suma_total
FinAlgoritmo