/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do banco deverá 
ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o sistema 
trabalhará com as informações dos produtos desta empresa. */
CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 
atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.*/
CREATE TABLE tb_categoria (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

/*Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos relevantes dos 
tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria 
nesta tabela).*/
CREATE TABLE tb_produto (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, preco DECIMAL(10,2) NOT NULL, estoque INT NOT NULL, categoria_id INT(5) NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
) ENGINE = InnoDB;

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categoria (nome, ativo) VALUES ("Fruta", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Vegetal", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Laticinio", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Geleia", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Suco", TRUE);

/*Popule esta tabela Produto com até 8 dados.*/
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Queijo Provolone Kg", 65.00, 15, 3);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Banana Nanica Kg", 5.99, 23, 1);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Pitaya Vermelha Kg", 52.99, 10, 1);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Batata Kg", 4.99, 20, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Cenoura Kg", 2.99, 20, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Geleia Morango 500g", 32.60, 5, 4);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Geleia Frutas Vermelhas 500g", 45.00, 3, 4);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Suco Limão 1L", 10.00, 5, 5);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Suco Abacaxi 1L", 12.00, 5, 5);


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
(exemplo todos os produtos que são aves ou legumes).*/
SELECT * FROM tb_produto 
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
	WHERE tb_categoria.nome = "Fruta";