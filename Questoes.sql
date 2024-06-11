-- Pergunta: Qual é o total de vendas feitas por cada cliente até o momento, e quem são os cinco principais clientes em termos de valor de compras?
SELECT cliente_id, SUM(valor) AS total_compras
FROM vendas
GROUP BY cliente_id
ORDER BY total_compras DESC
LIMIT 5;

-- Pergunta: Qual é o produto mais vendido até agora e quantas unidades foram vendidas?
SELECT produto_id, nome_produto, SUM(quantidade) AS total_vendido
FROM vendas
JOIN produtos ON vendas.produto_id = produtos.id
GROUP BY produto_id, nome_produto
ORDER BY total_vendido DESC
LIMIT 1;

-- Pergunta: Qual é o dia da semana com o maior número de vendas até o momento e quantas vendas ocorreram nesse dia?
SELECT DAYNAME(data_venda) AS dia_semana, COUNT(*) AS total_vendas
FROM vendas
GROUP BY dia_semana
ORDER BY total_vendas DESC
LIMIT 1;

-- Pergunta: Qual é a média de vendas por mês ao longo do último ano?
SELECT YEAR(data_venda) AS ano, MONTH(data_venda) AS mes, AVG(valor) AS media_vendas
FROM vendas
WHERE data_venda >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
GROUP BY ano, mes;

-- Pergunta: Quais são os produtos que nunca foram vendidos?
SELECT id, nome_produto
FROM produtos
WHERE id NOT IN (SELECT DISTINCT produto_id FROM vendas);
