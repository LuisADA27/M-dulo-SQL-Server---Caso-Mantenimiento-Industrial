USE DSRP_caso_mantenimiento_industrial;
GO

--Seleccionar los contratos que se encuentran en estado "vencido"

SELECT*FROM Contratos;

SELECT
	servicio_incluido

FROM Contratos
WHERE estado_contrato LIKE ('vencido');