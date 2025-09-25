// Función para mostrar el menú
Funcion MostrarMenu()
    Escribir "1. PESCADO - $15000"
    Escribir "2. POLLO - $20000"
    Escribir "3. AGUA - $5000"
    Escribir "4. GASEOSA - $4000"
    Escribir "Seleccione una opción (1-4): "
FinFuncion

// Función para obtener el precio según la opción seleccionada
Funcion precio <- ObtenerPrecio(opcionCarta)
    Definir precio Como Real
    
    Segun opcionCarta Hacer
        1:
            precio <- 15000
            Escribir "Usted seleccionó PESCADO"
        2:
            precio <- 20000
            Escribir "Usted seleccionó POLLO"
        3:
            precio <- 5000
            Escribir "Usted seleccionó AGUA"
        4:
            precio <- 4000
            Escribir "Usted seleccionó GASEOSA"
        De Otro Modo:
            precio <- 0
            Escribir "Opción no válida"
    FinSegun
FinFuncion

// Función para procesar el método de pago y calcular descuento
Funcion descuento <- ProcesarPago()
    Definir descuento Como Real
    Definir pago Como Caracter
    
    Escribir "Seleccione método de pago (E=Efectivo, T=Tarjeta, C=Cheque): "
    Leer pago
    
    Segun pago Hacer
        "E":
            descuento <- 0.10
            Escribir "Pago en efectivo, aplica 10% de descuento"
        "T":
            descuento <- 0.05
            Escribir "Pago con tarjeta, aplica 5% de descuento"
        "C":
            descuento <- 0
            Escribir "Pago con cheque, no aplica descuento"
        De Otro Modo:
            descuento <- 0
            Escribir "Método de pago no válido, no se aplica descuento"
    FinSegun
FinFuncion

// Función para preguntar si desea continuar
Funcion continuar <- DeseaContinuar()
    Definir continuar Como Logico
    Definir respuesta Como Cadena
    
    Escribir "¿Deseas continuar añadiendo platos? (SI/NO): "
    Leer respuesta
    
    continuar <- (respuesta = "SI") 
FinFuncion

// Función para mostrar la factura final
Funcion MostrarFactura(costo_total, total_final)
    Escribir "-----------------------------"
    Escribir "Costo total sin descuento: $", costo_total
    Escribir "Total a pagar con descuento: $", total_final
    Escribir "-----------------------------"
FinFuncion

// ===== ALGORITMO PRINCIPAL =====
Algoritmo Restaurante
    // Declarar variables
    Definir CARTA Como Entero
    Definir precio, costo_total, descuento, total_final Como Real
    Definir continuar_pedido Como Logico
    
    costo_total <- 0
    continuar_pedido <- Verdadero
    
    Repetir
        // Mostrar menú usando función
        MostrarMenu()
        Leer CARTA
        
        // Obtener precio usando función
        precio <- ObtenerPrecio(CARTA)
        
        // Acumular si el producto es válido
        Si precio > 0 Entonces
            costo_total <- costo_total + precio
        FinSi
        
        // Procesar pago usando función
        descuento <- ProcesarPago()
        
        // Calcular total final
        total_final <- costo_total - (costo_total * descuento)
        
        // Preguntar si desea continuar
        continuar_pedido <- DeseaContinuar()
        
    Hasta Que continuar_pedido = Falso
    
    // Mostrar factura final usando función
    MostrarFactura(costo_total, total_final)
FinAlgoritmo