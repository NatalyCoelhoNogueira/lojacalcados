CREATE DATABASE lojaCalcados;
USE lojaCalcados;

CREATE TABLE cliente (
    cpf VARCHAR(14), /* 000.000.000-00 */
    nomeCompleto VARCHAR(50),
    estadoCivil VARCHAR(10), /* SOLTEIRO | CASADO | SEPARADO | DIVORCIADO | VIÚVO */
    dataNascimento VARCHAR(10), /* 00/00/0000 */
    email VARCHAR(300), /* .....@....com.... */
    numeracao VARCHAR(10),
    idTelefone INT PRIMARY KEY NOT NULL auto_increment,
    numero VARCHAR(31), /* (000) 90000-0000 | (000) 0000-0000 */
    idEndereco INT PRIMARY KEY NOT NULL auto_increment,
    estado VARCHAR(30),
    cidade VARCHAR(30),
    bairro VARCHAR(30),
    rua VARCHAR(30),
    numero VARCHAR(5)
);

CREATE TABLE funcionario (
    cpf VARCHAR(14), /* 000.000.000-00 */
    dataAdmissao VARCHAR(10),
    nomeCompleto VARCHAR(50),
    estadoCivil VARCHAR(10), /* SOLTEIRO | CASADO | SEPARADO | DIVORCIADO | VIÚVO */
    dataNascimento VARCHAR(10), /* 00/00/0000 */
    email VARCHAR(300), /* .....@....com.... */
    numeracao VARCHAR(20),
    idTelefone INT PRIMARY KEY NOT NULL auto_increment,
    numero VARCHAR(31), /* (000) 90000-0000 | (000) 0000-0000 */
    idEndereco INT PRIMARY KEY NOT NULL auto_increment,
    estado VARCHAR(30),
    cidade VARCHAR(30),
    bairro VARCHAR(30),
    rua VARCHAR(30),
    numero VARCHAR(5)
);

CREATE TABLE fornecedor (
    cnpj VARCHAR(18), /* 00.000.000/0000-00 */
    razaoSocial VARCHAR(50),
    email VARCHAR(300), /* <-- DÚVIDA AQUI, DEIXA ESSE OU RETIRA? */
    nomeCompleto VARCHAR(50),
    estadoCivil VARCHAR(10), /* SOLTEIRO | CASADO | SEPARADO | DIVORCIADO | VIÚVO */
    dataNascimento VARCHAR(10), /* 00/00/0000 */
    email VARCHAR(300), /* .....@....com.... */
    numeracao VARCHAR(20),
    idTelefone INT PRIMARY KEY NOT NULL auto_increment,
    numero VARCHAR(31), /* (000) 90000-0000 | (000) 0000-0000 */
    idEndereco INT PRIMARY KEY NOT NULL auto_increment,
    estado VARCHAR(30),
    cidade VARCHAR(30),
    bairro VARCHAR(30),
    rua VARCHAR(30),
    numero VARCHAR(5)
);

CREATE TABLE produto (
    idProduto INT PRIMARY KEY NOT NULL auto_increment,
    nomeProduto VARCHAR(200),
    precoCompra VARCHAR(8),
    precoVenda VARCHAR(8),
    idCategoria INT PRIMARY KEY NOT NULL auto_increment,
    nomeCategoria VARCHAR(30),
    idEstoque INT PRIMARY KEY NOT NULL auto_increment,
    estoqueMinimo VARCHAR(200),
    estoqueAtual VARCHAR(500),
);