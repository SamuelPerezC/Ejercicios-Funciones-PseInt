// Funci�n para generar n�mero aleatorio 
Funcion num <- GenerarNumeroAleatorio(minimo, maximo)
    num <- azar(maximo - minimo + 1) + minimo
FinFuncion

// Funci�n para dar pistas 
Funcion DarPista(num_secreto, intento, mensaje_menos, mensaje_mas)
    Si intento > num_secreto Entonces
        Escribir mensaje_menos
    SiNo
        Escribir mensaje_mas
    FinSi
FinFuncion

// Funci�n para pedir intento 
Funcion intento <- PedirIntento(mensaje)
    Escribir mensaje
    Leer intento
FinFuncion

// Funci�n para verificar si gan� 
Funcion MensajeGanador(mensaje)
    Escribir mensaje
FinFuncion

Algoritmo juego
    // Definir variables
    Definir Numero_Aleatorio, adivinanza Como Entero
    
    // Generar n�mero secreto 
    Numero_Aleatorio <- GenerarNumeroAleatorio(1, 10)
    
    // Primer intento 
    adivinanza <- PedirIntento("Escribe un n�mero de 1 a 10: ")
    
    // Bucle de adivinanza
    Mientras Numero_Aleatorio <> adivinanza Hacer
        // Dar pista 
        DarPista(Numero_Aleatorio, adivinanza, "Adivina... es menos al que escogiste", "Adivina... es m�s al que escogiste")
        
        // Pedir nuevo intento 
        adivinanza <- PedirIntento("Intenta de nuevo (1-10): ")
    FinMientras
    
    // Mensaje ganador 
    MensajeGanador("Felicidades Ganaste!!! ")
FinAlgoritmo