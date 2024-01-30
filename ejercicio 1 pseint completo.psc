Proceso sin_titulo
    // Inicializaci�n de variables
    Definir gerentes, trabajadoresHorario, trabajadoresComision, opcion Como Entero
    Definir montoTotal, montoGerentes, montoTrabajadoresHorario, montoTrabajadoresComision Como Real
    Definir salarioGerente, salarioHorarioBase, valorHoraExtra, salarioComisionBase, porcentajeVentas,horasTrabajo, ventas, salarioMensual, porcentajeGerentes, porcentajeTrabajadoresHorario, porcentajeTrabajadoresComision Como Real
	
    Definir respuesta Como Caracter
	Definir continuar Como Logico
	
    
    gerentes = 0
    trabajadoresHorario = 0
    trabajadoresComision = 0
    montoTotal = 0.0
    montoGerentes = 0.0
    montoTrabajadoresHorario = 0.0
    montoTrabajadoresComision = 0.0
    
    salarioGerente = 1380.57
    salarioHorarioBase = 560.84
    valorHoraExtra = 1.5 * salarioHorarioBase
    salarioComisionBase = 425.99
    porcentajeVentas = 0.046
    
    // Bucle principal
    Repetir
        // Men� de opciones
        Escribir("Seleccione el tipo de empleado:")
        Escribir("1. Gerente")
        Escribir("2. Trabajador con Horario")
        Escribir("3. Trabajador a Comisi�n ")
        Escribir("Ingrese la opci�n:")
        Leer opcion

        
        // Inicializar variables espec�ficas
        horasTrabajo = 0.0
        ventas = 0.0
        salarioMensual = 0.0
        
        // Switch para manejar cada caso de empleado
        Segun opcion Hacer
            1:
                gerentes = gerentes + 1
                salarioMensual = salarioGerente
                montoGerentes = montoGerentes + salarioMensual
            2:
                trabajadoresHorario = trabajadoresHorario + 1
                Escribir("Ingrese las horas trabajadas:")
                Leer horasTrabajo
                
                Si horasTrabajo > 40 Entonces
                    salarioMensual = salarioHorarioBase + (horasTrabajo - 40) * valorHoraExtra
                Sino
                    salarioMensual = salarioHorarioBase
                FinSi
                montoTrabajadoresHorario = montoTrabajadoresHorario + salarioMensual
            3:
                trabajadoresComision = trabajadoresComision + 1
                Escribir("Ingrese las ventas realizadas:")
                Leer ventas
                salarioMensual = salarioComisionBase + porcentajeVentas * ventas
                montoTrabajadoresComision = montoTrabajadoresComision + salarioMensual
            En Otro Caso:
                Escribir("Opci�n no v�lida. Int�ntelo de nuevo.")
                // No necesitas Continuar aqu�, simplemente deja que el bucle se repita naturalmente
        FinSegun
        
        montoTotal = montoTotal + salarioMensual
        
        // Preguntar si desea calcular el salario de otro empleado
		Repetir
			Escribir("�Desea calcular el salario de otro empleado? (S/N):")
			Leer respuesta
			
			Si respuesta = 'S' o respuesta = 's' Entonces
				continuar = Verdadero
			Sino 
				Si respuesta = 'N' o respuesta = 'n' Entonces
					continuar = Falso
				Sino
					Escribir("Opci�n no v�lida. Digite S/N.")
				FinSi
			FinSi
			
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
		
	Hasta Que No continuar
	// Mostrar resumen de n�mina
	Escribir("\nResumen de N�mina:")
	
	porcentajeGerentes = (montoGerentes / montoTotal) * 100
	porcentajeTrabajadoresHorario = (montoTrabajadoresHorario / montoTotal) * 100
	porcentajeTrabajadoresComision = (montoTrabajadoresComision / montoTotal) * 100
	
	Escribir "Gerentes: ", gerentes
	Escribir "Monto: ", montoGerentes, " d�lares, Porcentaje: ", porcentajeGerentes
	Escribir "Trabajadores con Horario: ", trabajadoresHorario
	Escribir"Monto: ", montoTrabajadoresHorario, " d�lares, Porcentaje: ", porcentajeTrabajadoresHorario
	Escribir"Trabajadores a Comisi�n: ", trabajadoresComision
	Escribir"Monto: ", montoTrabajadoresComision, " d�lares, Porcentaje: ", porcentajeTrabajadoresComision
	Escribir"Monto Total Mensual: ", montoTotal, " d�lares"

FinProceso
