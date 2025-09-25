// Función para pedir un dato con mensaje personalizado
Funcion dato <- PedirDato(mensaje)
    Definir dato Como Real
    Escribir mensaje
    Leer dato
FinFuncion

Funcion continuar <- PreguntarContinuacion()
    Definir continuar Como Logico
    Definir respuesta Como Caracter
    
    
    Escribir "¿Deseas agregar más NOTAS? (SI/NO)"
    Leer respuesta
    
    continuar <- (respuesta = "SI") O (respuesta = "Si") O (respuesta = "si")
FinFuncion

Algoritmo examenes_estudiantes
    // definir las variables que vamos a usar
    Definir promedio, nota, suma, contador Como Real
    
    
    suma <- 0
    contador <- 0
    
    Repetir
        nota <- PedirDato("Ingresa tu nota: ")
        suma <- suma + nota
        contador <- contador + 1
        
        
        continuar_pedido <- PreguntarContinuacion()
    Hasta Que continuar_pedido = Falso
    
    promedio <- suma / contador
    Escribir "Su promedio es: ", promedio
    
    Si promedio >= 3.0 Entonces
        Escribir "Usted aprobo la materia"
    SiNo
        Escribir "Usted REPROBO la materia"
    FinSi
FinAlgoritmo
