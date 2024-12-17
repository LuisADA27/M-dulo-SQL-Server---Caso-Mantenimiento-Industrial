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
