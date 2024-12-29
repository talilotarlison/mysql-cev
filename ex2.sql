drop DATABASE cadastros;

CREATE DATABASE cadastros;

CREATE DATABASE cadastros
default character set utf8
default collate utf8_general_ci;

use cadastros;

CREATE TABLE pessoas (
    id int NOT NULL auto_increment,
    nome varchar(30) NOT NULL,
    cpf int(11) NOT NULL, 
    nascimento date,
    sexo enum('M','F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil',
    PRIMARY KEY (id)

) default charset = utf8;

-- Chave primaria:
-- https://www.w3schools.com/mysql/mysql_primarykey.asp