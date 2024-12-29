
-- https://www.alura.com.br/artigos/como-utilizar-os-comandos-insert-select-update-e-delete-em-sql
-- 1
select nome from gafanhotos
where sexo="f";

-- 2
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

--  3
select nome,profissao from gafanhotos
where profissao="programador";

select nome,profissao from gafanhotos
where profissao="programador" and sexo="m";

-- 4
select nome from gafanhotos
where sexo="f" and nacionalidade="brasil" and nome like "J%";

-- 5
select nome,nacionalidade from gafanhotos
where peso < 100 and nacionalidade="brasil" and nome like "%silva%";

select nome,nacionalidade from gafanhotos
where peso < 100 and nacionalidade!="brasil" and nome like "%silva%";
-- 6

select max(altura) from gafanhotos
where nacionalidade="brasil" and sexo="m";

-- 7
select avg(peso) as pesoMedio from gafanhotos;

-- 8 

select min(peso) from gafanhotos
where nacionalidade!="brasil" and nascimento between '1190-01-01' and '2000-12-31';

--9
select count(*) from gafanhotos
where altura > '1.90' and sexo="F";

select count(*) from gafanhotos
where altura > 1.90 and sexo="F";