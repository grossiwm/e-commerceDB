
-- Enderecos do usuário
SELECT usuario.nome AS nome_completo, 
usuario.email, 
endereco.cep, 
endereco.numero, 
endereco.complemento, 
endereco.bairro 
FROM usuario, endereco
WHERE usuario.usuarioID = endereco.usuarioID;

-- Carrinho
SELECT produto.nome AS nome_do_produto
FROM produto, adiciona, usuario
WHERE adiciona.produtoID = produto.produtoID
AND   adiciona.usuarioID = usuario.usuarioID;

-- Usuário e cartoes
SELECT usuario.nome AS nome_completo, usuario.email, cartao.numero AS numero_do_cartāo, cartao.validade AS validade_do_cartao FROM usuario, cartao
WHERE usuario.usuarioID = cartao.usuarioID;

-- Compras do user

SELECT usuario.nome AS nome_completo, usuario.email, produto.nome AS nome_do_produto, produto.preco, produto_compra.quantidade*produto.preco as precoXquantidade
FROM usuario, produto_compra, produto
WHERE produto_compra.produtoID = produto.produtoID;


-- Calculando valor total para cada compra do usuário
SELECT usuario.nome AS nome_completo, usuario.email, compra.compraID, sum(produto.preco*produto_compra.quantidade) AS preco_total_do_carrinho
FROM usuario, compra, produto_compra, produto
WHERE usuario.usuarioID = compra.usuarioID 
AND produto.produtoID = produto_compra.produtoID 
AND produto_compra.compraID = compra.compraID
GROUP BY compra.compraID;

