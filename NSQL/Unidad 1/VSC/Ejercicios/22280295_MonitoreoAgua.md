# Sistema de monitoreo de calidad del agua

## Datos de identificación

- **Número de control:** 22280295
- **Nombre completo:** Christopher Meneses Chávez.
- **Carrera:** Ingenieria en Tecnologías de la información y comunicaciones.
- **Grupo:** 241500
- **Fecha:** 26 de agosto de 2026

---

## Descripción general

El proyecto propone un **sistema para registrar y analizar variables relacionadas con la calidad del agua en una laguna.** La información obtenida por sensores se almacena en una base de datos y posteriormente puede ser utilizada por modelos de análisis y aprendizaje automático.

## Objetivo general

Diseñar una plataforma de adquisición y organización de datos que permita consultar mediciones ambientales y generar información útil para la toma de decisiones.

## Objetivos específicos

1. Registrar periódicamente las variables medidas por los sensores.
2. Almacenar las observaciones junto con la fecha, hora y ubicación.
3. Detectar valores fuera de los intervalos esperados.
4. Preparar los datos para su análisis mediante modelos computacionales.

## Variables consideradas

| Variable | Unidad | Descripción |
|---|---|---|
| Temperatura del agua | grados Celsius | Indica la temperatura registrada en el punto de muestreo. |
| pH | sin unidad | Representa el nivel de acidez o alcalinidad del agua. |
| Oxígeno disuelto | miligramos por litro | Indica la cantidad de oxígeno disponible en el agua. |
| Turbidez | NTU | Permite estimar la presencia de partículas suspendidas. |

## Proceso de adquisición de datos

### Etapa 1. Lectura

Los sensores realizan una medición cada diez minutos.

### Etapa 2. Validación

El sistema comprueba que los valores se encuentren dentro de los intervalos permitidos y que la lectura incluya fecha, hora e identificador del sensor.

### Etapa 3. Almacenamiento

Las mediciones válidas se registran en la base de datos.

### Etapa 4. Análisis

Los datos almacenados se utilizan para generar estadísticas, detectar anomalías y alimentar modelos de aprendizaje automático.

## Ejemplo de registro

| Campo | Valor |
|---|---|
| Fecha | 2026-08-20 |
| Hora | 10:30 |
| Sensor | AQ-03 |
| Temperatura | 18.7 |
| pH | 7.2 |
| Oxígeno disuelto | 6.8 |
| Turbidez | 11.4 |
| Estado | válido |

## Criterios de validación

- Una medición debe contener identificador del sensor, fecha y hora.
- Los campos numéricos no deben contener texto.
- Una observación incompleta debe marcarse para revisión.
- Los valores anómalos no deben eliminarse automáticamente.

## Consideraciones para el análisis

No todos los valores fuera del intervalo esperado representan errores. Una anomalía puede corresponder a un cambio real en las condiciones ambientales. Por esta razón, el sistema debe conservar el dato original y registrar el resultado del proceso de validación.

## Metadatos

| Campo | Valor |
|---|---|
| Proyecto | Monitoreo de calidad del agua |
| Área | Inteligencia Artificial e Internet de las Cosas |
| Versión | 1.0 |
| Fecha de actualización | 25 de agosto de 2026 |
| Responsable | Equipo de monitoreo |

## Nota final

La organización del documento debe permitir que una persona o un sistema automático identifique claramente sus secciones, subsecciones, listas, datos y relaciones. La representación final será utilizada posteriormente para dividir el contenido en fragmentos semánticos destinados a un sistema de recuperación de información.

## Unidades semánticas para procesamiento posterior

Las principales unidades semánticas en las que podría dividirse el documento son:

1. **Identificación y propósito del sistema:** datos del alumno, descripción general y objetivos.
2. **Variables ambientales:** variables consideradas, unidades y descripciones.
3. **Adquisición de datos:** etapas de lectura, validación, almacenamiento y análisis.
4. **Estructura de una medición:** ejemplo de registro con sus campos y valores.
5. **Validación e interpretación:** criterios de validación y consideraciones para el análisis.
6. **Información administrativa:** metadatos y nota final sobre la organización semántica.

Estas unidades conservan el contexto de cada tema y no constituyen todavía el proceso de chunking.