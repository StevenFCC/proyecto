create database productosVentas;
use productosVentas;

create table productos
(id int not null primary key auto_increment,
artefacto_id int not null,
caracteristica_id int not null,
descripcion_caracteristica varchar(100) not null,
FOREIGN KEY (artefacto_id) REFERENCES artefactos(id),
FOREIGN KEY (caracteristica_id) REFERENCES caracteristicas(id));

/*SELECT artefactos.id, artefactos.nombre, artefactos.marca, artefactos.modelo, caracteristicas.nombre_de_caracteristica, productos.descripcion_caracteristica, caracteristicas.unidad_de_medida 
FROM productosventas.productos
join caracteristicas on caracteristicas.id = caracteristica_id
join artefactos on artefactos.id = artefacto_id
where artefactos.id = 1;*/

/*Tabla Productos:*/
/*insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (id del artefacto, id del nombre de la caracteristica, descripcion de la caracteristica)*/
/*id Dado por autoincremento*/


/*'Cocina', 'Whirlpool', 'WFX56EGDNA'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 2, '86 x 55 x 61');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 6, '17599');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (1, 51, 'http://localhost:8080/proyecto/imagenes/productos/Whirlpool_WFX56EGDNA.jpg');

/*'Cocina', 'Whirlpool', 'WF560XT'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 2, '91.1 x 59.7 x 65.3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 6, '20999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (2, 51, 'http://localhost:8080/proyecto/imagenes/productos/Whirlpool_WF560XT.jpg');

/*'Cocina', 'Whirlpool', 'WFX56DX'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 2, '97 x 55 x 61');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 6, '12499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (3, 51, 'http://localhost:8080/proyecto/imagenes/productos/Whirlpool_WFX56DX.jpg');

/*--------------------*/

/*'Cocina', 'Patrick', 'CPF8251MVS'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 2, '85 x 50.5 x 60');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 6, '7999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (4, 51, 'http://localhost:8080/proyecto/imagenes/productos/Patrick_CPF8251MVS.jpg');

/*'Cocina', 'Patrick', 'CPF2251BVS'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 2, '85x50.5x60');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 6, '7999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (5, 51, 'http://localhost:8080/proyecto/imagenes/productos/Patrick_CPF2251BVS.jpg');

/*'Cocina', 'Patrick', 'CPF9651MVS'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 2, '86 x 52 x 62.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 6, '8599');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (6, 51, 'http://localhost:8080/proyecto/imagenes/productos/Patrick_CPF9651MVS.jpg');

/*--------------------*/

/*'Cocina', 'Domec', 'CTOBAV'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 2, '86 x 51 x 57');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 3, 'No especificada por fabricante');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 7, 'Gas Natural');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 6, '7880');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (7, 51, 'http://localhost:8080/proyecto/imagenes/productos/Domec_CTOBAV.jpg');

/*'Cocina', 'Domec', 'CXUPV'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 2, '85 x 56 x 60');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 6, '8499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (8, 51, 'http://localhost:8080/proyecto/imagenes/productos/Domec_CXUPV.jpg');

/*'Cocina', 'Domec', 'CDXULEAV'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 2, '85 x 56 x 60');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 3, 'No especificada por el fabricante');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 6, '11499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (9, 51, 'http://localhost:8080/proyecto/imagenes/productos/Domec_CDXULEAV.jpg');

/*'Cocina', 'Domec', 'CBUPV'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 2, '85 x 56 x 60');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 3, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 4, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 5, 'Gas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 7, 'Multigas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 6, '7499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (10, 51, 'http://localhost:8080/proyecto/imagenes/productos/Domec_CBUPV.jpg');

/*--------------------*/

/*'Aire Acondicionado', 'Samsung', 'AR12KSFHCWK'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 9, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 10, 'Split');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 11, '3500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 12, '3800');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 47, '3010');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 48, '3260');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 50, 'B');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 13, '47.5 x 66 x 24.2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 14, '28.5 x 82 x 21.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 6, '16499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (11, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_AR12KSFHCWK.jpg');

/*'Aire Acondicionado', 'Samsung', 'AR18KSFHCWK'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 9, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 10, 'Split');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 11, '5000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 12, '6000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 47, '4300');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 48, '5150');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 50, 'B');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 13, '63.8 x 88 x 31');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 14, '29.8 x 106.5 x 24.3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 6, '22799');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (12, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_AR18KSFHCWK.jpg');
	
/*--------------------*/

