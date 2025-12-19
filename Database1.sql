-- Creacion de la base de datos del sistema SaludTotal
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
alter table medicinas
MODIFY COLUMN Tipo CHAR(3) default 'GEN';
alter table medicinas
MODIFY COLUMN nombre VARCHAR(100) not null;
alter table medicinas
add constraint medicinas_tipo_val
check (
    tipo in ('GEN', 'COM')
);
INSERT INTO MEDICINAS
VALUES
(1,'Paracetamol','GEN',0.50,500,'2026-02-15 00:00:00'),
(2,'Ibuprofeno','GEN',0.65,420,'2026-03-10 00:00:00'),
(3,'Amoxicilina','GEN',1.20,300,'2026-04-05 00:00:00'),
(4,'Azitromicina','GEN',2.50,200,'2026-05-18 00:00:00'),
(5,'Metformina','GEN',0.90,600,'2026-06-22 00:00:00'),
(6,'Losartan','GEN',1.10,350,'2026-07-30 00:00:00'),
(7,'Enalapril','GEN',0.85,400,'2026-08-12 00:00:00'),
(8,'Atorvastatina','GEN',1.75,250,'2026-09-25 00:00:00'),
(9,'Omeprazol','GEN',0.95,500,'2026-10-08 00:00:00'),
(10,'Aspirina','GEN',0.45,700,'2026-11-19 00:00:00'),

(11,'Ciprofloxacino','GEN',1.90,220,'2027-01-15 00:00:00'),
(12,'Clorfenamina','GEN',0.60,450,'2027-02-18 00:00:00'),
(13,'Dexametasona','GEN',0.80,380,'2027-03-22 00:00:00'),
(14,'Diclofenaco','GEN',0.70,520,'2027-04-27 00:00:00'),
(15,'Ranitidina','GEN',0.88,410,'2027-05-30 00:00:00'),
(16,'Salbutamol','GEN',1.30,260,'2027-06-12 00:00:00'),
(17,'Loratadina','GEN',0.75,480,'2027-07-18 00:00:00'),
(18,'Cetirizina','GEN',0.82,460,'2027-08-24 00:00:00'),
(19,'Insulina','GEN',5.50,150,'2027-09-29 00:00:00'),
(20,'Warfarina','GEN',1.95,180,'2027-10-15 00:00:00'),

(21,'Levotiroxina','GEN',0.68,500,'2027-11-20 00:00:00'),
(22,'Prednisona','GEN',0.72,390,'2027-12-10 00:00:00'),
(23,'Hidroclorotiazida','GEN',0.55,420,'2028-01-18 00:00:00'),
(24,'Furosemida','GEN',0.60,410,'2028-02-25 00:00:00'),
(25,'Clopidogrel','GEN',1.85,230,'2028-03-30 00:00:00'),
(26,'Amlodipino','GEN',0.95,360,'2028-04-12 00:00:00'),
(27,'Naproxeno','GEN',1.05,310,'2028-05-19 00:00:00'),
(28,'Ketorolaco','GEN',1.40,260,'2028-06-23 00:00:00'),
(29,'Tramadol','GEN',1.60,240,'2028-07-28 00:00:00'),
(30,'Metronidazol','GEN',0.78,430,'2028-08-30 00:00:00'),

(31,'Fluconazol','GEN',1.50,270,'2028-09-15 00:00:00'),
(32,'Aciclovir','GEN',1.35,290,'2028-10-22 00:00:00'),
(33,'Clotrimazol','GEN',0.92,340,'2028-11-28 00:00:00'),
(34,'Bromhexina','GEN',0.65,410,'2029-01-12 00:00:00'),
(35,'Ambroxol','GEN',0.70,400,'2029-02-20 00:00:00'),
(36,'Fenitoina','GEN',1.25,210,'2029-03-27 00:00:00'),
(37,'Carbamazepina','GEN',1.30,220,'2029-04-30 00:00:00'),
(38,'Valproato','GEN',1.45,200,'2029-05-18 00:00:00'),
(39,'Sertralina','GEN',1.90,190,'2029-06-24 00:00:00'),
(40,'Fluoxetina','GEN',1.80,210,'2029-07-29 00:00:00'),

