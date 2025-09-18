// SOLICITAMOS LA ENTRADA DE DATOS E INFORMACION
Funcion dato <- PedirDato(mensaje)
	Definir dato Como Real
	Escribir mensaje
	Leer dato
FinFuncion

// CALCULAMOS subtotal
Funcion subtotal <- CalcularSubtotal(precio, cantidad)
	Definir subtotal Como Real
	subtotal <- precio * cantidad
FinFuncion

// MENSAJE A MOSTRAR
Funcion MostrarSubtotal(nombreProducto, subtotal)
	Escribir "Subtotal ", nombreProducto, ": $", subtotal
FinFuncion

Algoritmo VentasProductos
	// DECLARAR VARIABLES
	Definir precio1, precio2, precio3 Como Real
	Definir cant1, cant2, cant3 Como Entero
	Definir sub1, sub2, sub3 Como Real
	Definir totalUnidades Como Entero
	Definir totalPagar Como Real
	
	// SOLICITAMOS DATOS
	precio1 <- PedirDato("Ingrese el precio unitario del Producto 1: ")
	cant1 <- PedirDato("Ingrese la cantidad vendida del Producto 1: ")
	
	precio2 <- PedirDato("Ingrese el precio unitario del Producto 2: ")
	cant2 <- PedirDato("Ingrese la cantidad vendida del Producto 2: ")
	
	precio3 <- PedirDato("Ingrese el precio unitario del Producto 3: ")
	cant3 <- PedirDato("Ingrese la cantidad vendida del Producto 3: ")
	
	// FORMULAS
	sub1 <- CalcularSubtotal(precio1, cant1)
	sub2 <- CalcularSubtotal(precio2, cant2)
	sub3 <- CalcularSubtotal(precio3, cant3)
	
	totalUnidades <- cant1 + cant2 + cant3
	totalPagar <- sub1 + sub2 + sub3
	
	// IMPRIMIMOS RESULTADO
	MostrarSubtotal("Producto 1", sub1)
	MostrarSubtotal("Producto 2", sub2)
	MostrarSubtotal("Producto 3", sub3)
	
	Escribir "--------------------------------"
	Escribir "Total de unidades vendidas: ", totalUnidades
	Escribir "TOTAL A PAGAR: $", totalPagar
FinAlgoritmo






