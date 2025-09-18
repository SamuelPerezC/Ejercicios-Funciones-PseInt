// Función para pedir un valor numérico
Funcion dato <- PedirDato(mensaje)
	Definir dato Como Real
	Escribir mensaje
	Leer dato
FinFuncion


// Función que calcula el costo total
Funcion costo <- CalcularCosto(paginas, precio)
	Definir costo Como Real
	costo <- paginas * precio
FinFuncion


// Función para mostrar el resultado final
Funcion MostrarResultado(costo)
	Escribir "============================"
	Escribir "El costo total de impresión es: $", costo
FinFuncion

Algoritmo CostoImpresion
	// Declarar variables
	Definir paginas, precioPagina, costoTotal Como Real
	
	// Entrada de datos
	paginas <- PedirDato("Ingrese la cantidad de páginas a imprimir: ")
	precioPagina <- PedirDato("Ingrese el precio por página: ")
	
	// Proceso
	costoTotal <- CalcularCosto(paginas, precioPagina)
	
	// Salida
	MostrarResultado(costoTotal)
FinAlgoritmo