(41,'Haloperidol','GEN',1.10,260,'2029-08-15 00:00:00'),
(42,'Risperidona','GEN',2.20,170,'2029-09-21 00:00:00'),
(43,'Quetiapina','GEN',2.50,160,'2029-10-27 00:00:00'),
(44,'Diazepam','GEN',0.98,320,'2029-11-30 00:00:00'),
(45,'Clonazepam','GEN',1.15,300,'2030-01-14 00:00:00'),
(46,'Midazolam','GEN',1.70,240,'2030-02-18 00:00:00'),
(47,'Meloxicam','GEN',1.10,310,'2030-03-22 00:00:00'),
(48,'Celecoxib','GEN',2.60,180,'2030-04-25 00:00:00'),
(49,'Sulfasalazina','GEN',1.35,230,'2030-05-28 00:00:00'),
(50,'Mesalazina','GEN',2.10,190,'2030-06-30 00:00:00'),

(51,'Amiodarona','GEN',2.40,170,'2030-07-15 00:00:00'),
(52,'Digoxina','GEN',1.90,200,'2030-08-18 00:00:00'),
(53,'Propranolol','GEN',0.88,350,'2030-09-22 00:00:00'),
(54,'Bisoprolol','GEN',1.15,280,'2030-10-25 00:00:00'),
(55,'Carvedilol','GEN',1.30,260,'2030-11-28 00:00:00'),
(56,'Isosorbide','GEN',1.45,240,'2031-01-10 00:00:00'),
(57,'Nitroglicerina','GEN',1.80,210,'2031-02-14 00:00:00'),
(58,'Heparina','GEN',3.50,160,'2031-03-18 00:00:00'),
(59,'Enoxaparina','GEN',4.20,140,'2031-04-22 00:00:00'),
(60,'Vitamina C','GEN',0.40,600,'2031-05-25 00:00:00'),

(61,'Vitamina D','GEN',0.55,580,'2031-06-28 00:00:00'),
(62,'Ácido Fólico','GEN',0.35,650,'2031-07-30 00:00:00'),
(63,'Hierro','GEN',0.50,520,'2031-08-15 00:00:00'),
(64,'Zinc','GEN',0.60,480,'2031-09-18 00:00:00'),
(65,'Magnesio','GEN',0.75,450,'2031-10-20 00:00:00'),
(66,'Calcio','GEN',0.70,500,'2031-11-22 00:00:00'),
(67,'Albendazol','GEN',1.10,300,'2032-01-10 00:00:00'),
(68,'Ivermectina','GEN',1.40,260,'2032-02-15 00:00:00'),
(69,'Nitazoxanida','GEN',1.80,240,'2032-03-20 00:00:00'),
(70,'Loperamida','GEN',0.65,420,'2032-04-25 00:00:00'),

(71,'Butilhioscina','GEN',0.85,380,'2032-05-30 00:00:00'),
(72,'Simeticona','GEN',0.55,450,'2032-06-18 00:00:00'),
(73,'Domperidona','GEN',0.95,330,'2032-07-22 00:00:00'),
(74,'Ondansetron','GEN',2.20,210,'2032-08-26 00:00:00'),
(75,'Dimedrol','GEN',0.90,360,'2032-09-30 00:00:00'),

(76,'Tylenol','COM',1.20,400,'2026-02-15 00:00:00'),
(77,'Advil','COM',1.50,350,'2026-03-10 00:00:00'),
(78,'Amoxil','COM',2.80,220,'2026-04-05 00:00:00'),
(79,'Zithromax','COM',4.20,160,'2026-05-18 00:00:00'),
(80,'Glucophage','COM',2.60,300,'2026-06-22 00:00:00'),
(81,'Cozaar','COM',2.90,240,'2026-07-30 00:00:00'),
(82,'Renitec','COM',2.50,260,'2026-08-12 00:00:00'),
(83,'Lipitor','COM',3.80,190,'2026-09-25 00:00:00'),
(84,'Prilosec','COM',2.40,300,'2026-10-08 00:00:00'),
(85,'Bayer Aspirina','COM',1.10,500,'2026-11-19 00:00:00'),