/*'Aire Acondicionado', 'LG', 'US-W246CSG4'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 9, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 10, 'Split');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 11, '6450');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 12, '6450');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 47, '5546');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 48, '5546');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 50, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 13, '65.5 x 87 x 32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 14, '32.5 x 103 x 25');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 6, '25999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (13, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_US-W246CSG4.jpg');

/*'Aire Acondicionado', 'LG', 'US-W126BRG4'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 9, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 10, 'Split');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 11, '3520');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 12, '3600');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 47, '3027');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 48, '3095');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 50, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 13, '48.3 x 71.7 x 23');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 14, '28.5 x 88.5 x 21');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 6, '19550');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (14, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_US-W126BRG4.jpg');

/*'Aire Acondicionado', 'LG', 'US-W246CRG4'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 9, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 10, 'Split');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 11, '6450');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 12, '6450');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 47, '5546');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 48, '5546');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 50, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 13, '65.5 x 87 x 32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 14, '32.5 x 103 x 25');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 6, '29999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (15, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_US-W246CRG4.jpg');

/*--------------------*/

/*'Aire Acondicionado', 'BGH', 'BC23FN'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 9, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 10, 'Ventana');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 11, '2600');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 47, '2300');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 13, '38.6 x 60 x 56');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 6, '10999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (16, 51, 'http://localhost:8080/proyecto/imagenes/productos/BGH_BC23FN.jpg');

/*'Aire Acondicionado', 'BGH', 'BC30FN'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 9, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 10, 'Ventana');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 11, '3500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 47, '3000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 13, '38.6 x 60 x 56');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 6, '11999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (17, 51, 'http://localhost:8080/proyecto/imagenes/productos/BGH_BC30FN.jpg');

/*--------------------*/

/*'Aire Acondicionado', 'Sanyo', 'SA916ARN'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 8, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 9, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 10, 'Ventana');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 11, '2500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 47, '2200');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 49, 'A');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 13, '38 x 60 x 56');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 6, '8899');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (18, 51, 'http://localhost:8080/proyecto/imagenes/productos/Sanyo_SA916ARN.jpg');

/*--------------------*/

/*'Ventilador', 'Protalia', 'V18P'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 1, '85');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 2, 'Alto 160 y Diametro de ventilador 18"');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 3, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 15, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 6, '899');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (19, 51, 'http://localhost:8080/proyecto/imagenes/productos/Protalia_V18P.jpg');

/*--------------------*/

/*'Ventilador', 'Sansei', 'VPS1030'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 1, '45');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 2, 'Alto 170 y Diamtro de ventilador 16"');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 3, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 15, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 6, '799');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (20, 51, 'http://localhost:8080/proyecto/imagenes/productos/Sansei_VPS1030.jpg');

/*--------------------*/

/*'TV', 'Samsung', 'UN32J4000AGCTC'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 2, '43.4 x 74.5 x 6.8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 16, 'LED');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 17, 'HD 1366 X 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 18, '32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 19, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 20, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 6, '5999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (21, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_UN32J4000AGCTC.jpg');

/*'TV', 'Samsung', 'UN40J5300AGCDF'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 2, '52.97 x 90.76 x 6.69');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 16, 'LED');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 17, 'Full HD 1920 X 1080');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 18, '40');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 19, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 20, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 6, '11999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (22, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_UN40J5300AGCDF.jpg');

/*'TV', 'Samsung', 'UN50J5300AGCDF'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 2, '64.79 x 111.78 x 6.71');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 16, 'LED');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 17, 'Full HD 1920 X 1080');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 18, '50');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 19, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 20, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 6, '15999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (23, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_UN50J5300AGCDF.jpg');

/*--------------------*/

