create database escola;

show databases; -- mostra os bancos de dados

use escola;

create table aluno(
id_aluno int primary key auto_increment,
nome varchar(120) not null,
dt_nascimento date not null

);

create table curso(
id_curso int primary key auto_increment,
nomecurso varchar(120) not null,
periodo int not null

);

create table aluno_curso(
id_alunocurso int primary key auto_increment,
fk_curso_id_curso  int,
fk_aluno_id_aluno  int

);

show tables;

desc curso;

alter table aluno_curso add constraint fk_aluno_curso
foreign key (fk_curso_id_curso)
references curso(id_curso)
on delete cascade;

alter table aluno_curso add constraint fk_curso_aluno
foreign key (fk_aluno_id_aluno)
references aluno(id_aluno)
on delete cascade;

desc aluno_curso;

alter table aluno 
add column email varchar(120) not null;

desc aluno;

insert into aluno (nome, dt_nascimento, email)
values ("Arthur", "2005-10-04", "arthur@gmail.com");
insert into aluno (nome, email, dt_nascimento)
values ("Mateus", "mateus@gmail.com", "2004-07-12");

alter table curso
add column sala int not null;

insert into curso(nomecurso, periodo, sala)
values ("gestão1", 1, 1), ("gestão2", 2, 2), ("gestão3", 3, 3), ("gestão4", 4, 4), ("gestão5", 5, 5);

insert into aluno(nome, dt_nascimento, email)
values
("A", "2000-01-10", "aluno1@gmail.com"), ("B", "2000-01-10", "aluno2@gmail.com"), ("C", "2000-01-10", "aluno3@gmail.com"), ("D", "2000-01-10", "aluno4@gmail.com"), ("E", "2000-01-10", "aluno5@gmail.com"),
("F", "2000-01-10", "aluno6@gmail.com"), ("G", "2000-01-10", "aluno7@gmail.com"), ("H", "2000-01-10", "aluno8@gmail.com"), ("I", "2000-01-10", "aluno9@gmail.com"), ("J", "2000-01-10", "aluno10@gmail.com"),
("K", "2000-01-10", "aluno11@gmail.com"), ("L", "2000-01-10", "aluno12@gmail.com"), ("M", "2000-01-10", "aluno13@gmail.com"), ("N", "2000-01-10", "aluno14@gmail.com"), ("O", "2000-01-10", "aluno15@gmail.com"),
("P", "2000-01-10", "aluno16@gmail.com"), ("Q", "2000-01-10", "aluno17@gmail.com"), ("R", "2000-01-10", "aluno18@gmail.com"), ("S", "2000-01-10", "aluno19@gmail.com"), ("T", "2000-01-10", "aluno20@gmail.com"),
("U", "2000-01-10", "aluno21@gmail.com"), ("V", "2000-01-10", "aluno22@gmail.com"), ("W", "2000-01-10", "aluno23@gmail.com"), ("X", "2000-01-10", "aluno24@gmail.com"), ("Y", "2000-01-10", "aluno25@gmail.com"),
("Z", "2000-01-10", "aluno26@gmail.com"), ("Aa", "2000-01-10", "aluno27@gmail.com"), ("Bb", "2000-01-10", "aluno28@gmail.com"), ("Cc", "2000-01-10", "aluno29@gmail.com"), ("Dd", "2000-01-10", "aluno30@gmail.com"),
("Ee", "2000-01-10", "aluno31@gmail.com"), ("Ff", "2000-01-10", "aluno32@gmail.com"), ("Gg", "2000-01-10", "aluno33@gmail.com"), ("Ii", "2000-01-10", "aluno34@gmail.com"), ("Jj", "2000-01-10", "aluno35@gmail.com"),
("Kk", "2000-01-10", "aluno36@gmail.com"), ("Ll", "2000-01-10", "aluno37@gmail.com"), ("Mm", "2000-01-10", "aluno38@gmail.com"), ("Nn", "2000-01-10", "aluno39@gmail.com"), ("Oo", "2000-01-10", "aluno40@gmail.com"), 
("Pp", "2000-01-10", "aluno41@gmail.com"), ("Qq", "2000-01-10", "aluno42@gmail.com"), ("Rr", "2000-01-10", "aluno43@gmail.com"), ("Ss", "2000-01-10", "aluno44@gmail.com"), ("Tt", "2000-01-10", "aluno45@gmail.com"),
("Uu", "2000-01-10", "aluno46@gmail.com"), ("Vv", "2000-01-10", "aluno47@gmail.com"), ("Ww", "2000-01-10", "aluno48@gmail.com"), ("Xx", "2000-01-10", "aluno49@gmail.com"), ("Yy", "2000-01-10", "aluno50@gmail.com");