(86,'Cipro','COM',3.60,180,'2027-01-15 00:00:00'),
(87,'Claritin','COM',2.30,300,'2027-07-18 00:00:00'),
(88,'Zyrtec','COM',2.40,290,'2027-08-24 00:00:00'),
(89,'Humulin','COM',12.00,120,'2027-09-29 00:00:00'),
(90,'Coumadin','COM',3.10,150,'2027-10-15 00:00:00'),

(91,'Synthroid','COM',1.80,280,'2027-11-20 00:00:00'),
(92,'Deltasone','COM',1.60,260,'2027-12-10 00:00:00'),
(93,'Esidrex','COM',1.40,300,'2028-01-18 00:00:00'),
(94,'Lasix','COM',1.50,290,'2028-02-25 00:00:00'),
(95,'Plavix','COM',3.90,200,'2028-03-30 00:00:00'),

(96,'Norvasc','COM',2.20,260,'2028-04-12 00:00:00'),
(97,'Aleve','COM',2.10,240,'2028-05-19 00:00:00'),
(98,'Toradol','COM',2.80,210,'2028-06-23 00:00:00'),
(99,'Ultram','COM',3.20,200,'2028-07-28 00:00:00'),
(100,'Flagyl','COM',1.90,300,'2028-08-30 00:00:00'),

(101,'Diflucan','COM',3.40,220,'2028-09-15 00:00:00'),
(102,'Zovirax','COM',3.10,240,'2028-10-22 00:00:00'),
(103,'Canesten','COM',2.20,260,'2028-11-28 00:00:00'),
(104,'Bisolvon','COM',1.80,300,'2029-01-12 00:00:00'),
(105,'Mucosolvan','COM',1.90,290,'2029-02-20 00:00:00'),

(106,'Dilantin','COM',2.70,180,'2029-03-27 00:00:00'),
(107,'Tegretol','COM',2.90,170,'2029-04-30 00:00:00'),
(108,'Depakene','COM',3.10,160,'2029-05-18 00:00:00'),
(109,'Zoloft','COM',3.80,150,'2029-06-24 00:00:00'),
(110,'Prozac','COM',3.60,160,'2029-07-29 00:00:00'),

(111,'Haldol','COM',2.40,200,'2029-08-15 00:00:00'),
(112,'Risperdal','COM',3.90,140,'2029-09-21 00:00:00'),
(113,'Seroquel','COM',4.50,130,'2029-10-27 00:00:00'),
(114,'Valium','COM',2.60,220,'2029-11-30 00:00:00'),
(115,'Rivotril','COM',2.90,210,'2030-01-14 00:00:00'),

(116,'Versed','COM',3.20,190,'2030-02-18 00:00:00'),
(117,'Mobic','COM',2.80,230,'2030-03-22 00:00:00'),
(118,'Celebrex','COM',4.10,160,'2030-04-25 00:00:00'),
(119,'Azulfidine','COM',3.30,180,'2030-05-28 00:00:00'),
(120,'Pentasa','COM',4.20,150,'2030-06-30 00:00:00'),

(121,'Cordarone','COM',4.00,140,'2030-07-15 00:00:00'),
(122,'Lanoxin','COM',2.80,170,'2030-08-18 00:00:00'),
(123,'Inderal','COM',1.90,260,'2030-09-22 00:00:00'),
(124,'Zebeta','COM',2.10,240,'2030-10-25 00:00:00'),
(125,'Coreg','COM',2.30,230,'2030-11-28 00:00:00'),

(126,'Imdur','COM',2.50,210,'2031-01-10 00:00:00'),
(127,'Nitrostat','COM',2.90,200,'2031-02-14 00:00:00'),
(128,'Clexane','COM',6.80,120,'2031-03-18 00:00:00'),
(129,'Lovenox','COM',7.20,110,'2031-04-22 00:00:00'),
(130,'Redoxon','COM',1.10,450,'2031-05-25 00:00:00'),

