create database revisao;
use revisao;

create table aluno(
	id_aluno int primary key auto_increment,
    nome VARCHAR(50) not null,
    email VARCHAR(80) not null,
    data_nascimento date not null
);

create table professor(
	id_professor int primary key auto_increment,
    nome VARCHAR(50) not null,
    email VARCHAR(80) not null,
    data_nascimento date not null,
    especialidade VARCHAR(20) not null
);

create table curso(
	id_curso int primary key auto_increment,
    nome VARCHAR(50) not null,
    descricao VARCHAR(200),
    fk_professor int not null,
    foreign key (fk_professor) references professor(id_professor)
);

create table matricula(
	id_matricula int primary key auto_increment,
    fk_aluno int not null,
    fk_curso int not null,
    data_matricula date not null,
    foreign key (fk_aluno) references aluno(id_aluno),
    foreign key (fk_curso) references curso(id_curso)
);

create table avaliacao(
	id_avaliacao int primary key auto_increment,
    fk_matricula int not null,
    nota float,
    data_avaliacao date not null,
    foreign key (fk_matricula) references matricula(id_matricula)
);

insert into aluno(nome, email, data_nascimento) values ("Giovanna Vaz", "giovannaavaz@gmail.com", "2005-04-30");
insert into aluno(nome, email, data_nascimento) values ("Yasmin Farias", "yassoaresf@gmail.com", "2010-05-31");
insert into aluno(nome, email, data_nascimento) values ("Arthur Fernandes", "thurfernandes@gmail.com", "2003-06-16");

insert into professor(nome, email, data_nascimento, especialidade) values ("Victor Rohod", "vsrohod@gmail.com", "2003-07-21", "Front-end");
insert into professor(nome, email, data_nascimento, especialidade) values ("Marcelo Eustáquio", "marceustaquio@gmail.com", "1985-10-5", "Sistemas");
insert into professor(nome, email, data_nascimento, especialidade) values ("William Malvezzi", "wmalvezzitech@gmail.com", "1970-12-21", "Banco de Dados");

insert into curso(nome, descricao, fk_professor) values ("Front-end", "Curso com enfoque em desenvolvento web e seus frameworks", 1);
insert into curso(nome, descricao, fk_professor) values ("Sistemas", "Soluções, sistemas e arquitetura computacional", 2);
insert into curso(nome, descricao, fk_professor) values ("Banco de Dados", "Laboratório de banco de dados: modelagem e implementação", 3);

select curso.nome, professor.nome from curso join professor where curso.fk_professor = id_professor;

insert into matricula(data_matricula, fk_curso, fk_aluno) values ("2024-09-02", 3, 1);
insert into matricula(data_matricula, fk_curso, fk_aluno) values ("2024-10-02", 2, 2);
insert into matricula(data_matricula, fk_curso, fk_aluno) values ("2024-11-02", 1, 3);

insert into avaliacao(fk_matricula, nota, data_avaliacao) values (1, 9.0, "2024-02-25");
insert into avaliacao(fk_matricula, nota, data_avaliacao) values (2, 7.5, "2024-02-25"); 
insert into avaliacao(fk_matricula, nota, data_avaliacao) values (3, 2.8, "2024-02-25"); 

-- selecionando todos os alunos cadastrados
select * from aluno;

-- selecionando os nomes dos cursos e seus respectivos professores
select curso.nome as nome_curso, professor.nome as nome_professor from curso join professor
on curso.fk_professor = professor.id_professor;

-- listando os alunos matriculados no curso de banco de dados
select aluno.nome as nome_aluno from aluno join matricula on aluno.id_aluno = matricula.fk_aluno
join curso on matricula.fk_curso = curso.id_curso where curso.nome = "Banco de Dados";

-- quantos alunos estão matriculados em cada curso
select curso.nome as nome_curso, count(matricula.id_matricula) as total_alunos from curso
join matricula on curso.id_curso = matricula.fk_curso group by curso.nome;

-- media dos alunos em um curso especifico
select curso.nome as nome_curso, avg(avaliacao.nota) as media_notas from avaliacao join matricula 
on avaliacao.fk_matricula = matricula.id_matricula join curso on matricula.fk_curso = curso.id_curso
where curso.nome = "Banco de Dados" group by curso.nome;

-- lista de alunos que nao receberam a nota ainda
select aluno.nome as nome_aluno from aluno join matricula on aluno.id_aluno = matricula.fk_aluno
left join avaliacao on matricula.id_matricula = avaliacao.fk_matricula where avaliacao.nota is null;

