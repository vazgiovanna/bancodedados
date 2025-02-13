create database lojaclassy;
use lojaclassy;

create table roupas(
	nome VARCHAR(40),
    tamanho VARCHAR (5),
    cor VARCHAR(12),
    preco VARCHAR(6)
);

insert into roupas (nome, tamanho, cor, preco) values ("Camiseta Classy Vortex", "GG", "Preto e roxo", "209,90");
insert into roupas (nome, tamanho, cor, preco) values ("Short Cargo Classy", "GG", "Preto", "149,90");
insert into roupas (nome, tamanho, cor, preco) values ("Camiseta Green World", "M", "Verde", "89,90");
insert into roupas (nome, tamanho, cor, preco) values ("Calça Reta Classy", "GG", "Branco", "169,90");
insert into roupas (nome, tamanho, cor, preco) values ("Camiseta Classy Golf", "M", "Branco", "209,90");

select * from roupas;
select * from roupas where cor = "Branco";