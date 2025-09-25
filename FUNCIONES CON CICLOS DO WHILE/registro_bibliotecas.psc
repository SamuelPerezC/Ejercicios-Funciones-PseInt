// Función para pedir un dato con mensaje personalizado
Funcion dato <- PedirDato(mensaje)
    Definir dato Como Cadena
    Escribir mensaje
    Leer dato
FinFuncion

Funcion Pag <- PedirDatopag(mensaje)
    Definir Pag Como Entero
    Escribir mensaje
    Leer Pag
FinFuncion

// Función para preguntar si continuar
Funcion continuar <- PreguntarContinuacion()
    Definir continuar Como Logico
    Definir respuesta Como Cadena
    
    respuesta <- PedirDato("¿Deseas agregar más tareas? (SI/NO)")
    continuar <- (respuesta = "SI") 
FinFuncion

Algoritmo registro_bibliotecas
	//definir variables
	Definir Lista_de_libros,titulo,autor  como cadena
	Definir Num_paginas Como Entero
	Definir continuar Como Logico
	
	//Solicitamos informacion
	
	Repetir
		Escribir "================================"
		titulo <- PedirDato("Nombre del Libro: ")
		autor<-PedirDato("Autor del Libro: ")
		
		Num_paginas <- PedirDatopag ("Cantidad de paginas del libro: ")
		Escribir "================================"
		
		Lista_de_libros <- Lista_de_libros + " , " + titulo + " , " + autor + " , " +  ConvertirATexto(Num_paginas)
		
		continuar <- PreguntarContinuacion()
		
	Hasta Que continuar = Falso
	
	Escribir  Lista_de_libros
	
	
	
FinAlgoritmo
