CREATE DATABASE JoinAula;
USE JoinAula;

CREATE TABLE endereco(
	id INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(255),
    numero VARCHAR(100),
    pessoa_id INT NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

CREATE TABLE pessoa(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    nacionalidade VARCHAR(20)
);

INSERT INTO pessoa(nome, nacionalidade) VALUES ("Piter", "Britânico");
INSERT INTO pessoa(nome, nacionalidade) VALUES ("Arthur", "Italiano");
INSERT INTO pessoa(nome, nacionalidade) VALUES ("Yasmin", "Sul-coreana");
INSERT INTO pessoa(nome, nacionalidade) VALUES ("Giovanna Sayuri", "Japonesa");

INSERT INTO endereco(rua, numero, pessoa_id) VALUES ("Ceilândia Sul", "QNN 4", 1);
INSERT INTO endereco(rua, numero, pessoa_id) VALUES ("Riacho Fundo II", "QN 15A", 2);
INSERT INTO endereco(rua, numero, pessoa_id) VALUES ("Riacho Fundo II", "QN 7", 3);
INSERT INTO endereco(rua, numero, pessoa_id) VALUES ("Tokyo", "Setagaya", 4);

-- INNER
SELECT pessoa.nome, endereco.rua FROM pessoa JOIN endereco ON pessoa.id = endereco.id;
SELECT pessoa.nome, endereco.rua FROM endereco RIGHT JOIN pessoa ON pessoa.id = endereco.id;
SELECT pessoa.nome, endereco.rua FROM pessoa LEFT JOIN endereco ON pessoa.id = endereco.id;

