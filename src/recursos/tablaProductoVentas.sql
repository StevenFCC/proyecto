create database productosVentas;
use productosVentas;

create table electrodomesticos
(id int not null primary key,
artefacto_id int not null,
caracteristica_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefactos(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristicas(id));

create table televisores
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table notebooks
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table smartphones
(id int not null primary key,
artefactos_id int not null,
caracteristicas_id int not null,
descripcion_caracteristica varchar(2000) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

create table artefactos
(id int not null primary key,
nombre varchar(15) not null,
marca varchar(15) not null,
modelo varchar(20) not null,
precio int not null);

drop table electrodomesticos;
drop table televisores;
drop table notebooks;
drop table smartphones;
drop table artefactos;
drop table caracteristicas;

/*Artefactos*/
/*insert into artefactos values (id, 'Tipo de Artefacto', 'Marca', 'Modelo', precio);*/

/*Electrodomesticos:*/
insert into artefactos values (1, 'Cocina', 'Whirlpool', 'WFX56EGDNA', 17599);
insert into artefactos values (2, 'Cocina', 'Whirlpool', 'WF560XT', 20999);
insert into artefactos values (3, 'Cocina', 'Whirlpool', 'WFX56DX', 12499);
insert into artefactos values (4, 'Cocina', 'Patrick', 'CPF8251MVS', 7999);
insert into artefactos values (5, 'Cocina', 'Patrick', 'CPF2251BVS', 7999);
insert into artefactos values (6, 'Cocina', 'Patrick', 'CPF9651MVS', 8599);
insert into artefactos values (7, 'Cocina', 'Domec', 'CTOBAV', 7880);
insert into artefactos values (8, 'Cocina', 'Domec', 'CXUPV', 8499);
insert into artefactos values (9, 'Cocina', 'Domec', 'CDXULEAV', 11499);
insert into artefactos values (10, 'Cocina', 'Domec', 'CBUPV', 7499);
    
insert into artefactos values (11, 'Aire Acondicionado', 'Samsung', 'AR12KSFHCWK', 16499);
insert into artefactos values (12, 'Aire Acondicionado', 'Samsung', 'AR18KSFHCWK', 22799);
insert into artefactos values (13, 'Aire Acondicionado', 'LG', 'US-W246CSG4', 25999);
insert into artefactos values (14, 'Aire Acondicionado', 'LG', 'US-W126BRG4', 19550);
insert into artefactos values (15, 'Aire Acondicionado', 'LG', 'US-W246CRG4', 29999);
insert into artefactos values (16, 'Aire Acondicionado', 'BGH', 'BC23FN', 10999);
insert into artefactos values (17, 'Aire Acondicionado', 'BGH', 'BC30FN', 11999);
insert into artefactos values (18, 'Aire Acondicionado', 'Sanyo', 'SA916ARN', 8899);
    
insert into artefactos values (19, 'Ventiladores', 'Protalia', 'V18P', 899);
insert into artefactos values (20, 'Ventiladores', 'Sansei', 'VPS1030', 799);
    
    

/*Televisores:*/
insert into artefactos values (21, 'TV', 'Samsung', 'UN32J4000AGCTC', 5999);
insert into artefactos values (22, 'TV', 'Samsung', 'UN40J5300AGCDF', 11999);
insert into artefactos values (23, 'TV', 'Samsung', 'UN50J5300AGCDF', 15999);
insert into artefactos values (24, 'TV', 'LG', '43UH6500', 13999);
insert into artefactos values (25, 'TV', 'LG', '32LH575B', 7999);
insert into artefactos values (26, 'TV', 'LG', '65UG8700.AWG', 49999);
insert into artefactos values (27, 'TV', 'LG', '49LH5700', 15999);
    
/*Notebook*/
insert into artefactos values (28, 'Notebook', 'ASUS', 'X451UA-GO835T', 13999);
insert into artefactos values (29, 'Notebook', 'ASUS', 'X555LD-XX027H', 15699);
insert into artefactos values (30, 'Notebook', 'ASUS', 'X451UA-GO835T', 13999);
insert into artefactos values (31, 'Notebook', 'HP', '15-AY029LA', 15999);
insert into artefactos values (32, 'Notebook', 'HP', '14-AM092LA', 12999);
insert into artefactos values (33, 'Notebook', 'HP', '15-AY013LA', 17999);
insert into artefactos values (34, 'Notebook', 'HP', '15-AY029LA', 12999);
insert into artefactos values (35, 'Notebook', 'EXO', 'WINGS K2200', 5499);
insert into artefactos values (36, 'Notebook', 'EXO', 'R9XF1445', 5999);

/*Smartphone*/
insert into artefactos values (38, 'Smartphone', 'SONY', 'XPERIA XA', 7999);
insert into artefactos values (39, 'Smartphone', 'SONY', 'XPERIA M5', 10699);
insert into artefactos values (40, 'Smartphone', 'SONY', 'XPERIA M4', 5999);
insert into artefactos values (41, 'Smartphone', 'Motorola', 'MOTO G4 PLAY', 5499);
insert into artefactos values (42, 'Smartphone', 'Motorola', 'MOTO G4', 6999);
insert into artefactos values (43, 'Smartphone', 'Samsung', 'GALAXY J5', 6999);
insert into artefactos values (44, 'Smartphone', 'Samsung', 'GALAXY J1', 3499);
insert into artefactos values (45, 'Smartphone', 'Samsung', 'GALAXY J7', 7999);
insert into artefactos values (46, 'Smartphone', 'Samsung', 'GALAXY J2 PRIME', 3999);
insert into artefactos values (47, 'Smartphone', 'Samsung', 'GALAXY S7 EDGE', 22999);
insert into artefactos values (48, 'Smartphone', 'Samsung', 'GALAXY S6 EDGE', 15999);
insert into artefactos values (49, 'Smartphone', 'Samsung', 'NOTE 5', 15999);
insert into artefactos values (50, 'Smartphone', 'Samsung', 'GALAXY GRAND PRIME', 5999);
insert into artefactos values (51, 'Smartphone', 'Samsung', 'GALAXY A5', 9999);
insert into artefactos values (52, 'Smartphone', 'Samsung', 'GALAXY A3', 6499);
insert into artefactos values (53, 'Smartphone', 'Apple', 'iPhone 7', 27999);
insert into artefactos values (54, 'Smartphone', 'Apple', 'iPhone SE', 16999);
insert into artefactos values (55, 'Smartphone', 'Lenovo', 'VIBE K5', 3999);
insert into artefactos values (56, 'Smartphone', 'Lenovo', 'K4', 2999);
insert into artefactos values (57, 'Smartphone', 'Huawei', 'P8', 6499);
insert into artefactos values (58, 'Smartphone', 'Huawei', 'Y550', 2999);
insert into artefactos values (59, 'Smartphone', 'Alcatel', 'PIXI 3', 1799);
insert into artefactos values (60, 'Smartphone', 'Philips', 'S616', 5899);
   
    
create table caracteristicas
(id int not null primary key,
nombre varchar(30) not null,
unidad_de_medida varchar(20));

/*Caracteristicas Generales:*/
/*insert into caracteristicas values ('id (Dado por autoincremento)', 'Caracteristica', 'Unidad de Medida (Si posee)')*/
insert into caracteristicas values ('Consumo Energetico', 'Watts');
insert into caracteristicas values ('Medidas', 'cm');
insert into caracteristicas values ('Descripcion 1', null);
insert into caracteristicas values ('Descripcion 2', null);
insert into caracteristicas values ('Descripcion 3', null);

/*Caracteristicas de Cocinas:*/
insert into caracteristicas values ('Eficiencia Enrgetica', null);
insert into caracteristicas values ('Cantidad de hornallas', null);
insert into caracteristicas values ('Tipo de Fuente', null);
insert into caracteristicas values ('Consumo Energetico', 'Watts');
insert into caracteristicas values ('Eficiencia Enrgetica', null);
insert into caracteristicas values ('Consumo de Gas', null);

/*Caracteristicas de Aires Acondicionados:*/
insert into caracteristicas values ('Eficiencia Enrgetica', null);
insert into caracteristicas values ('Frio', null);
insert into caracteristicas values ('Calor', null);
insert into caracteristicas values ('Tipo de Aire', null);
insert into caracteristicas values ('Consumo Energetico en Frio', null);
insert into caracteristicas values ('Consumo Energetico en Calor', null);
insert into caracteristicas values ('Medidas de unidad exterior', 'cm');
insert into caracteristicas values ('Medidas de unidad interior', 'cm');

/*Caracteristicas de Ventiladores:*/
insert into caracteristicas values ('Numero de Velocidades', null);

/*Caracteristicas de Televisores:*/
insert into caracteristicas values ('Panel', null);
insert into caracteristicas values ('Eficiencia Enrgetica', null);
insert into caracteristicas values ('Resolucion', null);
insert into caracteristicas values ('Pulgadas de Pantalla', '´');
insert into caracteristicas values ('SmartTV', null);
insert into caracteristicas values ('Parlantes Sourround', null);

/*Caracteristicas de Notebook:*/
insert into caracteristicas values ('CPU', null);
insert into caracteristicas values ('Modelo del Procesador', null);
insert into caracteristicas values ('GPU', null);
insert into caracteristicas values ('RAM', null);
insert into caracteristicas values ('Tipo de RAM', null);
insert into caracteristicas values ('Tipo de Disco', null);
insert into caracteristicas values ('Capacidad de Disco', null);
insert into caracteristicas values ('Tamaño de Pantalla', '´');
insert into caracteristicas values ('Resolucion de Pantalla', null);
insert into caracteristicas values ('Cantidad de Puertos USB', null);
insert into caracteristicas values ('Puertos USB 2.0', null);
insert into caracteristicas values ('Puertos USB 3.0', null);
insert into caracteristicas values ('Unidad Lectora', null);
insert into caracteristicas values ('Capacidad de Bateria', 'mAmp');

/*Caracteristica de Smartphone:*/
insert into caracteristicas values ('Sistema Operativo', null);
insert into caracteristicas values ('Procesador', null);
insert into caracteristicas values ('Tamaño de Pantalla', '´');
insert into caracteristicas values ('Tipo de Pantalla', null);
insert into caracteristicas values ('Resolucion de Pantalla', null);
insert into caracteristicas values ('RAM', null);
insert into caracteristicas values ('Memoria Interna', null);
insert into caracteristicas values ('Camara', 'PX');
insert into caracteristicas values ('Posee Flash', null);
insert into caracteristicas values ('Posee Camara Frontal', null);
insert into caracteristicas values ('Camara Frontal', 'PX');
insert into caracteristicas values ('Capacidad de Bateria', 'mAmp');