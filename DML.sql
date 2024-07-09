USE sistemaFloricultura;

-- Inserir os dados nas tabelas
INSERT INTO categoria_flor(nome_categoria, descricao_categoria) VALUES 
    ('Rosa','Simboliza paixão, amor, respeito, adoração'),
    ('Orquidea', 'Simboliza amor, admiração e desejo de prosperidade'),
    ('Tulipas', 'Tulipas simboliza amor, renovação e elegância.'),
    ('Lírios', 'Lírios simboliza pureza, devoção e novas começos.'),
    ('Girassol', 'Simboliza alegria, lealdade e energia positiva' ),
    ('Lavanda', 'Simboliza calma, paz, tranquilidade, purificação e fidelidade.'),
    ('Jasmim', 'Simboliza beleza, sorte e felicidade.'),
    ('Lírio-do-vale', 'Simboliza pureza, inocência, felicidade e renascimento'),
    ('Hortênsia', 'Abundância, gratidão, devoção, admiração e amor eterno.'),
    ('Camélia', 'Perfeição, beleza, elegância, sorte e prosperidade.');

INSERT INTO cliente(nome_cliente, numero_telefone, email) VALUES 
    ('Izidoro', 34996581776, 'iziizi@iftm.com.br'),
    ('Predo', 34984195681, 'predropredro@iftm.com.br'),
    ('Ferfer', 34997745526, 'ferfer@iftm.com.br'),
    ('Geise', 34993144159, 'geise@iftm.com.br'),
    ('Marcondes', 34998844359, 'marcondes@iftm.com.br'),
    ('Reane', 34999736069, 'reane@iftm.edu.br'),
    ('João Pedro', 34992671972, 'joaopedro@iftm.com.br'),
    ('Eduardo Fi.', 34997806757, 'eduardofi@iftm.com.br'),
    ('Leandro', 34999606369, 'leandro@iftm.com.br'),
    ('Vitor', 34992330132, 'vitor@iftm.com.br');

INSERT INTO flor(categoria_id, nome_flor, descricao, estoque_disponivel, preco) VALUES
    (1, 'Buquê P', 'Vendida em forma de buquê ou unitária', 35, 100.00),
    (1, 'Buquê M', 'Vendida em forma de buquê ou unitária', 15, 200.00),
    (1, 'Buquê G', 'Vendida em forma de buquê ou unitária', 3, 300.00),

    (2, 'Buquê P', 'Vendida em forma de buquê ou unitária', 24, 100.00),
    (2, 'Buquê M', 'Vendida em forma de buquê ou unitária', 17, 200.00),
    (2, 'Buquê G', 'Vendida em forma de buquê ou unitária', 2, 300.00),

    (3, 'Buquê P', 'Vendida em forma de buquê ou unitária', 13, 150.00),
    (3, 'Buquê M', 'Vendida em forma de buquê ou unitária', 7, 250.00),
    (3, 'Buquê G', 'Vendida em forma de buquê ou unitária', 1, 350.00),
    
    (4, 'Buquê P', 'Vendida em forma de buquê ou unitária', 23, 150.00),
    (4, 'Buquê M', 'Vendida em forma de buquê ou unitária', 5, 250.00),
    (4, 'Buquê G', 'Vendida em forma de buquê ou unitária', 1, 350.00),

    (5, 'Buquê P', 'Vendida em forma de buquê ou unitária', 20, 150.00),
    (5, 'Buquê M', 'Vendida em forma de buquê ou unitária', 16, 250.00),
    (5, 'Buquê G', 'Vendida em forma de buquê ou unitária', 9, 350.00),

    (6, 'Buquê P', 'Vendida em forma de buquê ou unitária', 25, 250.00),
    (6, 'Buquê M', 'Vendida em forma de buquê ou unitária', 13, 300.00),
    (6, 'Buquê G', 'Vendida em forma de buquê ou unitária', 1, 380.00),

    (7, 'Buquê P', 'Vendida em forma de buquê ou unitária', 10, 150.00),
    (7, 'Buquê M', 'Vendida em forma de buquê ou unitária', 6, 190.00),
    (7, 'Buquê G', 'Vendida em forma de buquê ou unitária', 3, 250.00),

    (8, 'Buquê P', 'Vendida em forma de buquê ou unitária', 8, 250.00),
    (8, 'Buquê M', 'Vendida em forma de buquê ou unitária', 5, 350.00),
    (8, 'Buquê G', 'Vendida em forma de buquê ou unitária', 3, 400.00),

    (9, 'Buquê P', 'Vendida em forma de buquê ou unitária', 3, 200.00),
    (9, 'Buquê M', 'Vendida em forma de buquê ou unitária', 1, 250.00),
    (9, 'Buquê G', 'Vendida em forma de buquê ou unitária', 1, 300.00),

    (10, 'Buquê P', 'Vendida em forma de buquê ou unitária', 10, 170.00),
    (10, 'Buquê M', 'Vendida em forma de buquê ou unitária', 8, 240.00),
    (10, 'Buquê G', 'Vendida em forma de buquê ou unitária', 3, 295.00);

