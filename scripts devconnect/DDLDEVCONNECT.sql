--ddl

CREATE DATABASE db_devconnect;	

USE db_devconnect


--TABELA USUARIO
CREATE TABLE tb_usuario(
	id_usuario				INT					IDENTITY				PRIMARY KEY,
	nomecompleto	NVARCHAR(255)		NOT NULL,
	nomeusuario		NVARCHAR(50)		UNIQUE					NOT NULL,
	email			NVARCHAR(255)		UNIQUE					NOT NULL,
	senha			NVARCHAR(50)		NOT NULL,		
	fotoPerfilUrl	NVARCHAR(150)		NULL,
);
	SELECT * FROM tb_usuario;

--TABELA PUBLICACAO
CREATE TABLE tb_publicacao(
	id				INT					IDENTITY(1, 1)			PRIMARY KEY,
	id_usuario		INT FOREIGN KEY		REFERENCES				tb_usuario(id),
	descricao		NVARCHAR(255)		NOT NULL,
	imagemUrl		NVARCHAR(255)		NOT NULL,
	datapublicacao	DATE,
	

);
SELECT * FROM tb_publicacao;


--TABELA CURTIDA 
CREATE TABLE tb_curtida(
	id				INT					IDENTITY(1, 1)			PRIMARY KEY,
	id_usuario		INT FOREIGN KEY		REFERENCES				tb_usuario(id), 
	id_publicacao	INT FOREIGN KEY		REFERENCES				tb_publicacao(id),
);

SELECT * FROM tb_curtida;

--TABELA SEGUIDOR 
CREATE TABLE tb_seguidor(
	id				INT					IDENTITY(1, 1)			PRIMARY KEY,

	id_usuario		INT FOREIGN	KEY REFERENCES					tb_usuario(id),

	);

	SELECT * FROM tb_seguidor;

--TABELA COMENTARIO

CREATE TABLE tb_comentario (
	id				INT							IDENTITY(1, 1)			PRIMARY KEY,
	id_usuario		INT FOREIGN	KEY REFERENCES							tb_usuario(id),
	id_publicacao	INT FOREIGN KEY	REFERENCES							tb_publicacao(id),
	texto			NVARCHAR(255),
	data_comentario DATE,

	);

	SELECT * FROM tb_comentario;