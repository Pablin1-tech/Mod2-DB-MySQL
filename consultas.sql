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

-- Caso: listado de pacientes 