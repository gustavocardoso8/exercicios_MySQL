/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola. */
create database db_lista1_ex3;
use db_lista1_ex3;
/* Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola. */
create table tb_ex3(
id bigint auto_increment,
matricula bigint not null,
nome varchar(255) not null,
turno varchar(255) not null,
media_final int not null,
primary key (id)
);

-- Popule esta tabela com até 8 dados --
INSERT INTO tb_ex3 (matricula, nome, turno, media_final) values (106857, "João", "noite", 4);
INSERT INTO tb_ex3 (matricula, nome, turno, media_final) values (106350, "Maria", "noite", 10);
INSERT INTO tb_ex3 (matricula, nome, turno, media_final) values (104682, "Luis", "manhã", 8);
INSERT INTO tb_ex3 (matricula, nome, turno, media_final) values (103892, "Lulu", "tarde", 6);
INSERT INTO tb_ex3 (matricula, nome, turno, media_final) values (107444, "Gabriel", "noite", 7);
INSERT INTO tb_ex3 (matricula, nome, turno, media_final) values (106361, "Gisele", "noite", 7);

-- Faça um select que retorne os estudantes com a nota > 7 --
select * from tb_ex3 where media_final > 7;

-- Faça um select que retorne os estudantes com a nota < 7 -- 
select * from tb_ex3 where media_final < 7;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_e3x set turno = tarde where id = 5;