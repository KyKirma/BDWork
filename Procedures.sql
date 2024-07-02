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