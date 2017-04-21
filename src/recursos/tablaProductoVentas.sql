create database productosVentas;
use productosVentas;

create table electrodomesticos
(id int not null primary key auto_increment,
artefacto_id int not null,
caracteristica_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefactos(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristicas(id));

/*Electrodomesticos:*/
/*insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (id del artefacto, id del nombre de la caracteristica, 'descripcion de la caracteristica')*/
/*id Dado por autoincremento*/


/*'Cocina', 'Whirlpool', 'WFX56EGDNA'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 2, '86 x 55 x 61');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 7, 'Multigas');

/*'Cocina', 'Whirlpool', 'WF560XT'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 2, '91.1 x 59.7 x 65.3');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 7, 'Multigas');

/*'Cocina', 'Whirlpool', 'WFX56DX'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 2, '97 x 55 x 61');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 7, 'Multigas');

/*--------------------*/

/*'Cocina', 'Patrick', 'CPF8251MVS'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 2, '85 x 50.5 x 60');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 7, 'Multigas');

/*'Cocina', 'Patrick', 'CPF2251BVS'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 2, '85x50.5x60');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 7, 'Multigas');

/*'Cocina', 'Patrick', 'CPF9651MVS'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 2, '86 x 52 x 62.5');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 7, 'Multigas');

/*--------------------*/

/*'Cocina', 'Domec', 'CTOBAV'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 2, '86 x 51 x 57');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 3, 'No especificada por fabricante');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 7, 'Gas Natural');

/*'Cocina', 'Domec', 'CXUPV'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 2, '85 x 56 x 60');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 7, 'Multigas');

/*'Cocina', 'Domec', 'CDXULEAV'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 2, '85 x 56 x 60');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 3, 'No especificada por el fabricante');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 7, 'Multigas');

/*'Cocina', 'Domec', 'CBUPV'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 2, '85 x 56 x 60');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 3, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 4, '4');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 5, 'Gas');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 7, 'Multigas');

/*--------------------*/

/*'Aire Acondicionado', 'Samsung', 'AR12KSFHCWK'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 9, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 10, 'Split');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 11, '3500');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 12, '3800');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 47, '3010');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 48, '3260');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 50, 'B');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 13, '47.5 x 66 x 24.2');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 14, '28.5 x 82 x 21.5');

/*'Aire Acondicionado', 'Samsung', 'AR18KSFHCWK'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 9, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 10, 'Split');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 11, '5000');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 12, '6000');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 47, '4300');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 48, '5150');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 50, 'B');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 13, '63.8 x 88 x 31');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 14, '29.8 x 106.5 24.3');
	
/*--------------------*/

/*'Aire Acondicionado', 'LG', 'US-W246CSG4'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 9, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 10, 'Split');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 11, '6450');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 12, '6450');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 47, '5546');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 48, '5546');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 50, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 13, '65.5 x 87 x 32');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 14, '32.5 x 103 x 25');

/*'Aire Acondicionado', 'LG', 'US-W126BRG4'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 9, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 10, 'Split');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 11, '3520');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 12, '3600');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 47, '3027');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 48, '3095');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 50, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 13, '48.3 x 71.7 x 23');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 14, '28.5 x 88.5 x 21');

/*'Aire Acondicionado', 'LG', 'US-W246CRG4'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 9, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 10, 'Split');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 11, '6450');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 12, '6450');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 47, '5546');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 48, '5546');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 50, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 13, '65.5 x 87 x 32');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 14, '32.5 x 103 x 25');

/*--------------------*/

/*'Aire Acondicionado', 'BGH', 'BC23FN'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 9, 'false');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 10, 'Ventana');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 11, '2600');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 47, '2300');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 13, '38.6 x 60 x 56');

/*'Aire Acondicionado', 'BGH', 'BC30FN'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 9, 'false');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 10, 'Ventana');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 11, '3500');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 47, '3000');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 13, '38.6 x 60 x 56');

/*--------------------*/

/*'Aire Acondicionado', 'Sanyo', 'SA916ARN'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 8, 'true');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 9, 'false');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 10, 'Ventana');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 11, '2500');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 47, '2200');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 49, 'A');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 13, '38 x 60 x 56');

/*--------------------*/

/*'Ventiladores', 'Protalia', 'V18P'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 1, '85');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 2, 'Alto 160 y Diametro de ventilador 18"');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 3, 'No especificada');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 15, '3');

/*--------------------*/

/*'Ventiladores', 'Sansei', 'VPS1030'*/
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 1, '45');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 2, 'Alto 170 y Diamtro de ventilador 16"');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 3, 'No especificado');
insert into electrodomesticos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 15, '3');



