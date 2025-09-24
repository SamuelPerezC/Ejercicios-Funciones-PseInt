Funcion dato <- PedirDato(mensaje)
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

// FUNCIÓN CON EL CICLO FOR DENTRO
Funcion informacion <- ObtenerVehiculos(cantidad)
	Definir informacion, Placa, Hora Como Cadena
	Definir i Como Entero
	
	informacion <- ""
	
	// Aquí está el ciclo For dentro de la función
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Vehículo ", i, " de ", cantidad
		Escribir "Ingresa la placa del vehiculo: "
		Leer Placa
		Escribir "Ingresa la hora de ingreso: "
		Leer Hora
		
		informacion <- informacion + Placa + " - " + Hora + "; "
		Escribir "" // línea en blanco
	FinPara
FinFuncion

Algoritmo registro_vehiculos
	Definir Carros_a_ingresar Como Entero
	Definir informacion_facturas Como Cadena
	
	Carros_a_ingresar <- PedirDato("Capacidad de vehiculos?")
	
	// Una sola llamada a la función que hace TODO el ciclo
	informacion_facturas <- ObtenerVehiculos(Carros_a_ingresar)
	
	Escribir "Facturación de vehiculos: ", informacion_facturas
FinAlgoritmo