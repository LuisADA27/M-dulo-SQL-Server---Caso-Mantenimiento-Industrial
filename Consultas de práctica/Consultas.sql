USE DSRP_caso_mantenimiento_industrial;
GO

--Por una necesidad de migrar el software actual de gestion de mantenimiento se requiere saber cuales 
--son los contratos que se encuentran en estado "Renovado" y que a su vez tengan el servicio 
--incluido "Software gestion mantenimiento" ya que el software será dado de baja por uno mas eficiente

SELECT*FROM Contratos;

SELECT cliente_id, servicio_incluido, estado_contrato, fecha_vencimiento

FROM Contratos
WHERE servicio_incluido LIKE ('software gestion mantenimiento') AND estado_contrato LIKE ('renovado');


--De los mantenimientos realizados se requiere conocer cuales fueron de tipo "Correctivo" para 
--poder conocer e implementar una estrategia de mantenimiento eficaz para poder anticiparse a la falla

SELECT*FROM Mantenimientos;

SELECT contrato_id, equipos_id, tipo_mantenimiento, comentarios

FROM Mantenimientos
WHERE tipo_mantenimiento LIKE ('correctivo');

--Se requiere conocer todos los mantenimientos con detalles de los equipos y técnicos asignados

SELECT 
    m.id AS MantenimientoID,
    c.nombre AS Cliente,
    e.marca AS MarcaEquipo,
    e.modelo AS ModeloEquipo,
    m.fecha_programada AS FechaProgramada,
    m.fecha_ejecutada AS FechaEjecutada,
    m.tipo_mantenimiento AS TipoMantenimiento,
    m.comentarios AS Comentarios,
    t.tecnico_asignado AS Tecnico
FROM Mantenimientos m
JOIN Equipos e ON m.equipos_id = e.id
JOIN Contratos ct ON m.contrato_id = ct.id
JOIN Clientes c ON ct.cliente_id = c.id
JOIN Asignacion_tecnico at ON m.id = at.mantenimiento_id
JOIN Tecnicos t ON at.tecnico_id = t.id
ORDER BY m.fecha_programada DESC;

--Se requiere identificar los mantenimientos correctivos realizados en 2024 para poder analizar y
--elaborar una mejor estrategia de mantenimiento para el año 2025
SELECT 
    m.id AS MantenimientoID,
    e.marca AS MarcaEquipo,
    e.modelo AS ModeloEquipo,
    m.fecha_ejecutada AS FechaEjecutada,
    m.comentarios AS Comentarios
FROM Mantenimientos m JOIN Equipos e ON m.equipos_id = e.id
WHERE m.tipo_mantenimiento = 'correctivo' AND YEAR(m.fecha_ejecutada) = 2024
ORDER BY m.fecha_ejecutada;

--Se requiere conocer los técnicos y sus mantenimientos respectivos asignados para
--poder averiguar cual es la especialidad más demandada
SELECT 
    t.tecnico_asignado AS Tecnico,
    t.especialidad AS Especialidad,
    COUNT(at.mantenimiento_id) AS TotalMantenimientos
FROM Tecnicos t LEFT JOIN Asignacion_tecnico at ON t.id = at.tecnico_id
GROUP BY t.tecnico_asignado, t.especialidad
ORDER BY TotalMantenimientos DESC;

--Consulta para listar contratos renovados con su cliente correspondiente
SELECT 
    ct.id AS ContratoID,
    cl.nombre AS Cliente,
    ct.fecha_inicio AS FechaInicio,
    ct.fecha_vencimiento AS FechaVencimiento,
    ct.servicio_incluido AS ServicioIncluido,
    ct.estado_contrato AS Estado
FROM Contratos ct
JOIN Clientes cl ON ct.cliente_id = cl.id
WHERE ct.estado_contrato = 'renovado'
ORDER BY ct.fecha_vencimiento ASC;

--Se requiere conocer cuales son los equipos que requieren más mantenimientos
SELECT 
    e.marca AS MarcaEquipo,
    e.modelo AS ModeloEquipo,
    COUNT(m.id) AS TotalMantenimientos
FROM Equipos e JOIN Mantenimientos m ON e.id = m.equipos_id
GROUP BY e.marca, e.modelo
ORDER BY TotalMantenimientos DESC;