create table televisores
(id int not null primary key,
artefacto_id int not null,
caracteristica_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

/*Televisores:*/
/*insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (id del artefacto, id del nombre de la caracteristica, 'descripcion de la caracteristica')*/
/*id Dado por autoincremento*/


/*'TV', 'Samsung', 'UN32J4000AGCTC'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 2, '43.4 x 74.5 x 6.8');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 16, 'LED');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 17, 'HD 1366 X 768');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 18, '32');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 19, 'false');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 20, 'false');

/*'TV', 'Samsung', 'UN40J5300AGCDF'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 2, '52.97 x 90.76 x 6.69');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 16, 'LED');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 17, 'Full HD 1920 X 1080');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 18, '40');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 19, 'true');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 20, 'false');

/*'TV', 'Samsung', 'UN50J5300AGCDF'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 2, '64.79 x 111.78 x 6.71');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 16, 'LED');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 17, 'Full HD 1920 X 1080');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 18, '50');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 19, 'true');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 20, 'false');

/*--------------------*/

/*'TV', 'LG', '43UH6500'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 2, '57.2 x 97.3 x 7.7');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 16, 'LED');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 17, '4K 3840 X 2160');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 18, '43');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 19, 'true');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 20, 'true');

/*'TV', 'LG', '32LH575B'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 2, '47.4 x 73.4 x 7.1');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 16, 'LED');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 17, 'HD 1366 X 768');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 18, '32');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 19, 'true');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 20, 'true');

/*'TV', 'LG', '65UG8700.AWG'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 2, '146.1 x 89.7 x 25.5');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 16, 'LED Curva 3D');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 17, '4K 3840 X 2160');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 18, '65');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 19, 'true');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 20, 'true');

/*'TV', 'LG', '49LH5700'*/
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 2, '65.7 x 110.8 x 8.2');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 16, 'LED');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 17, 'Full Hd 1920 X 1080');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 18, '49');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 19, 'true');
insert into televisores (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 20, 'true');



create table notebooks
(id int not null primary key,
artefacto_id int not null,
caracteristica_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

/*Notebooks:*/
/*insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (id del artefacto, id del nombre de la caracteristica, 'descripcion de la caracteristica')*/
/*id Dado por autoincremento*/


/*'Notebook', 'ASUS', 'X451UA-GO835T'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 34, 'dc');

/*'Notebook', 'ASUS', 'X555LD-XX027H'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 34, 'dc');

/*--------------------*/

/*'Notebook', 'VAIO', 'VJF155A0211W'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 34, 'dc');

/*--------------------*/

/*'Notebook', 'HP', '15-AY029LA'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 34, 'dc');

/*'Notebook', 'HP', '14-AM092LA'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 34, 'dc');

/*'Notebook', 'HP', '15-AY013LA'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 34, 'dc');

/*'Notebook', 'HP', '15-AY015LA'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 34, 'dc');

/*--------------------*/

/*'Notebook', 'EXO', 'WINGS K2200'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 34, 'dc');

/*'Notebook', 'EXO', 'R9XF1445'*/
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 1, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 2, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 21, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 22, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 23, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 24, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 25, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 26, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 27, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 28, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 29, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 30, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 31, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 32, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 33, 'dc');
insert into notebooks (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 34, 'dc');



