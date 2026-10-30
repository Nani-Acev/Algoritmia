Algoritmo CuentaPaseo
	Definir cantidadPersonas Como Entero
	Definir costoTotalPaseo Como Real
	Definir cuotaPersona Como Real
	Definir propina Como Real
	Escribir 'El valor total de gastos para el paseo:'
	Leer costoTotalPaseo
	Escribir 'La cantidad de personas que van a pagar:'
	Leer cantidadPersonas
	Escribir 'La propina:'
	Leer propina
	Si cantidadPersonas>0 Entonces
		cuotaPersona <- costoTotalPaseo/cantidadPersonas
		propina <- costoTotalPaseo/100
		Escribir 'El total del paseo fue de: ', costoTotalPaseo
		Escribir 'A cada persona le toca poner: ', cuotaPersona
		Escribir ' Digite su propina: ', propina
	SiNo
		Escribir 'La cantidad de personas debe ser mayor a cero'
	FinSi
FinAlgoritmo
