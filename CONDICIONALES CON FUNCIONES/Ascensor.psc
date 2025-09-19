Funcion piso <- PedirPiso()
	Definir piso Como Entero
	Escribir "Ascensor"
	Escribir "¿A qué piso desea ir?"
	Leer piso
FinFuncion

Funcion MostrarResultado(piso, piso_min, piso_max)
	Si piso >= piso_min Y piso <= piso_max Entonces
		Escribir "Moviéndose al piso ", piso
		Escribir "Llegaste a tu destino: piso ", piso
	SiNo
		Escribir "ERROR: Piso no válido."
	FinSi
FinFuncion

Algoritmo Ascensor
	Definir piso, piso_min, piso_max Como Entero
	
	piso_min <- 1
	piso_max <- 10
	
	// Repetir hasta que el piso sea válido
	Repetir
		piso <- PedirPiso()
		MostrarResultado(piso, piso_min, piso_max)
	Hasta Que piso >= piso_min Y piso <= piso_max
FinAlgoritmo

