/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome
db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa.*/
CREATE DATABASE db_CursoDaMinhaVida;
USE db_CursoDaMinhaVida;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do 
tb_categoria para se trabalhar com o serviço deste site de cursos onlines.*/
CREATE TABLE tb_categoria (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, ativo BOOLEAN NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes 
dos tb_produto para se trabalhar com o serviço de um site de cursos onlines
(não esqueça de criar a foreign key de tb_categoria nesta tabela)*/
CREATE TABLE tb_produto (
	id INT(5) AUTO_INCREMENT, nome VARCHAR(50) NOT NULL, preco DECIMAL(10,2) NOT NULL, vagas INT NOT NULL, categoria_id INT(5) NOT NULL,
    PRIMARY KEY (id), 
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
) ENGINE = InnoDB;

/*Popule esta tabela Categoria com até 5 dados.*/
INSERT INTO tb_categoria (nome, ativo) VALUES ("Front-End", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Backend", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Office", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Idioma", TRUE);
INSERT INTO tb_categoria (nome, ativo) VALUES ("Sistema Operacional", TRUE);

/*Popule esta tabela Produto com até 8 dados.*/
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Javascript", 70.00, 25, 1);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Java basico", 25.00, 25, 2);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Microsoft Word", 12.00, 30, 3);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Inglês Básico", 25.00, 25, 4);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Linux", 30.00, 20, 5);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso HTML 5", 55.00, 20, 1);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Java Avançado + POO", 80.00, 15, 2);
INSERT INTO tb_produto (nome, preco, vagas, categoria_id) VALUES ("Curso Microsoft Excel Básico", 20.00, 25, 3);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
SELECT * FROM tb_produto WHERE preco > 50.00;

/*Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.*/
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

/*Faça um select  utilizando LIKE buscando os Produtos com a letra J.*/
SELECT * FROM tb_produto WHERE nome like "%J%";
    
/*Faça um um select com Inner join entre  tabela categoria e produto.*/
SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica 
(exemplo todos os produtos que são da categoria Java).*/
SELECT * FROM tb_produto 
	INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
	WHERE tb_categoria.nome = "Office";