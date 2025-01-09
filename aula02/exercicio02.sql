
CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) not null,
    categoria varchar(50) not null,
    preco decimal(10, 2) not null,
    estoque int not null,
    descricao text
);


INSERT INTO Produtos (nome, categoria, preco, estoque, descricao)
VALUES
('Notebook Dell Inspiron', 'Eletrônicos', 3500.00, 10, 'Notebook de alta performance com 16GB de RAM e SSD de 512GB.'),
('Smartphone Samsung Galaxy', 'Eletrônicos', 1200.00, 15, 'Smartphone com tela AMOLED de 6.5 polegadas e câmera tripla.'),
('Fone de Ouvido Bluetooth', 'Acessórios', 200.00, 50, 'Fone de ouvido sem fio com bateria de longa duração.'),
('Cadeira Gamer', 'Móveis', 750.00, 5, 'Cadeira ergonômica para jogos com ajuste de altura.'),
('Mesa de Escritório', 'Móveis', 450.00, 8, 'Mesa de escritório compacta com design moderno.'),
('Smartwatch Xiaomi', 'Acessórios', 300.00, 20, 'Relógio inteligente com monitoramento de atividades físicas.'),
('Monitor LG 24"', 'Eletrônicos', 850.00, 12, 'Monitor Full HD de 24 polegadas com tecnologia IPS.'),
('Mouse Sem Fio', 'Acessórios', 100.00, 40, 'Mouse ergonômico e silencioso com conexão Bluetooth.');

SELECT * FROM Produtos
WHERE preco > 500;


SELECT * FROM Produtos
WHERE preco < 500;


UPDATE Produtos
SET preco = 800.00
WHERE nome = 'Cadeira Gamer';


SELECT * FROM Produtos WHERE nome = 'Cadeira Gamer';
