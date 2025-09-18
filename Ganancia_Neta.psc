Funcion ganancia <- CalcularGanancia(ingresos, gastos)
	Definir ganancia Como Real
	ganancia <- ingresos - gastos
FinFuncion

Funcion MostrarResultado(ganancia)
	Escribir "La ganancia neta es: ", ganancia
FinFuncion

Algoritmo Ganancia_Neta
	// Declarar variables
	Definir ingresos, gastos, ganancia Como Real
	
	// Pedir datos al usuario
	Escribir "Ingrese el total de ingresos:"
	Leer ingresos
	
	Escribir "Ingrese el total de gastos:"
	Leer gastos
	
	// Calcular con funciones
	ganancia <- CalcularGanancia(ingresos, gastos)
	
	// Mostrar resultado
	MostrarResultado(ganancia)
FinAlgoritmo
