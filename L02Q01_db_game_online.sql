-- Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome 
-- db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da 
-- classe para se trabalhar com o serviço desse  game Online.
CREATE TABLE tb_classe(
	id INT(5) AUTO_INCREMENT, nomeClasse VARCHAR(20), habilidade VARCHAR(100),
    PRIMARY KEY (id)
) ENGINE = InnoDB;

-- Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes 
-- dos funcionários para se trabalhar com o serviço desse game Online 
-- (não esqueça de criar a foreign key de tb_classe nesta tabela).
CREATE TABLE tb_personagem(
	id INT (5) AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, poderDeAtaque INT NOT NULL, 
    poderDeDefesa INT NOT NULL, classe_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
)ENGINE = InnoDB;

-- Popule esta tabela classe com até 5 dados.
INSERT INTO tb_classe (nomeClasse, habilidade) VALUES ("Assassino", "Ataque Furtivo");
INSERT INTO tb_classe (nomeClasse, habilidade) VALUES ("Mago","Ataque Magico");
INSERT INTO tb_classe (nomeClasse, habilidade) VALUES ("Arqueiro","Ataque de longo alcance");
INSERT INTO tb_classe (nomeClasse, habilidade) VALUES ("Curandeiro","Cura Aliados");
INSERT INTO tb_classe (nomeClasse, habilidade) VALUES ("Paladino","Posição Defensiva");

-- Popule esta tabela personagem com até 8 dados
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Lissandra", 3000 , 1200 ,2);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Azmodeus", 1900 ,3500 ,5 );
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Ganon", 2700 , 1700 , 1);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Allyra", 900, 2900, 4 );
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Legolas", 2400 ,1200 , 3);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Furfur", 2100, 3000, 5);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Ezmio", 2000, 1900, 2);
INSERT INTO tb_personagem (nome, poderDeAtaque, poderDeDefesa, classe_id) VALUES ("Mithra", 2200 , 1500 , 3);

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000
SELECT * FROM tb_personagem where poderDeAtaque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
SELECT * FROM tb_personagem WHERE poderDeDefesa >1000 AND poderDeDefesa < 2000;

/*Pode ser com a query de cima ou a de baixo*/

SELECT tb_personagem.nome, tb_personagem.poderDeAtaque, tb_personagem.poderDeDefesa, tb_personagem.classe_id
	FROM tb_personagem
	WHERE poderDeDefesa >1000 AND poderDeDefesa < 2000;
    
-- Faça um select  utilizando LIKE buscando os personagens com a letra C. (não há nenhum)
SELECT * FROM tb_personagem WHERE tb_personagem.nome LIKE "%C%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
SELECT * FROM tb_personagem 
	INNER join tb_classe ON tb_classe.id = tb_personagem.classe_id;
    
-- Faça um select onde traga todos os personagem de uma classe específica 
-- (exemplo todos os personagens que são arqueiros).
SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id
	WHERE tb_classe.nomeClasse = "Arqueiro";