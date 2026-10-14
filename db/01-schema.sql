-- Copia de database.sql adaptada para Clever Cloud.
-- Origen: database.sql (no modificado).
-- Cambios: sin CREATE DATABASE ni USE (la base ya existe con nombre asignado).
-- Orden de carga: 01-schema.sql (este archivo). Anade mas archivos 02-*.sql si crecen.

CREATE TABLE IF NOT EXISTS empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100) NOT NULL,
    edad INT NOT NULL
);

INSERT INTO empleados (nombres, apellido1, apellido2, edad) VALUES
('Andrea', 'Hurtado', 'Vega', 19),
('Andrea', 'Hurtado', 'Vega', 20);