(131,'Calcigen','COM',1.30,420,'2031-06-28 00:00:00'),
(132,'Fefol','COM',1.40,380,'2031-07-30 00:00:00'),
(133,'Zentel','COM',2.20,260,'2032-01-10 00:00:00'),
(134,'Stromectol','COM',2.80,240,'2032-02-15 00:00:00'),
(135,'Daxon','COM',3.10,220,'2032-03-20 00:00:00'),

(136,'Imodium','COM',1.80,300,'2032-04-25 00:00:00'),
(137,'Buscapina','COM',1.60,320,'2032-05-30 00:00:00'),
(138,'Aero-OM','COM',1.40,340,'2032-06-18 00:00:00'),
(139,'Motilium','COM',2.30,260,'2032-07-22 00:00:00'),
(140,'Zofran','COM',4.00,190,'2032-08-26 00:00:00'),

(141,'Benadryl','COM',2.20,280,'2032-09-30 00:00:00'),
(142,'Calcimax','COM',1.50,400,'2032-10-15 00:00:00'),
(143,'Supradyn','COM',2.80,360,'2032-11-20 00:00:00'),
(144,'Neurobion','COM',2.40,380,'2032-12-18 00:00:00'),
(145,'Optamox','COM',2.60,240,'2033-01-22 00:00:00'),

(146,'Broncho-Vaxom','COM',3.90,180,'2033-02-25 00:00:00'),
(147,'Tantum Verde','COM',2.70,210,'2033-03-28 00:00:00'),
(148,'Voltaren Gel','COM',2.50,260,'2033-04-30 00:00:00'),
(149,'Gelocatil','COM',1.90,300,'2033-05-30 00:00:00'),
(150,'Panadol','COM',1.80,320,'2033-06-30 00:00:00');


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
INSERT INTO Pacientes_permanentes
VALUES
('0100000001','Hipertension','MEN','SI',6,'ORAL',30,0.20),
('0100000001','Colesterol','MEN','SI',8,'ORAL',30,0.15),
('0100000001','Gastritis','15D','SI',9,'ORAL',20,0.10),

('0100000005','Diabetes','MEN','SI',5,'ORAL',60,0.25),
('0100000005','Hipertension','MEN','SI',26,'ORAL',30,0.20),
('0100000005','Dolor','15D','SI',14,'ORAL',20,0.10),

('0100000010','Asma','SEM','SI',16,'INHALADA',1,0.30),
('0100000010','Alergia','MEN','SI',17,'ORAL',30,0.15),
('0100000010','Gastritis','15D','SI',9,'ORAL',20,0.10),

('0100000023','Epilepsia','MEN','SI',37,'ORAL',60,0.35),
('0100000023','Ansiedad','MEN','SI',45,'ORAL',30,0.20),
('0100000023','Dolor','15D','SI',27,'ORAL',20,0.10),

('0100000034','Depresion','MEN','SI',40,'ORAL',30,0.30),
('0100000034','Insomnio','MEN','SI',44,'ORAL',30,0.20),
('0100000034','Ansiedad','15D','SI',39,'ORAL',30,0.15),

('0100000049','Artritis','MEN','SI',47,'ORAL',30,0.25),
('0100000049','Dolor','15D','SI',29,'ORAL',20,0.10),
('0100000049','Inflamacion','MEN','SI',48,'ORAL',30,0.20),

('0100000062','Hipotiroidismo','MEN','SI',21,'ORAL',30,0.30),
('0100000062','Colesterol','MEN','SI',8,'ORAL',30,0.20),
('0100000062','Gastritis','15D','SI',9,'ORAL',20,0.10),

('0100000078','Anemia','MEN','SI',63,'ORAL',30,0.25),
('0100000078','Deficiencia Vitamina D','MEN','SI',61,'ORAL',30,0.20),
('0100000078','Dolor','15D','SI',1,'ORAL',20,0.10),

('0100000017','Hipertension','MEN','SI',6,'ORAL',30,0.20),
('0100000017','Dolor','15D','SI',10,'ORAL',20,0.10),

