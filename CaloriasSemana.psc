Funcion totalDia <- CalcularCaloriasDia(comidas)
	Definir caloriasDia, totalDia Como Real
	Definir j Como Entero
	totalDia <- 0
	
	Para j<-1 Hasta comidas Hacer
		Escribir "Ingrese calor�as de la comida ", j, ": "
		Leer caloriasDia
		totalDia <- totalDia + caloriasDia
	FinPara
FinFuncion

Algoritmo CaloriasSemana
	Definir totalSemana, totalDia Como Real
	totalSemana <- 0
	
	// Recorrer los 7 d�as de la semana
	Para i<-1 Hasta 7 Hacer 
		Escribir "D�a ", i
		totalDia <- CalcularCaloriasDia(3)  // se calcula las 3 comidas al d�a
		Escribir "Total de calor�as del d�a ", i, ": ", totalDia
		totalSemana <- totalSemana + totalDia
	FinPara
	
	// Imprimir Resultado final
	Escribir "============================"
	Escribir "El total de calor�as en la semana es: ", totalSemana
	
FinAlgoritmo







