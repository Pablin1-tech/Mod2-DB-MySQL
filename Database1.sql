-- Creacion de la base de datos del sistema SaludTotal
-- j
-- comentario
-- Creacion de la base de datos
create database SaludTotal;

-- confirmar la creacion de la base de datos

show databases;

use SaludTotal;
-- creacion de tablas
-- crear tabla de medicinas

create table Medicinas
(
    Id int primary key,
    Nombre VARCHAR (100),
    Tipo CHAR (3),
    Precio DECIMAL (15,2),
    Stock int,
    FechaCaducidad datetime
);

show tables;

select * from medicinas;

desc medicinas;

select * from medicinas;
insert into medicinas
values (
    1, 
    'Paracetamol', 
    'GEN',
    1.50, 12,
    '2026-01-01 00:00:00'
);

insert into medicinas
values (
    2, 
    'Acetaminofen', 
    'GEN',
    0.56, 23,
    '2027-01-01 00:00:00'
);

insert into medicinas
values (
    3, 
    'Finalin', 
    'COM',
    2.75, 43,
    '2028-01-01 00:00:00'
);

insert into medicinas
values (
    4, 
    'Losartan', 
    'GEN',
    5.95, 62,
    '2029-01-01 00:00:00'
);

insert into medicinas
values (
    5, 
    'Insulina Glargina', 
    'COM',
    43.25, 98,
    '2028-10-01 00:00:00'
);

insert into medicinas
values (
    6, 
    'Metformina', 
    'GEN',
    4.80, 59,
    '2029-08-17 00:00:00'
);

insert into medicinas
values (
    7, 
    'Levotiroxina', 
    'GEN',
    5.73, 110,
    '2028-12-12 00:00:00'
);

insert into medicinas
values (
    8, 
    'Budesonida', 
    'COM',
    22.31, 74,
    '2030-01-01 00:00:00'
);

insert into medicinas
values (
    9, 
    'Acido Valproico', 
    'GEN',
    9.10, 55,
    '2029-01-01 00:00:00'
);

insert into medicinas
values (
    10, 
    'Dolutegravir', 
    'COM',
    21.50, 96,
    '2030-01-01 00:00:00'
);

insert into medicinas
values (
    11, 
    'Tenofovir', 
    'COM',
    29.87, 84,
    '2029-01-01 00:00:00'
);

insert into medicinas
values (
    12, 
    'Emtricitabina', 
    'COM',
    34.99, 105,
    '2027-10-10 00:00:00'
);

insert into medicinas
values (
    13, 
    'Metotrexato', 
    'GEN',
    8.54, 76,
    '2029-01-01 00:00:00'
);

insert into medicinas
values (
    14, 
    'Enalapril', 
    'GEN',
    5.28, 63,
    '2030-01-01 00:00:00'
);

insert into medicinas
values (
    15, 
    'Levodopa', 
    'COM',
    12.70, 57,
    '2029-01-01 00:00:00'
);

insert into medicinas
values (
    16, 
    'Carbidopa', 
    'COM',
    19.80, 71,
    '2029-05-01 00:00:00'
);

insert into medicinas
values (
    17, 
    'Tylenol', 
    'COM',
    8.24, 61,
    '2029-05-01 00:00:00'
);

insert into medicinas
values (
    18, 
    'Panadol', 
    'COM',
    5.97, 87,
    '2030-05-01 00:00:00'
);

insert into medicinas
values (
    19, 
    'Antihistamínico', 
    'COM',
    4.80, 95,
    '2028-05-01 00:00:00'
);

insert into medicinas
values (
    20, 
    'Cozaar', 
    'COM',
    7.19, 70,
    '2029-12-01 00:00:00'
);

insert into medicinas
values (
    21, 
    'Lantus', 
    'GEN',
    29.80, 47,
    '2029-05-01 00:00:00'
);

insert into medicinas
values (
    22, 
    'Glucophage', 
    'COM',
    5.25, 100,
    '2027-01-01 00:00:00'
);

insert into medicinas
values (
    23, 
    'Synthroid', 
    'COM',
    11.20, 80,
    '2027-01-01 00:00:00'
);

insert into medicinas
values (
    24, 
    'Formoterol', 
    'GEN',
    25.40, 55,
    '2028-01-01 00:00:00'
);

insert into medicinas
values (
    25, 
    'Depakene', 
    'COM',
    11.40, 90,
    '2029-05-01 00:00:00'
);

insert into medicinas
values (
    26, 
    'TDF Generico', 
    'GEN',
    18.80, 94,
    '2028-05-01 00:00:00'
);

insert into medicinas
values (
    27, 
    'FTC generico', 
    'GEN',
    19.50, 140,
    '2029-01-01 00:00:00'
);

insert into medicinas
values (
    28, 
    'DTG generica', 
    'GEN',
    26.48, 103,
    '2028-01-01 00:00:00'
);

insert into medicinas
values (
    29, 
    'Rheumatrex', 
    'COM',
    11.23, 80,
    '2028-12-01 00:00:00'
);

insert into medicinas
values (
    30, 
    'Vasotec', 
    'COM',
    9.50, 60,
    '2030-08-01 00:00:00'
);

insert into medicinas
values (
    31, 
    'Levodopa generica', 
    'GEN',
    8.71, 110,
    '2027-01-01 00:00:00'
);

