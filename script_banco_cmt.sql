CREATE DATABASE banco_safer CHARACTER SET = Latin1 COLLATE = latin1_swedish_ci;

USE banco_safer;

CREATE TABLE funcionario(
	id_funcionario int(11) not null primary key,
    nome_funcionario varchar(50) not null,
    cpf_funcionario varchar(14) not null,
    rg_funcionario varchar(13),
    endereco varchar(100) not null,
    salario double(10,2) not null,
    gasto_individual int(11),
    viabilidade_remota boolean,
    
    FOREIGN KEY(gasto_individual) references gastos_funcionarios(id_gasto)
);

CREATE TABLE gastos_funcionario(
	id_gasto int(11) not null primary key,
    tipo_transporte varchar(30),
    gasto_transporte double(10,2),
    tempo_transporte int(5)
);
