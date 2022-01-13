/* Crie um banco de dados para um serviço de um game online, o nome do banco deverá ter o seguinte nome:
db_generation_game_online, onde o sistema trabalha com as informaões dos personagens deste game */
create database db_generation_game_online;
use db_generation_game_online;

-- Este sistema trabalhará com duas tabelas: tb_personagem e tb_classe --
-- Criando primeira tabela: --
create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
arma varchar(255) not null,
primary key (id)
);

INSERT INTO tb_classe (classe, arma) values ("Justiceira", "Sabres");
INSERT INTO tb_classe (classe, arma) values ("Caçadora", "Bestas");
INSERT INTO tb_classe (classe, arma) values ("Arquimaga", "Cajado");
INSERT INTO tb_classe (classe, arma) values ("Vingador", "Garras");
INSERT INTO tb_classe (classe, arma) values ("Destruidor", "Tesseract");


create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
raca varchar(255) not null,
poder_ataque bigint not null,
poder_defesa bigint not null,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, raca, poder_ataque, poder_defesa, classe_id) values ("Elesis", "Humano", 1800, 3000, 1);
INSERT INTO tb_personagem (nome, raca, poder_ataque, poder_defesa, classe_id) values ("Lire", "Elfa", 2100, 2000, 2);
INSERT INTO tb_personagem (nome, raca, poder_ataque, poder_defesa, classe_id) values ("Arme", "Humano", 3000, 1500, 3);
INSERT INTO tb_personagem (nome, raca, poder_ataque, poder_defesa, classe_id) values ("Lass", "Asmodiano", 4500, 3600, 4);
INSERT INTO tb_personagem (nome, raca, poder_ataque, poder_defesa, classe_id) values ("Veigas", "Asmodiano", 6000, 4000, 5);

select * from tb_personagem where poder_ataque > 2000;

select * from tb_personagem where poder_defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.raca, tb_classe.classe, tb_classe.arma
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

