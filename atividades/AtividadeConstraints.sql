create database banco;
use banco;

create table contas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    saldo FLOAT,
    dataNasc date
);

insert into contas(nome, saldo, dataNasc) values ("Giovanna", 10000, '2005-04-30');
insert into contas(nome, saldo, dataNasc) values ("Arthur", 80000, '2003-06-16');
insert into contas(nome, saldo, dataNasc) values ("Yasmin", 75000, '2010-05-31');

