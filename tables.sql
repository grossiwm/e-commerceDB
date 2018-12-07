CREATE TABLE usuario (
    usuarioID INTEGER PRIMARY KEY AUTOINCREMENT,
    cpf varchar(255),
    email varchar(255),
    nome varchar(255)
);

CREATE TABLE produto (
    produtoID INTEGER PRIMARY KEY AUTOINCREMENT,
    nome varchar(255),
    tipo varchar(255),
    descricao varchar(255),
    preco decimal
);


CREATE TABLE adiciona (
    quantidade int,
    produtoID int NOT NULL,
    usuarioID int NOT NULL,
    PRIMARY KEY (produtoID, usuarioID),
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID),
    FOREIGN KEY (produtoID) REFERENCES produto(produtoID)
);

CREATE TABLE endereco (
    enderecoID INTEGER PRIMARY KEY AUTOINCREMENT,
    cep varchar(255),
    numero varchar(255),
    complemento varchar(255),
    bairro varchar(255),
    usuarioID int,
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
);

CREATE TABLE cartao (
    cartaoID INTEGER PRIMARY KEY AUTOINCREMENT,
    numero varchar(255),
    validade varchar(255),
    usuarioID int,
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
);

CREATE TABLE compra (
    compraID INTEGER PRIMARY KEY AUTOINCREMENT,
    usuarioID int,
    enderecoEntregaID int,
    enderecoCobrancaID int,
    cartaoID int,
    data_compra varchar(255),
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID),
    FOREIGN KEY (enderecoEntregaID) REFERENCES endereco(enderecoID),
    FOREIGN KEY (enderecoCobrancaID) REFERENCES endereco(enderecoID),
    FOREIGN KEY (cartaoID) REFERENCES cartao(cartaoID)
);

CREATE TABLE produto_compra (
    compraID int,
    produtoID int,
    quantidade int,
    PRIMARY KEY (compraID, produtoID),
    FOREIGN KEY (compraID) REFERENCES compra(compraID),
    FOREIGN KEY (produtoID) REFERENCES produto(produtoID)
);