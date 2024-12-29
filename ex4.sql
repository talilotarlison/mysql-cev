describe pessoas;

alter table pessoas
add column profissao VARCHAR(10);

selec * from pessoas;

desc pessoas;

alter table pessoas
drop column profissao;

-- add dpois de algum campo
alter table pessoas
add column profissao VARCHAR(10) after nome;

-- add no inicio da tabela
alter table pessoas
add column codigo int(10) first;

-- mudar dados e contranges da coluna
alter table pessoas
modify column profissao VARCHAR(20) not null default '';

-- mudar nome da coluna
alter table pessoas
change column profissao prof VARCHAR(20) not null default '';

-- renomear tabela
alter table pessoas
rename to pessoa;

-- tabela cursos

CREATE TABLE if not exists cursos (
    idCurso int NOT NULL auto_increment,
    nome varchar(30) NOT NULL unique,
    descricao text,
    carga int unsigned, 
    totaulas int unsigned,
    ano year default '2016',
    PRIMARY KEY (idCurso)

) default charset = utf8;


CREATE TABLE if not exists cursos (
    nome varchar(30) NOT NULL unique,
    descricao text,
    carga int  unsigned, 
    totaulas int unsigned,
    ano year default '2016'
 
) default charset = utf8;

-- add no inicio da tabela
alter table pessoas
add column idCurso int first;

-- apagar
alter table pessoas
drop column idCurso;

-- add no inicio da tabela
alter table cursos
add column idCurso int first;

-- adicionar pk
alter table cursos
add PRIMARY KEY (idCurso);

-- renomear tabela
alter table pessoas
rename to pessoa;

-- apagar tabela
drop table if exists cursos;

-- RENAME TABLE nome_antigo TO nome_novo

-- alterar nome da coluna
ALTER TABLE cursos
CHANGE totaulas totalAulas int unsigned;

-- alterar nome da coluna
-- https://www.bosontreinamentos.com.br/mysql/como-renomear-colunas-usando-comandos-sql-no-mysql/
ALTER TABLE pessoas
CHANGE coidigo codigo int(10);