// Función para pedir un dato con mensaje personalizado
Funcion dato <- PedirDato(mensaje)
    Definir dato Como Entero
    Escribir mensaje
    Leer dato
FinFuncion

Funcion RealizarcuentaRegresiva(contador)
	    
	Mientras contador >= 0 Hacer
		Escribir contador
		contador <-contador-1
	FinMientras
	
FinFuncion

Algoritmo CuentaRegresiva
	
	// Declaración de variables
	Definir contador Como Entero
	
	//Inicialización del contador
	contador <- PedirDato("De 1 a 10 escribe un numero")
	
	
	// Bucle "Mientras" para imprimir
	RealizarcuentaRegresiva(contador)
	Escribir "finalizo la cuenta regresiva"
FinAlgoritmo
