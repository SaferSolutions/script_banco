CREATE DATABASE banco_safer CHARACTER SET = Latin1 COLLATE = latin1_swedish_ci;

USE banco_safer;

CREATE TABLE endereco(
	id_endereco int(11) not null primary key auto_increment,
    pais varchar(30),
    estado varchar(2),
    cidade varchar(50),
    cep varchar(8)
);

CREATE TABLE empresa(
	id_empresa int(11) not null primary key auto_increment,
    nome_empresa varchar(50),
    cnpj varchar(30)
);

CREATE TABLE gastos_funcionario(
	id_gasto int(11) not null primary key,
    tipo_transporte varchar(30),
    gasto_transporte double(10,2),
    tempo_transporte int(5)
);

CREATE TABLE funcionario(
	id_funcionario int(11) not null primary key auto_increment,
    nome_funcionario varchar(50) not null,
    cpf_funcionario varchar(14) not null,
    rg_funcionario varchar(13),
    empresa_afiliada int(11),
    endereco_funcionario int(11),
    salario double(10,2) not null,
    gasto_individual int(11),
    viabilidade_remota int,
    

    FOREIGN KEY(gasto_individual) references gastos_funcionario(id_gasto),
    FOREIGN KEY(endereco_funcionario) references endereco(id_endereco),
    FOREIGN KEY(empresa_afiliada) references empresa(id_empresa)

);

