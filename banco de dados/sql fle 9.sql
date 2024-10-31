# Liste os nomes dos clientes que fizeram pedidos, o nome do restaurante onde o pedido foi feito e o valor total do pedido.
select u.nome AS cliente, r.nome AS restaurante, p.valor_total AS total
from usuario u
INNER JOIN pedido p ON u.id = p.FK_usuario_id
INNER JOIN restaurante r ON r.id = p.FK_restaurante_id;

# Liste os nomes dos pratos e os restaurantes que os servem, junto com o preço de cada prato.
select p.nome AS prato, r.nome AS restaurante, p.preco AS valor
from prato p
INNER JOIN restaurante r ON r.id = p.FK_restaurante_id;

# Encontre todos os pedidos feitos em um determinado restaurante (por exemplo, "Restaurante A") e liste os nomes dos clientes e o valor total de cada pedido.
select r.nome As restaurante, u.nome as cliente, p.valor_total as valor
from restaurante r
INNER JOIN pedido p ON r.id = p.FK_usuario_id
inner join usuario u on u.id = p.fk_usuario_id where r.nome = 'restaurante A';

# Liste os pratos pedidos por cada cliente, a quantidade pedida e o nome do restaurante que serviu o prato.
select u.nome as nomeusu,
p.nome as pratonome,
ip.quantidade as quantidade,
r.nome as nomerest
from usuario u
inner join prato p ON ip = p.FK_restaurante_id
inner join restaurante r on r.id = pe.FK_restaurante_id
inner join pedido pe  on pe.fk_usuario_id
inner join itempedido ip on ip.id = ip.FK_pedido_id;


# Liste todos os pratos que estão no cardápio de um determinado restaurante, juntamente com o nome do restaurante e o período de validade do cardápio.
select pr.nome as pratos, c.nome as cardapio, r.nome as restaurante , c.data_fim as validade
from pratro pr
inner join restaurante r on r.id = c.fk_restaurante_id
inner join cardapio c on c.id = c.restaurante where r.nome = 'restaurante A';



# Encontre os clientes que já fizeram mais de 3 pedidos em qualquer restaurante. Liste o nome do cliente e a quantidade total de pedidos que ele fez.

# Liste os clientes que fizeram pedidos em mais de um restaurante, mostrando o nome do cliente e a quantidade de restaurantes diferentes em que ele fez pedidos.

# Liste os restaurantes e o número total de pratos que cada restaurante possui em seus cardápios.

# Liste os pratos que pertencem a restaurantes localizados em uma cidade específica (por exemplo, "São Paulo"), mostrando o nome do restaurante, o nome do prato e o preço.

# Liste os clientes que fizeram pedidos em restaurantes localizados em cidades diferentes da cidade onde moram, mostrando o nome do cliente, o nome do restaurante e a cidade do restaurante.

# DESAFIO
# Encontre os clientes que pediram o mesmo prato em diferentes restaurantes, listando o nome do cliente, o nome do prato e os restaurantes onde o prato foi pedido.