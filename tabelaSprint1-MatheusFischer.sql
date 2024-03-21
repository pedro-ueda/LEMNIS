create database ProjetoSprint1;

use ProjetoSprint1;

create table infEmpresa(
	idEmpresa int primary key auto_increment,
	nomeEmpresa varchar(40),
    cnpj char(14) not null,
    uf char(2),
	transporteUtilizado varchar(20),
    telefone char(9),
    email varchar(65),
    senha varchar(40) not null
);

alter table infEmpresa modify column telefone char(11); -- Mudança na credencial do número, para ser possivel digitar o seu respectivo ddd
insert into infEmpresa values 
	(default, 'Friboi', '01234567890123', 'RJ', 'Caminhão', '11987654321', 'equipedevendas@friboi.com.br', 'friboi1325');
    
create table formaTransporte(
	idTransporte int primary key auto_increment,
    porte varchar(15),
    qtdArCond int,
    modelo varchar(40),
	complemento varchar(30)
);
alter table formaTransporte modify column complemento varchar(120); -- Mudança na quantidade de caracteres que podemos inserir no complemento, para podermos obter dados mais completos
insert into formaTransporte values 
(default, 'Médio', 2, 'Caminhão Truck', 'caminhão com baú frigorífico para rodovias');

create table arCond(
	idArCond int primary key auto_increment,
	marca varchar(15),
    potencia char(4),
    modelo varchar(25)
);

insert into arCond values
(default, 'Elgin', '220V', 'Eco inverter');

create table carnes (
	idCarne int primary key auto_increment,
    corte varchar(35),
    temperatura decimal(4,2),
    umidade decimal(5,2),
    tipo varchar(15)
);

alter table carnes add constraint chkTipo check ( tipo in('embutido', 'defumado', 'fresco'));

insert into carnes values 
(default, 'Picanha', 01.00, 0, 'fresco'),
(default, 'T Bone', 00.00, 0, 'fresco'),
(default, 'Bife de Chorizo', 26.00, 0, 'defumado'),
(default, 'Prime Rib', 02.00, 0, 'fresco'),
(default, 'Fraldinha', 00.00, 0, 'fresco'),
(default, 'Filé Mignon', 00.00, 0, 'fresco'),
(default, 'Bife Ancho', 03.00, 0, 'fresco'),
(default, 'Shoulder Steak', 04.00, 0, 'fresco');











