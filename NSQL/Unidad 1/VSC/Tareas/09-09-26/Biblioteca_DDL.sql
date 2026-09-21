-- Biblioteca_DDL.sql -- SQLite
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS prestamo;
DROP TABLE IF EXISTS libro_autor;
DROP TABLE IF EXISTS ejemplar;
DROP TABLE IF EXISTS libro;
DROP TABLE IF EXISTS autor;
DROP TABLE IF EXISTS bibliotecario;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS carrera;
DROP TABLE IF EXISTS editorial;
DROP TABLE IF EXISTS categoria;
DROP TABLE IF EXISTS staging_biblioteca;

CREATE TABLE staging_biblioteca (
 prestamo_id TEXT, fecha_prestamo TEXT, fecha_devolucion TEXT,
 usuario_id TEXT, usuario_nombre TEXT, usuario_correo TEXT,
 carrera_id TEXT, carrera_nombre TEXT,
 libro_isbn TEXT, libro_titulo TEXT,
 autor_id TEXT, autor_nombre TEXT,
 editorial_id TEXT, editorial_nombre TEXT,
 categoria_id TEXT, categoria_nombre TEXT,
 ejemplar_id TEXT, ubicacion TEXT,
 bibliotecario_id TEXT, bibliotecario_nombre TEXT
);

CREATE TABLE carrera (
 carrera_id TEXT PRIMARY KEY,
 carrera_nombre TEXT NOT NULL
);

CREATE TABLE usuario (
 usuario_id TEXT PRIMARY KEY,
 usuario_nombre TEXT NOT NULL,
 usuario_correo TEXT NOT NULL UNIQUE,
 carrera_id TEXT NOT NULL,
 FOREIGN KEY (carrera_id) REFERENCES carrera(carrera_id)
  ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE editorial (
 editorial_id TEXT PRIMARY KEY,
 editorial_nombre TEXT NOT NULL
);

CREATE TABLE categoria (
 categoria_id TEXT PRIMARY KEY,
 categoria_nombre TEXT NOT NULL
);

CREATE TABLE libro (
 libro_isbn TEXT PRIMARY KEY,
 libro_titulo TEXT NOT NULL,
 editorial_id TEXT NOT NULL,
 categoria_id TEXT NOT NULL,
 FOREIGN KEY (editorial_id) REFERENCES editorial(editorial_id)
  ON UPDATE CASCADE ON DELETE NO ACTION,
 FOREIGN KEY (categoria_id) REFERENCES categoria(categoria_id)
  ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE autor (
 autor_id TEXT PRIMARY KEY,
 autor_nombre TEXT NOT NULL
);

CREATE TABLE libro_autor (
 libro_isbn TEXT NOT NULL,
 autor_id TEXT NOT NULL,
 PRIMARY KEY (libro_isbn, autor_id),
 FOREIGN KEY (libro_isbn) REFERENCES libro(libro_isbn)
   ON UPDATE CASCADE ON DELETE CASCADE,
 FOREIGN KEY (autor_id) REFERENCES autor(autor_id)
  ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE ejemplar (
 ejemplar_id TEXT PRIMARY KEY,
 libro_isbn TEXT NOT NULL,
 ubicacion TEXT NOT NULL,
 FOREIGN KEY (libro_isbn) REFERENCES libro(libro_isbn)
  ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE bibliotecario (
 bibliotecario_id TEXT PRIMARY KEY,
 bibliotecario_nombre TEXT NOT NULL
);

CREATE TABLE prestamo (
 prestamo_id TEXT PRIMARY KEY,
 fecha_prestamo TEXT NOT NULL,
 fecha_devolucion TEXT,
 usuario_id TEXT NOT NULL,
 ejemplar_id TEXT NOT NULL,
 bibliotecario_id TEXT NOT NULL,
 CHECK (fecha_devolucion IS NULL OR fecha_devolucion >= fecha_prestamo),
 FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
  ON UPDATE CASCADE ON DELETE NO ACTION,
 FOREIGN KEY (ejemplar_id) REFERENCES ejemplar(ejemplar_id)
  ON UPDATE CASCADE ON DELETE NO ACTION,
 FOREIGN KEY (bibliotecario_id) REFERENCES bibliotecario(bibliotecario_id)
  ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE INDEX idx_usuario_carrera ON usuario(carrera_id);
CREATE INDEX idx_libro_editorial ON libro(editorial_id);
CREATE INDEX idx_libro_categoria ON libro(categoria_id);
CREATE INDEX idx_libro_autor_autor ON libro_autor(autor_id);
CREATE INDEX idx_ejemplar_libro ON ejemplar(libro_isbn);
CREATE INDEX idx_prestamo_usuario ON prestamo(usuario_id);
CREATE INDEX idx_prestamo_ejemplar ON prestamo(ejemplar_id);
CREATE INDEX idx_prestamo_bibliotecario ON prestamo(bibliotecario_id);
