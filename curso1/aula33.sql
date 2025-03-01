CREATE TABLE tabela_pedidos_gold (
 ID_pedido_gold INT PRIMARY KEY,
 Data_Do_Pedido_gold DATE,
 Status_gold VARCHAR(50),
 Total_Do_Pedido_gold DECIMAL(10, 2),
 Cliente_gold INT,
 Data_De_Envio_Estimada_gold DATE,
 FOREIGN KEY (cliente_gold) REFERENCES tabelaclientes(id_cliente)
);

INSERT INTO tabela_pedidos_gold 
(
	ID_pedido_gold,
	Data_Do_Pedido_gold,
	Status_gold,
	Total_Do_Pedido_gold,
	cliente_gold,
	Data_De_Envio_Estimada_gold
)
SELECT 
	id,
	data_do_pedido,
	status,
	total_do_pedido, 
	cliente,
	data_de_envio_estimada
FROM tabela_pedidos
WHERE total_do_pedido >= 400 

