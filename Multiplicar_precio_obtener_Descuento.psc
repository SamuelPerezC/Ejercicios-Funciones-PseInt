Funcion Total <- CalcularTotal(Precio_unitario, Cantidad)
	Definir Total Como Real
	Total <- Precio_unitario * Cantidad
FinFuncion

Funcion Total_con_descuento <- CalcularDescuento(Total, Descuento)
	Definir Total_con_descuento Como Real
	Total_con_descuento <- Total - (Total * Descuento)
FinFuncion

Funcion MostrarResultado(Total_con_descuento)
	Escribir "El SubTotal con descuento es: ", Total_con_descuento
FinFuncion

Algoritmo Multiplicar_precio_obtener_Descuento
	// declarar variables
	Definir Precio_unitario, Cantidad, Descuento, Total, Total_con_descuento Como Real
	
	// definir las variables
	Escribir "Ingrese el precio unitario: "
	Leer Precio_unitario
	Escribir "Ingrese la cantidad: "
	Leer Cantidad
	Escribir "Ingrese el descuento (ejemplo 0.19 para 19%): "
	Leer Descuento
	
	// llamo las formulas de las funciones para que se muestren en la pantalla al momento de ejercutar el codigo
	Total <- CalcularTotal(Precio_unitario, Cantidad)
	Total_con_descuento <- CalcularDescuento(Total, Descuento)

	// mostramos el mensaje o resultado
	MostrarResultado(Total_con_descuento)
FinAlgoritmo

