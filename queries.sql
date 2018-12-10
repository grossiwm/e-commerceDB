
-- query do user
SELECT usuario.nome, usuario.email, endereco.cep, endereco.numero, endereco.complemento, endereco.bairro FROM usuario, endereco
WHERE usuario.usuarioID = endereco.usuarioID;



-- Carrinho
SELECT produto.nome
FROM produto, adiciona, usuario
WHERE adiciona.produtoID = produto.produtoID
AND   adiciona.usuarioID = usuario.usuarioID;

-- Usuario e cartoes
SELECT usuario.nome, usuario.email, cartao.numero, cartao.validade FROM usuario, cartao
WHERE usuario.usuarioID = cartao.usuarioID;

-- compras do user
SELECT usuario.nome, usuario.email, produto.nome, produto.preco, produto_compra.quantidade FROM usuario, produto_compra, produto
WHERE produto_compra.produtoID = produto.produtoID;

SELECT usuario.nome, usuario.email, produto.nome, produto.preco, produto_compra.quantidade FROM usuario, produto_compra, produto
WHERE produto_compra.produtoID = produto.produtoID
GROUP BY produto.nome;


-- SELECT quantidade * preco FROM (SELECT usuario.nome, usuario.email, produto.nome, produto.preco, produto_compra.quantidade FROM usuario, produto_compra, produto
-- WHERE produto_compra.produtoID = produto.produtoID)
-- GROUP BY produto.nome;
