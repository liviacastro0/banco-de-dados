 drop database if exists concessionaria;
create database concessionaria;
use concessionaria;
create table marca(
codmarca int primary key,
nomemarca varchar(50)
);

create table modelo(
nomeModelo varchar (50),
codModelo int,
codMarca int,
primary key (codModelo),
foreign key (codMarca) references marca (codMarca)
);
show tables;
create table veiculo(
placa char(8),
chassi char(17) primary key,
cor varchar (50),
anoFabricacao smallint,
quilometragem int,
codModelo int,
foreign key (codModelo) references modelo (codModelo)
);
alter  table veiculo add foreign key(codModelo) references modelo (codModelo);
