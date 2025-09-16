Funcion Nombre_visitante <- pedirnombre
    Definir Nombre_visitante Como Caracter
    Escribir "Visitante indica tu nombre: "
    Leer Nombre_visitante
FinFuncion

Funcion Apellido_visitante <- pedirApellido
    Definir Apellido_visitante Como Caracter
    Escribir "Visitante indica tu apellido: "
    Leer Apellido_visitante
FinFuncion

Funcion mensaje(Nombre_visitante,Apellido_visitante)
    Definir mensajevisitante Como Caracter
    mensajevisitante = Nombre_visitante + " " + Apellido_visitante
    Escribir "Bienvenido visitante: " mensajevisitante
FinFuncion

Algoritmo Ejercicio5
    // declarar variable
    Definir nombre Como Cadena
    Definir apellido Como Cadena
    // definir variable
	
    nombre <- pedirnombre()
    apellido <- pedirApellido() 
    // procesar datos
    mensaje(nombre,apellido)  // <--- aquí llamas la función
    // Imprimir resultado
FinAlgoritmo
