-- Biblioteca_DML.sql -- SQLite
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

INSERT INTO carrera
SELECT DISTINCT TRIM(carrera_id), carrera_nombre
FROM staging_biblioteca
WHERE TRIM(COALESCE(carrera_id,'')) <> '';

INSERT INTO usuario
SELECT DISTINCT TRIM(usuario_id), usuario_nombre, usuario_correo, TRIM(carrera_id)
FROM staging_biblioteca
WHERE TRIM(COALESCE(usuario_id,'')) <> '';

INSERT INTO editorial
SELECT DISTINCT TRIM(editorial_id), editorial_nombre
FROM staging_biblioteca
WHERE TRIM(COALESCE(editorial_id,'')) <> '';

INSERT INTO categoria
SELECT DISTINCT TRIM(categoria_id), categoria_nombre
FROM staging_biblioteca
WHERE TRIM(COALESCE(categoria_id,'')) <> '';

INSERT INTO libro
SELECT DISTINCT TRIM(libro_isbn), libro_titulo, TRIM(editorial_id), TRIM(categoria_id)
FROM staging_biblioteca
WHERE TRIM(COALESCE(libro_isbn,'')) <> '';

INSERT INTO autor
SELECT DISTINCT TRIM(autor_id), autor_nombre
FROM staging_biblioteca
WHERE TRIM(COALESCE(autor_id,'')) <> '';

INSERT INTO libro_autor
SELECT DISTINCT TRIM(libro_isbn), TRIM(autor_id)
FROM staging_biblioteca
WHERE TRIM(COALESCE(libro_isbn,'')) <> ''
  AND TRIM(COALESCE(autor_id,'')) <> '';

INSERT INTO ejemplar
SELECT DISTINCT TRIM(ejemplar_id), TRIM(libro_isbn), ubicacion
FROM staging_biblioteca
WHERE TRIM(COALESCE(ejemplar_id,'')) <> '';

INSERT INTO bibliotecario
SELECT DISTINCT TRIM(bibliotecario_id), bibliotecario_nombre
FROM staging_biblioteca
WHERE TRIM(COALESCE(bibliotecario_id,'')) <> '';

INSERT INTO prestamo
SELECT DISTINCT
 TRIM(prestamo_id), TRIM(fecha_prestamo),
 NULLIF(TRIM(fecha_devolucion),''),
 TRIM(usuario_id), TRIM(ejemplar_id), TRIM(bibliotecario_id)
FROM staging_biblioteca
WHERE TRIM(COALESCE(prestamo_id,'')) <> '';

COMMIT;

SELECT 'staging_biblioteca' tabla, COUNT(*) registros FROM staging_biblioteca
UNION ALL SELECT 'carrera', COUNT(*) FROM carrera
UNION ALL SELECT 'usuario', COUNT(*) FROM usuario
UNION ALL SELECT 'editorial', COUNT(*) FROM editorial
UNION ALL SELECT 'categoria', COUNT(*) FROM categoria
UNION ALL SELECT 'libro', COUNT(*) FROM libro
UNION ALL SELECT 'autor', COUNT(*) FROM autor
UNION ALL SELECT 'libro_autor', COUNT(*) FROM libro_autor
UNION ALL SELECT 'ejemplar', COUNT(*) FROM ejemplar
UNION ALL SELECT 'bibliotecario', COUNT(*) FROM bibliotecario
UNION ALL SELECT 'prestamo', COUNT(*) FROM prestamo;

PRAGMA foreign_key_check;
