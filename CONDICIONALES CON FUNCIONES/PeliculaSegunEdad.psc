Funcion dato <- PedirDato ( mensaje )
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion categoria <- determinarCategoria(edad)
	Definir categoria Como Entero
	Si edad < 7 Entonces
        categoria <- 1
    Sino
        Si edad <= 17 Entonces
            categoria <- 2
        Sino
            Si edad <= 30 Entonces
                categoria <- 3
            Sino
                categoria <- 4
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion MostrarRecomendacion(categoria)
	Segun categoria Hacer
        1:
            Escribir "Recomendación: Películas animadas y educativas aptas para todas las edades."
        2:
            Escribir "Recomendación: Animaciones, aventuras y comedias familiares."
        3:
            Escribir "Recomendación: Acción, drama, comedia y ciencia ficción."
        4:
            Escribir "Recomendación: Películas clásicas y dramas."
    FinSegun
FinFuncion

Algoritmo AsistenteCine
	//Definir las variables
    Definir edad, categoria Como Entero
    
    // Entrada
    edad <- PedirDato("Ingrese su edad: ")
    categoria <- determinarCategoria(edad)
	MostrarRecomendacion(categoria)
FinAlgoritmo


