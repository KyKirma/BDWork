-- Inserir os dados nas tabelas

INSERT INTO categoria_flor(nome_categoria, descricao_categoria) VALUES (
    ('Rosa','Ótimas para ocasiões com intenção de demonstrar: paixão, amor, respeito, adoração'),
    ('Orquidea', 'Brancas'),
    ('Tulipas', 'Amarela')
);

INSERT INTO cliente(nome_cliente, numero_telefone, email) VALUES (
    ('', '')
);

INSERT INTO detalhe_pedido(pedido_id, flor_id, quantidade) VALUES (
    ('')
);

INSERT INTO flor(categoria_id, nome_flor, descricao, estoque_disponivel, preco) VALUES (
    (1, 'Rosas', 'Rosas sortidas')
);

INSERT INTO pedido(cliente_id, status_pedido, valor_total, metodo_pagamento) VALUES (
    ('')
);