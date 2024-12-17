--Clientes
SELECT*FROM Clientes;

INSERT INTO [dbo].[Clientes] ([nombre], [direccion], [per_contacto], [telefono], [correo])
VALUES

('BCP', 'Calle Las Camelias 750', 'Francisco Torres', '987459258', 'Francisco.Torres@bcp.com,pe'),
('BBVA', 'Av. Republica De Panamá 3055', 'Angie Galarza', '987455784', 'Angie.Galarza@bbva.com'),
('BANBIF', 'Av. Prolongación Paseo de la República s/n', 'Ignacio Gutierrez', '987456324', 'Ignacio.Gutierrez@banbif.com'),
('CLINICA INTERNACIONAL', 'Av. Inca Garcilaso de la Vega 1420', 'Antonio Mendoza', '972496324', 'Antonio.Mendoza@ci.com'),
('CLINICA ANGLOAMERICANA', 'C. Alfredo Salazar 350', 'Felix Fernandez', '954782324', 'FFerandez@ca.com'),
('PFIZER', 'C. Las Orquídeas 585', 'Ana Rivera', '969874324', 'A.Rivera@pfizer.com'),
('ENTEL', 'República de Colombia 791', 'Veronica Tapia', '964521786', 'V.Tapia@entel.com'),
('ALICORP', 'Av. Argentina N° 4793', 'Eduardo Ramirez', '95478412', 'Eduardo.Ramirez@alicorp.com');

--Equipos
SELECT*FROM Equipos;

INSERT INTO [dbo].[Equipos] ([marca], [modelo], [numero_serie])
VALUES
('CATERPILLAR', 'CAT-C412', 'CAT-C1412-G-3F-457'),
('WEG', 'MZT32', 'MZT-32-3F-440V-103'),
('SULLAIR', 'SN7412', 'SN74-3F-440-100-576'),
('ATLAS COPCO', 'GA90', 'GA90-440-120-487'),
('CUMMINS', 'C350', 'C350-440V-350HP'),
('SCHNEIDER', 'T2110', 'T2110-460-547821'),
('LIEBERT', 'UPS220', 'U220-3F-541289');

--Tecnicos
SELECT*FROM Tecnicos;

INSERT INTO [dbo].[Tecnicos] ([tecnico_asignado], [especialidad], [telefono])
VALUES
('SAUL MONTERO RIVERA', 'ELECTRICISTA', '945782159'),
('JUAN PINARES SARMIENTO', 'MECANICO', '957846294'),
('CARLA VIDAL IZAGUIRRE', 'ELECTRONICO', '969874512'),
('DIEGO AGURTO VALVERDE', 'ELECTRICISTA', '947856258'),
('JAVIER SALINAS DIAZ', 'REFRIGERACION', '965478912'),
('ELIAS ROMERO CAMPOS', 'INSTRUMENTISTA', '923654781'),
('RICHARD LOPEZ ENRIQUEZ', 'ELECTRICISTA', '923145785');

--Insertar Contratos
SELECT*FROM Contratos;

INSERT INTO [dbo].[Contratos] ([cliente_id], [fecha_inicio], [fecha_vencimiento],[servicio_incluido], [estado_contrato], [created_at], [updated_at], [deleted_at], [created_by], [updated_by], [deleted_by] )           
VALUES
('40', '2023-09-25 00:00:00', '2025-09-25 00:00:00', 'soporte por GE externo', 'activo', '2024-01-01 09:00:00', '2024-12-10 20:00:00', '', '5', '1', ''),
('41', '2022-12-01 00:00:00', '2025-12-01 00:00:00', 'Unidad movil propia', 'activo', '2022-12-01 09:00:00', '2024-12-10 20:00:00', '', '3', '1', ''),
('42', '2024-01-20 00:00:00', '2026-01-01 00:00:00', 'software gestion mantenimiento', 'activo', '2024-01-01 09:00:00', '2024-12-10 20:00:00', '', '2', '1', ''),
('43', '2023-11-15 00:00:00', '2025-11-01 00:00:00', 'soporte en auditorias', 'activo', '2023-10-01 09:00:00', '2024-12-10 20:00:00', '', '1', '1', ''),
('44', '2023-02-10 00:00:00', '2024-10-01 00:00:00', 'soporte en auditorias', 'vencido', '2023-02-01 08:00:00', '2024-12-10 20:00:00', '', '4', '1', ''),
('45', '2022-12-05 00:00:00', '2025-12-01 00:00:00', 'software gestion mantenimiento', 'renovado', '2022-12-01 09:00:00', '2024-12-10 20:00:00', '', '6', '1', ''),
('46', '2024-06-15 00:00:00', '2026-06-15 00:00:00', 'software gestion mantenimiento', 'activo', '2024-06-01 08:00:00', '2024-12-10 20:00:00', '', '7', '1', ''),
('47', '2024-02-01 00:00:00', '2027-02-01 00:00:00', 'soporte en auditorias', 'activo', '2024-01-15 10:00:00', '2024-12-10 20:00:00', '', '8', '1', ''),
('43', '2023-10-01 00:00:00', '2025-10-01 00:00:00', 'software gestion mantenimiento', 'activo', '2023-08-01 08:00:00', '2024-12-10 20:00:00', '', '9', '1', ''),
('41', '2024-03-01 00:00:00', '2027-03-01 00:00:00', 'software gestion mantenimiento', 'activo', '2024-02-01 08:00:00', '2024-12-10 20:00:00', '', '10', '1', '');

--Insertar Mantenimientos
SELECT*FROM Mantenimientos;

INSERT INTO [dbo].[Mantenimientos] ([contrato_id], [equipos_id], [fecha_programada],[fecha_ejecutada], [tipo_mantenimiento], [comentarios])
VALUES
('4', '1', '2024-02-25 00:00:00', '2024-02-30 00:00:00', 'preventivo', 'los repuestos no llegaron a tiempo por lo que la calidad del servicio fue afectado'),
('5', '5', '2023-02-01 00:00:00', '2024-01-01 00:00:00', 'correctivo', 'desgaste prematuro en generador'),
('6', '3', '2024-12-01 00:00:00', '2024-12-01 00:00:00', 'predictivo', 'se observa alta vibracion en unidad motriz'),
('7', '7', '2024-06-15 00:00:00', '2024-07-15 00:00:00', 'preventivo', 'se observa alta polucion en tarjetas electronicas'),
('8', '2', '2023-08-01 00:00:00', '2023-08-01 00:00:00', 'preventivo', 'se observa alto consumo de amperaje en motor'),
('9', '2', '2024-12-15 00:00:00', '2024-12-15 00:00:00', 'correctivo', 'se observa alta vibracion en motor'),
('10', '7', '2025-04-01 00:00:00', '2024-12-15 00:00:00', 'correctivo', 'se observa falla de unidad de inversion de CA'),
('11', '4', '2024-06-01 00:00:00', '2024-06-01 00:00:00', 'preventivo', 'se observa alta vibracion en unidad motriz'),
('12', '6', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 'preventivo', 'se observa alta contaminacion en equipo'),
('13', '5', '2024-11-01 00:00:00', '2024-12-01 00:00:00', 'preventivo', 'se observa alta vibracion en unidad generadora');
