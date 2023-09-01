use ecommerce;

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Cliente (primeiroNome, nomeDoMeio, sobrenome, endereco, dataDeNascimento) values 
('Mariana', 'R', 'Silva', 'Rua das Flores, 25 - Jardim Primavera - Belo Horizonte/MG', '1990-07-15'),
('Lucas', 'B', 'Mendes', 'Av. Santos Dumont, 78 - Vila Nova - Florianópolis/SC', '1982-03-03'),
('Isabela', 'S', 'Ferreira', 'Rua dos Pássaros, 12 - Centro - Curitiba/PR', '1995-12-10'),
('Ricardo', 'L', 'Gonçalves', 'Av. Paulista, 1234 - Bela Vista - São Paulo/SP', '1976-05-20'),
('Patrícia', 'C', 'Santos', 'Rua da Praia, 56 - Ponta Negra - Natal/RN', '1988-09-05'),
('Felipe', 'M', 'Rodrigues', 'Av. Presidente Vargas, 789 - Jardim Botânico - Rio de Janeiro/RJ', '1993-02-28');

insert into Tipo (numero, tipoDoDocumento, numeroDeIdentificacao) values 
(98765432100123, 'CNPJ', 1),
(54321098765, 'CPF', 2),
(98765432100001, 'CNPJ', 3),
(98765432124, 'CPF', 4),
(12345678900003, 'CNPJ', 5),
(98765432100, 'CPF', 6);

insert into Produto (produto, categoria, preco, nota) values 
('Smartphone', 'Eletrônico', 1299.99, 9),
('Liquidificador', 'Eletrodoméstico', 299.00, 8),
('Laptop', 'Informática', 1999.00, 9),
('Mesa de Escritório', 'Móvel', 799.99, 7),
('Biscoitos', 'Alimento', 'Pacote com 500g de biscoitos caseiros', 5.99, 10),
('Fone de Ouvido', 'Eletrônico', 149.99, 8);

insert into Localidade (cidade, CEP) values 
('São Paulo', '01009000'),
('Rio de Janeiro', '20005070'),
('Belo Horizonte', '30000001'),
('Salvador', '40200000'),
('Recife', '500023000'),
('Brasília', '70001030');

insert into Produto_Estoque (IDProduto, IDLocalEstoq, quantidade) values 
(1,6,340), 
(2,5,15), 
(3,4,428), 
(4,3,599), 
(5,2,230),
(6,1,314);

insert into Fornecedor (cnpj, razaoSocialEmpresa, contato) values 
('84751032000165', 'Decorações Elegantes', '11987654321'),
('93217584000147', 'Livros Incríveis', '11998765432'),
('21578369000103', 'Restaurante Saboroso', '11987654321'),
('45230978000129', 'Beleza Natural', '11998765432'),
('63518742000176', 'Informática Avançada', '11987654321');

insert into Fornecedor_Produto (IDFornecedor, IDProduto, quantidade) values 
(1,6,340), 
(2,5,15), 
(3,4,428), 
(4,3,599), 
(5,2,230),
(5,1,314);

insert into Pagamento (tipoDePagamento) values 
('Credito'),
('PIX'),
('Boleto');
                     
insert into Vendedor (razaoSocial, localidade, nomeFantasia) values 
('Luciana Modas', 'Santa Catarina', 'Fashion Style'),
('João Papelaria', 'Paraná', 'Papel & Caneta'),
('Márcia Lanches', 'Ceará', 'Lanches da Vila'),
('Rodrigo Pizzaria', 'Pernambuco', 'Pizzas Deliciosas'),
('Ana Salão de Beleza', 'Amazonas', 'Beleza & Estilo');

insert into Vendedor_Produto (IDVendedor, IDProduto, quantidade) values 
(1, 5, 10),				
(2, 4, 12),
(5, 3, 13),
(3, 2, 18),
(4, 1, 19);

insert into Pedido ( IDPedidoCliente, 	IDPedidoPagamento,				frete,	statusPedido, 	CEP) values 
(2,						1,				  		20,		default,		'01031970'),
(3,						1, 				  		10,		default,		'80001970'),
(4,						2,				  		30,		default,		'20010974'),
(5,						2,				  		40,		default,		'88010970'),
(6,						3, 				  		10,		default,		'30161970'),
(3,						3,				  		40,		default,		'80001970'),
(1,						3, 				  		80,		default,		'30161970');

insert into Item (	IDItemPedido, 	IDItemProduto, 	quantidade, statusProduto, 	total) values 
(1, 					1, 					1, 			default,		      800.00),
(1, 					4, 					1, 			default,		      3089.99),
(2, 					5, 					1, 			'Indisponível',		0),
(2, 					2, 					1, 			default,		      310.00),
(3, 					3, 					1, 			'Indisponível',		0),
(3, 					6, 					1, 			default,		      199.35),
(4, 					5, 					1, 			'Indisponível',		0),
(4, 					6,	 				1, 			default,		      199.35),
(5, 					5, 					1, 			'Indisponível',		0),
(5, 					3, 					1, 			default,		      6500.00),
(6,					  4,					1,			default,		      3089.99),
(7,					  3,					1,			default,		      6500.00);

-- inserindo valores na tabela Entrega
insert into Entrega (IDPedido, 	statusEntrega, 	codigoRastreio) values 
(2, 			'Despacho', 		'BC123456789BR'),
(1, 			'Despacho', 		'IS123456789BR'),
(4, 			'Despacho', 		'BL123456789BR'),
(5, 			'Despacho', 		'JQ123456789BR'),
(3, 			'Despacho', 		'DA123456789BR'),
(7, 			'Despacho', 		'OB123456789BR'),
(6, 			'Despacho', 		'ER123456789BR');
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