select * from aluno;

insert aluno_curso(fk_curso_id_curso, fk_aluno_id_aluno) values 
(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7), (1,8), (1,9), (1,10),
(2,11), (2,12), (2,13), (2,14), (2,15), (2,16), (2,17), (2,18), (2,19), (2,20),
(3,1), (3,2), (3,3), (3,4), (3,5), (3,6), (3,7), (3,8), (3,9), (3,10),
(4,21), (4,22), (4,23), (4,24), (4,25), (4,26), (4,27), (4,28), (4,29), (4,30), 
(5,31), (5,32), (5,33), (5,34), (5,35), (5,36), (5,37),(5,38), (5,39), (5,40);
insert  into aluno(nome,dt_nascimento,email) values('renato','2004-05-08','renataolegal@gmail.com'),('ronaldo','2034-09-11','ronaldao@gmail.com'),('ricardoolindo','2007-04-05','ricardoolindo@gmail.com'),('roberto','2003-03-31','robertao@gmail.com'),('rogerio','1994-09-12','robertao@gmail.com'),
('renato','2014-05-08','renataolegaluhuhu@gmail.com'),('ronaldo','2004-09-11','ronaldaotddento@gmail.com'),('ricardolindo','2009-04-05','ricardoolindo4d@gmail.com'),('roberto','2013-03-31','robertao3d@gmail.com'),('rogerio','2006-09-12','robertao2@gmail.com');

#--------------------------------------- 1  ---------------------------------------#

select * from aluno;

#--------------------------------------- 2  ---------------------------------------#

select id_aluno, email from aluno;

#--------------------------------------- 3  ---------------------------------------#

select id_aluno, email from aluno where id_aluno% 2=0;

#--------------------------------------- 4  ---------------------------------------#

insert into curso (nomecurso,periodo,sala,tipo_aula) values ('padereiro','6','7', 'presencial');

insert into aluno_curso (fk_curso_id_curso, fk_aluno_id_aluno) values (1,12), (1,23), (1,13), (1,14), (1,15), (1,16), (1,17), (1,18), (1,19), (1,20);

#--------------------------------------- 5 - CPF ---------------------------------------#
alter table aluno
add column cpf varchar(30) not null ;

alter table aluno
add column nacionalidade varchar(120) ;

#--------------------------------------- 6 - CPF DOS ALUNOS ---------------------------------------#

