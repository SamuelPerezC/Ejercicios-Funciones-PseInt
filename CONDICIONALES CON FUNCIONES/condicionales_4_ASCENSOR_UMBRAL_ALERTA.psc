Funcion dato <- PedirDato ( mensaje )
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion MostrarResultado(sensor,temp_min,umbral_alerta)
	si sensor<= umbral_alerta y sensor >= temp_min Entonces
		Escribir 'Temperatura dentro del rango', " " sensor
	SiNo
		Escribir "Temperatura fuera de rango"
	FinSi
		
FinFuncion

Algoritmo condicionales_4_ASCENSOR_UMBRAL_ALERTA
	//DEFINIR LAS VARIABLES
	Definir temp_min,sensor, umbral_alerta como Entero
	//DECLARAR VALORES A VARIABLES
	temp_min<- 18
	umbral_alerta <-55
	//PROCESAR DATOS E IMPRIMIR MENSAJE DENTRO DE CONDICIONAL	
	
	Repetir
		
		
		sensor <- PedirDato('Ingresa la Temperatura Actual') 
		MostrarResultado(sensor,temp_min,umbral_alerta)
		
		
		
	Hasta Que sensor>=temp_min Y sensor<=umbral_alerta 
	
FinAlgoritmo