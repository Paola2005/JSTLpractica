-- Base de datos local para XAMPP/MySQL
-- Ejecuta esto en phpMyAdmin / MySQL Workbench / consola MySQL

CREATE DATABASE IF NOT EXISTS empleados;
USE empleados;

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