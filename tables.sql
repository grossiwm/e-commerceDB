CREATE TABLE usuario (
    usuarioID int NOT NULL,
    cpf varchar(255),
    email varchar(255),
    nome varchar(255),
    carrinhoID int,
    PRIMARY KEY (id)
);

CREATE TABLE produtos (
    produtosID int NOT NULL,
    nome varchar(255),
    tipo varchar(255),
    category varchar(255),
    PRIMARY KEY (produtosID),
    FOREIGN KEY (carrinhoid) REFERENCES usuario(carrinhoID)
);

CREATE TABLE endereco (
    
);