create table smartphones
(id int not null primary key,
artefacto_id int not null,
caracteristica_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefacto(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristica(id));

/*Smartphones:*/
/*insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (id del artefacto, id del nombre de la caracteristica, 'descripcion de la caracteristica')*/
/*id Dado por autoincremento*/


/*'Smartphone', 'SONY', 'XPERIA XA'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 46, 'dc');

/*'Smartphone', 'SONY', 'XPERIA M5'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 46, 'dc');

/*'Smartphone', 'SONY', 'XPERIA M4'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Motorola', 'MOTO G4 PLAY'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 46, 'dc');

/*'Smartphone', 'Motorola', 'MOTO G4'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Samsung', 'GALAXY J5'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY J1'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY J7'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY J2 PRIME'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY S7 EDGE'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY S6 EDGE'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 46, 'dc');

/*'Smartphone', 'Samsung', 'NOTE 5'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY GRAND PRIME'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY A5'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 46, 'dc');

/*'Smartphone', 'Samsung', 'GALAXY A3'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (51, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Apple', 'iPhone 7'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (52, 46, 'dc');

/*'Smartphone', 'Apple', 'iPhone SE'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (53, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Lenovo', 'VIBE K5'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (54, 46, 'dc');

/*'Smartphone', 'Lenovo', 'K4'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (55, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Huawei', 'P8'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (56, 46, 'dc');

/*'Smartphone', 'Huawei', 'Y550'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (57, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Alcatel', 'PIXI 3'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (58, 46, 'dc');

/*--------------------*/

/*'Smartphone', 'Alcatel', 'PIXI 3'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (59, 46, 'dc');

/*'Smartphone', 'Alcatel', 'PIXI 3'*/
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 1, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 2, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 35, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 36, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 37, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 38, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 39, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 40, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 41, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 42, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 43, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 44, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 45, 'dc');
insert into smartphones (artefacto_id, caracteristica_id, descripcion_caracteristica) values (60, 46, 'dc');


	
create table artefactos
(id int not null primary key,
nombre varchar(18) not null,
marca varchar(15) not null,
modelo varchar(20) not null,
precio int not null);

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
insert into artefactos values (30, 'Notebook', 'VAIO', 'VJF155A0211W', 13999);
insert into artefactos values (31, 'Notebook', 'HP', '15-AY029LA', 15999);
insert into artefactos values (32, 'Notebook', 'HP', '14-AM092LA', 12999);
insert into artefactos values (33, 'Notebook', 'HP', '15-AY013LA', 17999);
insert into artefactos values (34, 'Notebook', 'HP', '15-AY015LA', 8999);
insert into artefactos values (35, 'Notebook', 'EXO', 'WINGS K2200', 5499);
insert into artefactos values (36, 'Notebook', 'EXO', 'R9XF1445', 5999);


/*Smartphone*/
insert into artefactos values (37, 'Smartphone', 'SONY', 'XPERIA XA', 7999);
insert into artefactos values (38, 'Smartphone', 'SONY', 'XPERIA M5', 10699);
insert into artefactos values (39, 'Smartphone', 'SONY', 'XPERIA M4', 5999);
insert into artefactos values (40, 'Smartphone', 'Motorola', 'MOTO G4 PLAY', 5499);
insert into artefactos values (41, 'Smartphone', 'Motorola', 'MOTO G4', 6999);
insert into artefactos values (42, 'Smartphone', 'Samsung', 'GALAXY J5', 6999);
insert into artefactos values (43, 'Smartphone', 'Samsung', 'GALAXY J1', 3499);
insert into artefactos values (44, 'Smartphone', 'Samsung', 'GALAXY J7', 7999);
insert into artefactos values (45, 'Smartphone', 'Samsung', 'GALAXY J2 PRIME', 3999);
insert into artefactos values (46, 'Smartphone', 'Samsung', 'GALAXY S7 EDGE', 22999);
insert into artefactos values (47, 'Smartphone', 'Samsung', 'GALAXY S6 EDGE', 15999);
insert into artefactos values (48, 'Smartphone', 'Samsung', 'NOTE 5', 15999);
insert into artefactos values (49, 'Smartphone', 'Samsung', 'GALAXY GRAND PRIME', 5999);
insert into artefactos values (50, 'Smartphone', 'Samsung', 'GALAXY A5', 9999);
insert into artefactos values (51, 'Smartphone', 'Samsung', 'GALAXY A3', 6499);
insert into artefactos values (52, 'Smartphone', 'Apple', 'iPhone 7', 27999);
insert into artefactos values (53, 'Smartphone', 'Apple', 'iPhone SE', 16999);
insert into artefactos values (54, 'Smartphone', 'Lenovo', 'VIBE K5', 3999);
insert into artefactos values (55, 'Smartphone', 'Lenovo', 'K4', 2999);
insert into artefactos values (56, 'Smartphone', 'Huawei', 'P8', 6499);
insert into artefactos values (57, 'Smartphone', 'Huawei', 'Y550', 2999);
insert into artefactos values (58, 'Smartphone', 'Alcatel', 'PIXI 3', 1799);
insert into artefactos values (59, 'Smartphone', 'Philips', 'S616', 5899);
insert into artefactos values (60, 'Smartphone', 'Philips', 'S358', 3399);
   
    
create table caracteristicas
(id int not null primary key,
nombre_de_caracteristica varchar(30) not null,
unidad_de_medida varchar(20));

