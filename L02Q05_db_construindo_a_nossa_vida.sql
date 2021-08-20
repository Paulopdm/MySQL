/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o 
seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa*/
CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do 
tb_categoria para se trabalhar com o serviço deste ecommerce.*/
CREATE TABLE tb_categoria (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

/*Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes 
dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key 
de tb_categoria nesta tabela).*/
CREATE TABLE tb_produto (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, preco DECIMAL(10,2) NOT NULL, estoque INT NOT NULL, categoria_id INT(5) NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
) ENGINE = InnoDB;

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categoria (nome, ativo) VALUES ("Ferramenta", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Material Eletrico", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Hidraulica", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Tinta", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Piso", TRUE);

/*Popule esta tabela Produto com até 8 dados.*/
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Furadeira", 120.00, 5, 1);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Martelo", 45.00, 5, 1);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Interruptor", 6.99, 20, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Torneira Aço Inox", 35.00, 15, 3);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Tinta Branco Gelo 10L", 70.00, 15, 4);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Azulejo 3D m²", 32.00, 50, 5);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Tina Azul Bebê 10L", 72.80, 20, 4);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Cano PVC 1m", 2.50, 60, 3);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
SELECT * FROM tb_produto WHERE preco > 50.00;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra C.*/
SELECT * FROM tb_produto WHERE nome LIKE "%C%";

/*Faça um um select com Inner join entre  tabela categoria e produto.*/
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são da categoria hidráulica).*/
SELECT * FROM tb_produto 
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
	WHERE tb_categoria.nome = "Tinta";