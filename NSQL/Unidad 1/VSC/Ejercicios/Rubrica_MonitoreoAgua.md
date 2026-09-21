# Rúbrica de evaluación
## Conversión de TXT a Markdown — Monitoreo de la calidad del agua

**Valor total:** 100 puntos

---

## Objetivo

Transformar el archivo proporcionado en formato de texto plano (`.txt`) a un documento Markdown (`.md`), identificando y representando correctamente su **estructura semántica**.

La evaluación considera tanto la correcta utilización de Markdown como la capacidad del alumno para interpretar la organización lógica de la información.

> **Importante:** No se evalúa la cantidad de comandos Markdown utilizados, sino su uso adecuado para representar la estructura y significado del documento.

---

# 1. Nombre y formato del archivo — 5 puntos 

El archivo deberá utilizar el siguiente nombre:

`[No. Control]_MonitoreoAgua.md`

Ejemplo:

`21280456_MonitoreoAgua.md`

| Criterio | Puntos |
|---|---:|
| Nombre y extensión correctos | 5 |
| Error en el nombre, pero extensión correcta | 3 |
| Extensión diferente de `.md` | 0 |

---

# 2. Datos de identificación del alumno — 5 puntos 

Al inicio del documento deberán aparecer:

- Número de control
- Nombre completo
- Carrera
- Grupo
- Fecha

Los datos deberán encontrarse claramente identificados y separados del contenido principal.

| Criterio | Puntos |
|---|---:|
| Incluye los cinco datos solicitados | 5 |
| Falta un dato | 4 |
| Faltan dos datos | 3 |
| Faltan tres o más datos | 1 |
| No incluye identificación | 0 |

---

# 3. Estructura semántica — 25 puntos 

El alumno deberá interpretar la organización lógica del documento original y representarla mediante Markdown.

Se evaluará:

- identificación del título principal;
- identificación de secciones;
- identificación de subsecciones;
- agrupación de información relacionada;
- conservación de las relaciones semánticas;
- separación adecuada entre unidades temáticas.

| Nivel | Descripción | Puntos |
|---|---|---:|
| Excelente | La estructura representa claramente la organización semántica del documento | 25 |
| Bueno | Estructura correcta con pequeñas inconsistencias | 20 |
| Suficiente | Identifica la estructura general, pero existen problemas de jerarquía o agrupación | 15 |
| Insuficiente | La estructura responde principalmente a criterios visuales | 5 |
| No realizado | No existe una estructura identificable | 0 |

---

# 4. Jerarquía de encabezados — 15 puntos 

Se deberán utilizar correctamente:

`#`, `##`, `###`, `####`

La jerarquía deberá representar la relación entre título, secciones y subsecciones.

Se verificará particularmente:

- existencia de un título principal;
- uso coherente de niveles;
- ausencia de saltos injustificados de nivel;
- consistencia de encabezados equivalentes.

| Criterio | Puntos |
|---|---:|
| Jerarquía correcta y consistente | 15 |
| Uno o dos errores menores | 12 |
| Varias inconsistencias | 8 |
| Encabezados utilizados principalmente como formato visual | 4 |
| No utiliza encabezados Markdown | 0 |

---

# 5. Listas y agrupaciones — 10 puntos 

Cuando existan elementos relacionados deberán utilizarse, cuando corresponda:

- listas no ordenadas;
- listas ordenadas;
- listas anidadas.

Se evaluará que las listas representen relaciones existentes en el contenido y no se utilicen únicamente como recurso visual.

| Criterio | Puntos |
|---|---:|
| Uso correcto y consistente | 10 |
| Pequeños problemas de estructura | 8 |
| Uso parcialmente correcto | 5 |
| Uso inadecuado | 2 |
| No identifica elementos susceptibles de representarse como listas | 0 |

---

# 6. Información tabular — 10 puntos 

Los datos que representen relaciones entre variables, atributos, unidades o valores deberán analizarse para determinar si resulta conveniente utilizar una tabla Markdown.

Ejemplo:

```md
| Variable | Unidad | Valor |
|---|---|---:|
| Temperatura | °C | 18.7 |
| pH | — | 7.2 |
```

