CREATE DATABASE LivrariaDB;
use LivrariaDB;

create table autores(
	id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(40)
);

create table livros(
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    ano_publicacao YEAR,
    id_autor_do_livro INT NOT NULL,
    FOREIGN KEY(id_autor_do_livro) REFERENCES autores(id_autor)
);

INSERT INTO autores(nome, nacionalidade) VALUES ("Augusto Cury", "Brasileiro");
INSERT INTO autores(nome, nacionalidade) VALUES ("Raphael Montes", "Brasileiro");
INSERT INTO autores(nome, nacionalidade) VALUES ("Clarice Lispector", "Ucraniana");

INSERT INTO livros(titulo, ano_publicacao, id_autor_do_livro) VALUES ("O vendedor de sonhos", "2008", 1);
INSERT INTO livros(titulo, ano_publicacao, id_autor_do_livro) VALUES ("Jantar Secreto", "2016", 2);
INSERT INTO livros(titulo, ano_publicacao, id_autor_do_livro) VALUES ("Suicidas", "2012", 2);
INSERT INTO livros(titulo, ano_publicacao, id_autor_do_livro) VALUES ("Felicidade Clandestina", "1971", 3);
INSERT INTO livros(titulo, ano_publicacao, id_autor_do_livro) VALUES ("A Hora da Estrela", "1977", 3);

