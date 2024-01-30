Proceso sin_titulo
	Definir gerentes, trabajadoresHorario, trabajadoresComision como Entero
	Definir montoTotal, montoTotalGerentes, montoTotalHorario, montoTotalComision como Real
	Definir opcion, horasTrabajo, ventas, salarioMensual como Real
	Definir opcions Como Caracter
	Definir seguirCalculando como Logico
	
	gerentes = 0
	trabajadoresHorario = 0
	trabajadoresComision = 0
	montoTotal = 0.0
	montoTotalGerentes = 0.0
	montoTotalHorario = 0.0
	montoTotalComision = 0.0
	seguirCalculando = Verdadero
	
	Mientras seguirCalculando Hacer
		
		Escribir "Seleccione el tipo de empleado:"
		Escribir "1. Gerente"
		Escribir "2. Trabajador con Horario"
		Escribir "3. Trabajador a Comisión"
		Escribir "Ingrese la opción (1-3): "
		Leer opcion
		
		Si opcion == 1 Entonces
			gerentes = gerentes + 1
			salarioMensual = 1380.57
			montoTotalGerentes = montoTotalGerentes + salarioMensual
		Sino 
			Si opcion == 2 Entonces
				trabajadoresHorario = trabajadoresHorario + 1
				Escribir "Ingrese las horas trabajadas: "
				Leer horasTrabajo
				Si horasTrabajo > 40 Entonces
					salarioMensual = 560.84 + (horasTrabajo - 40) * 1.5 * 560.84
				Sino
					salarioMensual = 560.84
				FinSi
				montoTotalHorario = montoTotalHorario + salarioMensual
			Sino 
				Si opcion == 3 Entonces
					trabajadoresComision = trabajadoresComision + 1
					Escribir "Ingrese las ventas realizadas: "
					Leer ventas
					salarioMensual = 425.99 + 0.046 * ventas
					montoTotalComision = montoTotalComision + salarioMensual
				Sino
					Escribir "Opción no válida. Inténtelo de nuevo."
					seguirCalculando = Verdadero
				FinSi
			FinSi
		FinSi
		
		montoTotal = montoTotal + salarioMensual
		
		Escribir "¿Desea calcular el salario de otro empleado? (S/N): "
		Leer opcions
		
		Si opcions <> "S" y opcions <> "s" Entonces
			seguirCalculando = Falso
		FinSi
	FinMientras
	
	Escribir "Resumen de Nómina:"
	Escribir "Gerentes: ", gerentes, " (Monto Total: ", montoTotalGerentes, " dólares, Porcentaje: ", (montoTotalGerentes / montoTotal) * 100, "%)"
	Escribir "Trabajadores con Horario: ", trabajadoresHorario, " (Monto Total: ", montoTotalHorario, " dólares, Porcentaje: ", (montoTotalHorario / montoTotal) * 100, "%)"
	Escribir "Trabajadores a Comisión: ", trabajadoresComision, " (Monto Total: ", montoTotalComision, " dólares, Porcentaje: ", (montoTotalComision / montoTotal) * 100, "%)"
	Escribir "Monto Total Mensual: ", montoTotal, " dólares"


FinProceso