--dml

USE db_devconnect

--INSERIR UM REGISTRO NA TABELA USUARIO
INSERT INTO tb_usuario (id, nomecompleto, nomeusuario, email, senha, fotoPerfilUrl)
VALUES (1, 'Pedro Enzo Nunes De Moura', 'pedro@gmail.com', 1234, 'url.perfil');

SELECT * FROM tb_usuario;

--INSERIR UM REGISTRO NA TABELA PUBLICACAO
INSERT INTO tb_publicacao (id, descricao, imagemUrl, datapublicacao)
VALUES (1, 'eae pessoal', 'url.com', '2025-03-25');

SELECT * FROM  tb_publicacao;

--INSERIR UM REGISTRO NA TABELA CURTIDA
INSERT INTO tb_curtida (id_curtida, id_usuario, id_publicacao)
VALUES (1, 2, 3);

SELECT * FROM  tb_curtida;

--INSERIR UM REGISTRO NA TABELA SEGUIDOR

INSERT INTO tb_seguidor (id_seguidor, id_usuario)
VALUES (1,2);

SELECT * FROM  tb_seguidor;

-- INSERIR UM REGISTRO NA TABELA COMENTARIO

INSERT INTO tb_comentario (id_comentario, id_usuario, id_publicacao, texto, data_comentario)
VALUES (1, 2, 3, 'videos legais ', '2025-5-16')

SELECT * FROM 