insert into medicinas
values (
    32, 
    'Carbidopa generica', 
    'GEN',
    12.65, 95,
    '2028-12-01 00:00:00'
);

alter table medicinas
MODIFY COLUMN Tipo CHAR(3) default 'GEN';
alter table medicinas
MODIFY COLUMN nombre VARCHAR(100) not null;
alter table medicinas
add constraint medicinas_tipo_val
check (
    tipo in ('GEN', 'COM')
);

insert into medicinas
values (
    33, 
    'Amoxicilina', 
    'COM',
    8.97, 69,
    '2030-12-01 00:00:00'
);
insert into medicinas
values (
    35, 
    'Rivoflavina', 
    'COM',
    8.97, 69,
    '2030-12-01 00:00:00'
);

insert into medicinas
(id, nombre, precio, stock, fechacaducidad)
values (34, 'Enterogermina',3.43,98,'2029-01-05 00:00:00');
insert into medicinas
(id, nombre, precio, stock, fechacaducidad)
values (36, 'Penicilina',5.3,88,'2030-01-05 00:00:00');
insert into medicinas
(id, nombre, tipo, precio, stock, fechacaducidad)
values (37, 'SalButamol','GEN',5.10,45,'2028-01-05 00:00:00');
select * from medicinas;
create table CLientes
(
    Cedula varchar(10) primary key,
    Nombre VARCHAR (100),
    Apellido VARCHAR (100),
    Tipo CHAR (3),
    Edad int,
    Correo VARCHAR(50)
);

select * from clientes;
insert into clientes
values (
    '1726367459', 
    'Pablo',
    'Cortez',
    'NAT',
    20,
    'andresctz16@gmail.com'
);

insert into clientes
values (
    '1710544337', 
    'Marco',
    'Cortez', 
    'JUR',
    56,
    'andremarc@yahoo.com'
);

insert into clientes
values (
    '1711932798', 
    'Marcia',
    'Hidalgo', 
    'JUR',
    51,
    'marciah@yahoo.com'
);

insert into clientes
values (
    '1352104851', 
    'Margarita',
    'Dueñaz', 
    'NAT',
    65,
    'margge@gmail.com'
);

insert into clientes
values (
    '1752879531', 
    'William',
    'Ortiz', 
    'NAT',
    72,
    'willo@outlook.com'
);

insert into clientes
values (
    '2362800765', 
    'Sara',
    'Flores', 
    'NAT',
    87,
    'sary@gmail.com'
);

insert into clientes
values (
    '5187403021', 
    'Andrés',
    'Páez', 
    'NAT',
    28,
    'andyp@google.com'
);
insert into CLientes
values (
    '1717508941',
    'Danilo',
    'Pereira',
    'NAT',
    38,
    'danip@google.com'
);
INSERT INTO Clientes
(Cedula, Nombre, Apellido, Tipo, Edad, Correo)
VALUES
('0100000001','Juan','Perez','NAT',25,'juan.perez1@mail.com'),
('0100000002','Maria','Gomez','NAT',34,'maria.gomez2@mail.com'),
('0100000003','Carlos','Rodriguez','NAT',41,'carlos.rodriguez3@mail.com'),
('0100000004','Ana','Martinez','NAT',22,'ana.martinez4@mail.com'),
('0100000005','Luis','Hernandez','NAT',37,'luis.hernandez5@mail.com'),
('0100000006','Sofia','Lopez','NAT',20,'sofia.lopez6@mail.com'),
('0100000007','Miguel','Garcia','NAT',45,'miguel.garcia7@mail.com'),
('0100000008','Valentina','Torres','NAT',18,'valentina.torres8@mail.com'),
('0100000009','Diego','Flores','NAT',26,'diego.flores9@mail.com'),
('0100000010','Camila','Rojas','NAT',24,'camila.rojas10@mail.com'),

('0100000011','Andres','Vargas','JUR',23,'andres.vargas11@mail.com'),
('0100000012','Lucia','Mendoza','NAT',22,'lucia.mendoza12@mail.com'),
('0100000013','Fernando','Castro','NAT',21,'fernando.castro13@mail.com'),
('0100000014','Daniela','Ortega','JUR',20,'daniela.ortega14@mail.com'),
('0100000015','Jorge','Ramirez','NAT',19,'jorge.ramirez15@mail.com'),
('0100000016','Paula','Navarro','NAT',18,'paula.navarro16@mail.com'),
('0100000017','Ricardo','Cabrera','JUR',26,'ricardo.cabrera17@mail.com'),
('0100000018','Elena','Paredes','NAT',24,'elena.paredes18@mail.com'),
('0100000019','Sebastian','Morales','NAT',23,'sebastian.morales19@mail.com'),
('0100000020','Natalia','Suarez','JUR',22,'natalia.suarez20@mail.com'),

('0100000021','Hugo','Reyes','NAT',21,'hugo.reyes21@mail.com'),
('0100000022','Carolina','Leon','NAT',20,'carolina.leon22@mail.com'),
('0100000023','Ivan','Molina','JUR',19,'ivan.molina23@mail.com'),
('0100000024','Gabriela','Herrera','NAT',18,'gabriela.herrera24@mail.com'),
('0100000025','Oscar','Pena','NAT',26,'oscar.pena25@mail.com'),
('0100000026','Patricia','Silva','JUR',24,'patricia.silva26@mail.com'),
('0100000027','Alberto','Cruz','NAT',23,'alberto.cruz27@mail.com'),
('0100000028','Rocio','Delgado','NAT',22,'rocio.delgado28@mail.com'),
('0100000029','Esteban','Guerrero','JUR',21,'esteban.guerrero29@mail.com'),
('0100000030','Veronica','Campos','NAT',20,'veronica.campos30@mail.com'),

