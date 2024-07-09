-- Pergunta: Quantos pedidos foram feitos para cada status de pedido?
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