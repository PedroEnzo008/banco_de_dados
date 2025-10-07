--DML
USE db_devconnect;
INSERT INTO Usuario(NomeUsuario, NomeCompleto, Email, Senha, FotoPerfilUrl)
VALUES
(	'Mateus Latorre',
	'mateus_latorre',
	'mateuslatorre@gmail.com',
	'12345ma',
	'fotoperfilmateuslatorre.com'
);

SELECT * FROM Usuario;

INSERT INTO Publicacao(Descricao,ImagemUrl,DataPublicacao,IdUsuario)
VALUES
(
	'Aura 999+...',
	'url.253635',
	'2020-10-27',
	1
);

SELECT * FROM Publicacao

INSERT INTO Curtida(IdUsuario, IdPublicacao)
VALUES
(1,1);

SELECT * FROM Curtida


INSERT INTO Comentario (Texto, DataComentario, IdPublicacao, IdUsuario)
VALUES (
	'Basquete rendeu hj',
	'2025-05-18',
	1,
	1
);

SELECT * FROM Comentario;

INSERT INTO Seguidor(IdUsuarioSeguidor, IdUsuarioSeguir)
VALUES (1, 1);

SELECT * FROM Seguidor;