CREATE TABLE TESTE AS
SELECT usuario.nome AS nome_usuario, produto.nome AS nome_produto
FROM produto, adiciona, usuario
WHERE adiciona.produtoID = produto.produtoID
AND   adiciona.usuarioID = usuario.usuarioID;

