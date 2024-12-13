CREATE DATABASE DSRP_caso_mantenimiento_industrial;
GO

USE DSRP_caso_mantenimiento_industrial;
GO
-- Clientes
CREATE TABLE Clientes(
	id INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(255) NOT NULL,
	direccion VARCHAR(255) NOT NULL,
	per_contacto VARCHAR(255) NOT NULL,
	telefono VARCHAR(255) NOT NULL,
	correo VARCHAR(255) NOT NULL,
);
GO

SELECT*FROM Clientes;

EXEC SP_HELP Clientes;

--Equipos
CREATE TABLE Equipos(
	id INT PRIMARY KEY IDENTITY(1,1),
	marca VARCHAR(255) NOT NULL,
	modelo VARCHAR(255) NOT NULL,
	numero_serie VARCHAR(255) NOT NULL,
);
GO