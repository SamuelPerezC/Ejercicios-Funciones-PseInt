Funcion dato <- PedirDato ( mensaje )
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion imc <- CalcularIMC(peso,altura)
	Definir imc Como real
	imc <- peso / (altura ^ 2)
FinFuncion

Funcion categoria <- DeterminarCategoria(imc)
	Definir categoria Como real
	// Clasificación con condicionales (rangos)
    Si imc < 18.5 Entonces
        categoria <- 1
	Sino
		Si imc < 24.9 Entonces
            categoria <- 2
		Sino
			Si imc < 29.9 Entonces
                categoria <- 3
			Sino
				categoria <- 4
			FinSi
        FinSi
    FinSi
	
FinFuncion

Funcion MostrarRecomendacion(imc,categoria)
	// Mostrar resultados con switch-case
    Escribir "Su IMC es: ", imc
    
    Segun categoria Hacer
        1:
            Escribir "Categoría: Bajo peso"
        2:
            Escribir "Categoría: Peso normal"
        3:
            Escribir "Categoría: Sobrepeso"
        4:
            Escribir "Categoría: Obesidad"
    FinSegun
FinFuncion

Algoritmo IMC_Nutricionista
	//DECLARAMOS VARIABLES
    Definir peso, altura, imc Como Real
    Definir categoria Como Entero
    
    // Entrada de datos
    peso <- PedirDato ("Ingrese su peso en kilogramos: ")
    altura <- PedirDato ("Ingrese su altura en metros: ")
	
	//formulas
	imc <-CalcularIMC(peso,altura)
	categoria <- DeterminarCategoria(imc)
    
	//IMPRIMIR RESULTADOS DE INFORMACION
	MostrarRecomendacion(imc,categoria)

FinAlgoritmo
