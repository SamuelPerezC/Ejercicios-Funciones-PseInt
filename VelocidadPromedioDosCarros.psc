Funcion valor <- PedirValor(mensaje)
	Definir valor Como Real
	Escribir mensaje
	Leer valor
FinFuncion

Funcion velocidad <- CalcularVelocidad(distancia, tiempo)
	Definir velocidad Como Real
	velocidad <- distancia / tiempo
FinFuncion

Funcion MostrarVelocidad(texto, velocidad)
	Escribir "La velocidad promedio de ", texto, " es: ", velocidad, " km/h"
FinFuncion


Algoritmo VelocidadPromedioDosCarros
	//Definimos variables
	Definir distancia1, tiempo1, velocidad1 Como Real
	Definir distancia2, tiempo2, velocidad2 Como Real
	
	//Pedimos datos y calculamos las formulas 
	
	// Carro 1
	distancia1 <- PedirValor("Ingrese la distancia recorrida por el Carro 1 (km): ")
	tiempo1 <- PedirValor("Ingrese el tiempo que tardó el Carro 1 (horas): ")
	velocidad1 <- CalcularVelocidad(distancia1, tiempo1)
	
	// Carro 2
	distancia2 <- PedirValor("Ingrese la distancia recorrida por el Carro 2 (km): ")
	tiempo2 <- PedirValor("Ingrese el tiempo que tardó el Carro 2 (horas): ")
	velocidad2 <- CalcularVelocidad(distancia2, tiempo2)
	
	// imprimimos informacion
	MostrarVelocidad("el Carro 1", velocidad1)
	MostrarVelocidad("el Carro 2", velocidad2)
	
FinAlgoritmo



