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
	/*Modelos copia*/
    /*insert into artefactos values (4, 'Estufa', 'mar', 'mod', '0');*/
	/*insert into artefactos values (5, 'Cafetera', 'mar', 'mod', '0');*/
    
    /*Modelos Reales*/
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
	/*Modelos Reales*/
	insert into artefactos values (21, 'TV', 'Samsung', 'UN32J4000AGCTC', 5999);
    insert into artefactos values (22, 'TV', 'Samsung', 'UN40J5300AGCDF', 11999);
    insert into artefactos values (23, 'TV', 'Samsung', 'UN50J5300AGCDF', 15999);
    insert into artefactos values (24, 'TV', 'LG', '43UH6500', 13999);
    insert into artefactos values (25, 'TV', 'LG', '32LH575B', 7999);
    insert into artefactos values (26, 'TV', 'LG', '65UG8700.AWG', 49999);
    insert into artefactos values (27, 'TV', 'LG', '49LH5700', 15999);
    
/*Notebook*/
	/*Modelos copia*/
	insert into artefactos values (28, 'Notebook', '', '', 0);

    /*Modelos Reales*/
    insert into artefactos values (28, 'Notebook', 'ASUS', 'X451UA-GO835T', 13999);
    insert into artefactos values (28, 'Notebook', 'ASUS', 'X555LD-XX027H', 15699);
    insert into artefactos values (28, 'Notebook', 'ASUS', 'X451UA-GO835T', 13999);
    insert into artefactos values (28, 'Notebook', 'HP', '15-AY029LA', 15999);
    insert into artefactos values (28, 'Notebook', 'HP', '14-AM092LA', 12999);
    insert into artefactos values (28, 'Notebook', 'HP', '15-AY013LA', 17999);
    insert into artefactos values (28, 'Notebook', 'HP', '15-AY029LA', 12999);
    insert into artefactos values (28, 'Notebook', 'EXO', 'WINGS K2200', 5499);
    insert into artefactos values (28, 'Notebook', 'EXO', 'R9XF1445', 5999);

/*Smartphone*/
	/*Modelos copia*/
	insert into artefactos values (8, 'Smartphone', 'mar', 'mod', '0');

    /*Modelos Reales*/
    
    
create table caracteristicas
(id int not null primary key,
nombre varchar(30) not null,
unidad_de_medida varchar(20));

/*Caracteristicas Generales:*/
insert into caracteristicas values (1, 'Consumo Energetico', 'Watts');
insert into caracteristicas values (2, 'Eficiencia Enrgetica', null);
insert into caracteristicas values (3, 'Medidas', 'cm');
insert into caracteristicas values (4, 'Descripcion', null);

/*Caracteristicas de Cocinas:*/
insert into caracteristicas values (5, 'Cantidad de hornallas', null);
insert into caracteristicas values (5, 'Fuente', null);
insert into caracteristicas values (1, 'Consumo Energetico', 'Watts');
insert into caracteristicas values (2, 'Eficiencia Enrgetica', null);
insert into caracteristicas values (2, 'Consumo de Gas', null);

/*Caracteristicas de Aires Acondicionados:*/
insert into caracteristicas values (6, 'Frio', null);
insert into caracteristicas values (7, 'Calor', null);
insert into caracteristicas values (8, 'Tipo de Aire', null);
insert into caracteristicas values (9, 'Consumo Energetico en Frio', null);
insert into caracteristicas values (10, 'Consumo Energetico en Calor', null);
insert into caracteristicas values (11, 'Medidas de unidad exterior', 'cm');
insert into caracteristicas values (12, 'Medidas de unidad interior', 'cm');

/*Caracteristicas de Televisores:*/
insert into caracteristicas values (13, 'Resolucion', null);
insert into caracteristicas values (14, 'Pulgadas de Pantalla', '´');
insert into caracteristicas values (15, 'SmartTV', null);
insert into caracteristicas values (16, 'Parlantes Sourround', null);

/*Caracteristicas de Notebook:*/
insert into caracteristicas values (17, 'CPU', null);
insert into caracteristicas values (18, 'Modelo del Procesador', null);
insert into caracteristicas values (19, 'GPU', null);
insert into caracteristicas values (20, 'RAM', null);
insert into caracteristicas values (21, 'Tipo de RAM', null);
insert into caracteristicas values (22, 'Tipo de Disco', null);
insert into caracteristicas values (23, 'Capacidad de Disco', null);
insert into caracteristicas values (24, 'Tamaño de Pantalla', '´');
insert into caracteristicas values (25, 'Resolucion de Pantalla', null);
insert into caracteristicas values (26, 'Cantidad de Puertos USB', null);
insert into caracteristicas values (27, 'Puertos USB 2.0', null);
insert into caracteristicas values (28, 'Puertos USB 3.0', null);
insert into caracteristicas values (29, 'Unidad Lectora', null);
insert into caracteristicas values (30, 'Capacidad de Bateria', 'mAmp');

/*Caracteristica de Smartphone:*/
insert into caracteristicas values (31, 'Sistema Operativo', null);
insert into caracteristicas values (32, 'Procesador', null);
insert into caracteristicas values (33, 'Tamaño de Pantalla', '´');
insert into caracteristicas values (34, 'Tipo de Pantalla', null);
insert into caracteristicas values (35, 'Resolucion de Pantalla', null);
insert into caracteristicas values (36, 'RAM', null);
insert into caracteristicas values (37, 'Memoria Interna', null);
insert into caracteristicas values (38, 'Camara', 'PX');
insert into caracteristicas values (39, 'Posee Flash', null);
insert into caracteristicas values (40, 'Posee Camara Frontal', null);
insert into caracteristicas values (41, 'Camara Frontal', 'PX');
insert into caracteristicas values (42, 'Capacidad de Bateria', 'mAmp');