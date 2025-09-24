// Función para pedir un número
Funcion dato <- PedirNumero(mensaje)
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

// Función que suma dos números
Funcion resultado <- SumarDosNumeros(a, b)
	resultado <- a + b
FinFuncion

Algoritmo suma_numeros
	Definir lista_numeros, i, numero, suma_total Como Entero
	
	suma_total <- 0
	
	// Pedir cuántos números sumar
	lista_numeros <- PedirNumero("¿Cuántos números deseas sumar? ")
	
	// Ciclo For en el algoritmo principal
	Para i <- 1 Hasta lista_numeros Con Paso 1 Hacer
		numero <- PedirNumero("Ingresa el número " + ConvertirATexto(i) + ": ")
		
		// Usar función para sumar
		suma_total <- SumarDosNumeros(suma_total, numero)
	FinPara
	
	Escribir "El total de la suma es: ", suma_total
FinAlgoritmo