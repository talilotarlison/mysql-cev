-- exercicio 
--1 
SELECT profissao, count(*) as quantidade
FROM gafanhotos
GROUP BY profissao
ORDER BY profissao;

SELECT profissao, count(*) as quantidade
FROM gafanhotos
GROUP BY profissao
ORDER BY  count(*);
-- 2

SELECT sexo, count(*) as quantidade
FROM gafanhotos where nascimento > '2005-01-01'
GROUP BY sexo
ORDER BY  count(*);

SELECT "gafanhotos", sexo, count(*) as quantidade
FROM gafanhotos where nascimento > '2005-01-01'
GROUP BY sexo
ORDER BY  count(*);

-- 3

select nacionalidade, count(*) as quantidade
from gafanhotos 
GROUP by nacionalidade
ORDER BY  count(*);

select nacionalidade, count(*) as quantidade
from gafanhotos where nacionalidade != 'brasil'
GROUP by nacionalidade
ORDER BY  count(*);

select nacionalidade, count(*) as quantidade
from gafanhotos where nacionalidade != 'brasil' 
GROUP by nacionalidade having count(nacionalidade) > 3
ORDER BY  count(*);
-- 4

select avg(altura) as alturaMedio from gafanhotos;

select altura, peso, count(*) as quantidade
from gafanhotos where peso > 100 
GROUP by altura 
ORDER BY  count(*);

select altura, peso, count(*) as quantidade
from gafanhotos where peso > 100 
GROUP by altura having altura > (select avg(altura) as alturaMedio from gafanhotos)
ORDER BY  count(*);