Funcion edad <- CalcularEdad(a�o_actual, a�o_nacimiento)
	Definir edad Como Entero
	edad <- a�o_actual - a�o_nacimiento
FinFuncion

Funcion MostrarEdades(edad1, edad2, edad3)
	Escribir "La edad de la persona 1 es: ", edad1, " a�os"
	Escribir "La edad de la persona 2 es: ", edad2, " a�os"
	Escribir "La edad de la persona 3 es: ", edad3, " a�os"
FinFuncion

Algoritmo Calcular_Edad_3_Personas
	// Declarar variables
	Definir a�o_actual, a�o_nacimiento1, a�o_nacimiento2, a�o_nacimiento3 Como Entero
	Definir edad1, edad2, edad3 Como Entero
	
	// Pedir a�o actual
	Escribir "Ingrese el a�o actual:"
	Leer a�o_actual
	
	// Persona 1
	Escribir "Ingrese el a�o de nacimiento de la persona 1:"
	Leer a�o_nacimiento1
	edad1 <- CalcularEdad(a�o_actual, a�o_nacimiento1)
	
	// Persona 2
	Escribir "Ingrese el a�o de nacimiento de la persona 2:"
	Leer a�o_nacimiento2
	edad2 <- CalcularEdad(a�o_actual, a�o_nacimiento2)
	
	// Persona 3
	Escribir "Ingrese el a�o de nacimiento de la persona 3:"
	Leer a�o_nacimiento3
	edad3 <- CalcularEdad(a�o_actual, a�o_nacimiento3)
	
	// Mostrar todas las edades al final
	MostrarEdades(edad1, edad2, edad3)
FinAlgoritmo


