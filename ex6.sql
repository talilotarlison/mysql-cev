-- linha, registro ou tupla são iguais

-- resulte set
-- renomear tabela

use cadastros;

drop database cadastros;

show tables;

describe pessoas;

alter table pessoas
rename to gafanhotos;

-- insert into 
insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
 ('2','Algoritimos','Logica de Programação','20','8','2014'),
 ('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
 ('4','PGP','PHP para Iniciantes','33','40','2010'),
 ('5','Jarva','Intro ao Java','22','10','2000'),
 ('6','MySQL','Curso MySQL','21','15','2016'),
 ('7','World','Word Completo','40','30','2018'),
 ('8','Sapateado','Dança Rítimica','14','30','2018'),
 ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
 ('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2010');

 selec * from cursos;

-- https://www.alura.com.br/artigos/como-utilizar-os-comandos-insert-select-update-e-delete-em-sql

-- update dados
update cursos 
set nome='HTML5' 
where idcurso = 1;

update cursos 
set nome='PHP', ano = "2015" 
where idcurso = 4;

update cursos 
set nome='Java', carga= "40",ano = "2015" 
where idcurso = 5
limit 1;

-- deletar dados
delete from cursos 
where idcurso = 10;

-- deletar dados
delete from cursos 
where ano = 2050
limit 3;

-- apagar todos os registo mantem os historico do indice
truncate table cursos;


alter table amigos drop idade;