/*'TV', 'LG', '43UH6500'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 2, '57.2 x 97.3 x 7.7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 16, 'LED');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 17, '4K 3840 X 2160');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 18, '43');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 19, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 20, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 6, '13999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (24, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_43UH6500.jpg');

/*'TV', 'LG', '32LH575B'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 2, '47.4 x 73.4 x 7.1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 16, 'LED');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 17, 'HD 1366 X 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 18, '32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 19, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 20, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 6, '7999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (25, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_32LH575B.jpg');

/*'TV', 'LG', '65UG8700.AWG'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 2, '146.1 x 89.7 x 25.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 16, 'LED Curva 3D');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 17, '4K 3840 X 2160');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 18, '65');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 19, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 20, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 6, '49999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (26, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_65UG8700.AWG.jpg');

/*'TV', 'LG', '49LH5700'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 2, '65.7 x 110.8 x 8.2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 16, 'LED');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 17, 'Full Hd 1920 X 1080');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 18, '49');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 19, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 20, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 6, '15999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (27, 51, 'http://localhost:8080/proyecto/imagenes/productos/LG_49LH5700.jpg');

/*--------------------*/

/*'Notebook', 'VAIO', 'VJF155A0111B'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 2, '43 x 34 x 6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 21, 'Intel Core i3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 22, '7100U');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 23, 'Intel HD Graphics (620)');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 27, '500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 18, '15.6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 17, '1366 x 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 30, '6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 31, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 32, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 34, '7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 6, '15999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (28, 51, 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0111B.jpg');

/*'Notebook', 'VAIO', 'VJF155A0511W'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 2, '43 x 34 x 6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 21, 'Intel Core i3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 22, '7200U');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 23, 'Intel HD Graphics (620)');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 27, '500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 18, '15.6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 17, '1366 x 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 30, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 31, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 32, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 34, '7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 6, '18999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (29, 51, 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0511W.jpg');

/*'Notebook', 'VAIO', 'VJF155A0211W'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 2, '43 x 34 x 6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 21, 'Intel Core i3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 22, '7100U');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 23, 'Intel HD Graphics 620');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 27, '500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 18, '15.6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 17, 'HD');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 30, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 31, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 32, '1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 34, '7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 6, '13999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (30, 51, 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0211W.jpg');

/*'Notebook', 'VAIO', 'VJF155A0311B'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 2, '43 x 34 x 6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 21, 'Intel Core i5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 22, '7200U');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 23, 'Intel HD Graphics (620)');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 27, '500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 18, '15.6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 17, '1366 x 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 30, '6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 31, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 32, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 34, '7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 6, '18999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (31, 51, 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0311B.jpg');

/*--------------------*/

/*'Notebook', 'HP', '14-AM092LA'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 2, '35.4 x 24.16 x 2.39');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 21, 'Intel Core i3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 22, '5005U');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 23, 'Intel HD Graphics 5500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 27, '1000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 18, '14');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 17, '1366 x 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 30, '6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 31, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 32, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 34, '9');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 6, '12999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (32, 51, 'http://localhost:8080/proyecto/imagenes/productos/HP_14-AM092LA.jpg');

/*--------------------*/

/*'Notebook', 'Positivo BGH', 'E975X'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 2, 'No especificadas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 21, 'Intel Core i7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 22, '5500U');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 23, 'Intel HD Graphics (Modelo no especificado)');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 27, '1000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 18, '14');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 17, '1366 x 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 30, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 31, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 32, '1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 33, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 34, 'dc');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 6, '17999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (33, 51, 'http://localhost:8080/proyecto/imagenes/productos/Positivo_BGH_E975X.jpg');

/*'Notebook', 'Positivo BGH', 'FX1000'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 2, '34 x 23 x 1.6');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 21, 'Intel Core M');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 22, 'M-5Y10C');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 23, 'Intel HD Graphics 5300');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 26, 'SSD');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 27, '128');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 18, '14');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 17, '1920 x 1080');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 30, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 31, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 32, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 34, '7.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 6, '10999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (34, 51, 'http://localhost:8080/proyecto/imagenes/productos/Positivo_BGH_FX1000.jpg');

/*--------------------*/

