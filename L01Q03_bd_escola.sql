-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará
-- com as informações dos estudantes deste registro dessa escola. 
create database db_escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos 
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.
use db_escola;
create table tb_alunos (
	id bigint(5) auto_increment,
    matricula varchar(20),
    nome varchar(50),
    media decimal(10,2),
    ativo boolean,
    primary key (id)
    );
    
-- Popule esta tabela com até 8 dados;
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB01", "Ana Julia", 7.80, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB02", "Igor Emanoel", 8.00, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB03", "Samara Lardini", 5.50, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB04", "João Pedro", 7.80, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB05", "Magnólia Andrade", 7.00, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB06", "Rosemiro Paixão", 6.50, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB07", "José Paulo de Matos", 10.00, true);
insert into tb_alunos (matricula, nome, media, ativo) values ("AKB08", "Bellatriz Faisão", 9.50, true);
select * from tb_alunos;

-- Faça um select que retorne o/as estudantes  com a nota maior do que 7.
select * from tb_alunos where media > 7.00;

-- Faça um select que retorne o/as estudantes  com a nota menor do que 7.
select * from tb_alunos where media < 7.00;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_alunos set media = 7.00 
	where id = 6;
    
select * from tb_alunos;