('0100000031','Mauricio','Rivas','NAT',19,'mauricio.rivas31@mail.com'),
('0100000032','Lorena','Salinas','JUR',18,'lorena.salinas32@mail.com'),
('0100000033','Felipe','Aguilar','NAT',26,'felipe.aguilar33@mail.com'),
('0100000034','Monica','Espinoza','NAT',24,'monica.espinoza34@mail.com'),
('0100000035','Raul','Valdez','JUR',23,'raul.valdez35@mail.com'),
('0100000036','Isabel','Cifuentes','NAT',22,'isabel.cifuentes36@mail.com'),
('0100000037','Gonzalo','Arce','NAT',21,'gonzalo.arce37@mail.com'),
('0100000038','Adriana','Mejia','JUR',20,'adriana.mejia38@mail.com'),
('0100000039','Victor','Lara','NAT',19,'victor.lara39@mail.com'),
('0100000040','Claudia','Ibarra','NAT',18,'claudia.ibarra40@mail.com'),

('0100000041','Rodrigo','Figueroa','JUR',26,'rodrigo.figueroa41@mail.com'),
('0100000042','Marisol','Bustos','NAT',24,'marisol.bustos42@mail.com'),
('0100000043','Eduardo','Soto','NAT',23,'eduardo.soto43@mail.com'),
('0100000044','Paola','Cortes','JUR',22,'paola.cortes44@mail.com'),
('0100000045','Nelson','Paz','NAT',21,'nelson.paz45@mail.com'),
('0100000046','Juliana','Vega','NAT',20,'juliana.vega46@mail.com'),
('0100000047','Sergio','Lopez','JUR',19,'sergio.lopez47@mail.com'),
('0100000048','Daniel','Mora','NAT',18,'daniel.mora48@mail.com'),
('0100000049','Andrea','Acosta','NAT',26,'andrea.acosta49@mail.com'),
('0100000050','Tomas','Benitez','JUR',24,'tomas.benitez50@mail.com');

INSERT INTO Clientes
VALUES
('0100000051','Kevin','Almeida','NAT',27,'kevin.almeida51@mail.com'),
('0100000052','Diana','Santillan','JUR',35,'diana.santillan52@mail.com'),
('0100000053','Marco','Villacis','NAT',29,'marco.villacis53@mail.com'),
('0100000054','Fernanda','Carrillo','NAT',24,'fernanda.carrillo54@mail.com'),
('0100000055','Alex','Zambrano','JUR',41,'alex.zambrano55@mail.com'),
('0100000056','Paola','Muñoz','NAT',32,'paola.munoz56@mail.com'),
('0100000057','Cristian','Bravo','NAT',28,'cristian.bravo57@mail.com'),
('0100000058','Tatiana','Cedeño','JUR',38,'tatiana.cedeno58@mail.com'),
('0100000059','Jonathan','Chavez','NAT',26,'jonathan.chavez59@mail.com'),
('0100000060','Melissa','Pineda','NAT',23,'melissa.pineda60@mail.com'),

('0100000061','Henry','Ponce','JUR',45,'henry.ponce61@mail.com'),
('0100000062','Andrea','Rosero','NAT',31,'andrea.rosero62@mail.com'),
('0100000063','Luis','Montero','NAT',34,'luis.montero63@mail.com'),
('0100000064','Vanessa','Moya','JUR',39,'vanessa.moya64@mail.com'),
('0100000065','Oscar','Serrano','NAT',28,'oscar.serrano65@mail.com'),
('0100000066','Karla','Villamarin','NAT',25,'karla.villamarin66@mail.com'),
('0100000067','Patricio','Lema','JUR',44,'patricio.lema67@mail.com'),
('0100000068','Daniela','Cobo','NAT',22,'daniela.cobo68@mail.com'),
('0100000069','Freddy','Navas','NAT',36,'freddy.navas69@mail.com'),
('0100000070','Gloria','Peñafiel','JUR',48,'gloria.penafiel70@mail.com'),

('0100000071','Santiago','Crespo','NAT',27,'santiago.crespo71@mail.com'),
('0100000072','Carla','Lucero','NAT',24,'carla.lucero72@mail.com'),
('0100000073','Wilson','Taco','JUR',42,'wilson.taco73@mail.com'),
('0100000074','Nataly','Quintero','NAT',21,'nataly.quintero74@mail.com'),
('0100000075','Roberto','Espin','NAT',33,'roberto.espin75@mail.com'),
('0100000076','Miriam','Yanez','JUR',37,'miriam.yanez76@mail.com'),
('0100000077','Bryan','Vera','NAT',26,'bryan.vera77@mail.com'),
('0100000078','Silvia','Altamirano','NAT',40,'silvia.altamirano78@mail.com'),
('0100000079','Pedro','Saenz','JUR',46,'pedro.saenz79@mail.com'),
('0100000080','Lorena','Benavides','NAT',29,'lorena.benavides80@mail.com'),

