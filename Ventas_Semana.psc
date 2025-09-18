Funcion Total_Semana <- CalcularTotal(Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo)
	Definir Total_Semana Como Entero
	Total_Semana <- Lunes + Martes + Miercoles + Jueves + Viernes + Sabado + Domingo
FinFuncion

Funcion MostrarResultado(Total_Semana)
	Escribir "Ventas Total Semana es: ", Total_Semana
FinFuncion

Algoritmo Ventas_Semana
	// declarar variables
	Definir Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo, Total_Semana Como Entero
	
	// asignar valores a cada dia
	Escribir "Ingresa la venta del Lunes: "
	Leer Lunes
	Escribir "Ingresa la venta del Martes: "
	Leer Martes
	Escribir "Ingresa la venta del Miercoles: "
	Leer Miercoles
	Escribir "Ingresa la venta del Jueves: "
	Leer Jueves
	Escribir "Ingresa la venta del Viernes: "
	Leer Viernes
	Escribir "Ingresa la venta del Sabado: "
	Leer Sabado
	Escribir "Ingresa la venta del Domingo: "
	Leer Domingo
	
	// formula para toda la semana
	Total_Semana <- CalcularTotal(Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo)
	
	// imprimir resultados
	MostrarResultado(Total_Semana)
FinAlgoritmo
