Funcion esEstudiante <- AsignarEstudiante
	Definir respuesta Como Cadena
	Definir esEstudiante Como Logico
	
	Escribir "¿Es usted estudiante? Escriba Verdadero o Falso:"
	Leer respuesta
	
	// VA ACEPTAR LAS MINUSCULAS SI LAS ESCRIBO
	respuesta <- Minusculas(respuesta)
	
	Si respuesta = "verdadero" Entonces
		esEstudiante <- Verdadero
	SiNo
		esEstudiante <- Falso
	FinSi
FinFuncion

Funcion MostrarMensaje(esEstudiante)
	Si esEstudiante = Verdadero Entonces
		Escribir "¡Bienvenido estudiante!"
	FinSi
FinFuncion

Algoritmo VerificarEstudiante
	Definir esEstudiante Como Logico
	
	esEstudiante <- AsignarEstudiante
	MostrarMensaje(esEstudiante)
FinAlgoritmo
