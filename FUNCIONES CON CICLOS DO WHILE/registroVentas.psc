// Función para pedir un dato con mensaje personalizado
Funcion dato <- PedirDato(mensaje)
    Definir dato Como Cadena
    Escribir mensaje
    Leer dato
FinFuncion

Funcion Val <- PedirPrecio(mensaje)
    Definir Val Como Real
    Escribir mensaje
    Leer Val
FinFuncion

Funcion continuar <- PreguntarContinuacion()
    Definir continuar Como Logico
    Definir respuesta Como Cadena
    
    respuesta <- PedirDato("¿Deseas agregar más tareas? (SI/NO)")
    continuar <- (respuesta = "SI") 
FinFuncion

Algoritmo registroVentas
	Definir producto, resumen_pedido, lista_productos Como Cadena
	Definir precio, total_ventas Como Real
	Definir respuesta Como Cadena
	
	lista_productos <- " "
	totalVentas <- 0
	
	// APLICAMOS BUCLE 
	Repetir
		
		producto <- PedirDato("Ingresa el nombre del producto: ")
		precio <- PedirPrecio ("Ingresa el precio del producto: ")
		
		// Acumular el precio en el total
		total_ventas <- total_ventas + precio
		// Concatenar producto al listado
		lista_productos <- lista_productos + producto + ", "
		
		
		
		continuar <- PreguntarContinuacion()
		
	Hasta Que continuar = Falso
	
	// Mostrar resultados
	Escribir "-----------------------------------"
	Escribir "Resumen de ventas:"
	Escribir "Productos vendidos: ", lista_productos
	Escribir "Monto total de ventas: $", total_ventas
	Escribir "-----------------------------------"
	
FinAlgoritmo
