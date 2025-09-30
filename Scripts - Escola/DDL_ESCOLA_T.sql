--Este comando cria um novo banco de dados 
CREATE DATABASE db_escola_T;

--ESSE COMANDO USA O BD
USE db_escola_T

--Este comando cria uma nova tabela
CREATE TABLE tb_escola(
	id			INT				IDENTITY(1, 1) PRIMARY KEY,
	nome		NVARCHAR(255)	NOT NULL,
	endereco	NVARCHAR(255)	NOT NULL,

);

--DQL REALIZA CONSULTAS NAS TABELAS DE UM RESPECTIVO BANCO
SELECT * FROM tb_escola;

--TABELA TURMA 
CREATE TABLE tb_turma (
	id				INT				IDENTITY(1, 1)		PRIMARY KEY,
	serie			INT				NOT NULL,
	periodo			NCHAR(5)		NOT NULL,
	numero_sala		TINYINT			NOT NULL,
	nome_turma		NVARCHAR(100)	NOT NULL,
);

SELECT * FROM tb_turma;

--TABELA PROVA
CREATE TABLE tb_prova (
	id						INT							IDENTITY(1, 1)		PRIMARY KEY,
	nome_professor			NVARCHAR(100)				NOT NULL,
	materia					NVARCHAR(100)				NOT NULL,
	horario					TIME						NOT NULL,
	nota					DECIMAL(3, 1)				NOT NULL,
	data_prova				DATE						NOT NULL,

);

SELECT * FROM tb_prova;

--TABELA ALUNO
CREATE TABLE tb_aluno(
	id						INT							IDENTITY(1, 1)		PRIMARY KEY,
	nome					NVARCHAR(255)									NOT NULL,
	cpf						NCHAR(11)					UNIQUE				NOT NULL,
	matricula               NVARCHAR(10)				UNIQUE				NOT NULL,
	data_nasc				DATE											NOT NULL,

	id_escola				INT FOREIGN KEY				REFERENCES			tb_escola(id)
);

SELECT * FROM tb_aluno;

--TABELA INTERMEDIARIA TURMAPROVA
CREATE TABLE tb_turma_prova(
	id_turma				INT							NOT NULL,
	id_prova				INT                         NOT NULL,

	PRIMARY KEY(id_turma, id_prova)
);

SELECT * FROM tb_turma_prova;

--MODIFICAR UMA COLUNA 
ALTER TABLE tb_aluno
ALTER COLUMN id_escola		INT							NOT NULL;