/*'Notebook', 'EXO', 'WINGS K2200'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 2, 'No especificadas');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 21, 'Intel Atom');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 22, 'Z3735F');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 23, 'Intel HD Graphics 4000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 24, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 26, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 27, '32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 18, '10.1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 17, '1200 x 800');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 30, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 31, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 32, '0');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 34, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 6, '5499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (35, 51, 'http://localhost:8080/proyecto/imagenes/productos/EXO_WINGS_K2200.jpg');

/*'Notebook', 'EXO', 'R9XF1445'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 2, '34.2 x 24.1 x 2.4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 21, 'Intel Celeron');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 22, 'N3060');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 23, 'Intel HD Graphics');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 25, 'No especificada');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 26, 'Disco Rigido');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 27, '500');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 18, '14');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 17, '1366 x 768');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 30, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 31, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 32, '0');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 33, 'false');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 34, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 6, '5999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (36, 51, 'http://localhost:8080/proyecto/imagenes/productos/EXO_R9X_F1445.jpg');

/*--------------------*/

/*'Smartphone', 'SONY', 'XPERIA XA'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 2, '14.3 x 6.6 x 0.79');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 36, 'Helio P10');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 18, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 38, 'LED BRAVIA');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 17, '1280 x 720');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 24, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 42, '13');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 45, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 46, '2300');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 6, '7999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (37, 51, 'http://localhost:8080/proyecto/imagenes/productos/SONY_XPERIA_XA.jpg');

/*'Smartphone', 'SONY', 'XPERIA M5'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 2, '14.5 x 7.2 x 0.76');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 36, 'Helio X10');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 18, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 38, 'IPS');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 17, '1920 x 1080');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 42, '21.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 45, '13');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 46, '2600');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 6, '10699');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (38, 51, 'http://localhost:8080/proyecto/imagenes/productos/SONY_XPERIA_M5.jpg');

/*'Smartphone', 'SONY', 'XPERIA M4 AQUA'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 2, '14.55 x 7.26 x 0.73');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 36, 'Cortex-A53');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 18, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 38, 'IPS');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 17, '1280 x 720');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 24, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 41, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 42, '13');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 46, '2400');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 6, '5999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (39, 51, 'http://localhost:8080/proyecto/imagenes/productos/SONY_XPERIA_M4_AQUA.jpg');

/*--------------------*/

/*'Smartphone', 'Motorola', 'MOTO G4 PLAY'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 2, '14.4 x 7.2 x 0.9');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 36, 'Snapdragon 410');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 18, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 38, 'IPS');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 17, '1280 x 720');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 24, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 42, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 46, '2800');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 6, '5499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (40, 51, 'http://localhost:8080/proyecto/imagenes/productos/Motorola_MOTO%20G4_PLAY.jpg');

/*'Smartphone', 'Motorola', 'MOTO G4'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 2, '15.3 x 7.6 x 0.9');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 36, 'Snapdragon 617');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 18, '5.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 38, 'IPS');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 17, '1920 x 1080');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 42, '13');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 46, '3000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 6, '6999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (41, 51, 'http://localhost:8080/proyecto/imagenes/productos/Motorola_MOTO_G4.jpg');

/*--------------------*/

