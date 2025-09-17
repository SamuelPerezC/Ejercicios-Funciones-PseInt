Funcion LeerEsEstudiante() Como Logico
	Definir resp Como Cadena
	Definir valor Como Logico
	
	Escribir "¿Es usted estudiante? Escriba Verdadero o Falso:"
	Leer resp
	
	Si resp = "Verdadero" Entonces
		valor <- Verdadero
	SiNo
		valor <- Falso
	FinSi
	
	Retornar valor
FinFuncion

Algoritmo VerificarEstudiante
	Definir esEstudiante Como Logico
	
	// Llamamos la función y guardamos su valor
	esEstudiante <- LeerEsEstudiante()
	
	// Mostramos el resultado
	Escribir "¿Es usted estudiante? [Verdadero/Falso]: ", esEstudiante
FinAlgoritmo