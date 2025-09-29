// Función para mostrar el saldo disponible
Funcion MostrarSaldo(saldo)
    Escribir "Saldo disponible: $", saldo
FinFuncion

// Función para procesar un retiro
Funcion resultado <- ProcesarRetiro(saldo, monto)
    Definir resultado Como Logico
    
    Si monto > saldo Entonces
        Escribir "Error, excede el monto de retiro"
        resultado <- Falso
    SiNo
        Escribir "Retiro Exitoso: $", monto
        resultado <- Verdadero
    FinSi
FinFuncion

Algoritmo cajero
    // definir variables
    Definir Saldo_disponible, valor_retirar Como Real
    Saldo_disponible <- 1000000
    
    // procesar retiros
    Mientras Saldo_disponible > 0 Hacer
        MostrarSaldo(Saldo_disponible)
        
        Escribir "Ingrese el monto que desea retirar: "
        Leer valor_retirar
        
        Si ProcesarRetiro(Saldo_disponible, valor_retirar) Entonces
            Saldo_disponible <- Saldo_disponible - valor_retirar
        FinSi
    FinMientras
    
    Escribir "Saldo se ha agotado"
FinAlgoritmo
