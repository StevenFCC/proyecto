create database productosVentas;
use productosVentas;

create table electrodomesticos
(id int not null primary key,
artefactos_id int not null,
carateristicas_id int not null,
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

insert into artefacto values (1, 'Cocina', 'marca1', 'modelo1', '$', '0');
insert into artefacto values (2, 'Aire Acondicionado', 'marca1', 'modelo1', '$', '0');
insert into artefacto values (3, 'Ventiladores', 'marca1', 'modelo1', '$', '0');
insert into artefacto values (4, 'Estufa', 'marca1', 'modelo1', '$', '0');

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
insert into caracteritica values (11, 'Medidas de unidad interior', 'cm');