create database usuariosYRegistrosDeCompras;
use usuariosYRegistrosDeCompras;

create table usuarios
(id int not null primary key auto_increment,
nombre_de_usuario varchar(50) not null,
contraseña varchar(20) not null);

create table usuariosAdministradores
(id int not null,
nombre_de_administrador varchar(50) not null,
contraseña varchar (20) not null);

create table registroDeCompras
(id int not null,


