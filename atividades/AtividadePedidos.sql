create database goblinGummy;
use goblinGummy;

create table clientes(
	nome VARCHAR(100), 
	email VARCHAR(255), 
    telefone VARCHAR(18)
    );
    
insert into clientes(nome, email, telefone) values ("Giovanna", "giovannagamer@gmail.com", "(61)4002-8922");
insert into clientes(nome, email, telefone) values ("Pedro", "", "");
insert into clientes(nome, email, telefone) values ("Henrique", "teste", null);

alter table clientes modify column email VARCHAR(255) UNIQUE NOT NULL;

-- produto
create table produtos(
id INT UNIQUE NOT NULL,
nome VARCHAR(255) NOT NULL,
peso DECIMAL(6,2) NOT NULL,
cor VARCHAR(100)
);

insert into produtos values(1,"Goma Energética Sabor Original", 0.90, "Verde");
insert into produtos values(2,"Goma Energética Sabor Laranja", 0.90, "Laranja");
select * from produtos;

-- pedido
create table pedidos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pagamento VARCHAR(80),
    valor DECIMAL(6,2),
	produto_id INT NOT NULL, 
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

insert into pedidos(pagamento, valor, produto_id) values ("Pix", 79.90, 1);
select * from pedidos;
select * from pedidos where id = 1;