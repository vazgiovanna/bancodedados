CREATE DATABASE joinAtividade;
USE joinAtividade;
	
CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes(nome) VALUES ("Carlos");
INSERT INTO clientes(nome) VALUES ("Ana");
INSERT INTO clientes(nome) VALUES ("Bruna");
INSERT INTO clientes(nome) VALUES ("Jéssica");
INSERT INTO clientes(nome) VALUES ("Victor");
INSERT INTO clientes(nome) VALUES ("Fernanda");

SELECT * FROM CLIENTES;

-- CARLOS
INSERT INTO pedidos(data_pedido,id_cliente) VALUES ('2025-02-18', 1);
INSERT INTO pedidos(data_pedido,id_cliente) VALUES ('2025-01-20', 1);
INSERT INTO pedidos(data_pedido,id_cliente) VALUES ('2024-12-02', 1);

-- ANA
INSERT INTO pedidos(data_pedido,id_cliente) VALUES ('2024-03-20', 2);

-- VICTOR 
INSERT INTO pedidos(data_pedido,id_cliente) VALUES ('2023-11-05', 5);

-- FERNANDA
INSERT INTO pedidos(data_pedido,id_cliente) VALUES ('2025-01-09', 6);

SELECT pedidos.id_pedido, pedidos.data_pedido, clientes.nome 
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente;

SELECT clientes.nome, pedidos.id_pedido, pedidos.data_pedido 
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

SELECT clientes.nome, COUNT(pedidos.id_pedido) AS total_pedidos
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
GROUP BY clientes.id_cliente;


