create database productosVentas;
use productosVentas;

create table electrodomesticos
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table televisores
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table notebook
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table smartphone
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table artefacto
(id int not null primary key,
nombre varchar(15) not null,
marca varchar(15) not null,
modelo varchar(20) not null,
signo_peso varchar(1) not null,
precio int not null);

/*Electrodomesticos:*/
insert into artefacto values (1, 'Cocina', 'mar', 'mod', '$', '0');
insert into artefacto values (2, 'Aire Acondicionado', 'mar', 'mod', '$', '0');
insert into artefacto values (3, 'Ventiladores', 'mar', 'mod', '$', '0');
insert into artefacto values (4, 'Estufa', 'mar', 'mod', '$', '0');
insert into artefacto values (5, 'Cocina', 'mar', 'mod', '$', '0');

/*Televisores:*/
insert into artefacto values (6, 'TV', 'mar', 'mod', '$', '0');

/*Notebook*/
insert into artefacto values (7, 'Notebook', 'mar', 'mod', '$', '0');

/*Smartphone*/
insert into artefacto values (8, 'Smartphone', 'mar', 'mod', '$', '0');

create table caracteristica
(id int not null primary key,
nombre varchar(30) not null,
unidad_de_medida varchar(20));

/*Caracteristicas Generales:*/
insert into caracteristica values (1, 'Consumo Energetico', 'Watts');
insert into caracteristica values (2, 'Eficiencia Enrgetica', null);
insert into caracteristica values (3, 'Medidas', 'cm');
insert into caracteristica values (4, 'Descripcion', null);

/*Caracteristicas de Cocinas:*/
insert into caracteristica values (5, 'Cantidad de hornallas', null);

/*Caracteristicas de Aires Acondicionados:*/
insert into caracteristica values (6, 'Frio', null);
insert into caracteristica values (7, 'Calor', null);
insert into caracteristica values (8, 'Tipo de Aire', null);
insert into caracteristica values (9, 'Consumo Energetico en Frio', null);
insert into caracteristica values (10, 'Consumo Energetico en Calor', null);
insert into caracteritica values (11, 'Medidas de unidad exterior', 'cm');
insert into caracteritica values (12, 'Medidas de unidad interior', 'cm');

/*Caracteristicas de Televisores:*/
insert into caracteritica values (13, 'Resolucion', null);
insert into caracteritica values (14, 'Pulgadas de Pantalla', '´');
insert into caracteritica values (15, 'SmartTV', null);
insert into caracteritica values (16, 'Parlantes Sourround', null);

/*Caracteristicas de Notebook:*/
insert into caracteritica values (17, 'CPU', null);
insert into caracteritica values (18, 'Modelo del Procesador', null);
insert into caracteritica values (19, 'GPU', null);
insert into caracteritica values (20, 'RAM', null);
insert into caracteritica values (21, 'Tipo de RAM', null);
insert into caracteritica values (22, 'Tipo de Disco', null);
insert into caracteritica values (23, 'Capacidad de Disco', null);
insert into caracteritica values (24, 'Tamaño de Pantalla', '´');
insert into caracteritica values (25, 'Resolucion de Pantalla', null);
insert into caracteritica values (26, 'Cantidad de Puertos USB', null);
insert into caracteritica values (27, 'Puertos USB 2.0', null);
insert into caracteritica values (28, 'Puertos USB 3.0', null);
insert into caracteritica values (29, 'Unidad Lectora', null);
insert into caracteritica values (30, 'Capacidad de Bateria', 'mAmp');

/*Caracteristica de Smartphone:*/
insert into caracteritica values (31, 'Sistema Operativo', null);
insert into caracteritica values (32, 'Procesador', null);
insert into caracteritica values (33, 'Tamaño de Pantalla', '´');
insert into caracteritica values (34, 'Tipo de Pantalla', null);
insert into caracteritica values (35, 'Resolucion de Pantalla', null);
insert into caracteritica values (36, 'RAM', null);
insert into caracteritica values (37, 'Memoria Interna', null);
insert into caracteritica values (38, 'Camara', 'PX');
insert into caracteritica values (39, 'Posee Flash', null);
insert into caracteritica values (40, 'Posee Camara Frontal', null);
insert into caracteritica values (41, 'Camara Frontal', 'PX');
insert into caracteritica values (42, 'Capacidad de Bateria', 'mAmp');