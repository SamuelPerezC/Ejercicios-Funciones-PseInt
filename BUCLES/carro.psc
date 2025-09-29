// Función para calcular el tiempo
Funcion t <- CalcularTiempo(dist, vel)
    t <- dist / vel
FinFuncion

// Función para preguntar si continúa
Funcion resp <- PreguntarContinuar(mensaje_personalizado)
    Definir resp Como Caracter
    Escribir "¿Deseas calcular otro recorrido? (s/n)"
    Leer resp
FinFuncion

Algoritmo carro
    Definir tiempo, velocidad, distancia Como Real
    Definir respuesta Como Caracter
    
    respuesta <- "s"
    
    Mientras respuesta = "s" Hacer
        Escribir "Ingresa la distancia que recorriste (KM): "
        Leer distancia
        Escribir "Ingresa la velocidad a la que ibas (KM/H): "
        Leer velocidad
        
        tiempo <- CalcularTiempo(distancia, velocidad)
        Escribir "Este es el tiempo que tardaste en tu recorrido: ", tiempo, " horas"
        
        respuesta <- PreguntarContinuar("¿Quieres hacer otro cálculo? (s/n)")
    FinMientras
FinAlgoritmo