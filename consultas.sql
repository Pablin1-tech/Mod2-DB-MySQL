select * from clasificacion_medicinas;
select cedula, nombre from Clientes where tipo like 'JUR';
select * from clientes;
select cedula, nombre from clientes where tipo like 'JUR' AND correo like '%mail%';
select id, nombre from medicinas where precio like '%5%';
select id, stock from medicinas where nombre like '%A%' AND tipo like 'GEN';
select id, nombre from Medicinas where nombre like 'f%';
select cedula, nombre from Clientes where nombre like 'Juan%';
select nombre from clientes where cedula='0100000020';