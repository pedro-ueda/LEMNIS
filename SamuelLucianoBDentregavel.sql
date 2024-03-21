create database ProjetoSprint1;

use ProjetoSprint1;

create table infEmpresa(
	idEmpresa int primary key auto_increment,
	nomeEmpresa varchar(40),
    cnpj char(14) not null,
    uf varchar(5),
	transporteUtilizado varchar(20),
    email varchar(65),
    senha varchar(40) not null
);

alter table infEmpresa modify column uf char(2); -- deixar o UF com uma quantidade exata de caracteres
insert into infEmpresa values 
	(default, 'frigocarne', '01234567890432', 'SP', 'Caminhão', 'frigocarne@gmail.com.br', 'frigocarne123');
    
create table formaTransporte(
	idTransporte int primary key auto_increment,
    porte varchar(15),
    quantidadeAr int,
    modelo varchar(40),
	complemento varchar(30)
);

insert into formaTransporte values 
(default, 'Médio', 2, 'Caminhão Truck', 'caminhão com baú');

create table arCond(
	idArCond int primary key auto_increment,
	marca varchar(15),
    potencia char(4),
    modelo varchar(25)
);

insert into arCond values
(default, 'Elgin', '110v', 'Eco');

create table carnes (
	idCarne int primary key auto_increment,
    tipoCorte varchar(35),
    temperatura decimal(4,2),
    umidade decimal(5,2),
    tipoCarne varchar(15)
);

alter table carnes add constraint chkTipo check ( tipoCarne in('embutido', 'defumado', 'fresco'));

insert into carnes values 
(default, 'Picanha', 01.00, 0, 'fresco'),
(default, 'T Bone', 00.00, 0, 'fresco'),
(default, 'Bife de Chorizo', 26.00, 0, 'defumado'),
(default, 'Prime Rib', 02.00, 0, 'fresco'),
(default, 'Fraldinha', 00.00, 0, 'fresco'),
(default, 'Filé Mignon', 00.00, 0, 'fresco'),
(default, 'Bife Ancho', 03.00, 0, 'fresco'),
(default, 'Shoulder Steak', 04.00, 0, 'fresco');











