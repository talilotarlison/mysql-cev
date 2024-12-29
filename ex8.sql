select * from cursos;

select * from cursos order by nome;

select * from cursos order by nome asc;

select * from cursos order by nome desc;

describe cursos;

select nome,carga,ano from cursos order by nome;

select ano,nome,carga from cursos order by ano;

select ano,nome,carga from cursos order by ano,nome;

select * from cursos 
where ano=2016
order by nome;

-- result set nome para o resultado do select
select nome,carga from cursos 
where ano=2016
order by nome;

-- operadores: < , > , <= , >= , <> , !=
select nome,descricao , ano from cursos 
where ano<=2015
order by nome, ano;

select nome, ano from cursos
where ano between 2014 and 2016;

-- between
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

-- in 
select nome, ano, descricao from cursos
where ano in(2014, 2016)
order by ano desc, nome asc;

-- operadores logicos
select nome, ano, descricao, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

select nome, ano, descricao, carga, totaulas from cursos
where carga > 35 or totaulas < 30;