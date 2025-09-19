Funcion dato <- PedirDato ( mensaje )
	Definir dato Como Entero
	Escribir mensaje
	Leer dato
FinFuncion

Funcion MostrarResultado(piso, peso, piso_min, piso_max, peso_max)
	si peso<= peso_max Entonces
		Si piso>=piso_min Y piso<=piso_max Entonces
			Escribir 'movienose al piso',piso,' '
				Escribir 'llegaste a tu destino',piso
			SiNo
				Escribir 'ERROR'
			FinSi
		SiNo
			Escribir "peso excedido para el ascensor, no avanza"
		FinSi
		
	FinFuncion

Algoritmo condicional_2_ASCENSOR_PESO
	//DECLARAR VARIABLES
	Definir peso_min,peso_max,piso_max, piso_min, peso, piso Como Entero
	//ASIGNAR VALORES A VARIABLES
	piso_min <- 1
	piso_max <- 10
	peso_min<- 20
	peso_max<-60
	
	//PROCESAR DATOS E IMPRIMIR MENSAJE EN CONDICIONAL
	
	Repetir
		piso<- PedirDato("Ingresa el piso deseado: ")
		peso <- PedirDato("Ingresa tu peso actual: ")	
		MostrarResultado(piso, peso, piso_min, piso_max, peso_max)
	Hasta Que piso>=piso_min Y piso<=piso_max Y peso <= peso_max
	
FinAlgoritmo