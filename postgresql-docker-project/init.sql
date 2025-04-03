-- Este arquivo contém comandos SQL que serão executados na inicialização do banco de dados.

-- Criação do banco de dados
CREATE DATABASE Dados_RFB;

-- Conexão ao banco de dados
\c Dados_RFB;

-- Criação de tabelas exemplo
CREATE TABLE empresa (
    id SERIAL PRIMARY KEY,
    cnpj_basico VARCHAR(14) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data_abertura DATE,
    natureza_juridica VARCHAR(100)
);

CREATE TABLE estabelecimento (
    id SERIAL PRIMARY KEY,
    cnpj_basico VARCHAR(14) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE socios (
    id SERIAL PRIMARY KEY,
    cnpj_basico VARCHAR(14) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    percentual_participacao DECIMAL(5,2)
);

-- Inserção de dados iniciais (exemplo)
INSERT INTO empresa (cnpj_basico, nome, data_abertura, natureza_juridica) VALUES
('12345678000195', 'Empresa Exemplo LTDA', '2021-01-01', 'Sociedade Limitada');

INSERT INTO estabelecimento (cnpj_basico, nome, endereco, telefone) VALUES
('12345678000195', 'Filial Exemplo', 'Rua Exemplo, 123', '1234-5678');

INSERT INTO socios (cnpj_basico, nome, percentual_participacao) VALUES
('12345678000195', 'Sócio Exemplo', 50.00);