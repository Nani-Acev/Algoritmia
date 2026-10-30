Algoritmo Preparar_Cafe
	
	Definir respuestaAzucar, respuestaLeche Como Cadena
	Definir cantidadCafe Como Entero
	Escribir '=== PREPARA TU CAFE ==='
	Escribir '1. Ponemos a calentar el agua en la estufa...'
	Escribir '2. Esperamos a que el agua hierva.'
	Escribir '¿Cuántas cucharadas de café deseas agregar?'
	Leer cantidadCafe
	Escribir 'Agregando '+ConvertirATexto(cantidadCafe)+' cucharadas de café a la taza.'
	Escribir 'Vertiendo el agua caliente sobre el café...'
	Escribir '¿Deseas agregar azúcar? (S/N):'
	Leer respuestaAzucar
	Si Mayusculas(respuestaAzucar)=='S' Entonces
		Escribir 'Agregando azúcar al gusto...'
	FinSi
	Escribir '¿Deseas agregar leche? (S/N):'
	Leer respuestaLeche
	Si Mayusculas(respuestaLeche)=='S' Entonces
		Escribir 'Agregando un toque de leche...'
	FinSi
	Escribir 'Revirtiendo y mezclando todo...'
	Escribir '¡Listo! Tu taza de café está preparada. ¡Buen provecho!'
FinAlgoritmo
