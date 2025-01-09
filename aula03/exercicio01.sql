CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_class int AUTO_INCREMENT PRIMARY KEY,
    nome_class varchar(50) not null,
    descricao varchar(255) not null
);

CREATE TABLE tb_personagens (
    id_personagem int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50) not null,
    poder_ataque int not null,
    poder_defesa int not null,
    nivel int not null,
    id_class_fk int,
    FOREIGN KEY (id_class_fk) REFERENCES tb_classes(id_class)
);

INSERT INTO tb_classes (nome_class, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo e alta resistência'),
('Arqueiro', 'Mestre em ataques à distância com alta precisão'),
('Mago', 'Usuário de magia poderosa com alta capacidade ofensiva'),
('Paladino', 'Defensor equilibrado com habilidades de suporte e ataque'),
('Assassino', 'Especialista em furtividade e ataques críticos');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_class_fk) VALUES
('Aragorn', 2500, 1800, 20, 1),
('Legolas', 3000, 1500, 22, 2),
('Gandalf', 3500, 1000, 25, 3),
('Eowyn', 2000, 2000, 18, 4),
('Altair', 2700, 1200, 21, 5),
('Ciri', 3200, 1500, 23, 5),
('Boromir', 2200, 1900, 19, 1),
('Caelynn', 2800, 1400, 20, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;


SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.id_personagem, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome_class, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_class_fk = c.id_class;


SELECT p.id_personagem, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome_class, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.id_class_fk = c.id_class
WHERE c.nome_class = 'Arqueiro';
