-- ==============Aula 06 - Alterando Estruturas de Tabelas===============

-- *ALTER TABLE*
-- -  ADD COLUMN :
--   - Adiciona uma nova coluna à tabela.
--   - Exemplo: 
  `ALTER TABLE tabela ADD COLUMN profissao VARCHAR(10);`

-- - DROP COLUMN :
--   - Remove uma coluna da tabela.
--   - Exemplo: 
  `ALTER TABLE tabela DROP COLUMN profissao;`

--   ADD COLUMN com posicionamento :
--   - Adiciona uma coluna em uma posição específica na tabela.
--   - Exemplo:
   `ALTER TABLE tabela ADD COLUMN profissao VARCHAR(10) AFTER nome;`

--   MODIFY COLUMN :
--   - Modifica o tipo de dado de uma coluna existente.
--   - Exemplo: 
  `ALTER TABLE tabela MODIFY COLUMN nome VARCHAR(30);`

-- -  CHANGE COLUMN :
--   - Modifica o nome e/ou o tipo de dado de uma coluna existente.
--   - Exemplo:
   `ALTER TABLE tabela CHANGE COLUMN profissao prof VARCHAR(20);`

-- *Renomeando Tabelas*
-- -  RENAME TO :
--   - Renomeia o nome de uma tabela existente.
--   - Exemplo: 
  `ALTER TABLE tabela RENAME TO nova_tabela;`

-- *CREATE TABLE IF NOT EXISTS*
-- - Cria uma nova tabela se ela ainda não existir.
-- - Exemplo: 
`CREATE TABLE IF NOT EXISTS gafanhotos (teste INT);`

-- *Restrições de Dados*
-- -  UNIQUE :
--   - Garante que os valores em uma coluna sejam únicos.
--   - Exemplo: 
  `CREATE TABLE tabela (nome VARCHAR(30) NOT NULL UNIQUE);`

-- *Outras Operações*
-- -  ADD COLUMN no início :
--   - Adiciona uma coluna no início da tabela.
--   - Exemplo:
   `ALTER TABLE tabela ADD COLUMN idcursos INT FIRST;`

-- -  ADD PRIMARY KEY :
--   - Define uma chave primária na tabela.
--   - Exemplo: 
  `ALTER TABLE tabela ADD PRIMARY KEY (idcursos);`