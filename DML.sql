-- Inserir os dados nas tabelas

INSERT INTO categoria_flor(nome_categoria, descricao_categoria) VALUES 
    ('Rosa','Simboliza paixão, amor, respeito, adoração'),
    ('Orquidea', 'Simboliza amor, admiração e desejo de prosperidade'),
    ('Tulipas', 'Tulipas simboliza amor, renovação e elegância.'),
    ('Lírios', 'Lírios simboliza pureza, devoção e novas começos.'),
    ('Girassol', 'Simboliza alegria, lealdade e energia positiva' );

INSERT INTO cliente(nome_cliente, numero_telefone, email) VALUES 
    ('', '');


INSERT INTO detalhe_pedido(pedido_id, flor_id, quantidade) VALUES
    ('');


INSERT INTO flor(categoria_id, nome_flor, descricao, estoque_disponivel, preco) VALUES
    (1, 'Buquê', 'P Vendida em forma de buquê ou unitária', 35, 100.00),
    (1, 'Buquê', 'M Vendida em forma de buquê ou unitária', 15, 200.00),
    (1, 'Buquê', 'G Vendida em forma de buquê ou unitária', 3, 300.00),
    (2, 'Buquê', 'P Vendida em forma de buquê ou unitária', 24, 100.00),
    (2, 'Buquê', 'M Vendida em forma de buquê ou unitária', 17, 200.00),
    (2, 'Buquê', 'G Vendida em forma de buquê ou unitária', 2, 300.00),
    (3, 'Buquê', 'P Vendida em forma de buquê ou unitária', 13, 150.00),
    (3, 'Buquê', 'M Vendida em forma de buquê ou unitária', 7, 250.00),
    (3, 'Buquê', 'G Vendida em forma de buquê ou unitária', 1, 350.00);

INSERT INTO pedido(cliente_id, status_pedido, valor_total, metodo_pagamento) VALUES
    ('');
