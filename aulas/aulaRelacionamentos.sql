CREATE DATABASE relacionamentos;
use relacionamentos;

CREATE TABLE alunos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(5)
);

CREATE TABLE contatos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(20),
    aluno_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id) 
);

INSERT INTO alunos(nome, turma) VALUES ("Juan", "002M");
INSERT INTO alunos(nome, turma) VALUES ("Rarysson", "003V");
INSERT INTO alunos(nome, turma) VALUES ("Juan", "003V");

INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)99999999",1);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)88888888",1);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)77777777",2);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)66666666",2);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)55555555",3);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)44444444",3);

SELECT * FROM alunos;
SELECT * FROM contatos;
SELECT * FROM contatos WHERE aluno_id = 3;
SELECT *, alunos.nome, alunos.turma, contatos.telefone FROM alunos JOIN contatos ON contatos.aluno_id;

-- one to many
CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

-- macete, quem é o estrangeiro e de onde vem
CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    valorTotal FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(nome) VALUES ("George");
INSERT INTO pedidos(valorTotal, cliente_id) VALUES (90,1);
INSERT INTO pedidos(valorTotal, cliente_id) VALUES (80,1);
INSERT INTO pedidos(valorTotal, cliente_id) VALUES (100,1);
INSERT INTO pedidos(valorTotal, cliente_id) VALUES (90,1);