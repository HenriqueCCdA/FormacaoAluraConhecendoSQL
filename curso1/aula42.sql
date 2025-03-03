SELECT * FROM tabela_pedidos WHERE Total_do_pedido >= 200 AND Status = 'Pendente';

SELECT * FROM tabela_pedidos WHERE Status = 'Pendente' OR Status = 'Processando';

SELECT * FROM tabela_pedidos WHERE NOT Status = 'Pendente';

SELECT * FROM tabela_pedidos WHERE data_de_envio_estimada BETWEEN '2023-08-01' AND '2023-09-01';