/*'Smartphone', 'Samsung', 'GALAXY J5'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 2, '14.58 x 7.23 x 0.81');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 36, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 18, '5.2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 38, 'Super Amoled');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 17, '1280 x 720');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 24, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 42, '13');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 46, '3100');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 6, '6999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (42, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J5.jpg');

/*'Smartphone', 'Samsung', 'GALAXY J1'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 2, '13 x 6.7 x 0.9');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 36, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 18, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 38, 'Super Amoled');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 17, '800 x 480');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 24, '1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 41, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 42, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 45, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 46, '1900');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 6, '3499');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (43, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J1.jpg');

/*'Smartphone', 'Samsung', 'GALAXY J7'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 2, '15.17 x 7.6 x 0.78');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 36, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 18, '5.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 38, 'Super Amoled');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 17, '1280 x 720');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 24, '1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 42, '13');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 46, '3300');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 6, '7999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (44, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J7.jpg');

/*'Smartphone', 'Samsung', 'GALAXY J2 PRIME'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 2, '14.4 x 7.2 x 0.89');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 36, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 18, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 38, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 17, '960 x 540');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 24, '1');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 41, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 42, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 46, '2600');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 6, '3999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (45, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J2_PRIME.jpg');

/*'Smartphone', 'Samsung', 'GALAXY S7 EDGE'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 2, '15 x 7.2 x 0.7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 36, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 18, '5.5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 38, 'Super Amoled QHD');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 17, '2560 x 1440');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 41, '32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 42, '12');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 46, '3600');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 6, '22999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (46, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_S7_EDGE.jpg');

/*'Smartphone', 'Samsung', 'NOTE 5'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 2, '15.32 x 7.61 x 0.76');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 36, 'Exynos 7420');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 18, '5.7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 38, 'Super Amoled QHD');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 17, '2650 x 1440');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 24, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 41, '32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 42, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 46, '3000');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 6, '18999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (47, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_NOTE%205.jpg');

/*'Smartphone', 'Samsung', 'GRAND PRIME'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 2, '14.48 x 7.21 x 0.86');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 36, 'No especificado');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 18, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 38, 'TFT');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 17, '960 x 540');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 24, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 41, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 42, '8');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 45, '5');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 46, '2600');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 6, '5999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (48, 51, 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GRAND_PRIME.jpg');

/*--------------------*/

/*'Smartphone', 'Apple', 'iPhone 7'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 2, '13.8 x 6.7 x 0.7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 35, 'iOS');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 36, 'A10');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 18, '4.7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 38, 'Retina');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 17, '1334 x 750');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 24, '3');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 41, '32');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 42, '12');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 45, '7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 46, '1960');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 6, '27999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (49, 51, 'http://localhost:8080/proyecto/imagenes/productos/Apple_iPhone_7.jpg');

/*'Smartphone', 'Apple', 'iPhone SE'*/
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 2, '12.3 x 5.8 x 0.7');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 35, 'Android');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 36, 'A9');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 18, '4');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 38, 'Retina');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 17, '1136 x 640');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 24, '2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 41, '16');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 42, '12');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 43, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 44, 'true');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 45, '1.2');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 46, '1624');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 6, '16999');
insert into productos (artefacto_id, caracteristica_id, descripcion_caracteristica) values (50, 51, 'http://localhost:8080/proyecto/imagenes/productos/Apple_iPhone_SE.jpg');



create table artefactos
(id int not null primary key,
nombre varchar(18) not null,
marca varchar(15) not null,
modelo varchar(20) not null,
imagen varchar(200) not null);

/*SELECT * FROM productosventas.artefactos
where id = 1;*/

/*Artefactos*/
/*insert into artefactos values (id, 'Tipo de Artefacto', 'Marca', 'Modelo');*/


/*Electrodomesticos:*/
insert into artefactos values (1, 'Cocina', 'Whirlpool', 'WFX56EGDNA', 'http://localhost:8080/proyecto/imagenes/productos/Whirlpool_WFX56EGDNA.jpg');
insert into artefactos values (2, 'Cocina', 'Whirlpool', 'WF560XT', 'http://localhost:8080/proyecto/imagenes/productos/Whirlpool_WF560XT.jpg');
insert into artefactos values (3, 'Cocina', 'Whirlpool', 'WFX56DX', 'http://localhost:8080/proyecto/imagenes/productos/Whirlpool_WFX56DX.jpg');
insert into artefactos values (4, 'Cocina', 'Patrick', 'CPF8251MVS', 'http://localhost:8080/proyecto/imagenes/productos/Patrick_CPF8251MVS.jpg');
insert into artefactos values (5, 'Cocina', 'Patrick', 'CPF2251BVS', 'http://localhost:8080/proyecto/imagenes/productos/Patrick_CPF2251BVS.jpg');
insert into artefactos values (6, 'Cocina', 'Patrick', 'CPF9651MVS', 'http://localhost:8080/proyecto/imagenes/productos/Patrick_CPF9651MVS.jpg');
insert into artefactos values (7, 'Cocina', 'Domec', 'CTOBAV', 'http://localhost:8080/proyecto/imagenes/productos/Domec_CTOBAV.jpg');
insert into artefactos values (8, 'Cocina', 'Domec', 'CXUPV', 'http://localhost:8080/proyecto/imagenes/productos/Domec_CXUPV.jpg');
insert into artefactos values (9, 'Cocina', 'Domec', 'CDXULEAV', 'http://localhost:8080/proyecto/imagenes/productos/Domec_CDXULEAV.jpg');
insert into artefactos values (10, 'Cocina', 'Domec', 'CBUPV', 'http://localhost:8080/proyecto/imagenes/productos/Domec_CBUPV.jpg');
    
