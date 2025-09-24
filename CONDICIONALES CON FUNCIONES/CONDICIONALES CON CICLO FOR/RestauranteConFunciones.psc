// Función para mostrar el menú
Funcion MostrarMenu()
    Escribir "1. PESCADO - $15000"
    Escribir "2. POLLO   - $20000"
    Escribir "3. AGUA    - $5000"
    Escribir "4. GASEOSA - $4000"
FinFuncion

// Función para obtener precio y nombre del producto
Funcion ObtenerProducto(opcion, precio, nombre)
    Segun opcion Hacer
        1:
            precio <- 15000
            nombre <- "PESCADO"
            Escribir "Usted seleccionó PESCADO"
        2:
            precio <- 20000
            nombre <- "POLLO"
            Escribir "Usted seleccionó POLLO"
        3:
            precio <- 5000
            nombre <- "AGUA"
            Escribir "Usted seleccionó AGUA"
        4:
            precio <- 4000
            nombre <- "GASEOSA"
            Escribir "Usted seleccionó GASEOSA"
        De Otro Modo:
            precio <- 0
            nombre <- "OPCIÓN INVÁLIDA"
            Escribir "Opción no válida"
    FinSegun
FinFuncion

// Función para procesar un pedido
Funcion ProcesarPedido(i, costo_total, texto_dato)
    Definir opcionPedido Como Entero
    Definir precio Como Real
    Definir nombre Como Cadena
	
    Escribir ""
    Escribir "Pedido ", i
    MostrarMenu()
    Escribir "Seleccione una opción (1-4): "
    Leer opcionPedido
	
    ObtenerProducto(opcionPedido, precio, nombre)
	
    Si precio > 0 Entonces
        costo_total <- costo_total + precio
        texto_dato <- texto_dato + " - " + nombre
    FinSi
FinFuncion

// Función para mostrar la factura
Funcion MostrarFactura(costo_total, texto_dato)
    Escribir ""
    Escribir "===== FACTURA FINAL ====="
    Escribir "Total a pagar: $", costo_total
    Escribir texto_dato
FinFuncion

// ===== ALGORITMO PRINCIPAL =====
Algoritmo RestauranteConFunciones
    Definir N, i Como Entero
    Definir costo_total Como Real
    Definir texto_dato Como Cadena
	
    costo_total <- 0
    texto_dato <- ""
	
    Escribir "¿Cuántos productos desea ordenar?"
    Leer N
	
    Para i <- 1 Hasta N Hacer
        ProcesarPedido(i, costo_total, texto_dato)
    FinPara
	
    MostrarFactura(costo_total, texto_dato)

FinAlgoritmo

