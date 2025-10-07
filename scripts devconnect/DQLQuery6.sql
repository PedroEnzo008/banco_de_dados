USE db_devconnect

--Listar usuario em ordem crescente
SELECT NomeCompleto
FROM  Usuario
ORDER BY id ASC;

--Listar em ordem decrescente
SELECT NomeCompleto
FROM Usuario
ORDER BY id DESC;