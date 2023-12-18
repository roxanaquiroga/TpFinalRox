create database oradores;

create table orador;

use oradores;
create table orador(
nombre varchar(255),
apellido varchar(255),
tema varchar(255)
);

describe orador;

insert into orador values ( "Benito", "Pares", "paradigma social de la discapacidad");

insert into orador values (" José", "Gimenez", "paradigma tradicional");

insert into orador values (" Mónica", "Mantilla", "paradigma rehabilitador");

insert into orador values ( "Beatriz", "Monte", " discapacidad intelectual");

select * from orador;








