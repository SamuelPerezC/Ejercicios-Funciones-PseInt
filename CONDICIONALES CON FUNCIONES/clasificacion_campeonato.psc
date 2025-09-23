// Función para pedir un dato de texto
Funcion DatoPartido <- PedirDato(mensaje)
	Definir DatoPartido Como Caracter
	Escribir mensaje
	Leer DatoPartido
FinFuncion



// Función para interpretar el resultado del partido
Funcion mensaje <- InterpretarResultados(Puntos_acumulados)
	Definir mensaje Como Caracter
	Segun Puntos_acumulados Hacer
		1:
			RESULTADO <- 1
			Escribir "Ha perdido el partido"
		2:
			RESULTADO <- 2
			Escribir "Ha empatado el partido"
		3:
			RESULTADO <- 3
			Escribir "Ha Ganado el partido"
		De Otro Modo:
			RESULTADO <- 0
			Escribir "DEBE ESCRIBIR DE 0 AL 3!"
	Fin Segun
FinFuncion

Algoritmo clasificacion_campeonato
	//DECLARAR VARIABLES
	Definir RESULTADO Como Caracter
	Definir Puntos_acumulados Como Entero
	
	//REGISTRAMOS ENTRADA
	Puntos_acumulados <- ConvertirANumero(PedirDato("Escriba por favor de 0 a 3 cuál fue el resultado de su partido: "))
	
	//formulas
	RESULTADO<-InterpretarResultados(Puntos_acumulados)
	
	Escribir RESULTADO
	
	
FinAlgoritmo