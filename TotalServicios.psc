// Función para pedir un valor numérico
Funcion dato <- PedirDato(mensaje)
	Definir dato Como Real
	Escribir mensaje
	Leer dato
FinFuncion

// Función para mostrar el resultado final
Funcion MostrarResultado(total)
	Escribir "=========================="
	Escribir "El total a pagar por todos los servicios es: $", total
FinFuncion

Algoritmo TotalServicios
	// Declarar variables
	Definir n, i Como Entero
	Definir totalPagar, consumo Como Real
	
	// Entrada de datos
	n <- PedirDato("Ingrese la cantidad de servicios a pagar: ")
	
	// Inicializar acumulador
	totalPagar <- 0
	
	// Proceso: sumar consumos de servicios
	Para i <- 1 Hasta n Con Paso 1 Hacer
		consumo <- PedirDato("Ingrese el valor del servicio " + ConvertirATexto(i) + ": ")
		totalPagar <- totalPagar + consumo
	FinPara
	
	// Salida
	MostrarResultado(totalPagar)
FinAlgoritmo