INSERT INTO pedido (cliente_id, status_pedido, valor_total, metodo_pagamento, data)
VALUES
  (8, 'Realizado', 350.00, 'PIX', '2024-06-18'),
  (1, 'Pendente', 200.00, 'PIX', '2024-06-19'),
  (4, 'Cancelado', 300.00, 'CHEQUE SEM FUNDO', '2024-06-20'),
  (3, 'Realizado', 700.00, 'PARCELADO EM 12X', '2024-06-21'),
  (2, 'Pendente', 250.00, 'PAPAI VAI PAGAR', '2024-06-2'),
  (7, 'Realizado', 1300.00, 'PIX', '2024-05-18'),
  (10, 'Cancelado', 150.00, 'GOLPE DO COMPROVANTE FALSO', '2024-05-19'),
  (5, 'Realizado', 100.00, 'ENTRADA DE 30.00 E RESTANTE PAGO PELO PAPAI', '2024-05-20'),
  (6, 'Realizado', 700.00, 'ROLÊ DE COMPASS COM OS VENDEDORES', '2024-04-18'),
  (9, 'Pendente', 250.00, 'ESPERANDO O DINHEIRO DA APOSTA CAIR', '2024-04-19');

INSERT INTO detalhe_pedido(pedido_id, flor_id, qnt) VALUES
    (1, 1, 1),
    (2, 3, 1),
    (3, 4, 1),
    (4, 2, 1),
    (5, 4, 1),
    (6, 4, 13),
    (7, 6, 1),
    (8, 5, 1),
    (9, 8, 1),
    (10, 10, 1);

DELIMITER $
-- Tabela cliente
CREATE PROCEDURE InsertCliente(
    IN P_nome_cliente VARCHAR(50),
    IN P_numero_telefone CHAR(11),
    IN P_email VARCHAR(50)
)
BEGIN
    INSERT INTO cliente (nome_cliente, numero_telefone, email)
    VALUES (P_nome_cliente, P_numero_telefone, P_email);
END $


CREATE PROCEDURE UpdateCliente(
    IN P_id_cliente INT,
    IN P_nome_cliente VARCHAR(50),
    IN P_numero_telefone CHAR(11),
    IN P_email VARCHAR(50)
)
BEGIN
    UPDATE cliente
    SET nome_cliente = P_nome_cliente,
        numero_telefone = P_numero_telefone,
        email = P_email
    WHERE id_cliente = P_id_cliente;
END $


CREATE PROCEDURE DeleteCliente(
    IN P_id_cliente INT
)
BEGIN
    DELETE FROM cliente
    WHERE id_cliente = P_id_cliente;
END $


-- Tabela categoria flor
CREATE PROCEDURE InsertCategoriaFlor(
    IN P_nome_categoria VARCHAR(50),
    IN P_descricao_categoria VARCHAR(255)
)
BEGIN
    INSERT INTO categoria_flor (nome_categoria, descricao_categoria)
    VALUES (P_nome_categoria, P_descricao_categoria);
END $


CREATE PROCEDURE UpdateCategoriaFlor(
    IN P_id_categoria INT,
    IN P_nome_categoria VARCHAR(50),
    IN P_descricao_categoria VARCHAR(255)
)
BEGIN
    UPDATE categoria_flor
    SET nome_categoria = P_nome_categoria,
        descricao_categoria = P_descricao_categoria
    WHERE id_categoria = P_id_categoria;