('0100000081','Andres','Tobar','NAT',31,'andres.tobar81@mail.com'),
('0100000082','Johanna','Recalde','JUR',43,'johanna.recalde82@mail.com'),
('0100000083','Diego','Maldonado','NAT',35,'diego.maldonado83@mail.com'),
('0100000084','Rosa','Ayala','NAT',50,'rosa.ayala84@mail.com'),
('0100000085','Edison','Patiño','JUR',47,'edison.patino85@mail.com'),
('0100000086','Pamela','Sanchez','NAT',28,'pamela.sanchez86@mail.com'),
('0100000087','Jorge','Guaman','NAT',34,'jorge.guaman87@mail.com'),
('0100000088','Viviana','Orbe','JUR',41,'viviana.orbe88@mail.com'),
('0100000089','Hector','Narvaez','NAT',38,'hector.narvaez89@mail.com'),
('0100000090','Elisa','Mayorga','NAT',27,'elisa.mayorga90@mail.com'),

('0100000091','Mauricio','Roldan','JUR',49,'mauricio.roldan91@mail.com'),
('0100000092','Karen','Loor','NAT',23,'karen.loor92@mail.com'),
('0100000093','Victor','Toapanta','NAT',36,'victor.toapanta93@mail.com'),
('0100000094','Cecilia','Guerron','JUR',44,'cecilia.guerron94@mail.com'),
('0100000095','Fernando','Urbina','NAT',39,'fernando.urbina95@mail.com'),
('0100000096','Ruth','Cañar','NAT',30,'ruth.canar96@mail.com'),
('0100000097','Alvaro','Lincango','JUR',52,'alvaro.lincango97@mail.com'),
('0100000098','Maritza','Calderon','NAT',41,'maritza.calderon98@mail.com'),
('0100000099','Esteban','Pilco','NAT',28,'esteban.pilco99@mail.com'),
('0100000100','Nelly','Samaniego','JUR',46,'nelly.samaniego100@mail.com');

select * from clientes;

create table pacientes_permanentes
(
    Cedula_Cliente char (10),
    Padecimiento VARCHAR (50),
    Frecuencia CHAR (3),
    Paquete CHAR (2),
    ID_Medicamento int,
    Via_administracion VARCHAR (10),
    Cantidad int,
    Descuento DECIMAL (5,2)
);

alter table pacientes_permanentes
add CONSTRAINT clientecedula_fk
Foreign Key (cedula_cliente) 
REFERENCES clientes(cedula);

alter table pacientes_permanentes
add CONSTRAINT MedicinaId_fk
Foreign Key (ID_Medicamento)
REFERENCES medicinas(Id);
alter table pacientes_permanentes
add primary KEY (cedula_cliente, ID_Medicamento);

select * from pacientes_permanentes;

insert into pacientes_permanentes
values (
    '1752879531',
    'Hipertension Arterial',
    'MEN',
    'NO',
    4,
    'Oral',
    3,
    0.35
);

insert into pacientes_permanentes
values (
    '1352104851',
    'Diabetes',
    'MEN',
    'NO',
    5,
    'Subcutanea',
    10,
    0.49
);

insert into pacientes_permanentes
values (
    '2362800765',
    'Parkinson',
    '15D',
    'SI',
    15,
    'Oral',
    6,
    0.26
);

show tables;

select * from pacientes_permanentes;

insert into pacientes_permanentes
values (
    '5187403021',
    'Asma Cronica',
    'SEM',
    'NO',
    8,
    'Inhalada',
    7,
    0.42
);

INSERT INTO pacientes_permanentes
VALUES
('0100000051','Hipertension','MEN','NO',38,'Oral',30,0.10),
('0100000052','Diabetes','SEM','NO',39,'Subcutanea',4,0.15),
('0100000053','Asma','MEN','NO',40,'Inhalada',1,0.05),

('0100000054','Hipertension','MEN','SI',41,'Oral',30,0.20),
('0100000054','Colesterol','MEN','SI',100,'Oral',30,0.20),

('0100000055','Artritis','15D','NO',42,'Oral',15,0.00),
('0100000056','Diabetes','SEM','SI',43,'Subcutanea',4,0.30),
('0100000056','Hipertension','MEN','SI',101,'Oral',30,0.30),

('0100000057','Asma','MEN','NO',44,'Inhalada',1,0.10),
('0100000058','Epilepsia','MEN','NO',45,'Oral',30,0.25),

('0100000059','Hipertension','MEN','SI',46,'Oral',30,0.15),
('0100000059','Colesterol','MEN','SI',102,'Oral',30,0.15),

('0100000060','Diabetes','SEM','NO',47,'Subcutanea',4,0.20),
('0100000061','Artritis','MEN','NO',48,'Oral',30,0.05),

('0100000062','Asma','MEN','SI',49,'Inhalada',1,0.10),
('0100000062','Rinitis','MEN','SI',103,'Inhalada',1,0.10),

('0100000063','Hipertension','MEN','NO',50,'Oral',30,0.00),
('0100000064','Epilepsia','MEN','NO',51,'Oral',30,0.35),

('0100000065','Diabetes','SEM','SI',52,'Subcutanea',4,0.40),
('0100000065','Hipertension','MEN','SI',104,'Oral',30,0.40),

