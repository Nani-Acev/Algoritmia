Algoritmo CalcularDiasVividos
	Definir edad, dias, semanas, meses Como Real
	Escribir 'Ingresa tu edad en años:'
	Leer edad
	Escribir 'Ingresa las semanas:'
	Leer semanas
	dias <- edad*365.25
	semanas <- dias/7
	meses <- edad*12
	Escribir 'Has vivido:', dias, 'dias'
	Escribir 'Y', semanas, 'semanas'
	Escribir 'Y', meses, 'meses'
FinAlgoritmo
