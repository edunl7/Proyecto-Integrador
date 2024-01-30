Proceso sin_titulo
    // Inicialización de variables
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
        // Menú de opciones
        Escribir("Seleccione el tipo de empleado:")
        Escribir("1. Gerente")
        Escribir("2. Trabajador con Horario")
        Escribir("3. Trabajador a Comisión ")
        Escribir("Ingrese la opción:")
        Leer opcion

        
        // Inicializar variables específicas
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
                Escribir("Opción no válida. Inténtelo de nuevo.")
                // No necesitas Continuar aquí, simplemente deja que el bucle se repita naturalmente
        FinSegun
        
        montoTotal = montoTotal + salarioMensual
        
        // Preguntar si desea calcular el salario de otro empleado
		Repetir
			Escribir("¿Desea calcular el salario de otro empleado? (S/N):")
			Leer respuesta
			
			Si respuesta = 'S' o respuesta = 's' Entonces
				continuar = Verdadero
			Sino 
				Si respuesta = 'N' o respuesta = 'n' Entonces
					continuar = Falso
				Sino
					Escribir("Opción no válida. Digite S/N.")
				FinSi
			FinSi
			
		Hasta Que respuesta = 'S' o respuesta = 's' o respuesta = 'N' o respuesta = 'n'
		
	Hasta Que No continuar
	// Mostrar resumen de nómina
	Escribir("\nResumen de Nómina:")
	
	porcentajeGerentes = (montoGerentes / montoTotal) * 100
	porcentajeTrabajadoresHorario = (montoTrabajadoresHorario / montoTotal) * 100
	porcentajeTrabajadoresComision = (montoTrabajadoresComision / montoTotal) * 100
	
	Escribir "Gerentes: ", gerentes
	Escribir "Monto: ", montoGerentes, " dólares, Porcentaje: ", porcentajeGerentes
	Escribir "Trabajadores con Horario: ", trabajadoresHorario
	Escribir"Monto: ", montoTrabajadoresHorario, " dólares, Porcentaje: ", porcentajeTrabajadoresHorario
	Escribir"Trabajadores a Comisión: ", trabajadoresComision
	Escribir"Monto: ", montoTrabajadoresComision, " dólares, Porcentaje: ", porcentajeTrabajadoresComision
	Escribir"Monto Total Mensual: ", montoTotal, " dólares"

FinProceso
