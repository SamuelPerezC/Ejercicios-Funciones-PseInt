Funcion EdadVisitante <- pedirEdad
    Definir EdadVisitante Como Entero
    Escribir "Visitante indica tu Edad: "
    Leer EdadVisitante
FinFuncion

Funcion mensaje(EdadVisitante)
    Definir mensajevisitante Como Caracter
	Escribir "wwwwwwwwwwwwww" , EdadVisitante
    mensajevisitante = ConvertirATexto(EdadVisitante)
    Escribir "Visitante tu edad es: " mensajevisitante
FinFuncion

Algoritmo Edad
    // declarar variables
    Definir dato_edad Como Entero
    // asignar las variables
    dato_edad <- pedirEdad()   
    // imprimir mensaje
    mensaje(dato_edad)       
FinAlgoritmo