/*Caracteristicas:*/
/*insert into caracteristicas (nombre_de_caracteristica, unidad_de_medida) values ('Caracteristica', 'Unidad de Medida (Si posee)')*/
/*id Dado por autoincremento*/

/*Caracteristicas Generales:*/
insert into caracteristicas values (1, 'Consumo Energetico', 'Watts');
insert into caracteristicas values (2, 'Medidas', 'cm');
insert into caracteristicas values (3, 'Eficiencia Energetica', null);

/*Caracteristicas de Cocinas:*/
insert into caracteristicas values (4, 'Cantidad de hornallas', null);
insert into caracteristicas values (5, 'Tipo de Fuente', null);
insert into caracteristicas values (7, 'Tipo de Conexion', null);

/*Caracteristicas de Aires Acondicionados:*/
insert into caracteristicas values (8, 'Frio', null);
insert into caracteristicas values (9, 'Calor', null);
insert into caracteristicas values (10, 'Tipo de Aire', null);
insert into caracteristicas values (11, 'Consumo Energetico en Frio', null);
insert into caracteristicas values (12, 'Consumo Energetico en Calor', null);
insert into caracteristicas values (47, 'Potencia en Frio', 'Frigorias');
insert into caracteristicas values (48, 'Potencia en Calor', 'Frigorias');
insert into caracteristicas values (49, 'Eficiencia Energetica en Frio', null);
insert into caracteristicas values (50, 'Eficiencia Energetica en Calor', null);
insert into caracteristicas values (13, 'Medidas de unidad exterior', 'cm');
insert into caracteristicas values (14, 'Medidas de unidad interior', 'cm');

/*Caracteristicas de Ventiladores:*/
insert into caracteristicas values (15, 'Numero de Velocidades', null);

/*Caracteristicas de Televisores:*/
insert into caracteristicas values (16, 'Panel', null);
insert into caracteristicas values (17, 'Resolucionde Pantalla', null);
insert into caracteristicas values (18, 'Pulgadas de Pantalla', '´');
insert into caracteristicas values (19, 'SmartTV', null);
insert into caracteristicas values (20, 'Parlantes Sourround', null);

/*Caracteristicas de Notebook:*/
insert into caracteristicas values (21, 'CPU', null);
insert into caracteristicas values (22, 'Modelo del Procesador', null);
insert into caracteristicas values (23, 'GPU', null);
insert into caracteristicas values (24, 'RAM', null);
insert into caracteristicas values (25, 'Tipo de RAM', null);
insert into caracteristicas values (26, 'Tipo de Disco', null);
insert into caracteristicas values (27, 'Capacidad de Disco', null);
insert into caracteristicas values (28, 'Tamaño de Pantalla', '´');
insert into caracteristicas values (29, 'Resolucion de Pantalla', null);
insert into caracteristicas values (30, 'Cantidad de Puertos USB', null);
insert into caracteristicas values (31, 'Puertos USB 2.0', null);
insert into caracteristicas values (32, 'Puertos USB 3.0', null);
insert into caracteristicas values (33, 'Unidad Lectora', null);
insert into caracteristicas values (34, 'Capacidad de Bateria', 'mAmp');

/*Caracteristica de Smartphone:*/
insert into caracteristicas values (35, 'Sistema Operativo', null);
insert into caracteristicas values (36, 'Procesador', null);
insert into caracteristicas values (37, 'Tamaño de Pantalla', '´');
insert into caracteristicas values (38, 'Tipo de Pantalla', null);
insert into caracteristicas values (39, 'Resolucion de Pantalla', null);
insert into caracteristicas values (40, 'RAM', null);
insert into caracteristicas values (41, 'Memoria Interna', null);
insert into caracteristicas values (42, 'Camara', 'PX');
insert into caracteristicas values (43, 'Posee Flash', null);
insert into caracteristicas values (44, 'Posee Camara Frontal', null);
insert into caracteristicas values (45, 'Camara Frontal', 'PX');
insert into caracteristicas values (46, 'Capacidad de Bateria', 'mAmp');

drop table electrodomesticos;
drop table televisores;
drop table notebooks;
drop table smartphones;
drop table artefactos;
drop table caracteristicas;
