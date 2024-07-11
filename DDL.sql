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
    data DATE,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id_cliente)
);

-- Criação da tabela de detalhes do pedido
CREATE TABLE IF NOT EXISTS detalhe_pedido (
    id_detalhe_pedido INT AUTO_INCREMENT NOT NULL,
    pedido_id INT,
    flor_id INT,
    qnt INT,
    PRIMARY KEY (id_detalhe_pedido),
    FOREIGN KEY (pedido_id) REFERENCES pedido(id_pedido),
    FOREIGN KEY (flor_id) REFERENCES flor(id_flor)
);

-- Pergunta: Quantos pedidos foram feitos para cada status de pedido?
CREATE VIEW V_Questao1 AS
SELECT status_pedido, COUNT(id_pedido) AS total_pedidos
FROM pedido
GROUP BY status_pedido;

-- Pergunta: Qual é a média do valor total dos pedidos realizados por mês?
CREATE VIEW V_Questao2 AS
SELECT DATE_FORMAT(data, '%Y-%m') AS mes,
       TRUNCATE(AVG(valor_total), 2) AS media_valor_total 
FROM pedido 
WHERE status_pedido = 'Realizado'
GROUP BY DATE_FORMAT(data, '%Y-%m');

-- Pergunta: Quais são os nomes dos clientes que têm pedidos cancelados?
CREATE VIEW V_Questao3 AS
SELECT nome_cliente 
FROM cliente 
JOIN pedido ON cliente.id_cliente = pedido.cliente_id 
WHERE status_pedido = 'Cancelado';

-- Pergunta: Qual é o maior valor entre todos os pedidos e qual é o cliente associado a esse pedido?
CREATE VIEW V_Questao4 AS
SELECT p.id_pedido, p.valor_total, c.nome_cliente
FROM pedido p
JOIN cliente c ON p.cliente_id = c.id_cliente
WHERE p.valor_total = (SELECT MAX(valor_total) FROM pedido);

-- Pergunta: Quantas flores existem ao total no estoque?
CREATE VIEW V_Questao5 AS
SELECT SUM(estoque_disponivel) AS total_estoque
FROM flor;

-- Criando a trigger de estoque
DELIMITER $
CREATE TRIGGER Tgr_detalhePedido_Insert AFTER INSERT
ON detalhe_pedido
FOR EACH ROW
BEGIN
	UPDATE Flor SET estoque_disponivel = estoque_disponivel - NEW.qnt
WHERE id_flor = NEW.flor_id;
END;

CREATE TRIGGER Tgr_detalhePedido_Delete AFTER DELETE
ON detalhe_pedido
FOR EACH ROW
BEGIN
	UPDATE Flor SET estoque_disponivel = estoque_disponivel + OLD.qnt
WHERE id_flor = OLD.flor_id;
END;
DELIMITER ;