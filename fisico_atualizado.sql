/* Logico_atualizado2: */

CREATE TABLE Conta (
    email varchar(200) PRIMARY KEY,
    senha varchar(20)
);

CREATE TABLE Planta (
    id_planta int PRIMARY KEY,
    nome_planta varchar(40),
    descricao_planta varchar(1000),
    foto_planta text,
    email varchar(200)
);

CREATE TABLE TipoPost (
    id_tppost int PRIMARY KEY,
    nome_post varchar(60)
);

CREATE TABLE Post (
    id_post int PRIMARY KEY,
    nome_post varchar(60),
    descricao_post varchar(1000),
    foto_post text,
    id_tppost int,
    id_planta int
);
 
ALTER TABLE Planta ADD CONSTRAINT FK_Planta_2
    FOREIGN KEY (email)
    REFERENCES Conta (email);
 
ALTER TABLE Post ADD CONSTRAINT FK_Post_2
    FOREIGN KEY (id_tppost, id_planta)
    REFERENCES TipoPost (id_tppost),
    REFERENCES Planta (id_planta);
	