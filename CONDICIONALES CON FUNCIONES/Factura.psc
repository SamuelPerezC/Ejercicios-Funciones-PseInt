Funcion dato <- PedirDato(mensaje)
	Definir dato Como Cadena
	Escribir mensaje
	Leer dato
FinFuncion

Funcion monto <- PedirMonto(mensaje)
	Definir monto Como Entero
	Escribir mensaje
	Leer monto
FinFuncion

Funcion precio <- PedirPrecio(mensaje)
	Definir precio Como Real
	Escribir mensaje
	Leer precio
FinFuncion

SubProceso CalcularSubtotal(cantidad, precio_unitario, es_estudiante,subtotal Por Referencia, impuesto Por Referencia, total Por Referencia)
	subtotal <- cantidad * precio_unitario
	
	Si Mayusculas(es_estudiante) = "SI" Entonces
		impuesto <- subtotal * 0.05
	SiNo
		impuesto <- subtotal * 0.13
	FinSi
	
	total <- subtotal + impuesto
FinSubProceso


SubProceso MostrarFactura(nombre_cliente, tipo_cliente, producto, cantidad, precio_unitario, subtotal, impuesto, total)
	Escribir "========== FACTURA =========="
	Escribir "Cliente: ", nombre_cliente
	Escribir "Tipo de cliente: ", tipo_cliente
	Escribir "Producto: ", producto
	Escribir "Cantidad: ", cantidad
	Escribir "Precio unitario: $", precio_unitario
	Escribir "--------------------------------"
	Escribir "Subtotal: $", subtotal
	Escribir "Impuesto aplicado: $", impuesto
	Escribir "TOTAL A PAGAR: $", total
	Escribir "=============================="
FinSubProceso

Algoritmo Factura
	// Declarar variables
	Definir nombre_cliente, producto, es_estudiante, tipo_cliente Como Cadena
	Definir cantidad Como Entero
	Definir subtotal, impuesto, total, precio_unitario Como Real
	
	// Pedir datos al usuario
	nombre_cliente <- PedirDato("Ingrese el nombre del cliente: ")
	tipo_cliente <- PedirDato("Ingrese el tipo de cliente (A, B, C...): ")
	producto <- PedirDato("Ingrese el producto: ")
	es_estudiante <- PedirDato("¿El cliente es estudiante? (SI/NO): ")
	
	cantidad <- PedirMonto("Ingrese la cantidad de productos: ")
	precio_unitario <- PedirPrecio("Ingrese el precio unitario: ")
	
	// Procesar datos
	CalcularSubtotal(cantidad, precio_unitario, es_estudiante, subtotal, impuesto, total)
	
	// Mostrar factura
	MostrarFactura(nombre_cliente, tipo_cliente, producto, cantidad, precio_unitario, subtotal, impuesto, total)
FinAlgoritmo