('0100000066','Colesterol','MEN','NO',53,'Oral',30,0.10),
('0100000067','Asma','MEN','NO',54,'Inhalada',1,0.05),

('0100000068','Hipertension','MEN','SI',55,'Oral',30,0.25),
('0100000068','Diabetes','SEM','SI',105,'Subcutanea',4,0.25),

('0100000069','Artritis','15D','NO',56,'Oral',15,0.00),
('0100000070','Epilepsia','MEN','NO',57,'Oral',30,0.30),

('0100000071','Asma','MEN','SI',58,'Inhalada',1,0.10),
('0100000071','Rinitis','MEN','SI',106,'Inhalada',1,0.10),

('0100000072','Hipertension','MEN','NO',59,'Oral',30,0.05),
('0100000073','Diabetes','SEM','NO',60,'Subcutanea',4,0.20),

('0100000074','Colesterol','MEN','SI',61,'Oral',30,0.15),
('0100000074','Hipertension','MEN','SI',107,'Oral',30,0.15),

('0100000075','Artritis','15D','NO',62,'Oral',15,0.00),
('0100000076','Epilepsia','MEN','NO',63,'Oral',30,0.45),

('0100000077','Asma','MEN','NO',64,'Inhalada',1,0.10),
('0100000078','Hipertension','MEN','SI',65,'Oral',30,0.20),
('0100000078','Colesterol','MEN','SI',108,'Oral',30,0.20),

('0100000079','Diabetes','SEM','NO',66,'Subcutanea',4,0.25),
('0100000080','Asma','MEN','NO',67,'Inhalada',1,0.05),

('0100000081','Epilepsia','MEN','NO',68,'Oral',30,0.30),
('0100000082','Hipertension','MEN','SI',69,'Oral',30,0.35),
('0100000082','Diabetes','SEM','SI',109,'Subcutanea',4,0.35),

('0100000083','Artritis','15D','NO',70,'Oral',15,0.00),
('0100000084','Colesterol','MEN','NO',71,'Oral',30,0.10),

('0100000085','Asma','MEN','SI',72,'Inhalada',1,0.20),
('0100000085','Rinitis','MEN','SI',110,'Inhalada',1,0.20),

('0100000086','Hipertension','MEN','NO',73,'Oral',30,0.05),
('0100000087','Diabetes','SEM','NO',74,'Subcutanea',4,0.15),

('0100000088','Epilepsia','MEN','NO',75,'Oral',30,0.40),
('0100000089','Colesterol','MEN','NO',76,'Oral',30,0.10),

('0100000090','Asma','MEN','SI',77,'Inhalada',1,0.25),
('0100000090','Hipertension','MEN','SI',111,'Oral',30,0.25),

('0100000091','Diabetes','SEM','NO',78,'Subcutanea',4,0.30),
('0100000092','Artritis','15D','NO',79,'Oral',15,0.00),

('0100000093','Hipertension','MEN','NO',80,'Oral',30,0.05),
('0100000094','Epilepsia','MEN','NO',81,'Oral',30,0.45),

('0100000095','Asma','MEN','SI',82,'Inhalada',1,0.15),
('0100000095','Rinitis','MEN','SI',112,'Inhalada',1,0.15),

('0100000096','Colesterol','MEN','NO',83,'Oral',30,0.10),
('0100000097','Diabetes','SEM','SI',84,'Subcutanea',4,0.50),
('0100000097','Hipertension','MEN','SI',113,'Oral',30,0.50),

('0100000098','Artritis','15D','NO',85,'Oral',15,0.00),
('0100000099','Asma','MEN','NO',86,'Inhalada',1,0.05),

('0100000100','Hipertension','MEN','SI',87,'Oral',30,0.20),
('0100000100','Colesterol','MEN','SI',114,'Oral',30,0.20);

select * from medicinas;
select * from pacientes_permanentes;
select count (*) from pacientes_permanentes;
create table clasificacion_medicinas 
(
    ID_medicina int,
    Alternativa int,
    primary key (ID_medicina, Alternativa),
    Foreign Key (ID_medicina) REFERENCES medicinas(id),
    Foreign Key (Alternativa) REFERENCES medicinas(id)
);
select * from clasificacion_medicinas;
insert into clasificacion_medicinas
values (
    1,
    17
);
insert into clasificacion_medicinas
values (
    2,
    18
);
insert into clasificacion_medicinas
values (
    3,
    19
);
insert into clasificacion_medicinas
values (
    4,
    20
);
insert into clasificacion_medicinas
values (
    5,
    21
);
insert into clasificacion_medicinas
values (
    6,
    22
);
insert into clasificacion_medicinas
values (
    7,
    23
);
insert into clasificacion_medicinas
values (
    8,
    24
);
insert into clasificacion_medicinas
values (
    9,
    25
);
insert into clasificacion_medicinas
values (
    10,
    26
);
insert into clasificacion_medicinas
values (
    11,
    27
);
insert into clasificacion_medicinas
values (
    12,
    28
);
insert into clasificacion_medicinas
values (
    13,
    29
);
insert into clasificacion_medicinas
values (
    14,
    30
);
insert into clasificacion_medicinas
values (
    15,
    31
);
insert into clasificacion_medicinas
values (
    16,
    32
);

select * from clasificacion_medicinas;

