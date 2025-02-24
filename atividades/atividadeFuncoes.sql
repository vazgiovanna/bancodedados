create database atividadeloja;
use atividadeloja;

create table vendas(
	id_venda INT PRIMARY KEY AUTO_INCREMENT,
	id_produto INT UNIQUE NOT NULL,
    quantidade INT(200),
    preco_unitario DECIMAL(10,2),
    id_categoria INT NOT NULL
);

insert into vendas values(1, 1, 10, 10.99,1);
insert into vendas values(2, 2, 5, 120.99,1);
insert into vendas values(3, 3, 20, 190.99 ,1);
insert into vendas values(4, 4, 3, 111.99,1);

SELECT id_categoria, SUM(quantidade * preco_unitario) AS total_vendas FROM vendas GROUP BY id_categoria ORDER BY total_vendas DESC;

create table produtos(
	id_produto INT PRIMARY KEY NOT NULL,
    nome_produto VARCHAR(100),
    preco DECIMAL(5,2),
    estoque INT(100)
);

insert into produtos values(1,"Smartphone",999.99,130);
insert into produtos values(2,"Smart TV",499.99,99);
insert into produtos values(3,"Smart Watch",2999.99,40);
insert into produtos values(4,"Tablet",1299.99,88);

UPDATE produtos SET preco = 320.00 WHERE id_produto = 1;
UPDATE produtos SET preco = 999.99 WHERE id_produto = 2;
UPDATE produtos SET preco = 720.25 WHERE id_produto = 3;
UPDATE produtos SET preco = 400.00 WHERE id_produto = 4;

SELECT id_produto, nome_produto FROM produtos WHERE nome_produto LIKE "%smart%";

create table clientes(
	id_cliente INT PRIMARY KEY NOT NULL,
    nome_cliente VARCHAR(100),
    estado VARCHAR(2)
);

insert into clientes values(1,"Pedro Henrique Martins Barbosa", "DF");
insert into clientes values(2,"Keila Aguiar da Silva", "CE");
insert into clientes values(3,"Ana Maria Martins de Oliveira", "SP");
insert into clientes values(4,"Yasmin Farias Soares", "RJ");
insert into clientes values(5,"Giovanna Aguiar Vaz", "BA");
insert into clientes values(6,"Arthur Fernandes Rodrigues", "GO");

UPDATE clientes SET id_cliente = 7 WHERE id_cliente = 6;

insert into clientes values(6,"Rita Maria Martins", "MG");

SELECT * FROM clientes WHERE estado IN ("SP","RJ","MG");