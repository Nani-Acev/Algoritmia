Algoritmo ValidarRegistro
	
	Definir edad Como Entero
	Definir respuesta Como Caracter
	
	Escribir "¿Cuantos años tienes?"
	Leer edad
	
	Escribir "¿aceptas los terminos? (S/N)"
	Leer respuesta
	
	respuesta <- Mayusculas(respuesta)
	Si edad >= 14 Y respuesta = "S" Entonces
		Escribir "registro exitoso"
	SiNo
		Escribir "np puedes registrarte"
	FinSi
	
	
FinAlgoritmo