create table datos_empresa(
    ruc char(13) primary key,
    razonsocial varchar (100),
    direccion varchar (100),
    telefono varchar(10),
    email varchar(25)
);

insert into datos_empresa
values (
    '1712312345001',
    'Salud Total S. A.',
    'Av. 10 de Agosto S/N',
    '0991234567',
    'sanatotal@sana.com'
);

--update clientes
--set email= 'marciah@yahoo.com'
--where cedula = '1711932798';
select * from clientes;

select * from datos_empresa;

create table facturas (
  FacturaNumero char(10) primary key,
  Fecha date,
  Cedula char(10),
  Total decimal(15,2)
);

alter table facturas
add constraint facturascedula_fk
Foreign Key (Cedula) REFERENCES Clientes(Cedula);
insert into facturas
values (
    '0000000001',
    '2025-12-12',
    '1711932798',
    5.25
);
insert into facturas
values (
    '0000000002',
    '2025-12-01',
    '1710544337',
    11.20
);
create table facturadetalle(
    facturaNumero char(10),
    medicamento_id int,
    cantidad int,
    precio decimal(15,2)
);

alter table facturadetalle
add primary key (facturaNumero, medicamento_id);
alter table facturadetalle
add CONSTRAINT facturadetalle_cantidad_ck
check (cantidad > 0);
alter table facturadetalle
add CONSTRAINT facturadetalle_precio_ck
check (precio > 0);
Alter table facturadetalle
add Constraint factura_numero_fk
Foreign Key (facturaNumero) REFERENCES facturas(FacturaNumero);

select * from facturadetalle;
insert into facturadetalle
values (
    '0000000001',
    2,
    6,
    0.56
);
insert into facturadetalle
values (
    '0000000001',
    8,
    10,
    22.31
);

insert into facturadetalle
values (
    '0000000002',
    1,
    3,
    1.50
);
insert into facturadetalle
values (
    '0000000002',
    30,
    1,
    9.50
);
insert into facturadetalle
values (
    '0000000002',
    15,
    6,
    12.70
);
select * from facturadetalle;
show tables;
select * from medicinas;

create table Proveedor
(
    RUC CHAR(13),
    Nombre VARCHAR(30),
    Contacto VARCHAR(20),
    Email VARCHAR(50)
);
alter table Proveedor
add primary key (RUC);
create table Proveedor_Medicinas
(
    RUC_Proveedor CHAR(13),
    Medicina_Id int,
    Proveedor_Precio DECIMAL(15,2),
    Lote int,
    Plazo int
);
alter table Proveedor_Medicinas
add primary key (RUC_Proveedor, Medicina_Id);
alter table Proveedor_Medicinas
add CONSTRAINT proveedor_precio_ck
check (Proveedor_Precio > 0);
alter table Proveedor_Medicinas
add constraint medicamentos_fk
Foreign Key (Medicina_Id) 
REFERENCES Medicinas(Id);

alter table Proveedor_Medicinas
add constraint proveedor_ruc_fk
Foreign Key (RUC_Proveedor) REFERENCES Proveedor(RUC);

insert into Proveedor
values (
    '17000000001','BioSin','Ben Affleck','biosin@ec.mail'
);
insert into Proveedor_Medicinas
values (
    '17000000001',1,0.25,100,30
);
-- Creada tabla de proveedores

-- Atrubuto correo unico en la tabla clientes
alter table CLientes
add constraint cliente_email_uq
UNIQUE(Correo);

