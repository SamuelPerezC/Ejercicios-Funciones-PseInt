Funcion RealizarCompraConArgs( descuento)
    Definir Opcion_dato Como Caracter
    Definir precio_producto, cantidad_producto, costo_total, cantidad_total Como Real
    
    costo_total <- 0
    cantidad_total <- 0
    
    
    Escribir "¿Deseas agregar productos al carrito? (S o N)"
    Leer Opcion_dato
    
    Mientras Opcion_dato = "S" O Opcion_dato = "s" Hacer
        Escribir "Precio del producto: "
        Leer precio_producto
        Escribir "Cantidad: "
        Leer cantidad_producto
        
        costo_total <- costo_total + (precio_producto * cantidad_producto)
        cantidad_total <- cantidad_total + cantidad_producto
        
        Escribir "¿Agregar otro producto? (S o N)"
        Leer Opcion_dato
    Fin Mientras
    
    // Aplicar descuento si se pasa como argumento
    Si descuento > 0 Entonces
        Escribir "Subtotal: $", costo_total
        costo_total <- costo_total - (costo_total * descuento)
        Escribir "Descuento aplicado: ", descuento * 100, "%"
    FinSi
    
    Escribir "Total: $", costo_total
    Escribir "Productos: ", cantidad_total
FinFuncion

Algoritmo Tienda_Online
    // Llamar con argumentos
    RealizarCompraConArgs(0.10)  // 10% de descuento
FinAlgoritmo