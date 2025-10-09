USE db_Devconnect_;

-- Inserindo usuários
INSERT INTO tb_usuario (nomeCompleto, nomeDeUsuario, email, senha, fotoPerfilUrl)
VALUES 
('Yuri Alberto', 'y09', 'yurialb9@gmail.com', '1234', 'y09'),
('Memphis Depay', 'M10', 'memphis10@gmail.com', '1234', 'm10'),
('Hugo Souza', 'HS1', 'hugosouza@gmail.com', '1234', 'hs1'),
('Mathuezinho', 'MT02', 'mathuezinho@gmail.com', '1234', 'mt02'),
('Garro', 'G08', 'garro08@gmail.com', '1234', 'g08');

SELECT * FROM tb_usuario;

-- Inserindo publicações (IDs de usuários devem existir)
INSERT INTO tb_publicacao (descricao, imagemUrl, data_Publicacao, id_usuario)
VALUES 
('Gol do protagonista!', 'yuri.url', '2025-01-11', 7),
('Gol do Monstro Holandês!', 'memphis.url', '2025-02-02', 8),
('Milagre do Hugo!', 'hugo.url', '2025-03-05', 9),
('Cruzamento perfeito do Mathuezinho!', 'mathuz.url', '2025-04-10', 10);

SELECT * FROM tb_publicacao;

-- Inserindo curtidas
INSERT INTO tb_curtida (id_usuario, id_publicacao)
VALUES 
(7, 4),  -- Yuri curtiu a publicação do Memphis
(8, 5),  -- Memphis curtiu a publicação do Yuri
(9, 6);  -- Hugo curtiu a publicação do Yuri

SELECT * FROM tb_curtida;

-- Inserindo comentários
INSERT INTO tb_comentario (texto, dataComentario, id_publicacao, id_usuario)
VALUES 
('Clássico!', '2025-01-11', 5, 7),     -- Memphis comentou na publicação do Yuri
('Bem demais!', '2025-01-12', 4, 8),   -- Yuri comentou na publicação do Memphis
('Golaço!', '2025-01-15', 6, 9);       -- Mathuezinho comentou na publicação do Hugo

SELECT * FROM tb_comentario;

-- Inserindo seguidores 
INSERT INTO tb_seguidor (id_usuario_seguidor, id_usuario_seguido)
VALUES 
(1, 2),  -- Yuri segue Memphis
(2, 1),  -- Memphis segue Yuri
(3, 1),  -- Hugo segue Yuri
(4, 3);  -- Mathuezinho segue Hugo

SELECT * FROM tb_seguidor;
