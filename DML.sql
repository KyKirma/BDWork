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
    (1, 'Buquê', 'P Vendida em forma de buquê ou unitária', 35, 100.00),
    (1, 'Buquê', 'M Vendida em forma de buquê ou unitária', 15, 200.00),
    (1, 'Buquê', 'G Vendida em forma de buquê ou unitária', 3, 300.00),

    (2, 'Buquê', 'P Vendida em forma de buquê ou unitária', 24, 100.00),
    (2, 'Buquê', 'M Vendida em forma de buquê ou unitária', 17, 200.00),
    (2, 'Buquê', 'G Vendida em forma de buquê ou unitária', 2, 300.00),

    (3, 'Buquê', 'P Vendida em forma de buquê ou unitária', 13, 150.00),
    (3, 'Buquê', 'M Vendida em forma de buquê ou unitária', 7, 250.00),
    (3, 'Buquê', 'G Vendida em forma de buquê ou unitária', 1, 350.00),
    
    (4, 'Buquê', 'P Vendida em forma de buquê ou unitária', 23, 150.00),
    (4, 'Buquê', 'M Vendida em forma de buquê ou unitária', 5, 250.00),
    (4, 'Buquê', 'G Vendida em forma de buquê ou unitária', 1, 350.00),

    (5, 'Buquê', 'P Vendida em forma de buquê ou unitária', 20, 150.00),
    (5, 'Buquê', 'M Vendida em forma de buquê ou unitária', 16, 250.00),
    (5, 'Buquê', 'G Vendida em forma de buquê ou unitária', 9, 350.00),

    (6, 'Buquê', 'P Vendida em forma de buquê ou unitária', 25, 250.00),
    (6, 'Buquê', 'M Vendida em forma de buquê ou unitária', 13, 300.00),
    (6, 'Buquê', 'G Vendida em forma de buquê ou unitária', 1, 380.00),

    (7, 'Buquê', 'P Vendida em forma de buquê ou unitária', 10, 150.00),
    (7, 'Buquê', 'M Vendida em forma de buquê ou unitária', 6, 190.00),
    (7, 'Buquê', 'G Vendida em forma de buquê ou unitária', 3, 250.00),

    (8, 'Buquê', 'P Vendida em forma de buquê ou unitária', 8, 250.00),
    (8, 'Buquê', 'M Vendida em forma de buquê ou unitária', 5, 350.00),
    (8, 'Buquê', 'G Vendida em forma de buquê ou unitária', 3, 400.00),

    (9, 'Buquê', 'P Vendida em forma de buquê ou unitária', 3, 200.00),
    (9, 'Buquê', 'M Vendida em forma de buquê ou unitária', 1, 250.00),
    (9, 'Buquê', 'G Vendida em forma de buquê ou unitária', 1, 300.00),

    (10, 'Buquê', 'P Vendida em forma de buquê ou unitária', 10, 170.00),
    (10, 'Buquê', 'M Vendida em forma de buquê ou unitária', 8, 240.00),
    (10, 'Buquê', 'G Vendida em forma de buquê ou unitária', 3, 295.00);

INSERT INTO pedido(cliente_id, status_pedido, valor_total, metodo_pagamento) VALUES
    (8, 'Realizado', 350.00, 'PIX'),
    (1, 'Pendente', 200.00, 'PIX' ),
    (4, 'Cancelado', 300.00, 'CHEQUE SEM FUNDO'),
    (3, 'Realizado', 700.00, 'PARCELADO EM 12X'),
    (2, 'Pendente', 250.00, 'PAPAI VAI PAGAR'),
    (7, 'Realizado', 1350.00, 'PIX'),
    (10, 'Cancelado', 150.00, 'GOLPE DO COMPROVANTE FALSO'),
    (5, 'Realizadíssimo', 100.00, 'ENTRADA DE 30.00 E RESTANTE PAGO PELO PAPAI'),
    (6, 'Realizado', 700.00, 'ROLÊ DE COMPASS COM OS VENDEDORES'),
    (9, 'Pendente', 250.00, 'ESPERANDO O DINHEIRO DA APOSTA CAIR');


INSERT INTO detalhe_pedido(pedido_id, flor_id) VALUES
    (1, 1),
    (2, 3),
    (3, 4),
    (4, 2),
    (5, 4),
    (6, 4),
    (7, 6),
    (8, 5),
    (9, 8),
    (10, 10);
