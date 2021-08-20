/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, 
onde o sistema trabalhará com as informações dos produtos desta empresa. */
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 
3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/
CREATE TABLE tb_categoria(
	id INT(5) AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
)ENGINE = InnoDB;

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 
atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria
(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/  -- nomeei como tb_produto
CREATE TABLE tb_produto(
	id INT(5) AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, preco DECIMAL(10,2) NOT NULL, estoque TINYINT NOT NULL, categoria_id INT(5) NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
)ENGINE = InnoDB;

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categoria (nome, ativo) VALUES ("Pizza Doce", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Pizza Salgada", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Brotinho", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Refrigerante", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Suco", TRUE);

/*Popule esta tabela pizza com até 8 dados.*/
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Brotinho calabresa", 19.90, 10, 3);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Pizza Frango com Catupiry", 60.00, 10, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Pizza de Brigadeiro", 65.50, 10, 1);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Pizza Mussarela", 45.00, 10, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Brotinho Doce de Leite", 24.30, 10, 3);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Suco de Uva 1L", 16.50, 10, 5);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Coca-Cola 2L", 9.50 , 10, 4);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Suco de Laranja 1L",16.00 , 10, 5);

/*Faça um select que retorne os Produtos com o valor maior do que 45 reais*/
SELECT * FROM tb_produto WHERE preco > 45.00;

/*Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.*/
SELECT * FROM tb_produto WHERE preco > 29.00 AND preco < 60.00;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra C.*/
SELECT * FROM tb_produto WHERE tb_produto.nome LIKE "%C%";

/*Faça um um select com Inner join entre  tabela categoria e pizza.*/
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

/*Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são pizza doce).*/
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
    WHERE tb_categoria.nome = "Brotinho";
