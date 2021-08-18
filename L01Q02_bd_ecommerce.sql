-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações 
-- dos produtos deste ecommerce. 
create database db_ecommerce;
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes 
-- dos produtos para se trabalhar com o serviço deste ecommerce.
use db_ecommerce;
create table tb_produtos (
	id bigint(5) auto_increment,
    setor varchar(20),
    produto varchar(20),
    valor decimal(10,2),
    ativo boolean,
    primary key (id)
    );
-- Popule esta tabela com até 8 dados;
insert into tb_produtos (setor, produto, valor, ativo) values ("Higiene Pessoal", "Sabonete Dove", 1.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Calçados", "Tênis", 79.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Higiene Pessoal", "Desodorante AXE", 7.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Bebidas", "Jurupinga", 8.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Utensílios", "Jogo de Talheres", 45.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Moda", "Camisa Lisa Preta", 25.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Comestível", "Salgadinho Doritos", 9.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Utensílios", "Prato Raso", 8.99, true);
insert into tb_produtos (setor, produto, valor, ativo) values ("Higiene Pessoal", "Creme Dental Sorriso", 3.99, true);

select * from tb_produtos;
-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_produtos where valor > 500.00; -- não há nenhum item com valor maior que 500 reais.
-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_produtos where valor < 500.00;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_produtos set valor = 4.99 
	where id = 9;
select * from tb_produtos;