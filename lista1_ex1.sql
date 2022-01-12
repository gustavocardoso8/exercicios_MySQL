/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa. */

create database db_lista1_ex1;
use db_lista1_ex1;

/* Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH. */
create table tb_ex1(
-- Popular com até 5 dados --
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal(6,2) not null,
ferias_vencidas varchar(255) not null,
primary key (id)
);

INSERT INTO tb_ex1 (nome, cargo, salario, ferias_vencidas) values ("Zezinho", "Jovem Aprendiz", 1000.00, "não");
INSERT INTO tb_ex1 (nome, cargo, salario, ferias_vencidas) values ("Pedrinho", "Estagiário", 890.00, "não");
INSERT INTO tb_ex1 (nome, cargo, salario, ferias_vencidas) values ("Aninha", "Aux. Administrativo", 1670.00, "sim");
INSERT INTO tb_ex1 (nome, cargo, salario, ferias_vencidas) values ("Pauinha", "Coordenadora", 4870.89, "sim");
INSERT INTO tb_ex1 (nome, cargo, salario, ferias_vencidas) values ("Luma", "Gestore", 9352.23, "não");

-- Faça um select que retorne os funcionaries com o salário maior do que 2000. --
select * from tb_ex1 where salario > 2000.00;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000. --
select * from tb_ex1 where salario > 2000.00;

-- Atualizar um dado desta tabela através de uma query de atualização --
update tb_ex1 set ferias_vencidas = "sim" where id = 1;