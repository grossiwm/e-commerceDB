CREATE TABLE usuario (
    usuarioID INTEGER PRIMARY KEY AUTOINCREMENT,
    cpf varchar(255),
    email varchar(255),
    nome varchar(255)
);

CREATE TABLE produto (
    produtoID int NOT NULL,
    nome varchar(255),
    tipo varchar(255),
    category varchar(255),
    usuarioID int,
    PRIMARY KEY (produtoID),
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
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
    enderecoID int,
    cep varchar(255),
    numero varchar(255),
    complemento varchar(255),
    bairro varchar(255),
    usuarioID int,
    PRIMARY KEY (enderecoID),
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
);

CREATE TABLE cartao (
    cartaoID int,
    numero varchar(255),
    validade varchar(255),
    usuarioID int,
    PRIMARY KEY (cartaoID),
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
);

CREATE TABLE compra (
    compraID int,
    usuarioID int,
    enderecoEntregaID int,
    enderecoCobrancaID int,
    cartaoID int,
    PRIMARY KEY (compraID),
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