# Documentación de Algoritmos en PSeInt

Este documento contiene la explicación, pseudocódigo y dos casos de prueba ejecutados para cada uno de los 5 algoritmos del repositorio.

---

## 1. Algoritmo: `Saludo_Personalizado`

### Descripción
Este programa solicita al usuario su nombre e imprime un saludo personalizado de bienvenida.

### Pseudocódigo
```pseint
Algoritmo Saludo_Personalizado
    Definir nombre Como Caracter
    
    Escribir " PROGRAMA DE SALUDO "
    Escribir "Por favor, introduce tu nombre:"
    Leer nombre
    
    Escribir " Hola, " + nombre + " , Es un placer saludarte."
FinAlgoritmo
```

### Casos de Prueba

#### Prueba 1
* **Entradas:**
  * `nombre`: "Carlos"
* **Salida Esperada:**
  ```text
   PROGRAMA DE SALUDO 
  Por favor, introduce tu nombre:
  > Carlos
   Hola, Carlos , Es un placer saludarte.
  ```

#### Prueba 2
* **Entradas:**
  * `nombre`: "María Alejandra"
* **Salida Esperada:**
  ```text
   PROGRAMA DE SALUDO 
  Por favor, introduce tu nombre:
  > María Alejandra
   Hola, María Alejandra , Es un placer saludarte.
  ```

---

## 2. Algoritmo: `Preparar_Cafe`

### Descripción
Simula el proceso paso a paso para preparar una taza de café, permitiendo personalizar la cantidad de cucharadas de café y la adición opcional de azúcar y leche.

### Pseudocódigo
```pseint
Algoritmo Preparar_Cafe
    Definir respuestaAzucar, respuestaLeche Como Cadena
    Definir cantidadCafe Como Entero

    Escribir '=== PREPARA TU CAFE ==='
    Escribir '1. Ponemos a calentar el agua en la estufa...'
    Escribir '2. Esperamos a que el agua hierva.'
    Escribir '¿Cuántas cucharadas de café deseas agregar?'
    Leer cantidadCafe

    Escribir 'Agregando ' + ConvertirATexto(cantidadCafe) + ' cucharadas de café a la taza.'
    Escribir 'Vertiendo el agua caliente sobre el café...'
    
    Escribir '¿Deseas agregar azúcar? (S/N):'
    Leer respuestaAzucar

    Si Mayusculas(respuestaAzucar) == 'S' Entonces
        Escribir 'Agregando azúcar al gusto...'
    FinSi

    Escribir '¿Deseas agregar leche? (S/N):'
    Leer respuestaLeche

    Si Mayusculas(respuestaLeche) == 'S' Entonces
        Escribir 'Agregando un toque de leche...'
    FinSi

    Escribir 'Revolviendo y mezclando todo...'
    Escribir '¡Listo! Tu taza de café está preparada. ¡Buen provecho!'
FinAlgoritmo
```

### Casos de Prueba

#### Prueba 1 (Café solo, sin azúcar ni leche)
* **Entradas:**
  * `cantidadCafe`: 2
  * `respuestaAzucar`: "N"
  * `respuestaLeche`: "n"
* **Salida Esperada:**
  ```text
  === PREPARA TU CAFE ===
  1. Ponemos a calentar el agua en la estufa...
  2. Esperamos a que el agua hierva.
  ¿Cuántas cucharadas de café deseas agregar?
  > 2
  Agregando 2 cucharadas de café a la taza.
  Vertiendo el agua caliente sobre el café...
  ¿Deseas agregar azúcar? (S/N):
  > N
  ¿Deseas agregar leche? (S/N):
  > n
  Revolviendo y mezclando todo...
  ¡Listo! Tu taza de café está preparada. ¡Buen provecho!
  ```

#### Prueba 2 (Café con azúcar y leche)
* **Entradas:**
  * `cantidadCafe`: 1
  * `respuestaAzucar`: "S"
  * `respuestaLeche`: "s"
* **Salida Esperada:**
  ```text
  === PREPARA TU CAFE ===
  1. Ponemos a calentar el agua en la estufa...
  2. Esperamos a que el agua hierva.
  ¿Cuántas cucharadas de café deseas agregar?
  > 1
  Agregando 1 cucharadas de café a la taza.
  Vertiendo el agua caliente sobre el café...
  ¿Deseas agregar azúcar? (S/N):
  > S
  Agregando azúcar al gusto...
  ¿Deseas agregar leche? (S/N):
  > s
  Agregando un toque de leche...
  Revolviendo y mezclando todo...
  ¡Listo! Tu taza de café está preparada. ¡Buen provecho!
  ```

