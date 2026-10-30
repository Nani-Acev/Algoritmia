# Evidencia de la Sesión 2 - Algoritmos de Decisión

Este repositorio contiene los algoritmos desarrollados en PSeInt junto con sus respectivas tablas de decisión y pruebas de escritorio (incluyendo casos borde).

---

## 1. Algoritmos ValidarRegistro / ValidarEdad

### Tabla de Decisión (Operador lógico Y / AND)

| Condición 1 (`edad >= 14`) | Condición 2 (`respuesta == "S"`) | Resultado (`Condición 1 Y Condición 2`) | Salida del Sistema |
| :---: | :---: | :---: | :--- |
| Verdadero | Verdadero | **Verdadero** | "registro exitoso" |
| Verdadero | Falso | **Falso** | "np puedes registrarte" |
| Falso | Verdadero | **Falso** | "np puedes registrarte" |
| Falso | Falso | **Falso** | "np puedes registrarte" |

### Prueba de Escritorio

| Caso / Entrada | `edad` | `respuesta` | `edad >= 14` | `respuesta = "S"` | Salida Esperada |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **Normal (Aceptado)** | 20 | "s" | Verdadero | Verdadero | "registro exitoso" |
| **Normal (Rechazado)** | 20 | "N" | Verdadero | Falso | "np puedes registrarte" |
| **Caso Borde (`edad = 14`)** | 14 | "S" | Verdadero | Verdadero | "registro exitoso" |
| **Caso Borde (`edad = 13`)** | 13 | "S" | Falso | Verdadero | "np puedes registrarte" |

---

## 2. Algoritmo Parqueadero

### Tabla de Decisión (Reglas de Negocio)

| `minutos < 0` | `tipo` Válido (1 o 2) | `minutos <= 15` | `valor > 30000` | `factura == "S"` | Salida / Acción |
| :---: | :---: | :---: | :---: | :---: | :--- |
| Verdadero | - | - | - | - | "Los minutos no pueden ser negativos" |
| Falso | Falso (3) | - | - | - | "TIpo de vehiculo no valido" |
| Falso | Verdadero | Verdadero | - | - | `valor = 0` |
| Falso | Verdadero | Falso | Falso | Falso | `valor = horas * tarifa` |
| Falso | Verdadero | Falso | Verdadero | Falso | `valor = 30000` (Tope máximo) |
| Falso | Verdadero | Falso | Falso | Verdadero | `valor = (horas * tarifa) / 2` (50% desc) |

### Prueba de Escritorio

| Caso / Descripción | `tipo` | `minutos` | `factura` | `tarifa` | `horas` | `valor` | Salida Esperada |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| **Caso Borde (Negativo)** | 1 | -10 | "N" | - | - | - | "Los minutos no pueden ser negativos" |
| **Vehículo Inválido** | 3 | 30 | "N" | 0 | - | - | "TIpo de vehiculo no valido" |
| **Caso Borde (Gracia 15 min)** | 1 | 15 | "N" | 4000 | - | 0 | "Valor a pagar: $0" |
| **Caso Borde (16 min = 1 hora)**| 1 | 16 | "N" | 4000 | 1 | 4000 | "Valor a pagar: $4000" |
| **Cálculo Estándar (Moto)** | 2 | 120 | "N" | 2000 | 2 | 4000 | "Valor a pagar: $4000" |
| **Con Descuento Factura** | 1 | 120 | "s" | 4000 | 2 | 4000 | "Valor a pagar: $4000" |
| **Caso Borde (Tope $30.000)** | 1 | 600 | "N" | 4000 | 10 | 30000 | "Valor a pagar: $30000" |

---

## 3. Algoritmo Semáforo

### Tabla de Decisión

| Condición `unidades` | Estado / Resultado | Salida del Sistema |
| :--- | :---: | :--- |
| `unidades > 10` | Verde | "Verde: > 10 && Vehiculo Parqueadero Habilitado" |
| `1 <= unidades <= 10` | Amarillo | "Amarillo" |
| `unidades == 0` | Rojo | "Rojo" |
| `unidades < 0` | Inválido | "Codigo no valido" |

### Prueba de Escritorio

| Caso / Entrada | `unidades` | Evaluación de Condición | Salida Esperada |
| :--- | :---: | :--- | :--- |
| **Verde (Normal)** | 15 | `15 > 10` (Verdadero) | "Verde: > 10 && Vehiculo Parqueadero Habilitado" |
| **Caso Borde (Verde min)** | 11 | `11 > 10` (Verdadero) | "Verde: > 10 && Vehiculo Parqueadero Habilitado" |
| **Caso Borde (Amarillo max)** | 10 | `10 >= 1 Y 10 <= 10` (Verdadero) | "Amarillo" |
| **Caso Borde (Amarillo min)** | 1 | `1 >= 1 Y 1 <= 10` (Verdadero) | "Amarillo" |
| **Caso Borde (Rojo)** | 0 | `0 = 0` (Verdadero) | "Rojo" |
| **Caso Borde (Negativo)** | -5 | Ninguna condición válida | "Codigo no valido" |

---

## 4. Algoritmo Bisiesto

### Tabla de Decisión (Expresión Booleana Completa)

Expresión: `(anio MOD 4 = 0 Y anio MOD 100 <> 0) O (anio MOD 400 = 0)`

| `anio MOD 4 = 0` | `anio MOD 100 <> 0` | `anio MOD 400 = 0` | Resultado Final | Salida |
| :---: | :---: | :---: | :---: | :--- |
| Verdadero | Verdadero | Falso | **Verdadero** | "[anio] es bisiesto" |
| Verdadero | Falso | Verdadero | **Verdadero** | "[anio] es bisiesto" |
| Verdadero | Falso | Falso | **Falso** | "[anio] no es bisiesto" |
| Falso | Verdadero / Falso | Falso | **Falso** | "[anio] no es bisiesto" |

### Prueba de Escritorio

| Caso / Año | `MOD 4 = 0` | `MOD 100 <> 0` | `MOD 400 = 0` | Resultado | Salida Esperada |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **Año Bisiesto Estándar** (2024) | Verdadero (0) | Verdadero (24) | Falso (24) | Verdadero | "2024 es bisiesto" |
| **Caso Borde (Secular No Bisiesto)** (1900) | Verdadero (0) | Falso (0) | Falso (300) | Falso | "1900 no es bisiesto" |
| **Caso Borde (Secular Bisiesto)** (2000) | Verdadero (0) | Falso (0) | Verdadero (0) | Verdadero | "2000 es bisiesto" |
| **Año Común** (2023) | Falso (3) | Verdadero (23) | Falso (23) | Falso | "2023 no es bisiesto" |
