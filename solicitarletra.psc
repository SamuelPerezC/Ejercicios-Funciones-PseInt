Funcion SolicitarLetra <- LetraAsignada
	Definir SolicitarLetra Como Caracter
	Escribir "Ingresa la letra: "
	Leer SolicitarLetra
	
FinFuncion

Funcion mensaje(SolicitarLetra)
    Definir mensajevisitante Como Caracter
    mensajevisitante = SolicitarLetra
    Escribir "Bienvenido la letra asignada es: " mensajevisitante
FinFuncion



Algoritmo Ejercicio5
	// declarar variable
	Definir letra Como Cadena
	// definir variable
	letra <- LetraAsignada
	// procesar datos
	mensaje(letra)
FinAlgoritmo
