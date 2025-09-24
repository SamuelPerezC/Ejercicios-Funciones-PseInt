Funcion dato <- PedirDato(mensaje)
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion informacion <- comprasTienda(cantidad)
	Definir informacion Como Cadena
	Definir i Como Entero
	Definir articulo, precio Como Cadena
	
	informacion <- ""  // Inicializar como cadena vacía
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Producto ", i, " de ", cantidad
		Escribir "Ingresa el producto a comprar: "
		Leer articulo
		
		Escribir "Ingresa el precio del producto: "
		Leer precio
		
		
		informacion <- informacion + articulo + ": $" + precio + "; "
		Escribir "================="  
	FinPara
FinFuncion

Algoritmo compras_tienda_virtual
	// Definir variables
	Definir carrito Como Entero
	Definir informacion_facturas Como Cadena
	
	carrito <- PedirDato("Agrega la cantidad de productos a comprar: ")
	
	// Llamar a la función del ciclo for
	informacion_facturas <- comprasTienda(carrito)
	
	Escribir "Facturación de compras: ", informacion_facturas
FinAlgoritmo
