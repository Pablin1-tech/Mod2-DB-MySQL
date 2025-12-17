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