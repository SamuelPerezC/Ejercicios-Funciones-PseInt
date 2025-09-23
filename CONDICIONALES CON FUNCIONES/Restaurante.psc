// FUNCION PARA MOSTRAR MENU Y RETORNAR PRECIO
Funcion precio <- SeleccionarProducto()
	Definir opcion Como Entero
	Definir precio Como Real
	
	Escribir "1. PESCADO - $15000"
	Escribir "2. POLLO - $20000"
	Escribir "3. AGUA - $5000"
	Escribir "4. GASEOSA - $4000"
	Escribir "Seleccione una opción (1-4): "
	Leer opcion
	
	Segun opcion Hacer
		1:
			precio <- 15000
			Escribir "Usted seleccionó PESCADO"
		2:
			precio <- 20000
			Escribir "Usted seleccionó POLLO"
		3:
			precio <- 5000
			Escribir "Usted seleccionó AGUA"
		4:
			precio <- 4000
			Escribir "Usted seleccionó GASEOSA"
		De Otro Modo:
			precio <- 0
			Escribir "Opción no válida"
	FinSegun
FinFuncion

// FUNCION PARA SELECCIONAR METODO DE PAGO Y RETORNAR DESCUENTO
Funcion descuento <- SeleccionarMetodoPago()
	Definir metodo_pago Como Caracter
	Definir descuento Como Real
	
	Escribir "Seleccione método de pago (E=Efectivo, T=Tarjeta, C=Cheque): "
	Leer metodo_pago
	
	Segun Mayusculas(metodo_pago) Hacer
		"E":
			descuento <- 0.10
			Escribir "Pago en efectivo, aplica 10% de descuento"
		"T":
			descuento <- 0.05
			Escribir "Pago con tarjeta, aplica 5% de descuento"
		"C":
			descuento <- 0
			Escribir "Pago con cheque, no aplica descuento"
		De Otro Modo:
			descuento <- 0
			Escribir "Método de pago no válido, no se aplica descuento"
	FinSegun
FinFuncion

// FUNCION PARA CALCULAR TOTAL CON DESCUENTO
Funcion total <- CalcularTotalFinal(costo, descuento)
	Definir total Como Real
	total <- costo - (costo * descuento)
FinFuncion

// FUNCION PARA MOSTRAR LA FACTURA
Funcion MostrarFactura(costo_total, total_final)
	Escribir "-----------------------------"
	Escribir "Costo total sin descuento: $", costo_total
	Escribir "Total a pagar con descuento: $", total_final
	Escribir "-----------------------------"
FinFuncion

// ALGORITMO PRINCIPAL
Algoritmo Restaurante
	// Declarar variables
	Definir CARTA Como Entero
	Definir precio, costo_total, descuento, total_final Como Real
	Definir pago, continuar Como Caracter
	
	costo_total <- 0
	
	// Seleccionar producto
	precio <- SeleccionarProducto()
	
	// Acumular costo si el producto es válido
	Si precio > 0 Entonces
		costo_total <- costo_total + precio
		
		// Seleccionar método de pago
		descuento <- SeleccionarMetodoPago()
		
		// Calcular total final
		total_final <- CalcularTotalFinal(costo_total, descuento)
		
		// Mostrar resultados
		MostrarFactura(costo_total, total_final)
	FinSi
	
FinAlgoritmo
