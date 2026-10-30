Algoritmo Semaforo
	
	Definir unidades Como Entero
	
	Escribir "Ingrese el numero de unidades"
	Leer unidades
	
	Si unidades > 10 Entonces
		Escribir "Verde: > 10 && Vehiculo Parqueadero Habilitado"
	SiNo
		Si unidades >= 1 Y unidades <= 10 Entonces
			Escribir  "Amarillo"
	    SiNo
			
			Si unidades = 0 Entonces
				
				Escribir  "Rojo" 
			SiNo
				
				Escribir "Codigo no valido"
			FinSi
			
			
		FinSi
	FinSi
	
FinAlgoritmo
