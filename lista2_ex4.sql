create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) values ("Bovino",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Suíno",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Aves",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Churrasco",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Embutidos",true);


select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(3,2) not null,
quantidade int not null,
validade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Asa", 40.00, 30, "2022-01-02", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Picanha", 20.00, 30, "2022-01-02", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Coxa de Frango", 20.00, 30, "2022-01-02", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Carvão Vegetal", 30.00, 30, "2022-01-02", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Hamburguer",60.00, 30, "2022-01-02", 5);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Cupim", 20.00, 30, "2022-01-02", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Peito de Frango", 25.00, 30, "2022-01-02", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Salame", 18.00, 30, "2022-01-02", 5);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Medalhão", 50.00, 30, "2022-01-02", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Mocotó", 20.00, 30, "2022-01-02", 2);
INSERT INTO tb_produtos (nome, preco, quantidade, validade, categoria_id) VALUES ("Chuleta", 20.00, 30, "2022-01-02", 1);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 5;