create database livraria;

USE livraria;

create table area (
codarea smallint primary key,
nomearea varchar(100) not null
);
show tables;
desc table livro;
-- alter table;
create table livro(
ISBN int primary key,
anopublicacao date not null,
nome varchar(100),
editora varchar(100),
codarea smallint,
foreign key(codarea) references area (codarea)
);

create table aluno(
matricula int primary key,
nomealuno varchar(45));

create table emprestado(
dataDP date,
dataDE date,
dataEM date,
ISBN int,
matricula int,
primary key(ISBN, dataEM, matricula),
foreign key (ISBN) REFERENCES livro(ISBN),
foreign key (matricula) REFERENCES aluno(matricula)
);
drop table emprestado;