select correo, nombre from Clientes where cedula='0100000021';
INSERT INTO Medicinas VALUES (100,'Axentrol','COM',49.80,210,'2028-04-12 00:00:00');
INSERT INTO Medicinas VALUES (101,'Cardiaval','GEN',19.50,180,'2029-01-20 00:00:00');
INSERT INTO Medicinas VALUES (102,'Gastromed','COM',11.75,95,'2027-11-05 00:00:00');
INSERT INTO Medicinas VALUES (103,'Pulmovir','GEN',22.30,300,'2029-08-18 00:00:00');
INSERT INTO Medicinas VALUES (104,'Cutisal','COM',16.40,140,'2028-09-02 00:00:00');
INSERT INTO Medicinas VALUES (105,'Hepanox','GEN',34.90,160,'2029-03-27 00:00:00');
INSERT INTO Medicinas VALUES (106,'Renaplus','COM',27.10,130,'2027-06-14 00:00:00');
INSERT INTO Medicinas VALUES (107,'Ostecare','GEN',18.60,220,'2028-12-09 00:00:00');
INSERT INTO Medicinas VALUES (108,'Immunor','COM',41.80,175,'2029-10-01 00:00:00');
INSERT INTO Medicinas VALUES (109,'Glucamed','GEN',29.25,260,'2028-05-23 00:00:00');
INSERT INTO Medicinas VALUES (110,'Pressimed','COM',15.90,310,'2027-08-11 00:00:00');
INSERT INTO Medicinas VALUES (111,'Liporin','GEN',36.40,200,'2029-06-17 00:00:00');
INSERT INTO Medicinas VALUES (112,'Broncamed','COM',12.80,145,'2028-02-04 00:00:00');
INSERT INTO Medicinas VALUES (113,'Dolaren','GEN',9.50,400,'2027-10-29 00:00:00');
INSERT INTO Medicinas VALUES (114,'Refluxan','COM',14.20,190,'2029-12-15 00:00:00');
INSERT INTO Medicinas VALUES (115,'Colestil','GEN',31.60,210,'2028-07-08 00:00:00');
INSERT INTO Medicinas VALUES (116,'Vasotril','COM',44.75,125,'2030-01-03 00:00:00');
INSERT INTO Medicinas VALUES (117,'Nephrix','GEN',38.10,170,'2029-04-21 00:00:00');
INSERT INTO Medicinas VALUES (118,'Hematix','COM',26.90,160,'2027-05-30 00:00:00');
INSERT INTO Medicinas VALUES (119,'Pulmisan','GEN',33.40,230,'2028-11-19 00:00:00');
INSERT INTO Medicinas VALUES (120,'Digestar','COM',17.60,280,'2029-09-07 00:00:00');
INSERT INTO Medicinas VALUES (121,'Arthrex','GEN',21.30,195,'2028-01-16 00:00:00');
INSERT INTO Medicinas VALUES (122,'Calcifor','COM',8.95,500,'2027-12-02 00:00:00');
INSERT INTO Medicinas VALUES (123,'Vitamax','GEN',13.75,450,'2029-02-25 00:00:00');
INSERT INTO Medicinas VALUES (124,'Energon','COM',10.60,380,'2028-06-06 00:00:00');
INSERT INTO Medicinas VALUES (125,'Neurofen','GEN',24.80,210,'2029-07-28 00:00:00');
INSERT INTO Medicinas VALUES (126,'Cardionex','COM',46.30,150,'2030-03-10 00:00:00');
INSERT INTO Medicinas VALUES (127,'Respimed','GEN',28.40,175,'2028-10-14 00:00:00');
INSERT INTO Medicinas VALUES (128,'Dermazen','COM',19.90,260,'2027-09-01 00:00:00');
INSERT INTO Medicinas VALUES (129,'Hepanova','GEN',35.70,140,'2029-11-22 00:00:00');
INSERT INTO Medicinas VALUES (130,'Renalor','COM',22.50,155,'2028-03-18 00:00:00');
INSERT INTO Medicinas VALUES (131,'Ostegran','GEN',27.80,185,'2029-05-09 00:00:00');
INSERT INTO Medicinas VALUES (132,'Immunexia','COM',39.60,160,'2027-07-26 00:00:00');
INSERT INTO Medicinas VALUES (133,'Glucozen','GEN',32.20,240,'2028-12-30 00:00:00');
INSERT INTO Medicinas VALUES (134,'Presoval','COM',14.90,330,'2029-08-03 00:00:00');
INSERT INTO Medicinas VALUES (135,'Lipamed','GEN',37.10,190,'2028-04-19 00:00:00');
INSERT INTO Medicinas VALUES (136,'Broncoval','COM',11.40,270,'2027-06-08 00:00:00');
INSERT INTO Medicinas VALUES (137,'Dolix','GEN',7.80,600,'2029-10-12 00:00:00');
INSERT INTO Medicinas VALUES (138,'Acidrel','COM',16.20,215,'2028-01-27 00:00:00');
INSERT INTO Medicinas VALUES (139,'Colesmin','GEN',34.60,180,'2030-02-18 00:00:00');
INSERT INTO Medicinas VALUES (140,'Vasculor','COM',45.30,140,'2029-06-04 00:00:00');
INSERT INTO Medicinas VALUES (141,'Nephroval','GEN',29.90,165,'2027-11-13 00:00:00');
INSERT INTO Medicinas VALUES (142,'Hematrol','COM',23.70,200,'2028-08-22 00:00:00');
INSERT INTO Medicinas VALUES (143,'Pulmonix','GEN',31.10,175,'2029-01-09 00:00:00');
INSERT INTO Medicinas VALUES (144,'Digestal','COM',12.60,310,'2027-05-02 00:00:00');
INSERT INTO Medicinas VALUES (145,'Artimed','GEN',26.80,190,'2028-09-29 00:00:00');
INSERT INTO Medicinas VALUES (146,'Calcior','COM',9.40,480,'2029-12-05 00:00:00');
INSERT INTO Medicinas VALUES (147,'Vitacore','GEN',14.20,360,'2028-02-11 00:00:00');
INSERT INTO Medicinas VALUES (148,'Enerlif','COM',11.90,420,'2027-10-17 00:00:00');
INSERT INTO Medicinas VALUES (149,'Neuraxon','GEN',25.50,230,'2029-07-01 00:00:00');
INSERT INTO Medicinas VALUES (150,'Cardiolin','COM',47.80,135,'2030-01-26 00:00:00');
INSERT INTO Medicinas VALUES (151,'Respironex','GEN',30.60,185,'2028-06-15 00:00:00');
INSERT INTO Medicinas VALUES (152,'Dermaliv','COM',18.30,210,'2027-12-28 00:00:00');
INSERT INTO Medicinas VALUES (153,'Hepaliv','GEN',33.90,160,'2029-09-14 00:00:00');
INSERT INTO Medicinas VALUES (154,'Renacort','COM',21.40,175,'2028-03-06 00:00:00');
INSERT INTO Medicinas VALUES (155,'Ostevin','GEN',28.70,190,'2029-05-30 00:00:00');
INSERT INTO Medicinas VALUES (156,'Immunova','COM',40.50,145,'2027-08-19 00:00:00');
INSERT INTO Medicinas VALUES (157,'Glucorinex','GEN',34.10,260,'2028-11-24 00:00:00');
INSERT INTO Medicinas VALUES (158,'Presocor','COM',16.80,320,'2029-02-08 00:00:00');
INSERT INTO Medicinas VALUES (159,'Lipoclean','GEN',38.40,170,'2030-03-19 00:00:00');
INSERT INTO Medicinas VALUES (160,'Broncosal','COM',13.20,290,'2028-07-07 00:00:00');
INSERT INTO Medicinas VALUES (161,'Dolgen','GEN',8.60,510,'2027-09-25 00:00:00');

