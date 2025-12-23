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

-- Caso: Crear todas las combinaciones posibles entre la tabla 
--       de clientes y pacientes permanentes
--       Producto Cartesiano

SELECT * FROM
    clientes,
    pacientes_permanentes
WHERE
    clientes.Cedula = pacientes_permanentes.Cedula_cliente;

SELECT * FROM
    Medicinas,
    Pacientes_permanentes
WHERE
    Medicinas.Id = pacientes_permanentes.Id_Medicamento;
SELECT 
    c.Cedula,
    c.Nombre,
    m.Nombre,
    pp.descuento,
    m.Tipo  
from
    clientes c,
    Medicinas m,  
    pacientes_permanentes pp
WHERE
    m.id = pp.Id_medicamento
and c.cedula = pp.Cedula_cliente;

-- JOIN
SELECT 
    c.Cedula,
    c.Nombre,
    m.Nombre,
    pp.descuento,
    m.Tipo  
from 
    pacientes_permanentes pp
JOIN clientes c on c.cedula = pp.Cedula_cliente
JOIN medicinas m ON m.id = pp.Id_medicamento;

SELECT
    mgen.id     AS id_generica,
    mgen.nombre AS medicina_generica,
    mgen.precio AS precio_generico,

    mcom.id     AS id_comercial,
    mcom.nombre AS medicina_comercial,
    mcom.precio AS precio_comercial,

    mcom.precio - mgen.precio as Diferencia

FROM clasificacion_medicinas cm
JOIN medicinas mgen ON mgen.id = cm.medicina_gen
JOIN medicinas mcom ON mcom.id = cm.medicina_com;

-- Caso: Presentar una factura y sus detalles, que incluya:
--       datos de la farmacia, datos del cliente
--       datos de cabecera, medicinas vendidas
--       datos al pie de la factura y forma de pago

-- 1. Carga de datos en factura y detalles usando datos existentes
-- 2. select para cabecera de factura
-- 3. select para detalles de factura
-- 4. select para el pie de factura

SELECT
    /* DATOS DE LA EMPRESA (FARMACIA) */
    de.razonsocial        AS farmacia,
    de.ruc                AS ruc_farmacia,
    de.direccion          AS direccion_farmacia,
    de.telefono           AS telefono_farmacia,
    de.email              AS email_farmacia,

    f.facturanumero,
    f.fecha,

    c.cedula              AS cedula_cliente,
    c.nombre              AS nombre_cliente,
    c.apellido            AS apellido_cliente,
    c.correo               AS email_cliente,

    SUM(fd.cantidad * m.precio)           AS subtotal,
    SUM(fd.cantidad * m.precio) * 0.15    AS IVA,
    SUM(fd.cantidad * m.precio) * 1.15    AS total,

    f.forma_pago         AS metodo_pago

FROM facturas f

JOIN clientes c
    ON c.cedula = f.cedula

JOIN datos_empresa de
    ON de.ruc = '1712312345001'

JOIN facturadetalle fd
    ON fd.facturanumero = f.facturanumero

JOIN medicinas m
    ON m.id = fd.medicamento_id

WHERE f.facturanumero = '0000000001'

GROUP BY
    de.razonsocial,
    de.ruc,
    de.direccion,
    de.telefono,
    de.email,
    f.facturanumero,
    f.fecha,
    c.cedula,
    c.nombre,
    c.apellido,
    c.correo,
    f.forma_pago;

SELECT
fd.facturaNumero        AS numero_factura, 
fd.medicamento_id,
m.nombre                AS medicamento,
fd.cantidad,
fd.precio,
(fd.cantidad * fd.precio) AS subtotal_detalle
FROM facturadetalle fd
JOIN medicinas m
    ON m.id = fd.medicamento_id
WHERE fd.facturaNumero = '0000000001';

CREATE VIEW v_1
AS
SELECT
    mgen.id     AS id_generica,
    mgen.nombre AS medicina_generica,
    mgen.precio AS precio_generico,

    mcom.id     AS id_comercial,
    mcom.nombre AS medicina_comercial,
    mcom.precio AS precio_comercial,

    mcom.precio - mgen.precio as Diferencia

