create database db_rh  -- criar um banco de dados

use db_rh; -- usar o banco de dados para começar a manipular-lo. 

create table tb_funcionarios ( -- criando uma tabela com funcionários
	id bigint(5) auto_increment,  -- criando uma coluna de índice da tabela. Ela será autopreenchida. 
    matricula int,
    nome varchar(50) not null,
    salario decimal(10,2),
    ativo boolean,
	primary key (id) -- definindo a coluna ID como chave primária. 
);
-- populando com 5 dados. 
insert into tb_funcionarios (matricula, nome, salario, ativo) values (0001, "Ana Maria", 2500.00, true);
insert into tb_funcionarios (matricula, nome, salario, ativo) values (0002, "João Carlos", 3500.00, true);
insert into tb_funcionarios (matricula, nome, salario, ativo) values (0003, "Carlos Emanoel", 1500.00, true);
insert into tb_funcionarios (matricula, nome, salario, ativo) values (0004, "Mayra Alcântara", 1100.00, true);
insert into tb_funcionarios (matricula, nome, salario, ativo) values (0005, "Ilton Paes", 2200.00, true);

select * from tb_funcionarios;  -- mostra todos os funcionários e todas as colunas da tabela;

select * from tb_funcionarios where salario > 2000.00; -- mostra apenas funcionários cujo salário seja maior que 2000 reais

select * from tb_funcionarios where salario < 2000.00; -- mostra apenas funcinários cujo salário seja menor que 2000 reais.

update tb_funcionarios set salario = 2100.00 
	where id = 3; -- atualizando o salário do funcionário de ID 3 para 2100.00

select * from tb_funcionarios; -- mostrando a tabela de novo para eu ver que as informações foram atualizadas.
