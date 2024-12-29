-- Um banco possui:
-- Banco de dados
-- Tabelas 
-- Registros ou Tupla
-- Registro tem Campos

-- https://www.alura.com.br/artigos/como-utilizar-os-comandos-insert-select-update-e-delete-em-sql
CREATE DATABASE cadastros;

show DATABASE;

use cadastros;

status;

show table;

describe pessoas;

SHOW PROCESSLIST;

-- https://pt.stackoverflow.com/questions/383917/como-alterar-o-nome-do-banco-de-dados-no-mysql-workbench-8-0-usando-alter-databa

RENAME DATABASE cadastro TO cadastros;



CREATE TABLE pessoas (
    nome varchar(30), 
    idade tinyint,
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)

);

describe pessoas;

CREATE DATABASE aluno;

DROP DATABASE cadastro;
