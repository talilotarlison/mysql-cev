-- cardinalidade muitos pra muitos
-- requer a criação de uma nova entidade
use cadastro;

create table gafanhoto_assiste_curso(
    id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key(id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso)
)default charset = utf8;

-- insert 
insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',1,5);

insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',1,3);

insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',2,12);
insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',2,17);

insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',3,12);
insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',3,5);
insert into  gafanhoto_assiste_curso (data, idgafanhoto, idcurso) values ('2024-01-12',3,19);

-- select
select * from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto;


select g.nome,g.id,  a.idgafanhoto, a.idcurso from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto;

-- para interligar tres tabelas usas dois join

select g.nome,g.id,  a.idgafanhoto, a.idcurso,  c.nome from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso;


select g.id, g.nome,   a.idcurso,  c.nome from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso;


select g.id as idPessoa, g.nome,   a.idcurso as idCurso,  c.nome as cursoCadastrado from gafanhotos g
join gafanhoto_assiste_curso a 
on g.id = a.idgafanhoto
join cursos c 
on c.idcurso = a.idcurso;