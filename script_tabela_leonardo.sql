create database TILICE;
use TILICE;

create table usuario(
id_usuario int primary key auto_increment,
usuario varchar(50),
email varchar(50) not null,
nome varchar(50) not null,
senha varchar (50) not null,
cpf char(11) not null unique,
dt_cadastro_usuario datetime default now(),
constraint cEmail check(email like '%@%' and email like'%.%')
);
create table container(
	id_container int primary key auto_increment,
    codigoDeSerie varchar(20),
    dtContainer datetime default now()
);

create table registro(
	id_registro int primary key auto_increment,
    temperatura decimal(5,2),
    umidade decimal(5,2),
    dtRegistro datetime default now()
);
insert into usuario(usuario,email,nome,senha,cpf) values
('Leonardo123','leonardoernersilva@gmail.com','Leonardo Werner','12345','50343078805'),
('Julialinda','julia@gmail.com','Julia Marques','93402','45067045606'),
('Joãopedro','joao@gmail.com','João Pedro','78696','8976886705');

insert into container (codigoDeSerie) values 
('CONT-D100'),
('CONT-E200'),
('CONT-F300');

insert into registro(temperatura,umidade) values
('9.50','12.40'),
('-4.20','13.40'),
('4.25','12.50');


update usuario set usuario='Leleo' where id_usuario=1;

update usuario set usuario='Juliamarques' where id_usuario=2;

update usuario set usuario='Joaobrabo' where id_usuario=3;

update container set codigoDeSerie ='CONT-G300' where id_container=3;
select *from container;

select*from usuario;

select usuario from usuario where usuario like '%o';

select temperatura from registro where temperatura<0;

select concat('temperatura:',temperatura,'umidade:',umidade) as Temperatura_umidade from registro;

insert into usuario(usuario,email,nome,senha,cpf)values
('Julialinda','julia@gmail.com','Julia Duartes','23245','875984759');
insert into container(codigoDeSerie) values
('CONT-H500'),
('CONT-I600');
