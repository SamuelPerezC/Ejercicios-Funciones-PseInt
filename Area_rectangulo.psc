Funcion Area <- CalcularArea(Base, Altura)
	Definir Area Como Real
	Area <- Base * Altura
FinFuncion

Funcion MostrarResultado(Area)
	Escribir "El Area es: ", Area
FinFuncion

Algoritmo Area_rectangulo
	// declarar variables
	Definir Base, Altura, Area Como Real
	
	// definir las variables
	Escribir "Ingrese la Base: "
	Leer Base
	Escribir "Ingrese la Altura: "
	Leer Altura
	
	// formula para Area
	Area <- CalcularArea(Base, Altura)
	
	// imprimimos mensaje
	MostrarResultado(Area)
FinAlgoritmo
