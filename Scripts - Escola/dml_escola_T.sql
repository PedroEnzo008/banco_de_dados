--Usar um banco ja criado 
USE db_escola_T

--INSERIR UM REGISTRO NA TABELA ESCOLA 
INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni', 'Estrada das lágrimas, 579 - São José');

SELECT * FROM tb_escola;

--INSERIR UM REGISTRO NA TABELA TURMA 

INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Manhã', 16, 'SEDUC'),
(2, 'Tarde', 16, 'SEDUC'),
(2, 'Noite', 16, 'SEDUC');

SELECT * FROM tb_turma;

--INSERIR UM REGISTRO NA TABELA PROVA 

INSERT INTO tb_prova (nome_professor, materia, horario, nota, data_prova)
VALUES('Ana CLaudia', 'Educação Física', '13:15:00', 0, '2025-09-25'),
('Rogeria', 'Matemática', '14:20:00', 10, '2025-09-26'),
('Adair', 'Sociologia', '08:30:00', 7.5, '2025-09-29');

SELECT * FROM tb_prova


--INSERIR UM REGISTRO NA TABELA ALUNO


INSERT INTO tb_aluno (nome, cpf, matricula, data_nasc, id_escola)
VALUES ('Lucas Otávio', '06015358980', '1134678492', '2001-08-21', 1),
('Flávia Hadassa', '05862539557', '6472938172', '2002-04-13', 1),
('Victor LucaS', '02980118834', '0293746352', '2007-03-19', 1);

INSERT INTO tb_aluno (nome, cpf, matricula, data_nasc, id_escola)
VALUES ('Giovanni Lorenzo', '62970344270', '1426324196', '2000-05-28', 1),
('Tiago Bryan', '36696134123', '6576432819', '2004-11-17', 1);

SELECT * FROM tb_aluno;
