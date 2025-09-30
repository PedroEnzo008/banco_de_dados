USE db_escola_T;

--listar os 3 primairos alunos 
SELECT TOP 3 matricula FROM tb_aluno;

--Lista todos os alunos em ordem crescente
SELECT matricula 
FROM tb_aluno
ORDER BY id ASC;

--listar os 3 primairos alunos que foram recem cadastrados
SELECT TOP 3 matricula
FROM tb_aluno
ORDER BY id DESC;

--lista todos os alunos
SELECT TOP nome, cpf
FROM tb_aluno
WHERE nome = 'Eloisa';

--lista o nome da escola Torloni
SELECT nome
FROM tb_escola
WHERE nome = 'Torloni';

--Mostre as turmas que tem o nome SEDUC 
SELECT nome_turma
FROM tb_turma
WHERE nome_turma = 'SEDUC';

--Exiba somente 2 alunos em ordem do mais recente para o menos recente 
SELECT TOP 2 *
FROM tb_aluno
ORDER BY id DESC;

--Mostre quantos alunos existe na base
SELECT COUNT (matricula) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novos 
SELECT MAX(data_nasc) AS idade_mais_novo FROM tb_aluno;

--Mostre os alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idade_mais_novo, MAX(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exibe a media aritmedica de notas nas provas
SELECT AVG(nota) AS media_nota FROM tb_prova;

--exiba a soma dos ids de turma 
SELECT SUM(id) FROM tb_turma;

SELECT * FROM tb_aluno;

--mostre os nomes dos alunos mais novos 
SELECT MAX(data_nasc) AS idade_mais_novo, nome, data_nasc
FROM tb_aluno
GROUP BY nome, data_nasc
ORDER BY data_nasc DESC;

--exibir quantas turmas t4em no periodo da tarde 
SELECT COUNT (id)
FROM tb_turma
WHERE periodo = 'Tarde';