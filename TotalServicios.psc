// Función para pedir un valor numérico
Funcion dato <- PedirDato(mensaje)
	Definir dato Como Real
	Escribir mensaje
	Leer dato
FinFuncion

// Función que calcula el total de los servicios
Funcion total <- CalcularTotalServicios(n)
	Definir i Como Entero
	Definir consumo, total Como Real
	total <- 0
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		consumo <- PedirDato("Ingrese el valor del servicio " + ConvertirATexto(i) + ": ")
		total <- total + consumo
	FinPara
FinFuncion


// Función para mostrar el resultado final
Funcion MostrarResultado(total)
	Escribir "=========================="
	Escribir "El total a pagar por todos los servicios es: $", total
FinFuncion

Algoritmo TotalServicios
	// Declarar variables
	Definir n, totalPagar Como Real
	
	// Entrada de datos
	n <- PedirDato("Ingrese la cantidad de servicios a pagar: ")
	
	// Proceso
	totalPagar <- CalcularTotalServicios(n)
	
	// Salida
	MostrarResultado(totalPagar)
FinAlgoritmo





