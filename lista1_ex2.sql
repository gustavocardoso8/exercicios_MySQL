/* Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce. */
create database db_lista1_ex2;
use db_lista1_ex2;
/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.*/
create table tb_ex2 (
id bigint auto_increment,
produto varchar(255) not null,
cor varchar(255) not null,
capacidade_em_gb int not null,
valor decimal (6,2) not null,
primary key (id)
);

-- Popule esta tabela com até 8 dados --
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Samsung Galaxy S21FE", "Violeta", 128, 4049.80);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Xiaomi Mi 9T", "Pearly White", 128, 2073.50);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Motorola Moto G200", "Azul", 256, 4999.00);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Pocophone POCO M4 Pro", "Gray", 128, 2199.78);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Caterpillar S42", "Black Peanut", 32, 1647.80);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Apple iPhone XR", "Branco", 64, 2879.90);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Apple iPhone XR", "ProductRED", 64, 2879.90);
INSERT INTO tb_x2 (produto, cor, capacidade_em_gb, valor) values ("Apple iPhone XS Max", "Ouro", 512, 5879.99);

-- Faça um select que retorne os produtos com o valor maior do que 500. --
select * from tb_ex2 where valor > 500.00;

-- Faça um select que retorne os produtos com o valor menor do que 500. --
select * from tb_ex2 where valor < 500.00;

-- Atualize um dado desta tabela através de uma query de atualização -- 
update tb_ex2 set valor = 5000.00 where id = 8;