('0100000028','Alergia','MEN','SI',18,'ORAL',30,0.15),
('0100000028','Asma','SEM','SI',16,'INHALADA',1,0.25),

('0100000039','Gastritis','15D','SI',9,'ORAL',20,0.10),
('0100000039','Dolor','15D','SI',27,'ORAL',20,0.10),

('0100000056','Depresion','MEN','SI',39,'ORAL',30,0.30),
('0100000056','Ansiedad','MEN','SI',45,'ORAL',30,0.20),

('0100000069','Infeccion','15D','SI',3,'ORAL',21,0.20),
('0100000069','Dolor','15D','SI',14,'ORAL',20,0.10),

('0100000084','Artritis','MEN','SI',47,'ORAL',30,0.25),
('0100000084','Inflamacion','MEN','SI',48,'ORAL',30,0.20),

('0100000095','Diabetes','MEN','SI',5,'ORAL',60,0.30),
('0100000095','Hipertension','MEN','SI',26,'ORAL',30,0.20),

('0100000003','Infeccion','15D','NO',4,'ORAL',6,0.15),
('0100000008','Alergia','MEN','NO',17,'ORAL',30,0.10),
('0100000012','Gastritis','15D','NO',9,'ORAL',20,0.10),
('0100000018','Dolor','15D','NO',1,'ORAL',20,0.05),
('0100000025','Infeccion','15D','NO',11,'ORAL',14,0.20),
('0100000030','Alergia','MEN','NO',18,'ORAL',30,0.10),
('0100000036','Hipertension','MEN','NO',7,'ORAL',30,0.20),
('0100000042','Dolor','15D','NO',27,'ORAL',20,0.10),
('0100000046','Asma','SEM','NO',16,'INHALADA',1,0.25),
('0100000051','Colesterol','MEN','NO',8,'ORAL',30,0.20),
('0100000059','Gastritis','15D','NO',9,'ORAL',20,0.10),
('0100000066','Anemia','MEN','NO',63,'ORAL',30,0.25),
('0100000072','Dolor','15D','NO',10,'ORAL',20,0.05),
('0100000081','Hipertension','MEN','NO',26,'ORAL',30,0.20),
('0100000090','Alergia','MEN','NO',17,'ORAL',30,0.10);


select * from medicinas;
select * from pacientes_permanentes;
select count (*) from pacientes_permanentes;

create table clasificacion_medicinas 
(
    Medicina_GEN int,
    Medicina_COM int,
    primary key (Medicina_GEN, Medicina_COM),
    Foreign Key (Medicina_GEN) REFERENCES medicinas(id),
    Foreign Key (Medicina_COM) REFERENCES medicinas(id)
);
select * from clasificacion_medicinas;

INSERT INTO Clasificacion_medicinas
VALUES
(1,76),
(2,77),
(3,78),
(4,79),
(5,80),
(6,81),
(7,82),
(8,83),
(9,84),
(10,85),
(11,86),
(12,87),
(13,88),
(14,89),
(15,90),
(16,91),
(17,92),
(18,93),
(19,94),
(20,95),
(21,96),
(22,97),
(23,98),
(24,99),
(25,100),
(26,101),
(27,102),
(28,103),
(29,104),
(30,105),
(31,106),
(32,107),
(33,108),
(34,109),
(35,110),
(36,111),
(37,112),
(38,113),
(39,114),
(40,115),
(41,116),
(42,117),
(43,118),
(44,119),
(45,120),
(46,121),
(47,122),
(48,123),
(49,124),
(50,125),
(51,126),
(52,127),
(53,128),
(54,129),
(55,130),
(56,131),
(57,132),
(58,133),
(59,134),
(60,135),
(61,136),
(62,137),
(63,138),
(64,139),
(65,140),
(66,141),
(67,142),
(68,143),
(69,144),
(70,145),
(71,146),
(72,147),
(73,148),
(74,149),
(75,150);


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
select id, nombre from Medicinas where nombre like 'f%';
select cedula, nombre from Clientes where nombre like 'Juan%';
