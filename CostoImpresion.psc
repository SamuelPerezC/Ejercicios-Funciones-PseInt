// Funci�n para pedir un valor num�rico
Funcion dato <- PedirDato(mensaje)
	Definir dato Como Real
	Escribir mensaje
	Leer dato
FinFuncion


// Funci�n que calcula el costo total
Funcion costo <- CalcularCosto(paginas, precio)
	Definir costo Como Real
	costo <- paginas * precio
FinFuncion


// Funci�n para mostrar el resultado final
Funcion MostrarResultado(costo)
	Escribir "============================"
	Escribir "El costo total de impresi�n es: $", costo
FinFuncion

Algoritmo CostoImpresion
	// Declarar variables
	Definir paginas, precioPagina, costoTotal Como Real
	
	// Entrada de datos
	paginas <- PedirDato("Ingrese la cantidad de p�ginas a imprimir: ")
	precioPagina <- PedirDato("Ingrese el precio por p�gina: ")
	
	// Proceso
	costoTotal <- CalcularCosto(paginas, precioPagina)
	
	// Salida
	MostrarResultado(costoTotal)
FinAlgoritmo



