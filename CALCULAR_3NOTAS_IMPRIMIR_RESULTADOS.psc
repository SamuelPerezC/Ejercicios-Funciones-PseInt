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

Proceso CALCULAR_3NOTAS_IMPRIMIR_RESULTADOS
	// DECLARAR LAS VARIABLES
	Definir ESPANOL Como Entero;
	Definir Matematicas Como Entero;
	Definir Ingles Como Entero;
	Definir Suma Como Entero;
	Definir TotalSumaNotas Como Entero
	// DEFINIR LAS VARIABLES
	ESPANOL <- tomarNotaEspañol()
	Matematicas <- tomarNotaMatematicas()
	Ingles <- tomarNotaIngles()
	Suma <- ESPANOL+Matematicas+Ingles;
	// PROCESAR DATOS
	TotalSumaNotas <- CalcularSumaNotas(ESPANOL, Matematicas, Ingles)
	Escribir "las sumatoria de las notas es la siguiente: ", TotalSumaNotas
FinProceso