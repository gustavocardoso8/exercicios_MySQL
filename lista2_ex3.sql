create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
	descricao varchar(255) not null,
    ativo boolean,    
    primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) VALUES ("antibiótico", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("antihistamínico", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("higiene pessoal", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("beleza", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("corticosteroide", false);

create table tb_produtos(
	id bigint not null auto_increment,
    nome varchar(255) not null,
    dataCadastro date,
    quantidade int,
    preco decimal(3,2) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Amoxilina", current_date(), 100, 20.00, 1);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Sabonete Dove", current_date(), 150, 2.99, 3);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Allegra", current_date(), 200, 22.00, 2);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Sabonete íntimo feminino", current_date(), 200, 14.85, 3);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Psorex Pomada", current_date(), 40, 40.99, 5);
INSERT INTO tb_produtos (nome, dataCadastro, quantidade, preco, categoria_id) VALUES ("Hidratante facial", current_date(), 30, 98.52, 4);

select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais. --
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais. --
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B. --
select * from tb_produtos where nome like "%b%";

-- Faça um um select com Inner join entre tabela categoria e produto. --
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

/*  Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;