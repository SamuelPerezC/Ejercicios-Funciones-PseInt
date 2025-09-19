Funcion sensor <- PedirTemperatura()
	Definir sensor Como Entero
	Escribir "¿Cual es la temperatura actual?"
	Leer sensor
FinFuncion

Funcion MostrarResultado(sensor, temp_min, temp_max)
	si sensor<= temp_max y sensor >= temp_min Entonces
		Escribir 'Temperatura dentro del rango: ',sensor
	SiNo
		Escribir "Temperatura fuera de rango: "
	FinSi
FinFuncion


Algoritmo condicional_3_ASCENSOR_TEMPERATURA_AMBIENTE
	//DEFINIR LAS VARIABLES
	Definir temp_min,temp_max,sensor como Entero
	//DECLARAR LAS VARIABLES
	temp_min<- 18
	temp_max<-28
	//PROCESAR DATOS E IMPRIMIR DATOS DENTRO DE CONDICIONAL	
	
	Repetir
		
		sensor <- PedirTemperatura()
		MostrarResultado(sensor, temp_min, temp_max)
		
		
		
	Hasta Que sensor>=temp_min Y sensor<=temp_max 
	
FinAlgoritmo
