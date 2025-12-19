select * from clasificacion_medicinas;
-- Busqueda especifica
select cedula, nombre from Clientes where tipo like 'JUR';
select * from clientes;
-- Busqueda compuesta
select cedula, nombre from clientes where tipo like 'JUR' AND correo like '%mail%';
select id, nombre from medicinas where precio like '%5%';
-- Busqueda Medicinas genericas que tengan una A en su nombre
select id, stock from medicinas where nombre like '%A%' AND tipo like 'GEN';
-- Busqueda de Medicinas que empiecen con F
select id, nombre from Medicinas where nombre like 'f%';
select cedula, nombre from Clientes where nombre like 'Juan%';
select nombre from clientes where cedula='0100000020';
--Busqueda con conectores compuestos
select precio from medicinas where precio BETWEEN 5 AND 20;

-- Caso: Consultar los pacientes del plan de medicina frecuente
--       en una lista que incluya:
--       Nombre y cedula del paciente, nombre e ID de la medicina,
--       Descuento
select Cedula_cliente as Cedula, (select nombre from Clientes where cedula = Cedula_cliente) as Cliente, Id_medicamento as ID, (select Nombre from Medicinas where Id = Id_medicamento) as Medicina, descuento from pacientes_permanentes;
select Id_medicamento from Pacientes_permanentes where Via_administracion= 'Oral' AND Descuento > (select Descuento from Pacientes_permanentes where Cedula_cliente='0100000053');

-- Caso: listado de pacientes del plan pacientes permanentes
--       presente el precio final de la medicina junto con el 
--       precio sin descuento

select 
Cedula_cliente as Cedula, (select nombre from Clientes where cedula = Cedula_cliente) as Cliente, 
Id_medicamento as ID, 
(select Nombre from Medicinas where Id = Id_medicamento) as Medicina, 
(SELECT precio from Medicinas where Id = Id_Medicamento) as Precio_original, 
descuento, (SELECT Precio from Medicinas where Id = Id_Medicamento) * descuento as Descontado
from pacientes_permanentes;

SELECT 
    Cedula_cliente AS Cedula,
    (SELECT nombre FROM Clientes WHERE cedula = Cedula_cliente) AS Cliente, 
    Id_medicamento AS ID, 
    (SELECT Nombre FROM Medicinas WHERE Id = Id_medicamento) AS Medicina, 
    (SELECT precio FROM Medicinas WHERE Id = Id_Medicamento) AS Precio_original, 
    descuento,
    (SELECT Precio FROM Medicinas WHERE Id = Id_Medicamento) * descuento AS Descontado,
    (SELECT Precio FROM Medicinas WHERE Id = Id_Medicamento)
      - ((SELECT Precio FROM Medicinas WHERE Id = Id_Medicamento) * descuento)
      AS Precio_final
FROM pacientes_permanentes;

select * from pacientes_permanentes;

-- Caso: Las medicinas comerciales pueden ser reemplazadas
--       por sus correspondientes genericas.
--       Elaborar un listado que compare precios
--       de medicinas comerciales y genericas

select * from medicinas;
select * from clasificacion_medicinas;
SELECT
    clasificacion_medicinas.Medicina_COM AS id_comercial,

    (SELECT nombre
     FROM medicinas
     WHERE id = clasificacion_medicinas.Medicina_COM) AS medicina_comercial,

    (SELECT precio
     FROM medicinas
     WHERE id = clasificacion_medicinas.Medicina_COM) AS precio_comercial,

    clasificacion_medicinas.Medicina_GEN AS id_generica,

    (SELECT nombre
     FROM medicinas
     WHERE id = clasificacion_medicinas.Medicina_GEN) AS medicina_generica,

    (SELECT precio
     FROM medicinas
     WHERE id = clasificacion_medicinas.Medicina_GEN) AS precio_generico
FROM clasificacion_medicinas;

-- Caso JOIN
SELECT
    pp.cedula_cliente AS cedula,
    c.nombre AS cliente,
    m.nombre AS medicamento,
    m.precio AS precio_original,
    pp.descuento,

    (m.precio * pp.descuento / 100) AS valor_descuento,

    (m.precio - (m.precio * pp.descuento / 100)) AS precio_final

FROM pacientes_permanentes pp
JOIN clientes c
    ON pp.cedula_cliente = c.cedula
JOIN medicinas m
    ON pp.id_medicamento = m.id;

SELECT
    cm.medicina_COM AS id_comercial,
    mc.nombre       AS medicina_comercial,
    mc.precio       AS precio_comercial,

    cm.medicina_GEN AS id_generica,
    mg.nombre       AS medicina_generica,
    mg.precio       AS precio_generico
FROM clasificacion_medicinas cm
JOIN medicinas mc
    ON mc.id = cm.medicina_COM
JOIN medicinas mg
    ON mg.id = cm.medicina_GEN;