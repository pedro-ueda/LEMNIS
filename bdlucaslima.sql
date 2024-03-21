create database projetosprint1; -- CRIAMOS O BANCO DE DADOS CHAMADO "projetoSprint";

use projetosprint1; -- ESTAMOS USANDO O BANCO DE DADOS CHAMADO "projetoSprint";

create table cadEmpresa(
	idEmpresa int  auto_increment primary key,
	cnpj char(14),
    nome varchar(40),
    uf char(2),
    senha varchar(40),
    meioDeTransporte varchar(20)
);

insert into cadEmpresa values 
(default, '15811116000188', 'lima carnes', 'SP', 'lima1234', 'Caminhão'); -- SIMULAÇÃO DE UM CADASTRO DE UMA EMPRESA;

select * from cadEmpresa;

create table arCondicionado(
	idArCond int auto_increment primary key,
	marca varchar(40),
    potencia varchar(5),
    modelo varchar(40)
);

insert into arCondicionado values
(default, 'consul', '220V', 'Frost Free');


select * from arCondicionado;

create table carnes (
	idCarne int primary key,
    corte varchar(30),
    temperatura varchar(6),
    umidade decimal(5,2)
);

alter table carnes modify column idCarne int auto_increment;
alter table carnes add column tipo varchar(40);

describe carnes;

insert into carnes values 
(default, 'Filé Mignon', 00.00, 0, 'fresco'),
(default, 'Picanha', 01.00, 0, 'fresco'),
(default, 'Bife Ancho', 03.00, 0, 'fresco'),
(default, 'T Bone', 00.00, 0, 'fresco'),
(default, 'Shoulder Steak', 04.00, 0, 'fresco'),
(default, 'Prime Rib', 02.00, 0, 'fresco'),
(default, 'Bife de Chorizo', 26.00, 0, 'defumado'),
(default, 'Fraudinha', 00.00, 0, 'fresco');









