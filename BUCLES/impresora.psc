// Función para mostrar hojas disponibles
Funcion MostrarHojasDisponibles(hojas)
    Escribir "Hojas disponibles a imprimir: ", hojas
FinFuncion

// Función para procesar la impresión
Funcion exito <- ProcesarImpresion(hojas_disponibles, hojas_solicitadas)
    Definir exito Como Logico
    
    Si hojas_solicitadas > hojas_disponibles Entonces
        Escribir "Error, excede la capacidad de hojas disponibles"
        exito <- Falso
    SiNo
        Escribir "Impresión Exitosa: ", hojas_solicitadas
        exito <- Verdadero
    FinSi
FinFuncion

Algoritmo impresora
    // definir variables
    Definir capacidad_hojas, hojas_a_imprimir Como Real
    capacidad_hojas <- 1000
    
    // procesar impresiones
    Mientras capacidad_hojas > 0 Hacer
        MostrarHojasDisponibles(capacidad_hojas)
        
        Escribir "Ingrese la cantidad de hojas a imprimir: "
        Leer hojas_a_imprimir
        
        Si ProcesarImpresion(capacidad_hojas, hojas_a_imprimir) Entonces
            capacidad_hojas <- capacidad_hojas - hojas_a_imprimir
        FinSi
    FinMientras
    
    Escribir "Se agotaron las hojas"
FinAlgoritmo
