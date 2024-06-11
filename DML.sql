-- Inserir os dados nas tabelas

INSERT INTO categoria_flor(nome_categoria, descricao_categoria) VALUES (
    ('')
);

INSERT INTO cliente(nome_cliente, id_empresa, numero_telefone, email) VALUES (
    ('')
);

INSERT INTO detalhe_pedido(pedido_id, flor_id, quantidade, preco_unitario) VALUES (
    ('')
);

INSERT INTO empresa(nome_empresa, endereco, cnpj, descricao_empresa) VALUES (
    ('JonJon', 'Av. Joana, 940', '16.235.663/0001-23', 'Empresa de flores silvestres'),
    ()
);

INSERT INTO flor(fornecedor_id, categoria_id, nome_flor, descricao, estoque_disponivel, preco) VALUES (
    ('')
);

INSERT INTO fornecedor(nome_fornecedor, id_empresa, endereco, telefone, email) VALUES (
    ('')
);

INSERT INTO pedido(cliente_id, dados_dos_pedidos, valor_total, metodo_pagamento) VALUES (
    ('')
);