| Criterio | Puntos |
|---|---:|
| Información tabular correctamente identificada y estructurada | 10 |
| Tabla correcta con pequeños errores | 8 |
| Tabla parcialmente correcta | 5 |
| Selección inadecuada de la estructura | 2 |
| No estructura información claramente tabular | 0 |

---

# 7. Uso adecuado de Markdown — 10 puntos 

Se evaluará el uso apropiado de:

- `**negritas**`;
- `*cursivas*`;
- listas;
- tablas;
- encabezados;
- separadores;
- citas;
- código en línea cuando corresponda.

El uso de elementos Markdown deberá tener una finalidad estructural o semántica.

| Criterio | Puntos |
|---|---:|
| Uso correcto, consistente y justificado | 10 |
| Algunos errores menores | 8 |
| Uso excesivo o inconsistente | 5 |
| Uso principalmente decorativo | 2 |
| Prácticamente no utiliza Markdown | 0 |

---

# 8. Fidelidad respecto al TXT original — 10 puntos 

La transformación deberá conservar la información del documento original.

No se deberá:

- eliminar información;
- modificar valores;
- cambiar el significado;
- agregar información inexistente;
- resumir el contenido original.

| Criterio | Puntos |
|---|---:|
| Contenido íntegro y fiel al original | 10 |
| Una omisión o modificación menor | 8 |
| Varias omisiones o modificaciones | 5 |
| Alteraciones importantes | 2 |
| No corresponde al documento original | 0 |

---

# 9. Calidad y legibilidad del Markdown — 5 puntos 

Se evaluará:

- líneas en blanco;
- espacios;
- sangrías;
- consistencia;
- ausencia de marcas innecesarias;
- legibilidad del código fuente Markdown.

| Criterio | Puntos |
|---|---:|
| Markdown limpio y consistente | 5 |
| Pequeños problemas | 4 |
| Varias inconsistencias | 2 |
| Difícil de interpretar | 0 |

---

# 10. Identificación de chunks semánticos — 5 puntos 

Al final del documento, el alumno deberá identificar las principales unidades semánticas en las que podría dividirse el documento para su procesamiento posterior.

No deberá realizar todavía el proceso de chunking.

Se evaluará que la división propuesta:

- conserve el contexto;
- respete las secciones temáticas;
- evite separar información estrechamente relacionada;
- no esté basada únicamente en cantidad de caracteres o líneas.

| Criterio | Puntos |
|---|---:|
| Chunks correctamente identificados | 5 |
| La mayoría son adecuados | 4 |
| División parcialmente adecuada | 2 |
| División arbitraria | 1 |
| No identifica chunks | 0 |

---

# Resumen de evaluación

| Criterio | Puntos | Revisión asistida |
|---|---:|
| Nombre y formato | 5 | 
| Datos del alumno | 5 | 
| Estructura semántica | 25 | 
| Jerarquía de encabezados | 15 | 
| Listas y agrupaciones | 10 | 
| Información tabular | 10 |
| Uso de Markdown | 10 | 
| Fidelidad al TXT | 10 | 
| Calidad del Markdown | 5 |
| Chunks semánticos | 5 |
| **TOTAL** | **100** | |


# Informe de evaluación

La revisión deberá generar para cada alumno un resultado con la siguiente estructura:

## Resultado

**Número de control:**  
**Alumno:**  
**Archivo:**  

| Criterio | Máximo | Obtenido | Observación |
|---|---:|---:|---|
| Nombre y formato | 5 | | |
| Datos del alumno | 5 | | |
| Estructura semántica | 25 | | |
| Jerarquía de encabezados | 15 | | |
| Listas y agrupaciones | 10 | | |
| Información tabular | 10 | | |
| Uso de Markdown | 10 | | |
| Fidelidad al TXT | 10 | | |
| Calidad del Markdown | 5 | | |
| Chunks semánticos | 5 | | |
| **TOTAL** | **100** | | |

### Observaciones generales

- **Fortalezas:**
- **Aspectos por mejorar:**
- **Errores Markdown detectados:**
- **Observaciones sobre estructura semántica:**

### Resultado final

**Calificación:** ___ / 100

**Requiere revisión del profesor:** Sí / No