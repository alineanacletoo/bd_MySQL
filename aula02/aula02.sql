CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    data_validade date,
    preco decimal,
    PRIMARY KEY(id)
);

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Tomates", 100, "2024-01-07", 8.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("Pepino", 57, "2025-02-13", 9.50),
		("Cenoura", 20, "2024-01-20", 7.00),
        ("Cebola", 60, "2024-03-07", 5.00),
        ("Repolho", 30, "2024-02-02", 3.00);

SELECT * FROM tb_produtos;