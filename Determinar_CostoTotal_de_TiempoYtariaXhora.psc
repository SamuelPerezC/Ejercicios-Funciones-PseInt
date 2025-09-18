Funcion Costo_total <- CalcularCosto(Tiempo, Tarifa_hora)
	Definir Costo_total Como Real
	Costo_total <- Tiempo * Tarifa_hora
FinFuncion

Funcion MostrarResultado(Tiempo, Costo_total)
	Escribir "El costo total por ", Tiempo, " horas trabajadas es: $", Costo_total
FinFuncion

Algoritmo Determinar_CostoTotal_de_TiempoYtariaXhora
	// Declarar las variables
	Definir Tiempo, Tarifa_hora, Costo_total Como Real
	
	// Asignar valores a las variables
	Escribir "Ingrese el tiempo trabajado en horas: "
	Leer Tiempo
	Escribir "Ingrese la tarifa por horas: "
	Leer Tarifa_hora
	
	// Procesar con funciones
	Costo_total <- CalcularCosto(Tiempo, Tarifa_hora)
	
	// Mostrar resultado
	MostrarResultado(Tiempo, Costo_total)
FinAlgoritmo

