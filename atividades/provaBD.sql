create database provaBD;
use provaBD;

create table clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80),
	email VARCHAR(80),
    telefone VARCHAR(20),
    endereco VARCHAR(125)
);

create table pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    fk_cliente INT NOT NULL,
    data_pedido DATE,
    total FLOAT,
    STATUS VARCHAR(20),
    FOREIGN KEY (fk_cliente) REFERENCES clientes(id_cliente)
);

create table fornecedores(
	id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(80),
    contato VARCHAR(20),
    endereco VARCHAR(125)
);

create table produtos(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(225),
    data_pedido DATE,
    fk_fornecedor INT NOT NULL,
    FOREIGN KEY (fk_fornecedor) REFERENCES fornecedores(id_fornecedor),
    estoque INT(10)
);

create table pagamentos(
	id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    fk_pedido INT NOT NULL,
    metodo_pagamento VARCHAR(20),
    status_pagamento VARCHAR(20),
    valor_pago FLOAT
);

INSERT INTO clientes(nome, email, telefone, endereco) VALUES ("Giovanna", "loudgiovanna@gmail.com", "(61)4002-8922", "Jardim Marista - Goiânia - GO");

select * from clientes;