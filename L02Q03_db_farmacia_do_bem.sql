/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte 
nome db_farmacia_do_bem, onde o sistema trabalhará com as informações dos produtos desta empresa. */
CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 
3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/
CREATE TABLE tb_categoria (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes 
dos tb_produto para se trabalhar com o serviço deste farmacia(não esqueça de criar a foreign key de 
tb_categoria nesta tabela).*/
CREATE TABLE tb_produto (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, preco DECIMAL(10,2) NOT NULL, estoque INT NOT NULL, categoria_id INT(5) NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
) ENGINE = InnoDB;

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categoria (nome, ativo) VALUES ("Perfumaria", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Medicamento", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Higiene", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Insumos", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Alimento", TRUE);

/*Popule esta tabela Produto com até 8 dados.*/
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Paracetamol gotas", 5.90, 10, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Clavulin BD", 112.20, 5, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Perfume Natura", 23.70, 5, 1);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Sabonete Dove", 4.99, 25, 3);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Seringa 5mL", 0.99, 120, 4);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Bombom Sonho de Valsa", 1.50, 50, 5);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Atroveran gotas", 7.50, 20, 2);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Leite em Pó Ninho", 22.30, 12, 5);
INSERT INTO tb_produto (nome, preco, estoque, categoria_id) VALUES ("Creme Dental Sorriso", 1.99, 12, 3);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
SELECT * FROM tb_produto WHERE preco > 50.00;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra B*/
SELECT * FROM tb_produto WHERE nome LIKE "%B%";

/*Faça um um select com Inner join entre  tabela categoria e produto.*/
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;

/*Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são cosméticos).*/
SELECT * FROM tb_produto 
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
	WHERE tb_categoria.nome = "Medicamento";