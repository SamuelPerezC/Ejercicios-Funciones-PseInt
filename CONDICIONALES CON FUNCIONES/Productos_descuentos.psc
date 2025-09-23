// Función para pedir un dato de texto
Funcion datoproducto <- PedirDato(mensaje)
	Definir datoproducto Como Caracter
	Escribir mensaje
	Leer datoproducto
FinFuncion

// Función para pedir un monto entero
Funcion montoproducto <- PedirMonto(mensaje)
	Definir montoproducto Como Entero
	Escribir mensaje
	Leer montoproducto
FinFuncion

// Función para obtener el precio base según el producto
Funcion precio <- ObtenerPrecio(producto)
	Definir precio Como Real
	
	Segun Mayusculas(producto) Hacer
		Caso "A":
			precio <- 2000
			Escribir "Selecciono alimento"
		Caso "V":
			precio <- 500
			Escribir "Selecciono Vestimenta"
		Caso "E":
			precio <- 10000
			Escribir "Selecciono Electronicos"
		De Otro Modo:
			precio <- 0
			Escribir "Producto no válido"
	FinSegun
FinFuncion

// Función para obtener el descuento según el producto
Funcion descuento <- ObtenerDescuento(producto)
	Definir descuento Como Real
	
	Segun Mayusculas(producto) Hacer
		Caso "A":
			descuento <- 0.10
		Caso "V":
			descuento <- 0.05
		Caso "E":
			descuento <- 0.0
		De Otro Modo:
			descuento <- 0
	FinSegun
FinFuncion

// Función para calcular el costo sin descuento
Funcion sin_descuento <- CalcularCostoSinDescuento(cantidad, precio_base)
	Definir sin_descuento Como Real
	sin_descuento <- cantidad * precio_base
FinFuncion

// Función para calcular el costo final con descuento
Funcion con_descuento <- CalcularCostoFinal(costo_sin_descuento, descuento)
	Definir con_descuento Como Real
	con_descuento <- costo_sin_descuento - (costo_sin_descuento * descuento)
FinFuncion

// Función para mostrar los resultados
Funcion MostrarResultados(costo_sin_descuento, costo_final)
	Escribir "costo sin descuentos: ", costo_sin_descuento
	Escribir "costo con descuento: ", costo_final
FinFuncion

// ALGORITMO PRINCIPAL
Algoritmo Productos_descuentos
	
	// Declarar variables
	Definir Producto Como Caracter
	Definir Cantidad Como Entero
	Definir precio_base, descuento Como Real
	Definir costo_sin_descuento, costo_final Como Real
	
	// Entrada de datos
	Producto <- PedirDato("INGRESE EL TIPO DE PRODUCTO (A=Alimento, V=Vestimenta, E=Electronicos): ")
	Cantidad <- PedirMonto("INGRESE LA CANTIDAD DE UNIDADES A COMPRAR: ")
	
	// Validar cantidad
	Si Cantidad > 0 Entonces
		
		// Obtener precio base y descuento por separado
		precio_base <- ObtenerPrecio(Producto)
		descuento <- ObtenerDescuento(Producto)
		
		// Validar producto
		Si precio_base > 0 Entonces
			// Calcular costos
			costo_sin_descuento <- CalcularCostoSinDescuento(Cantidad, precio_base)
			costo_final <- CalcularCostoFinal(costo_sin_descuento, descuento)
			
			// Mostrar resultados
			MostrarResultados(costo_sin_descuento, costo_final)
		FinSi
		
	SiNo
		Escribir "La cantidad debe ser mayor a 0."
	FinSi
	
FinAlgoritmo
