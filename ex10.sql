select * from cursos
where nome='PHP';

select * from cursos
where nome like'PHP';

--LIKE case sensitive
-- WILDCARDS % _
select * from cursos
where nome like'P%';

select * from cursos
where nome like'%A';

select * from cursos
where nome like'%A%';

-- negação do like
select * from cursos
where nome not like'%A%';

select * from cursos
where nome like'__O%';

select * from cursos
where nome like'_H%';

select * from cursos
where nome like'PH%P';

-- BUSCA POR INFORMAÇÕES NO SISTEMA
select * from gafanhotos
where nome like'%SILVA%';

-- distinct
select distinct carga from cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

-- funçoes agregação

select count(*) from cursos;

select count(*) from cursos
where carga > 40;

select nome, max(carga) from cursos
order by carga;

select * from cursos
where ano = "2016";

-- valor maximo
select nome, max(totaulas)  as totalAulas from cursos
where ano = "2016";

-- valor minino
select nome, min(totaulas) from cursos
where ano = "2016";
-- soma
select sum(totaulas) from cursos
where ano = "2016";

-- media
select avg(totaulas) from cursos
where ano = "2016";