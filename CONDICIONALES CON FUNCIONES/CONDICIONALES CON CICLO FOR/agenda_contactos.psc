Funcion dato <- PedirDato(mensaje)
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion informacion <- ObtenerContactos(cantidad)
	Definir informacion Como Cadena
	Definir i Como Entero
	Definir nombre, telefono Como Cadena
	
	informacion <- ""
	
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Contacto ", i
		Escribir "Ingresa nombre: "
		Leer nombre
		
		Escribir "Ingresa telefono: "
		Leer telefono
		
		informacion <- informacion + nombre + ": " + telefono + ", "
		Escribir ""  // l�nea en blanco para separar
	FinPara
FinFuncion

Algoritmo agenda_contactos
	// Definir variables
	Definir contactos Como Entero
	Definir informacion_contactos Como Cadena
	
	contactos <- PedirDato("�Cu�ntos contactos deseas agregar? ")
	
	// Llamar funci�n que contiene el ciclo For
	informacion_contactos <- ObtenerContactos(contactos)
	
	Escribir "Informaci�n de Contactos: ", informacion_contactos
FinAlgoritmo