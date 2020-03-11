create database bdEstacionamento;
use bdEstacionamento;

create table tbCliente (
idCliente int primary key auto_increment, 
login varchar (40),
senha varchar (20),
idTelefoneCliente int,
foreign key (idTelefoneCliente) references tbTelefoneCliente (idTelefoneCliente)
);

create table tbVagas (
idVagas int primary key auto_increment,
numVagas int,
numVagasEsp int,
numVagasMotos int,
numVagasCarros int,
situacao varchar (20)
);

create table tbVeiculo(
idVeiculo int primary key auto_increment,
marca varchar (20),
placa varchar (9),
cor varchar (20),
modelo varchar (20),
horarioEntrada varchar (7),
horarioSaida varchar (7),
valorTotal double 
);

create table tbTelefoneUsuario(
idTelefoneUsuario int primary key auto_increment,
telefoneUsuario varchar (21)
);

create table tbTelefoneCliente(
idTelefoneCliente int primary key auto_increment,
telefoneCliente varchar (21) 
);

create table tbUsuario(
idUsuario int primary key auto_increment,
nome varchar (21), 
rg varchar (15),
cpf varchar (15),
idVeiculo int,
idTelefoneUsuario int,
foreign key (idVeiculo) references tbVeiculo(idVeiculo),
foreign key (idTelefoneUsuario) references tbTelefoneUsuario (idTelefoneUsuario)
);

create table tbSensor (
idSensor int primary key,
idVagas int,
situacao varchar (20),
foreign key (idVagas) references tbVagas (idVagas)
);



