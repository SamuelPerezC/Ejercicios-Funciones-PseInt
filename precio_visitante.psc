Funcion precio_articulo <- pedirPrecio
    Definir precio_articulo Como Entero
    Escribir "Visitante indica el precio: "
    Leer precio_articulo
FinFuncion

Funcion mensaje(precio_articulo)
    Definir mensajevisitante Como Caracter
	
    mensajevisitante = ConvertirATexto(precio_articulo)
    Escribir "El precio fijado por el visitante es: " mensajevisitante
FinFuncion


Algoritmo precio_visitante
	// definir variables
	Definir precio Como Real
	precio <- pedirPrecio()
	mensaje(precio)
FinAlgoritmo // asignamos un valor a la variable