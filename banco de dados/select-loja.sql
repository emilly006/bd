# GROUP BY

# Quantos clientes de cada cidade a loja tem?

select cidade, count(*) as qntd from cliente group by cidade;

# Quantos itens tem cada pedido?

select fk_num_pedido as NumPedido, count(*) as qntd from itempedido group by FK_num_pedido;

# Quantos pedidos cada vendedor fez?

select fk_cod_vendedor as vendedor, count(*) as qntd from pedido group by fk_cod_vendedor;

# Qual a soma de produtos e a média de produtos em cada pedido?

select fk_num_pedido as numPedido, sum(quantidade) as SOMA, 
avg(quantidade) as media from itemPedido group by fk_num_pedido;

# Qual o maior, menor e médio prazo de entrega de cada vendedor?

select max(prazo_entrega), min(prazo_entrega),avg(prazo_entrega)
from pedido group by fk_cod_vendedor;

# Quantos pedidos cada item está incluido?

select fk_cod_produto as produto, count(*) as qntd from itempedido
group by fk_cod_produto;

# Top 3 dos produtos mais vendidos

select fk_cod_produto as produto, sum(quantidade) as qntd
from itempedido group by fk_cod_produto order by qntd desc limit 3