FROM clasificacion_medicinas cm
JOIN medicinas mgen ON mgen.id = cm.medicina_gen
JOIN medicinas mcom ON mcom.id = cm.medicina_com;

select * from v_1;

-- where con 2 ANDs
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
    ON pp.id_medicamento = m.id
where precio > 0.50 and precio < 1.20;

-- not
select
  id,
  nombre,
  precio
from medicinas
where not precio > 2;

select count(*) from pacientes_permanentes;

select 
  *
from medicinas
where id not In
(
    select id_medicamento from pacientes_permanentes
);
select * from medicinas;

select 
  *
from medicinas m
join pacientes_permanentes pp on m.id = pp.id_medicamento;

-- left join
select 
  *
from medicinas m
left join pacientes_permanentes pp on m.id = pp.id_medicamento
where pp.id_medicamento is null;

-- BY
select * from clientes order BY edad;
select * from clientes order BY edad desc;
select nombre, edad from clientes order BY edad limit 1;

-- caso 1: conocer las 5 medicinas mas caras
select id, nombre, precio from medicinas order BY precio desc limit 5;

-- caso 2: conocer las 5 medicinas mas baratas
select id, nombre, precio from medicinas order BY precio limit 5;

-- caso 3: la medicina comercial mas barata
select 
  id, 
  nombre, 
  precio,
  tipo
from 
  medicinas 
where tipo = 'COM'
order by 
  precio
limit 1;

-- caso 4: la medicina generica mas barata
select 
  id, 
  nombre, 
  precio,
  tipo
from 
  medicinas 
where tipo = 'GEN'
order by 
  precio
limit 1;

select * from medicinas;

-- caso 5: 5 medicinas genericas con el menor descuento
select 
  pp.cedula_cliente,
  pp.id_medicamento, 
  m.nombre , 
  m.tipo,
  m.precio,
  pp.descuento
from 
  medicinas m
join pacientes_permanentes pp
  on pp.id_medicamento = m.id
where tipo = 'GEN'
order by 
  descuento
limit 5;

select 
  id,
  nombre
from medicinas
WHERE
  id in (
    select
      ID_medicamento
    from pacientes_permanentes
    join medicinas on id = id_medicamento
    where
      tipo = 'GEN'
    order BY
      descuento
  );

-- Caso Agrupamientos
select 
  tipo,
  count(*) as Numero
from clientes
GROUP BY
  tipo;

-- Caso Operadores Matematicos
select
  id,
  nombre,
  precio,
  stock,
  precio * stock
from medicinas;

select
  tipo,
  sum(precio * stock)
from medicinas
GROUP BY
  tipo;

-- Caso Faacturas detalles. Valor monetario por medicina vendida
SELECT
  medicamento_id,
  cantidad,
  precio,
  cantidad * precio as subtotal
from facturadetalle
order by medicamento_id;

SELECT
  medicamento_id,
  nombre,
  sum(cantidad * fd.precio)
from facturadetalle fd
join medicinas m on m.id = fd.medicamento_id
group by
  medicamento_id
order by
  medicamento_id;

-- Caso: Mejor cliente (el que mas compra)
SELECT
    c.cedula,
    c.nombre,
    SUM(fd.cantidad * fd.precio) AS total_comprado
FROM clientes c
JOIN facturas f
    ON c.cedula = f.cedula
JOIN facturadetalle fd
    ON f.facturanumero = fd.facturanumero
GROUP BY c.cedula, c.nombre
ORDER BY total_comprado DESC
LIMIT 1;

select
  fd.facturanumero,
  f.cedula,
  c.nombre,
  sum(fd.cantidad * fd.precio)
from facturadetalle fd
join facturas f on f.facturanumero = fd.facturanumero
join clientes c on c.cedula = f.cedula
group by
  fd.facturanumero
order by
  sum(fd.cantidad * fd.precio) desc
limit 1;
