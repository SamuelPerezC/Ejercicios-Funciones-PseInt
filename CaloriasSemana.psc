Funcion totalDia <- CalcularCaloriasDia(comidas)
	Definir caloriasDia, totalDia Como Real
	Definir j Como Entero
	totalDia <- 0
	
	Para j<-1 Hasta comidas Hacer
		Escribir "Ingrese calorías de la comida ", j, ": "
		Leer caloriasDia
		totalDia <- totalDia + caloriasDia
	FinPara
FinFuncion

Algoritmo CaloriasSemana
	Definir totalSemana, totalDia Como Real
	totalSemana <- 0
	
	// Recorrer los 7 días de la semana
	Para i<-1 Hasta 7 Hacer 
		Escribir "Día ", i
		totalDia <- CalcularCaloriasDia(3)  // se calcula las 3 comidas al día
		Escribir "Total de calorías del día ", i, ": ", totalDia
		totalSemana <- totalSemana + totalDia
	FinPara
	
	// Imprimir Resultado final
	Escribir "============================"
	Escribir "El total de calorías en la semana es: ", totalSemana
	
FinAlgoritmo







