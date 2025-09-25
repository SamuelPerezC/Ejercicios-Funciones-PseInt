// Función para obtener la temperatura
Funcion temp <- ObtenerTemperatura()
    Definir temp Como Entero
    Escribir 'Ingresa la Temperatura Actual debe estar entre el rango de 18 y 25: '
    Leer temp
FinFuncion

// Función para verificar y mostrar mensaje
Funcion en_rango <- ProcesarTemperatura(temperatura)
    Definir en_rango Como Logico
    
    si temperatura >= 18 y temperatura <= 25 Entonces
        Escribir 'Temperatura dentro del rango'
        en_rango <- Verdadero
    SiNo
        Escribir "Temperatura ALTA fuera del rango"
        en_rango <- Falso
    FinSi
FinFuncion

Algoritmo sensor_temperatura
    Definir temperatura Como Entero
    Definir esta_en_rango Como Logico
    
    temperatura <- 0
    esta_en_rango <- Falso
    
    Repetir
        temperatura <- ObtenerTemperatura()
        esta_en_rango <- ProcesarTemperatura(temperatura)
    Hasta Que esta_en_rango = Verdadero
FinAlgoritmo
