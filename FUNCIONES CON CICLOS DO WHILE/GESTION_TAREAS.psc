// Funci�n para pedir un dato con mensaje personalizado
Funcion dato <- PedirDato(mensaje)
    Definir dato Como Cadena
    Escribir mensaje
    Leer dato
FinFuncion

// Funci�n para preguntar si continuar
Funcion continuar <- PreguntarContinuacion()
    Definir continuar Como Logico
    Definir respuesta Como Cadena
    
    respuesta <- PedirDato("�Deseas agregar m�s tareas? (SI/NO)")
    continuar <- (respuesta = "SI") 
FinFuncion

Algoritmo GESTION_TAREAS
    Definir tareas, descripciones, fecha_vencimiento, informacion Como Cadena
    Definir continuar Como Logico
    
    informacion <- ""
    continuar <- Verdadero
    
    Repetir
        tareas <- PedirDato("Ingresa la tarea: ")
        descripciones <- PedirDato("Ingresa la descripci�n de tu tarea: ")
        fecha_vencimiento <- PedirDato("Fecha l�mite de tu tarea: ")
        
        informacion <- informacion + " " +tareas + " "  + descripciones + " " + fecha_vencimiento
        
        continuar <- PreguntarContinuacion()
    Hasta Que continuar = Falso
    
    Escribir "Tus tareas son las siguientes: "
    Escribir informacion
FinAlgoritmo
