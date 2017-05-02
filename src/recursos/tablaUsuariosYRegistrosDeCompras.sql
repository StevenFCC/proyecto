create database usuariosYRegistrosDeCompras;
use usuariosYRegistrosDeCompras;

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