insert into artefactos values (11, 'Aire Acondicionado', 'Samsung', 'AR12KSFHCWK', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_AR12KSFHCWK.jpg');
insert into artefactos values (12, 'Aire Acondicionado', 'Samsung', 'AR18KSFHCWK', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_AR18KSFHCWK.jpg');
insert into artefactos values (13, 'Aire Acondicionado', 'LG', 'US-W246CSG4', 'http://localhost:8080/proyecto/imagenes/productos/LG_US-W246CSG4.jpg');
insert into artefactos values (14, 'Aire Acondicionado', 'LG', 'US-W126BRG4', 'http://localhost:8080/proyecto/imagenes/productos/LG_US-W126BRG4.jpg');
insert into artefactos values (15, 'Aire Acondicionado', 'LG', 'US-W246CRG4', 'http://localhost:8080/proyecto/imagenes/productos/LG_US-W246CRG4.jpg');
insert into artefactos values (16, 'Aire Acondicionado', 'BGH', 'BC23FN', 'http://localhost:8080/proyecto/imagenes/productos/BGH_BC23FN.jpg');
insert into artefactos values (17, 'Aire Acondicionado', 'BGH', 'BC30FN', 'http://localhost:8080/proyecto/imagenes/productos/BGH_BC30FN.jpg');
insert into artefactos values (18, 'Aire Acondicionado', 'Sanyo', 'SA916ARN', 'http://localhost:8080/proyecto/imagenes/productos/Sanyo_SA916ARN.jpg');
    
insert into artefactos values (19, 'Ventilador', 'Protalia', 'V18P', 'http://localhost:8080/proyecto/imagenes/productos/Protalia_V18P.jpg');
insert into artefactos values (20, 'Ventilador', 'Sansei', 'VPS1030', 'http://localhost:8080/proyecto/imagenes/productos/Sansei_VPS1030.jpg');


/*Televisores:*/
insert into artefactos values (21, 'TV', 'Samsung', 'UN32J4000AGCTC', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_UN32J4000AGCTC.jpg');
insert into artefactos values (22, 'TV', 'Samsung', 'UN40J5300AGCDF', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_UN40J5300AGCDF.jpg');
insert into artefactos values (23, 'TV', 'Samsung', 'UN50J5300AGCDF', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_UN50J5300AGCDF.jpg');
insert into artefactos values (24, 'TV', 'LG', '43UH6500', 'http://localhost:8080/proyecto/imagenes/productos/LG_43UH6500.jpg');
insert into artefactos values (25, 'TV', 'LG', '32LH575B', 'http://localhost:8080/proyecto/imagenes/productos/LG_32LH575B.jpg');
insert into artefactos values (26, 'TV', 'LG', '65UG8700.AWG', 'http://localhost:8080/proyecto/imagenes/productos/LG_65UG8700.AWG.jpg');
insert into artefactos values (27, 'TV', 'LG', '49LH5700', 'http://localhost:8080/proyecto/imagenes/productos/LG_49LH5700.jpg');

    
/*Notebooks*/
insert into artefactos values (28, 'Notebook', 'VAIO', 'VJF155A0111B', 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0111B.jpg');
insert into artefactos values (29, 'Notebook', 'VAIO', 'VJF155A0511W', 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0511W.jpg');
insert into artefactos values (30, 'Notebook', 'VAIO', 'VJF155A0211W', 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0211W.jpg');
insert into artefactos values (31, 'Notebook', 'VAIO', 'VJF155A0311B', 'http://localhost:8080/proyecto/imagenes/productos/VAIO_VJF155A0311B.jpg');
insert into artefactos values (32, 'Notebook', 'HP', '14-AM092LA', 'http://localhost:8080/proyecto/imagenes/productos/HP_14-AM092LA.jpg');
insert into artefactos values (33, 'Notebook', 'Positivo BGH', 'E975X', 'http://localhost:8080/proyecto/imagenes/productos/Positivo_BGH_E975X.jpg');
insert into artefactos values (34, 'Notebook', 'Positivo BGH', 'FX1000', 'http://localhost:8080/proyecto/imagenes/productos/Positivo_BGH_FX1000.jpg');
insert into artefactos values (35, 'Notebook', 'EXO', 'WINGS K2200', 'http://localhost:8080/proyecto/imagenes/productos/EXO_WINGS_K2200.jpg');
insert into artefactos values (36, 'Notebook', 'EXO', 'R9XF1445', 'http://localhost:8080/proyecto/imagenes/productos/EXO_R9X_F1445.jpg');


/*Smartphones*/
insert into artefactos values (37, 'Smartphone', 'SONY', 'XPERIA XA', 'http://localhost:8080/proyecto/imagenes/productos/SONY_XPERIA_XA.jpg');
insert into artefactos values (38, 'Smartphone', 'SONY', 'XPERIA M5', 'http://localhost:8080/proyecto/imagenes/productos/SONY_XPERIA_M5.jpg');
insert into artefactos values (39, 'Smartphone', 'SONY', 'XPERIA M4 AQUA', 'http://localhost:8080/proyecto/imagenes/productos/SONY_XPERIA_M4_AQUA.jpg');
insert into artefactos values (40, 'Smartphone', 'Motorola', 'MOTO G4 PLAY', 'http://localhost:8080/proyecto/imagenes/productos/Motorola_MOTO%20G4_PLAY.jpg');
insert into artefactos values (41, 'Smartphone', 'Motorola', 'MOTO G4', 'http://localhost:8080/proyecto/imagenes/productos/Motorola_MOTO_G4.jpg');
insert into artefactos values (42, 'Smartphone', 'Samsung', 'GALAXY J5', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J5.jpg');
insert into artefactos values (43, 'Smartphone', 'Samsung', 'GALAXY J1', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J1.jpg');
insert into artefactos values (44, 'Smartphone', 'Samsung', 'GALAXY J7', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J7.jpg');
insert into artefactos values (45, 'Smartphone', 'Samsung', 'GALAXY J2 PRIME', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_J2_PRIME.jpg');
insert into artefactos values (46, 'Smartphone', 'Samsung', 'GALAXY S7 EDGE', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GALAXY_S7_EDGE.jpg');
insert into artefactos values (47, 'Smartphone', 'Samsung', 'NOTE 5', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_NOTE%205.jpg');
insert into artefactos values (48, 'Smartphone', 'Samsung', 'GRAND PRIME', 'http://localhost:8080/proyecto/imagenes/productos/Samsung_GRAND_PRIME.jpg');
insert into artefactos values (49, 'Smartphone', 'Apple', 'iPhone 7', 'http://localhost:8080/proyecto/imagenes/productos/Apple_iPhone_7.jpg');
insert into artefactos values (50, 'Smartphone', 'Apple', 'iPhone SE', 'http://localhost:8080/proyecto/imagenes/productos/Apple_iPhone_SE.jpg');   
    
create table caracteristicas
(id int not null primary key,
nombre_de_caracteristica varchar(30) not null,
unidad_de_medida varchar(20));

/*SELECT caracteristicas.id, nombre_de_caracteristica, descripcion_caracteristica, unidad_de_medida FROM productosventas.caracteristicas
join productos on productos.caracteristica_id = caracteristicas.id
where productos.artefacto_id = 12;*/


/*Caracteristicas:*/
/*insert into caracteristicas (nombre_de_caracteristica, unidad_de_medida) values ('Caracteristica', 'Unidad de Medida (Si posee)')*/
/*id Dado por autoincremento*/

/*Caracteristicas Compartidas:*/
insert into caracteristicas values (1, 'Consumo Energetico', 'Watts');
insert into caracteristicas values (2, 'Medidas', 'cm');
insert into caracteristicas values (3, 'Eficiencia Energetica', null);
insert into caracteristicas values (6, 'Precio', null);
insert into caracteristicas values (17, 'Resolucion de Pantalla', null);
insert into caracteristicas values (18, 'Medidas de Pantalla', 'Pulgadas');
insert into caracteristicas values (24, 'RAM', 'Gb');
insert into caracteristicas values (51, 'Direccion de Imagen', null);

/*Caracteristicas de Cocinas:*/
insert into caracteristicas values (4, 'Cantidad de hornallas', null);
insert into caracteristicas values (5, 'Tipo de Fuente', null);
insert into caracteristicas values (7, 'Tipo de Conexion', null);

/*Caracteristicas de Aires Acondicionados:*/
insert into caracteristicas values (8, 'Frio', null);
insert into caracteristicas values (9, 'Calor', null);
insert into caracteristicas values (10, 'Tipo de Aire', null);
insert into caracteristicas values (11, 'Consumo Energetico en Frio', 'Watts');
insert into caracteristicas values (12, 'Consumo Energetico en Calor', 'Watts');
insert into caracteristicas values (47, 'Potencia en Frio', 'Frigorias');
insert into caracteristicas values (48, 'Potencia en Calor', 'Frigorias');
insert into caracteristicas values (49, 'Eficiencia Energetica en Frio', null);
insert into caracteristicas values (50, 'Eficiencia Energetica en Calor', null);
insert into caracteristicas values (13, 'Medidas de unidad exterior', 'cm');
insert into caracteristicas values (14, 'Medidas de unidad interior', 'cm');

/*Caracteristicas de Ventilador:*/
insert into caracteristicas values (15, 'Numero de Velocidades', null);

/*Caracteristicas de Televisores:*/
insert into caracteristicas values (16, 'Panel', null);
insert into caracteristicas values (19, 'SmartTV', null);
insert into caracteristicas values (20, 'Parlantes Sourround', null);

/*Caracteristicas de Notebook:*/
insert into caracteristicas values (21, 'CPU', null);
insert into caracteristicas values (22, 'Modelo del Procesador', null);
insert into caracteristicas values (23, 'GPU', null);
insert into caracteristicas values (25, 'Tipo de RAM', null);
insert into caracteristicas values (26, 'Tipo de Disco', null);
insert into caracteristicas values (27, 'Capacidad de Disco', 'Gb');
insert into caracteristicas values (30, 'Cantidad de Puertos USB', null);
insert into caracteristicas values (31, 'Puertos USB 2.0', null);
insert into caracteristicas values (32, 'Puertos USB 3.0', null);
insert into caracteristicas values (33, 'Unidad Lectora', null);
insert into caracteristicas values (34, 'Duracion de Bateria', 'Hs');

/*Caracteristica de Smartphone:*/
insert into caracteristicas values (35, 'Sistema Operativo', null);
insert into caracteristicas values (36, 'Procesador', null);
insert into caracteristicas values (38, 'Tipo de Pantalla', null);
insert into caracteristicas values (41, 'Memoria Interna', 'Gb');
insert into caracteristicas values (42, 'Resolucion de Camara', 'Px');
insert into caracteristicas values (43, 'Posee Flash', null);
insert into caracteristicas values (44, 'Posee Camara Frontal', null);
insert into caracteristicas values (45, 'Resolucion de Camara Frontal', 'Px');
insert into caracteristicas values (46, 'Capacidad de Bateria', 'mAmp');



drop table productos;
drop table artefactos;
drop table caracteristicas;



create table usuarios
(id int not null primary key auto_increment,
nombre_de_usuario varchar(50) not null,
clave varchar(20) not null);

create table usuariosAdministradores
(id int not null,
nombre_de_administrador varchar(50) not null,
clave varchar (20) not null);

create table registroDeCompras
(id int not null primary key auto_increment,
usuario_que_realizo_la_compra varchar(50) not null,
producto_comprado varchar(50) not null);

drop table usuarios;
drop table usuariosadministradores;
drop table registrodecompras;