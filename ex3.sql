
-- Campo CPF tem quer inteiro ou string ?
-- https://cursos.alura.com.br/forum/topico-campo-para-cpf-302291

-- A regra é que se um campo não realiza operações matemáticas, prefira a representação 
--  como string (VARCHAR), pois é mais adequada para o armazenamento e manipulação.

INSERT INTO pessoas (nome, cpf, nascimento, sexo,peso,altura,nacionalidade) VALUES
('Maria Joana', 1424242001, "1980-01-01","F",65.4,1.6,"Braileira");


INSERT INTO pessoas (nome, cpf, nascimento, sexo,peso,altura,nacionalidade) VALUES
('Glodofredo', '1234567891', "1984-01-01","M",'65.4','1.6',"Braileiro");


INSERT INTO pessoas (id, nome, cpf, nascimento, sexo,peso,altura,nacionalidade) VALUES
(default,'Jose filho', "76841419828", "1994-01-01","M",'64.4','1.8',"Braileiro");

INSERT INTO pessoas VALUES
(default,'Antonio', "7612319828", "1990-01-01","M",'64.4','1.2',default);

INSERT INTO pessoas VALUES
(default,'Marino', "76142319828", "1999-01-01","M",'61.4','1.2',default),
(default,'Jao Ricardo', "7612319828", "1990-02-01","M",'84.4','1.2',default);

SELECT * FROM pessoas;