select id, nombre from Medicinas where nombre like 'f%';
select cedula, nombre from Clientes where nombre like 'Juan%';

INSERT INTO clasificacion_medicinas VALUES (38,100);
INSERT INTO clasificacion_medicinas VALUES (39,101);
INSERT INTO clasificacion_medicinas VALUES (40,102);
INSERT INTO clasificacion_medicinas VALUES (41,103);
INSERT INTO clasificacion_medicinas VALUES (42,104);
INSERT INTO clasificacion_medicinas VALUES (43,105);
INSERT INTO clasificacion_medicinas VALUES (44,106);
INSERT INTO clasificacion_medicinas VALUES (45,107);
INSERT INTO clasificacion_medicinas VALUES (46,108);
INSERT INTO clasificacion_medicinas VALUES (47,109);
INSERT INTO clasificacion_medicinas VALUES (48,110);
INSERT INTO clasificacion_medicinas VALUES (49,111);
INSERT INTO clasificacion_medicinas VALUES (50,112);
INSERT INTO clasificacion_medicinas VALUES (51,113);
INSERT INTO clasificacion_medicinas VALUES (52,114);
INSERT INTO clasificacion_medicinas VALUES (53,115);
INSERT INTO clasificacion_medicinas VALUES (54,116);
INSERT INTO clasificacion_medicinas VALUES (55,117);
INSERT INTO clasificacion_medicinas VALUES (56,118);
INSERT INTO clasificacion_medicinas VALUES (57,119);
INSERT INTO clasificacion_medicinas VALUES (58,120);
INSERT INTO clasificacion_medicinas VALUES (59,121);
INSERT INTO clasificacion_medicinas VALUES (60,122);
INSERT INTO clasificacion_medicinas VALUES (61,123);
INSERT INTO clasificacion_medicinas VALUES (62,124);
INSERT INTO clasificacion_medicinas VALUES (63,125);
INSERT INTO clasificacion_medicinas VALUES (64,126);
INSERT INTO clasificacion_medicinas VALUES (65,127);
INSERT INTO clasificacion_medicinas VALUES (66,128);
INSERT INTO clasificacion_medicinas VALUES (67,129);
INSERT INTO clasificacion_medicinas VALUES (68,130);
INSERT INTO clasificacion_medicinas VALUES (69,131);
INSERT INTO clasificacion_medicinas VALUES (70,132);
INSERT INTO clasificacion_medicinas VALUES (71,133);
INSERT INTO clasificacion_medicinas VALUES (72,134);
INSERT INTO clasificacion_medicinas VALUES (73,135);
INSERT INTO clasificacion_medicinas VALUES (74,136);
INSERT INTO clasificacion_medicinas VALUES (75,137);
INSERT INTO clasificacion_medicinas VALUES (76,138);
INSERT INTO clasificacion_medicinas VALUES (77,139);
INSERT INTO clasificacion_medicinas VALUES (78,140);
INSERT INTO clasificacion_medicinas VALUES (79,141);
INSERT INTO clasificacion_medicinas VALUES (80,142);
INSERT INTO clasificacion_medicinas VALUES (81,143);
INSERT INTO clasificacion_medicinas VALUES (82,144);
INSERT INTO clasificacion_medicinas VALUES (83,145);
INSERT INTO clasificacion_medicinas VALUES (84,146);
INSERT INTO clasificacion_medicinas VALUES (85,147);
INSERT INTO clasificacion_medicinas VALUES (86,148);
INSERT INTO clasificacion_medicinas VALUES (87,149);
INSERT INTO clasificacion_medicinas VALUES (88,150);
INSERT INTO clasificacion_medicinas VALUES (89,151);
INSERT INTO clasificacion_medicinas VALUES (90,152);
INSERT INTO clasificacion_medicinas VALUES (91,153);
INSERT INTO clasificacion_medicinas VALUES (92,154);
INSERT INTO clasificacion_medicinas VALUES (93,155);
INSERT INTO clasificacion_medicinas VALUES (94,156);
INSERT INTO clasificacion_medicinas VALUES (95,157);
INSERT INTO clasificacion_medicinas VALUES (96,158);
INSERT INTO clasificacion_medicinas VALUES (97,159);
INSERT INTO clasificacion_medicinas VALUES (98,160);
INSERT INTO clasificacion_medicinas VALUES (99,161);

select * from clasificacion_medicinas;
select cedula, nombre from Clientes where tipo like 'JUR';
select * from clientes;
select cedula, nombre from clientes where tipo like 'JUR' AND correo like '%mail%';
select id, nombre from medicinas where precio like '%5%';
select id, stock from medicinas where nombre like '%A%' AND tipo like 'GEN';

