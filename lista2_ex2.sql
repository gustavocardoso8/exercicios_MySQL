create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo_pizza varchar(255) not null,
tipo_borda varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo_pizza, tipo_borda) values ("Doce", "borda comum");
INSERT INTO tb_categoria (tipo_pizza, tipo_borda) values ("Salgada", "borda recheada");
INSERT INTO tb_categoria (tipo_pizza, tipo_borda) values ("Salgada", "borda comum");

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
tamanho varchar(255) not null,
borda varchar(255) not null,
preco decimal (2,2) not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("Brigadeiro", "broto", "borda comum", 19.99, 1);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("M&M's", "broto", "borda comum", 21.99, 1);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("Banana com doce de leite", "média", "borda comum", 29.99, 1);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("Brócolis", "grande", "borda comum", 35.99, 3);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("Brócolis", "grande", "borda comum", 35.99, 3);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("4 queijos", "grande", "borda recheada", 45.99, 2);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("5 queijos", "grande", "borda recheada", 57.99, 2);
INSERT INTO tb_pizza (sabor, tamanho, borda, preco, categoria_id) values ("Portuguesa", "grande", "borda recheada", 47.99, 2);


-- Faça um select que retorne os Produtos com o valor maior do que 45 reais. --
select * from tb_pizza where preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais. --
select * from tb_pizza where preco between 29.00 and 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C. --
select * from tb_pizza where sabor like "%c%";

-- Faça um um select com Inner join entre tabela categoria e pizza. --
select tb_pizza.sabor, tb_pizza.tamanho, tb_pizza.borda, tb_pizza.preco, tb_categoria.tipo_pizza, tb_categoria.tipo_borda from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

/* Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce). */
select tb_pizza.sabor, tb_pizza.tamanho, tb_pizza.borda, tb_pizza.preco, tb_categoria.tipo_pizza, tb_categoria.tipo_borda from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 1