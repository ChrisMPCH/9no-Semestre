SELECT u.usuario_nombre
        , c.carrera_nombre
FROM carrera c, usuario u
WHERE u.carrera_id = c.carrera_id;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
FROM  carrera c
        ,usuario u 
        ,prestamo p
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
        , b.bibliotecario_nombre
FROM  prestamo p
        ,usuario u 
        ,carrera c
        ,bibliotecario b
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id
  AND b.bibliotecario_id = p.bibliotecario_id;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
        , b.bibliotecario_nombre
        , e.ejemplar_id, e.libro_isbn
FROM  prestamo p
        ,usuario u 
        ,carrera c
        ,bibliotecario b
        ,ejemplar e
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id
  AND b.bibliotecario_id = p.bibliotecario_id
  AND e.ejemplar_id = p.ejemplar_id;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
        , b.bibliotecario_nombre
        , e.ejemplar_id, e.libro_isbn
        , l.libro_titulo
FROM  prestamo p
        ,usuario u 
        ,carrera c
        ,bibliotecario b
        ,ejemplar e
        ,libro l
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id
  AND b.bibliotecario_id = p.bibliotecario_id
  AND e.ejemplar_id = p.ejemplar_id
  AND l.libro_isbn = e.libro_isbn;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
        , b.bibliotecario_nombre
        , e.ejemplar_id, e.libro_isbn
        , l.libro_titulo
        , ed.editorial_id, ed.editorial_nombre
FROM  prestamo p
        ,usuario u 
        ,carrera c
        ,bibliotecario b
        ,ejemplar e
        ,libro l
        ,editorial ed
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id
  AND b.bibliotecario_id = p.bibliotecario_id
  AND e.ejemplar_id = p.ejemplar_id
  AND l.libro_isbn = e.libro_isbn
  AND ed.editorial_id = l.editorial_id;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
        , b.bibliotecario_nombre
        , e.ejemplar_id, e.libro_isbn
        , l.libro_titulo
        , ed.editorial_nombre
        , cat.categoria_nombre
FROM  prestamo p
        ,usuario u 
        ,carrera c
        ,bibliotecario b
        ,ejemplar e
        ,libro l
        ,editorial ed
        ,categoria cat
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id
  AND b.bibliotecario_id = p.bibliotecario_id
  AND e.ejemplar_id = p.ejemplar_id
  AND l.libro_isbn = e.libro_isbn
  AND ed.editorial_id = l.editorial_id
  AND cat.categoria_id = l.categoria_id;


SELECT u.usuario_nombre
        , c.carrera_nombre
        , p.fecha_prestamo, p.fecha_devolucion
        , b.bibliotecario_nombre
        , e.ejemplar_id, e.libro_isbn
        , l.libro_titulo
        , ed.editorial_nombre
        , cat.categoria_nombre
        , a.autor_nombre
FROM  prestamo p
        ,usuario u 
        ,carrera c
        ,bibliotecario b
        ,ejemplar e
        ,libro l
        ,editorial ed
        ,categoria cat
        ,libro_autor la
        ,autor a
WHERE  u.carrera_id = c.carrera_id
  AND p.usuario_id = u.usuario_id
  AND b.bibliotecario_id = p.bibliotecario_id
  AND e.ejemplar_id = p.ejemplar_id
  AND l.libro_isbn = e.libro_isbn
  AND ed.editorial_id = l.editorial_id
  AND cat.categoria_id = l.categoria_id
  AND (la.libro_isbn = l.libro_isbn
  AND a.autor_id = la.autor_id);

SELECT u.usuario_nombre
     , c.carrera_nombre
     , p.fecha_prestamo, p.fecha_devolucion
     , b.bibliotecario_nombre
     , e.ejemplar_id, e.libro_isbn
     , l.libro_titulo
     , ed.editorial_nombre
     , cat.categoria_nombre
     , a.autor_nombre
FROM prestamo p
JOIN usuario     u   ON u.usuario_id = p.usuario_id
JOIN carrera     c   ON c.carrera_id = u.carrera_id
JOIN bibliotecario b ON b.bibliotecario_id = p.bibliotecario_id
JOIN ejemplar    e   ON e.ejemplar_id = p.ejemplar_id
JOIN libro       l   ON l.libro_isbn = e.libro_isbn
JOIN editorial   ed  ON ed.editorial_id = l.editorial_id
JOIN categoria   cat ON cat.categoria_id = l.categoria_id
JOIN libro_autor la  ON la.libro_isbn = l.libro_isbn
JOIN autor       a   ON a.autor_id = la.autor_id;


SELECT
    p.prestamo_id,
    u.usuario_nombre,
    c.carrera_nombre,
    p.fecha_prestamo,
    p.fecha_devolucion,
    b.bibliotecario_nombre,
    e.ejemplar_id,
    e.libro_isbn,
    l.libro_titulo,
    ed.editorial_nombre,
    ct.categoria_nombre,
    GROUP_CONCAT(a.autor_nombre, ', ') AS autores
FROM prestamo p
JOIN usuario u
    ON p.usuario_id = u.usuario_id
JOIN carrera c
    ON u.carrera_id = c.carrera_id
JOIN bibliotecario b
    ON p.bibliotecario_id = b.bibliotecario_id
JOIN ejemplar e
    ON p.ejemplar_id = e.ejemplar_id
JOIN libro l
    ON e.libro_isbn = l.libro_isbn
JOIN editorial ed
    ON l.editorial_id = ed.editorial_id
JOIN categoria ct
    ON l.categoria_id = ct.categoria_id
JOIN libro_autor la
    ON l.libro_isbn = la.libro_isbn
JOIN autor a
    ON la.autor_id = a.autor_id
GROUP BY p.prestamo_id;

DROP VIEW IF EXISTS prestamos_vw;

Create VIEW prestamos_vw AS 
SELECT
    p.prestamo_id,
    u.usuario_nombre,
    c.carrera_nombre,
    p.fecha_prestamo,
    p.fecha_devolucion,
    b.bibliotecario_nombre,
    e.ejemplar_id,
    e.libro_isbn,
    l.libro_titulo,
    ed.editorial_nombre,
    ct.categoria_nombre,
    GROUP_CONCAT(a.autor_nombre, ', ') AS autores
FROM prestamo p
JOIN usuario u
    ON p.usuario_id = u.usuario_id
JOIN carrera c
    ON u.carrera_id = c.carrera_id
JOIN bibliotecario b
    ON p.bibliotecario_id = b.bibliotecario_id
JOIN ejemplar e
    ON p.ejemplar_id = e.ejemplar_id
JOIN libro l
    ON e.libro_isbn = l.libro_isbn
JOIN editorial ed
    ON l.editorial_id = ed.editorial_id
JOIN categoria ct
    ON l.categoria_id = ct.categoria_id
JOIN libro_autor la
    ON l.libro_isbn = la.libro_isbn
JOIN autor a
    ON la.autor_id = a.autor_id
GROUP BY p.prestamo_id;

select * from Prestamos_vw;

---Lista de libros que tienen mas de un autor
SELECT 
l.libro_isbn, l.libro_titulo, COUNT(la.autor_id) AS cantidad_autores
FROM 
libro l
JOIN libro_autor la 
ON l.libro_isbn = la.libro_isbn
GROUP BY 
l.libro_isbn, l.libro_titulo
HAVING COUNT(la.autor_id) > 1;