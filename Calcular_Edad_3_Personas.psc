Funcion edad <- CalcularEdad(año_actual, año_nacimiento)
	Definir edad Como Entero
	edad <- año_actual - año_nacimiento
FinFuncion

Funcion MostrarEdades(edad1, edad2, edad3)
	Escribir "La edad de la persona 1 es: ", edad1, " años"
	Escribir "La edad de la persona 2 es: ", edad2, " años"
	Escribir "La edad de la persona 3 es: ", edad3, " años"
FinFuncion

Algoritmo Calcular_Edad_3_Personas
	// Declarar variables
	Definir año_actual, año_nacimiento1, año_nacimiento2, año_nacimiento3 Como Entero
	Definir edad1, edad2, edad3 Como Entero
	
	// Pedir año actual
	Escribir "Ingrese el año actual:"
	Leer año_actual
	
	// Persona 1
	Escribir "Ingrese el año de nacimiento de la persona 1:"
	Leer año_nacimiento1
	edad1 <- CalcularEdad(año_actual, año_nacimiento1)
	
	// Persona 2
	Escribir "Ingrese el año de nacimiento de la persona 2:"
	Leer año_nacimiento2
	edad2 <- CalcularEdad(año_actual, año_nacimiento2)
	
	// Persona 3
	Escribir "Ingrese el año de nacimiento de la persona 3:"
	Leer año_nacimiento3
	edad3 <- CalcularEdad(año_actual, año_nacimiento3)
	
	// Mostrar todas las edades al final
	MostrarEdades(edad1, edad2, edad3)
FinAlgoritmo


