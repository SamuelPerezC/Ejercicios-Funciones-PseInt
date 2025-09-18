Funcion resultado <- CalcularIMC(peso, altura)
	resultado <- peso / (altura^2)
FinFuncion

Funcion MostrarIMC(nombrePersona, imc)
	Escribir "El IMC de ", nombrePersona, " es: ", imc
FinFuncion

Algoritmo Calcular_IMC_Dos_Personas
	// Declarar variables
	Definir peso1, altura1, imc1 Como Real
	Definir peso2, altura2, imc2 Como Real
	
	// Entrada de datos Persona 1
	Escribir "Ingrese el peso de la Persona 1 (Kg): "
	Leer peso1
	Escribir "Ingrese la altura de la Persona 1 (m): "
	Leer altura1
	
	// Calcular IMC Persona 1
	imc1 <- CalcularIMC(peso1, altura1)
	
	// Entrada de datos Persona 2
	Escribir "Ingrese el peso de la Persona 2 (Kg): "
	Leer peso2
	Escribir "Ingrese la altura de la Persona 2 (m): "
	Leer altura2
	
	// Calcular IMC Persona 2
	imc2 <- CalcularIMC(peso2, altura2)
	
	// Mostrar resultados con funciones
	MostrarIMC("Persona 1", imc1)
	MostrarIMC("Persona 2", imc2)
FinAlgoritmo



