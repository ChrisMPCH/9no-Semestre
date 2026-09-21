# Ejecución de la práctica de normalización --- SQLite

## Archivos necesarios

Colocar en la misma carpeta:

-   `Biblioteca_DDL.sql`
-   `Biblioteca_DML.sql`
-   `Biblioteca_1K_registros_desnormalizados.csv`

## 1. Iniciar SQLite

Desde una terminal, ubicarse en la carpeta de trabajo y ejecutar:

``` bash
sqlite3 biblioteca.db
```

## 2. Crear la estructura de la base de datos

Dentro del shell de SQLite:

``` text
.read Biblioteca_DDL.sql
```

Este script crea las tablas del modelo normalizado en **3FN**, además de
la tabla `staging_biblioteca` utilizada para recibir los datos
originales.

## 3. Importar el archivo CSV

``` text
.mode csv
.import --skip 1 Biblioteca_1K_registros_desnormalizados.csv staging_biblioteca
```

La opción `--skip 1` evita importar la fila de encabezados del CSV.

Para comprobar la carga:

``` sql
SELECT COUNT(*) FROM staging_biblioteca;
```

Para el archivo de prueba, el resultado esperado es:

``` text
1000
```

## 4. Transformar los datos al modelo 3FN

``` text
.read Biblioteca_DML.sql
```

El script obtiene las entidades y relaciones desde `staging_biblioteca`
y las inserta en las tablas normalizadas.

## Secuencia completa

``` text
.read Biblioteca_DDL.sql
.mode csv
.import --skip 1 Biblioteca_1K_registros_desnormalizados.csv staging_biblioteca
.read Biblioteca_DML.sql
```

## Validación básica

Al finalizar, comprobar que se conservaron los 1,000 préstamos:

``` sql
SELECT COUNT(*) FROM prestamo;
```

Resultado esperado:

``` text
1000
```

También puede verificarse la integridad referencial:

``` sql
PRAGMA foreign_key_check;
```

Si la base de datos mantiene correctamente sus claves foráneas, esta
instrucción **no debe devolver filas**.
