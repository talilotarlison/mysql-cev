
-- DISTINCT
select DISTINCT nacionalidade from gafanhotos;

-- GROUP BY
-- https://www.w3schools.com/sql/sql_groupby.asp

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

SELECT nacionalidade, count(*) as quantidade
FROM gafanhotos
GROUP BY nacionalidade
ORDER BY nacionalidade;

select  nacionalidade from gafanhotos 
where nacionalidade = "portugal";

SELECT carga, count(nome) as quantidade
FROM cursos
GROUP BY carga;

SELECT carga, count(nome) as quantidade
FROM cursos where totaulas = 30
GROUP BY carga;

-- having
SELECT ano, count(*) as quantidade
FROM cursos 
GROUP BY ano having count(ano) >= 4
order by count(*) desc;

SELECT ano, count(*) as quantidade 
FROM cursos  where  totaulas > 30
GROUP BY ano having ano >= 2013
order by count(*) desc;

select avg(carga) from cursos;


SELECT carga, count(*) as quantidade 
FROM cursos  where  ano > 2015
GROUP BY carga having carga > (select avg(carga) from cursos)
order by count(*) desc;