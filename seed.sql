-- populando usario
INSERT INTO usuario (cpf, email, nome)
VALUES ('0123456123', 'luiz@hotmail.com', 'Luiz Almeida Junior');

-- populando produtos
INSERT INTO produto (nome, tipo, descricao, preco)
VALUES ('celular', 'eletronicos', 'Muito portatil', 3999.99);

INSERT INTO produto (nome, tipo, descricao, preco)
VALUES ('macbook air', 'eletronicos', 'Muito bom', 15000.00);

INSERT INTO produto (nome, tipo, descricao, preco)
VALUES ('ps4', 'eletronicos', 'Para gamers', 2000.00);

INSERT INTO produto (nome, tipo, descricao, preco)
VALUES ('TV', 'eletronicos', "FullHD 60''", 5000.00);

-- usuario adiciona produtos
INSERT INTO adiciona (quantidade, produtoID, usuarioID)
VALUES (1, 1, 1);

INSERT INTO adiciona (quantidade, produtoID, usuarioID)
VALUES (5, 2, 1);

INSERT INTO adiciona (quantidade, produtoID, usuarioID)
VALUES (7, 3, 1);

INSERT INTO adiciona (quantidade, produtoID, usuarioID)
VALUES (8, 4, 1);

-- Cartao

INSERT INTO cartao (numero, validade, usuarioID)
VALUES ("1234 1234 1234 1234", "12/29", 1);

INSERT INTO cartao (numero, validade, usuarioID)
VALUES ("1094 1212 1287 1237", "12/52", 1);

INSERT INTO cartao (numero, validade, usuarioID)
VALUES ("1234 1934 1234 1534", "12/90", 1);

-- Endereco

INSERT INTO endereco (cep, numero, complemento, bairro, usuarioID)
VALUES ("24300400", "10", "23", "Beverly Hills", 1);

INSERT INTO endereco (cep, numero, complemento, bairro, usuarioID)
VALUES ("24300922", "1", "201", "Albuquerque", 1);

INSERT INTO endereco (cep, numero, complemento, bairro, usuarioID)
VALUES ("24366600", "10", "49", "Novo Mexico", 1);

-- Inserindo compras

INSERT INTO compra (usuarioID, enderecoEntregaID, enderecoCobrancaID, cartaoID, data_compra)
VALUES (1, 1, 2, 1, "06/12/16");

INSERT INTO compra (usuarioID, enderecoEntregaID, enderecoCobrancaID, cartaoID, data_compra)
VALUES (1, 3, 3, 2, "06/06/06");

INSERT INTO compra (usuarioID, enderecoEntregaID, enderecoCobrancaID, cartaoID, data_compra)
VALUES (1, 2, 3, 3, "03/10/16");

-- ProdutoCompra

-- produtos para a primeira compra
INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (1, 2, 3);

INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (1, 1, 3);

INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (1, 3, 3);

-- produtos para a segunda compra
INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (2, 1, 2);

INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (2, 3, 1);

INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (2, 2, 1);

-- produtos para a terceira compra
INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (3, 1, 20);

INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (3, 2, 10);

INSERT INTO produto_compra (compraID, produtoID, quantidade)
VALUES (3, 3, 9);