END $


CREATE PROCEDURE DeleteCategoriaFlor(
    IN P_id_categoria INT
)
BEGIN
    DELETE FROM categoria_flor
    WHERE id_categoria = P_id_categoria;
END $


-- Tabela flor
CREATE PROCEDURE InsertFlor(
    IN P_categoria_id INT,
    IN P_nome_flor VARCHAR(50),
    IN P_descricao VARCHAR(255),
    IN P_estoque_disponivel INT,
    IN P_preco DECIMAL(10, 2)
)
BEGIN
    INSERT INTO flor (categoria_id, nome_flor, descricao, estoque_disponivel, preco)
    VALUES (P_categoria_id, P_nome_flor, P_descricao, P_estoque_disponivel, P_preco);
END $


CREATE PROCEDURE UpdateFlor(
    IN P_id_flor INT,
    IN P_categoria_id INT,
    IN P_nome_flor VARCHAR(50),
    IN P_descricao VARCHAR(255),
    IN P_estoque_disponivel INT,
    IN P_preco DECIMAL(10, 2)
)
BEGIN
    UPDATE flor
    SET categoria_id = P_categoria_id,
        nome_flor = P_nome_flor,
        descricao = P_descricao,
        estoque_disponivel = P_estoque_disponivel,
        preco = P_preco
    WHERE id_flor = P_id_flor;
END $


CREATE PROCEDURE DeleteFlor(
    IN P_id_flor INT
)
BEGIN
    DELETE FROM flor
    WHERE id_flor = P_id_flor;
END $


-- Tabela pedido
CREATE PROCEDURE InsertPedido(
    IN P_cliente_id INT,
    IN P_status_pedido VARCHAR(10),
    IN P_valor_total DECIMAL(10, 2),
    IN P_metodo_pagamento VARCHAR(15),
    IN P_data DATE
)
BEGIN
    INSERT INTO pedido (cliente_id, status_pedido, valor_total, metodo_pagamento, data)
    VALUES (P_cliente_id, P_status_pedido, P_valor_total, P_metodo_pagamento, P_data);
END $


CREATE PROCEDURE UpdatePedido(
    IN P_id_pedido INT,
    IN P_cliente_id INT,
    IN P_status_pedido VARCHAR(10),
    IN P_valor_total DECIMAL(10, 2),
    IN P_metodo_pagamento VARCHAR(15),
    IN P_data DATE
)
BEGIN
    UPDATE pedido
    SET cliente_id = P_cliente_id,
        status_pedido = P_status_pedido,
        valor_total = P_valor_total,
        metodo_pagamento = P_metodo_pagamento,
        data = P_data
    WHERE id_pedido = P_id_pedido;
END $


CREATE PROCEDURE DeletePedido(
    IN P_id_pedido INT
)
BEGIN
    DELETE FROM pedido
    WHERE id_pedido = P_id_pedido;
END $


-- Tabela detalhe_pedido
CREATE PROCEDURE InsertDetalhePedido(
    IN P_pedido_id INT,
    IN P_flor_id INT,
    IN P_qnt INT
)
BEGIN
    INSERT INTO detalhe_pedido (pedido_id, flor_id, qnt)
    VALUES (P_pedido_id, P_flor_id, P_qnt);
END $


CREATE PROCEDURE UpdateDetalhePedido(
    IN P_id_detalhe_pedido INT,
    IN P_pedido_id INT,
    IN P_flor_id INT,
    IN P_qnt INT
)
BEGIN
    UPDATE detalhe_pedido
    SET pedido_id = P_pedido_id,
        flor_id = P_flor_id,
        qnt = P_qnt
    WHERE id_detalhe_pedido = P_id_detalhe_pedido;
END $


CREATE PROCEDURE DeleteDetalhePedido(
    IN P_id_detalhe_pedido INT
)
BEGIN
    DELETE FROM detalhe_pedido
    WHERE id_detalhe_pedido = P_id_detalhe_pedido;
END $

DELIMITER ;