update aluno set cpf = ('098.098.890-01') where id_aluno = 6;
update aluno set cpf = ('098.098.890-02') where id_aluno = 7;
update aluno set cpf = ('098.098.890-03') where id_aluno = 8;
update aluno set cpf = ('098.098.890-04') where id_aluno = 9;
update aluno set cpf = ('098.098.890-05') where id_aluno = 10;
update aluno set cpf = ('098.098.890-06') where id_aluno = 11;
update aluno set cpf = ('098.098.890-07') where id_aluno = 12;
update aluno set cpf = ('098.098.890-08') where id_aluno = 13;
update aluno set cpf = ('098.098.890-09') where id_aluno = 14;
update aluno set cpf = ('098.098.890-10') where id_aluno = 15;
update aluno set cpf = ('098.098.890-11') where id_aluno = 16;
update aluno set cpf = ('098.098.890-12') where id_aluno = 17;
update aluno set cpf = ('098.098.890-13') where id_aluno = 18;
update aluno set cpf = ('098.098.890-14') where id_aluno = 19;
update aluno set cpf = ('098.098.890-15') where id_aluno = 20;
update aluno set cpf = ('098.098.890-16') where id_aluno = 21;
update aluno set cpf = ('098.098.890-17') where id_aluno = 22;
update aluno set cpf = ('098.098.890-18') where id_aluno = 23;
update aluno set cpf = ('098.098.890-19') where id_aluno = 24;
update aluno set cpf = ('098.098.890-20') where id_aluno = 25;
update aluno set cpf = ('098.098.890-21') where id_aluno = 26;
update aluno set cpf = ('098.098.890-22') where id_aluno = 27;
update aluno set cpf = ('098.098.890-23') where id_aluno = 28;
update aluno set cpf = ('098.098.890-24') where id_aluno = 29;
update aluno set cpf = ('098.098.890-25') where id_aluno = 30;
update aluno set cpf = ('098.098.890-26') where id_aluno = 31;
update aluno set cpf = ('098.098.890-27') where id_aluno = 32;
update aluno set cpf = ('098.098.890-28') where id_aluno = 33;
update aluno set cpf = ('098.098.890-29') where id_aluno = 34;
update aluno set cpf = ('098.098.890-30') where id_aluno = 35;
update aluno set cpf = ('098.098.890-31') where id_aluno = 36;
update aluno set cpf = ('098.098.890-32') where id_aluno = 37;
update aluno set cpf = ('098.098.890-33') where id_aluno = 38;
update aluno set cpf = ('098.098.890-34') where id_aluno = 39;
update aluno set cpf = ('098.098.890-35') where id_aluno = 40;
update aluno set cpf = ('098.098.890-36') where id_aluno = 41;
update aluno set cpf = ('098.098.890-37') where id_aluno = 42;
update aluno set cpf = ('098.098.890-38') where id_aluno = 43;
update aluno set cpf = ('098.098.890-39') where id_aluno = 44;


#--------------------------------------- 7 - BUSCA DE CPF DOS ALUNOS ---------------------------------------#

select nome ,cpf from aluno where id_aluno = 1 ;

#--------------------------------------- 8 - TODOS OS ALUNOS DO CURSO ---------------------------------------#

select * from aluno_curso where fk_curso_id_curso;

#--------------------------------------- 9 - DELETE ---------------------------------------#
delete from aluno 
where id_aluno =1;
delete from aluno 
where id_aluno =2;
delete from aluno 
where id_aluno =4;
delete from aluno 
where id_aluno =5;
delete from aluno 
where id_aluno =6;


#--------------------------------------- 10 - ID > 20 ---------------------------------------#
select nome,id_aluno from aluno
where id_aluno > 20;


#--------------------------------------- 11 - SALA ---------------------------------------#

create table sala(
id_sala int primary key,
numero_sala int,
mesa int,
curso varchar (60)
);


#--------------------------------------- 12 - MOSTRANDO SALA ---------------------------------------#

select * from sala;


#--------------------------------------- 13 - ALTERANDO TABELA CURSO ---------------------------------------#

alter table curso
add column tipo_aula varchar (60) ;

update curso set tipo_aula = ('EAD') where id_curso = 1; 
update curso set tipo_aula = ('EAD') where id_curso = 3;
update curso set tipo_aula = ('EAD') where id_curso = 5;
update curso set tipo_aula = ('EAD') where id_curso = 7;

update curso set tipo_aula = ('presencial') where id_curso = 2;
update curso set tipo_aula = ('presencial') where id_curso = 4;
update curso set tipo_aula = ('presencial') where id_curso = 6;    


#--------------------------------------- 14 - MOSTRANDO EAD ---------------------------------------#

select id_curso,tipo_aula from curso
where tipo_aula = 'EAD' ;