---

## 3. Algoritmo: `Promedio_notas`

### Descripción
Solicita cuatro calificaciones o notas al usuario y calcula el promedio aritmético simple de las mismas.

### Pseudocódigo
```pseint
Algoritmo Promedio_notas
    Definir nota1, nota2, nota3, nota4, promedio Como Real
    
    Escribir "=== CALCULAR PROMEDIO ==="

    Escribir "Ingresa la primera nota:"
    Leer nota1
    
    Escribir "Ingresa la segunda nota:"
    Leer nota2
    
    Escribir "Ingresa la tercera nota:"
    Leer nota3
    
    Escribir "Ingresa la cuarta nota:"
    Leer nota4
    
    promedio <- (nota1 + nota2 + nota3 + nota4) / 4

    Escribir "El promedio final de las cuatro notas es: ", promedio
FinAlgoritmo
```

### Casos de Prueba

#### Prueba 1 (Notas enteras)
* **Entradas:**
  * `nota1`: 4.0
  * `nota2`: 3.5
  * `nota3`: 4.5
  * `nota4`: 3.0
* **Salida Esperada:**
  ```text
  === CALCULAR PROMEDIO ===
  Ingresa la primera nota:
  > 4.0
  Ingresa la segunda nota:
  > 3.5
  Ingresa la tercera nota:
  > 4.5
  Ingresa la cuarta nota:
  > 3.0
  El promedio final de las cuatro notas es: 3.75
  ```

#### Prueba 2 (Notas aprobatorias máximas)
* **Entradas:**
  * `nota1`: 5.0
  * `nota2`: 5.0
  * `nota3`: 4.0
  * `nota4`: 4.8
* **Salida Esperada:**
  ```text
  === CALCULAR PROMEDIO ===
  Ingresa la primera nota:
  > 5.0
  Ingresa la segunda nota:
  > 5.0
  Ingresa la tercera nota:
  > 4.0
  Ingresa la cuarta nota:
  > 4.8
  El promedio final de las cuatro notas es: 4.7
  ```

---

## 4. Algoritmo: `CalcularDiasVividos`

### Descripción
Calcula de manera aproximada la cantidad de días, semanas y meses que ha vivido una persona a partir de su edad expresada en años (considerando años bisiestos con un factor de 365.25 días).

### Pseudocódigo
```pseint
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
```

### Casos de Prueba

#### Prueba 1
* **Entradas:**
  * `edad`: 20
  * `semanas`: *(se ignora el valor leído ya que el algoritmo lo sobrescribe con el cálculo `dias/7`)*: 0
* **Salida Esperada:**
  ```text
  Ingresa tu edad en años:
  > 20
  Ingresa las semanas:
  > 0
  Has vivido: 7305 dias
  Y 1043.5714285714 semanas
  Y 240 meses
  ```

#### Prueba 2
* **Entradas:**
  * `edad`: 15
  * `semanas`: 0
* **Salida Esperada:**
  ```text
  Ingresa tu edad en años:
  > 15
  Ingresa las semanas:
  > 0
  Has vivido: 5478.75 dias
  Y 782.67857142857 semanas
  Y 180 meses
  ```

---

## 5. Algoritmo: `CuentaPaseo`

### Descripción
Calcula la cuota individual que debe pagar cada persona para cubrir los gastos de un paseo, verificando que la cantidad de personas sea mayor a cero.

### Pseudocódigo
```pseint
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
```

### Casos de Prueba

#### Prueba 1 (Cálculo exitoso)
* **Entradas:**
  * `costoTotalPaseo`: 500000
  * `cantidadPersonas`: 5
  * `propina`: 10000
* **Salida Esperada:**
  ```text
  El valor total de gastos para el paseo:
  > 500000
  La cantidad de personas que van a pagar:
  > 5
  La propina:
  > 10000
  El total del paseo fue de: 500000
  A cada persona le toca poner: 100000
   Digite su propina: 5000
  ```

#### Prueba 2 (Validación de error por cantidad inválida de personas)
* **Entradas:**
  * `costoTotalPaseo`: 200000
  * `cantidadPersonas`: 0
  * `propina`: 0
* **Salida Esperada:**
  ```text
  El valor total de gastos para el paseo:
  > 200000
  La cantidad de personas que van a pagar:
  > 0
  La propina:
  > 0
  La cantidad de personas debe ser mayor a cero
  ```