create database cadeirantes
default character set utf8
default collate utf8_general_ci;

use cadeirantes;

create table if not exists estudantes(
	id int auto_increment primary key,
    nome varchar(30) not null,
    numero_matricula int
) default charset=utf8;

create table if not exists cadeiras(
	id int auto_increment primary key,
    cadeira varchar(100) not null
) default charset=utf8;

create table if not exists estudantes_cadeiras(
	id int auto_increment primary key,
    id_estudante int,
    id_cadeira int,
    foreign key (id_estudante) references estudantes(id),
    foreign key (id_cadeira) references cadeiras(id)
)default charset=utf8;