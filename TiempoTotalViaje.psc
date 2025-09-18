// Función para pedir un valor numérico
Funcion dato <- PedirDato(mensaje)
	Definir dato Como Real
	Escribir mensaje
	Leer dato
FinFuncion

// Función para mostrar el resultado final
Funcion MostrarResultado(tiempo)
	Escribir "=========================="
	Escribir "El tiempo total del viaje es: ", tiempo, " horas"
FinFuncion


Algoritmo TiempoTotalViaje
	// Declarar variables
	Definir n, tiempoTotal Como Entero
	Definir i, tiempoParcial Como Real
	
	// Entrada de datos
	n <- PedirDato("Ingrese la cantidad de tramos del viaje: ")
	
	// iniciar el contador en 0
	tiempoTotal <- 0
	
	// Proceso: sumar tiempos parciales
	Para i <- 1 Hasta n Con Paso 1 Hacer
		tiempoParcial <- PedirDato("Ingrese el tiempo del tramo " + ConvertirATexto(i) + " (en horas): ")
		tiempoTotal <- tiempoTotal + tiempoParcial
	FinPara
	
	// imprimir datos
	MostrarResultado(tiempoTotal)
FinAlgoritmo



