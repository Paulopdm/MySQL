CREATE DATABASE db_projeto_integrador;
USE db_projeto_integrador;

CREATE TABLE postagem (
	id int(10) NOT NULL AUTO_INCREMENT,
	id_usuario int(5) NOT NULL,
	id_tema int(5) NOT NULL,
	data DATE NOT NULL,
	hora TIME NOT NULL,
	postagem varchar(1000) NOT NULL,
	comentário varchar(1000),
	PRIMARY KEY (id)
)ENGINE = InnoDB ;

CREATE TABLE tema (
	id int(5) NOT NULL AUTO_INCREMENT,
	negociações varchar(100) NOT NULL,
	eventos varchar(70) NOT NULL,
	noticias varchar(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE = InnoDB ;

CREATE TABLE usuário (
	id int(5) NOT NULL AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
	email varchar(70) NOT NULL,
	senha varchar(70) NOT NULL,
	PRIMARY KEY (id)
) ENGINE = InnoDB ;

ALTER TABLE postagem ADD CONSTRAINT postagem_fk0 FOREIGN KEY (id_usuario) REFERENCES usuário(id);

ALTER TABLE postagem ADD CONSTRAINT postagem_fk1 FOREIGN KEY (id_tema) REFERENCES tema(id);




