use cadastro;

describe gafanhoto;

alter table gafanhotos
add column cursopreferido int;

SELECT * FROM `gafanhotos`;

-- chave estrangeira
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

-- update
update gafanhotos set cursopreferido=6 
where id=1;

update gafanhotos set cursopreferido=7
where id=2;

update gafanhotos set cursopreferido=8
where id=3;

update gafanhotos set cursopreferido=18
where id=4;

update gafanhotos set cursopreferido=20
where id=5;

update gafanhotos set cursopreferido=5
where id=6;

-- delete

delete from cursos
where idcurso = 28;

-- inner join
-- https://www.w3schools.com/sql/sql_join_inner.asp

SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;


SELECT nome, cursopreferido from gafanhotos;
SELECT nome, ano from cursos;

SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
FROM gafanhotos
INNER JOIN cursos ON gafanhotos.cursopreferido = cursos.idcurso;

-- https://www.w3schools.com/sql/sql_having.asp

-- OUTER JOIN

-- LEFT OUTER JOIN -> a esqueda LEFT JOIN
SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
FROM gafanhotos
LEFT OUTER JOIN cursos ON gafanhotos.cursopreferido = cursos.idcurso;

-- RIGHT OUTER JOIN -> a direita RIGHT JOIN
SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
FROM gafanhotos
RIGHT OUTER JOIN cursos ON gafanhotos.cursopreferido = cursos.idcurso;

-- https://www.alura.com.br/artigos/como-utilizar-os-comandos-insert-select-update-e-delete-em-sql