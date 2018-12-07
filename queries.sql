
-- query do user
SELECT usuario.nome, usuario.email, endereco.cep, endereco.numero, endereco.complemento, endereco.bairro FROM usuario, endereco
WHERE usuario.usuarioID = endereco.usuarioID;



-- Carrinho
SELECT produto.nome
FROM produto, adiciona, usuario
WHERE adiciona.produtoID = produto.produtoID
AND   adiciona.usuarioID = usuario.usuarioID;

SELECT usuario.nome, usuario.email, cartao.numero, cartao.validade FROM usuario, cartao
WHERE usuario.usuarioID = cartao.usuarioID;

