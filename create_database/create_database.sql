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

--Tecnicos
CREATE TABLE Tecnicos(
	id INT PRIMARY KEY IDENTITY(1,1),
	tecnico_asignado VARCHAR(255) NOT NULL,
	especialidad VARCHAR(255) NOT NULL,
	telefono VARCHAR(255) NOT NULL,
);
GO

--Contratos
CREATE TABLE Contratos(
	id INT PRIMARY KEY IDENTITY(1,1),
	cliente_id INT NOT NULL,
	fecha_inicio DATE NOT NULL,
	fecha_vencimiento DATE NOT NULL,
	servicio_incluido VARCHAR(255) NOT NULL,
	estado_contrato VARCHAR(255) NOT NULL,
	created_at DATETIME NOT NULL,
	updated_at DATETIME NULL,
	deleted_at DATETIME NULL,
	created_by INT NOT NULL,
	updated_by INT NULL,
	deleted_by INT NULL,
	CONSTRAINT FK_Clientes_Contratos FOREIGN KEY (cliente_id) REFERENCES Clientes(id));

--Mantenimientos
CREATE TABLE Mantenimientos(
	id INT PRIMARY KEY IDENTITY(1,1),
	contrato_id INT NOT NULL,
	equipos_id INT NOT NULL,
	fecha_programada DATE NOT NULL,
	fecha_ejecutada DATE NOT NULL,
	tipo_mantenimiento VARCHAR(255) NOT NULL,
	comentarios VARCHAR(255) NOT NULL,
	CONSTRAINT FK_Contratos_Mantenimientos FOREIGN KEY (contrato_id) REFERENCES Contratos(id),
	CONSTRAINT FK_Equipos_Mantenimientos FOREIGN KEY (equipos_id) REFERENCES Equipos(id));

--Asignacion Tecnico
CREATE TABLE Asignacion_tecnico(
	id INT PRIMARY KEY IDENTITY(1,1),
	mantenimiento_id INT NOT NULL,
	tecnico_id INT NOT NULL,
	CONSTRAINT FK_Mantenimientos_Asignacion_Tecnico FOREIGN KEY (mantenimiento_id) REFERENCES Mantenimientos(id),
	CONSTRAINT FK_Tecnicos_Asignacion_Tecnico FOREIGN KEY (tecnico_id) REFERENCES Tecnicos(id));
