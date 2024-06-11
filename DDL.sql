-- Checa se o banco de dados existe e o deleta se existir
DROP DATABASE IF EXISTS sistemaFloricultura;

-- Cria um novo banco de dados
CREATE DATABASE sistemaFloricultura;

-- Seleciona o banco de dados para uso
USE sistemaFloricultura;

-- Criação da tabela de clientes
CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT NOT NULL,
    nome_cliente VARCHAR(50) NOT NULL,
    numero_telefone CHAR(11),
    email VARCHAR(50),
    PRIMARY KEY (id_cliente)
);

-- Criação da tabela de categorias de flores
CREATE TABLE IF NOT EXISTS categoria_flor (
    id_categoria INT AUTO_INCREMENT NOT NULL,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255),
    PRIMARY KEY (id_categoria)
);

-- Criação da tabela de flores
CREATE TABLE IF NOT EXISTS flor (
    id_flor INT AUTO_INCREMENT NOT NULL,
    categoria_id INT,
    nome_flor VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    estoque_disponivel INT,
    preco DECIMAL(10, 2),
    PRIMARY KEY (id_flor),
    FOREIGN KEY (categoria_id) REFERENCES categoria_flor(id_categoria)
);

-- Criação da tabela de pedidos
CREATE TABLE IF NOT EXISTS pedido (
    id_pedido INT AUTO_INCREMENT NOT NULL,
    cliente_id INT,
    status_pedido VARCHAR(10),
    valor_total DECIMAL(10, 2),
    metodo_pagamento VARCHAR(15),
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id_cliente)
);

-- Criação da tabela de detalhes do pedido
CREATE TABLE IF NOT EXISTS detalhe_pedido (
    id_detalhe_pedido INT AUTO_INCREMENT NOT NULL,
    pedido_id INT,
    flor_id INT,
    PRIMARY KEY (id_detalhe_pedido),
    FOREIGN KEY (pedido_id) REFERENCES pedido(id_pedido),
    FOREIGN KEY (flor_id) REFERENCES flor(id_flor)
);


