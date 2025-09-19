Funcion dato <- PedirDato ( mensaje )
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion MostrarResultado(piso, temperarua, piso_min, piso_max, temp_min ,temp_max)
	si temperatura<= temp_max Entonces
		Si piso>=piso_min Y piso<=piso_max Entonces
			Escribir 'movienose al piso',piso,' '
			Escribir 'llegaste a tu destino',piso
		SiNo
			Escribir 'ERROR'
		FinSi
	SiNo
		Escribir "La temperatura no es adecuada, no se puede avanzar"
	FinSi
	
	
FinFuncion


Algoritmo condicional_5_TEMPERATURA_PISO
	//DEFINIMOS VARIABLES
	Definir temp_min,temp_max,piso_max, temperatura ,piso_min, piso Como Entero
	//DECLARAMOS LOS VALORES A VARIABLES
	piso_min <- 1
	piso_max <- 10
	temp_min<- 18
	temp_max<-28
	
	//PROCESAMOS DATOS E IMPRIMIMOS MENSAJES DENTRO DE CONDICIONALES	
	Repetir
		
		piso<- PedirDato("Ingresa el piso deseado: ")
		temperatura<- PedirDato("Ingresa la temperatura actual: ")
		MostrarResultado(piso, temperarua, piso_min, piso_max, temp_min ,temp_max)
		
		
	Hasta Que piso>=piso_min Y piso<=piso_max Y temperarua <= temp_max
	
FinAlgoritmo

