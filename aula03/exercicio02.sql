CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(50) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria_fk INT,
    FOREIGN KEY (id_categoria_fk) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Tradicional', 'Pizzas clássicas com sabores consagrados'),
('Premium', 'Pizzas gourmet com ingredientes diferenciados'),
('Doce', 'Pizzas doces para sobremesa'),
('Vegetariana', 'Opções sem carne e ricas em vegetais'),
('Especial', 'Sabores únicos e exclusivos da casa');

INSERT INTO tb_pizzas (nome_pizza, ingredientes, preco, tamanho, id_categoria_fk) VALUES
('Mussarela', 'Queijo mussarela, molho de tomate', 40.00, 'Média', 1),
('Calabresa', 'Calabresa, cebola, molho de tomate', 45.00, 'Média', 1),
('Frango com Catupiry', 'Frango desfiado, catupiry, milho', 55.00, 'Grande', 2),
('Brigadeiro', 'Chocolate, granulado', 50.00, 'Pequena', 3),
('Romeu e Julieta', 'Queijo, goiabada', 45.00, 'Média', 3),
('Margherita', 'Queijo, tomate, manjericão', 42.00, 'Média', 4),
('Veggie Supreme', 'Brócolis, champignon, pimentão', 60.00, 'Grande', 4),
('Especial da Casa', 'Queijo brie, nozes, mel', 75.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.id_pizza, p.nome_pizza, p.ingredientes, p.preco, p.tamanho, c.nome_categoria, c.descricao_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria_fk = c.id_categoria;

SELECT p.id_pizza, p.nome_pizza, p.ingredientes, p.preco, p.tamanho, c.nome_categoria, c.descricao_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.id_categoria_fk = c.id_categoria
WHERE c.nome_categoria = 'Doce';
