Funcion notaEspañol<-tomarNotaEspañol
	Definir notaEspañol como entero
	Escribir "Ingresa la nota de Español: "
	Leer notaEspañol
FinFuncion

Funcion notaMatematicas<-tomarNotaMatematicas
	Definir notaMatematicas como entero
	Escribir "Ingresa la nota de Matematicas "
	Leer notaMatematicas
FinFuncion

Funcion notaIngles<-tomarNotaIngles
	Definir notaIngles como entero
	Escribir "Ingresa la nota de Ingles: "
	Leer notaIngles
FinFuncion

Funcion suma <- CalcularSumaNotas(notaEspañol, notaMatematicas, notaIngles)
    Definir suma Como Entero
    suma <- notaEspañol + notaMatematicas + notaIngles
FinFuncion

Funcion mensaje(TotalSumaNotas)
    Escribir "El total de las notas es: ", TotalSumaNotas
FinFuncion



Proceso CALCULAR_3NOTAS_IMPRIMIR_RESULTADOS
	// DECLARAR LAS VARIABLES
	Definir ESPANOL Como Entero;
	Definir Matematicas Como Entero;
	Definir Ingles Como Entero;
	Definir TotalSumaNotas Como Entero
	// DEFINIR LAS VARIABLES
	ESPANOL <- tomarNotaEspañol()
	Matematicas <- tomarNotaMatematicas()
	Ingles <- tomarNotaIngles()
	
	// PROCESAR DATOS
	TotalSumaNotas <- CalcularSumaNotas(ESPANOL, Matematicas, Ingles)
	mensaje(TotalSumaNotas) 
FinProceso
