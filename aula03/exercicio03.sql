CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(50) NOT NULL,
    descricao_curso VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    duracao INT NOT NULL, -- duração em horas
    id_categoria_fk INT,
    FOREIGN KEY (id_categoria_fk) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Java', 'Cursos sobre desenvolvimento com a linguagem Java'),
('Python', 'Cursos sobre Python e suas aplicações'),
('Front-end', 'Cursos de desenvolvimento de interfaces e UX/UI'),
('Data Science', 'Cursos sobre análise e ciência de dados'),
('Negócios', 'Cursos voltados para empreendedorismo e gestão');

INSERT INTO tb_cursos (nome_curso, descricao_curso, valor, duracao, id_categoria_fk) VALUES
('Java Básico', 'Introdução ao desenvolvimento em Java', 400.00, 40, 1),
('Java Avançado', 'Técnicas avançadas em Java', 700.00, 60, 1),
('Python para Iniciantes', 'Aprenda Python do zero', 450.00, 50, 2),
('Python para Data Science', 'Python aplicado à ciência de dados', 900.00, 70, 2),
('HTML e CSS', 'Desenvolvimento de páginas web responsivas', 300.00, 30, 3),
('React Avançado', 'Desenvolvimento de aplicações front-end com React', 850.00, 80, 3),
('Introdução a Data Science', 'Fundamentos de análise de dados', 600.00, 50, 4),
('Gestão de Projetos', 'Gestão ágil e tradicional de projetos', 550.00, 40, 5);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT c.id_curso, c.nome_curso, c.descricao_curso, c.valor, c.duracao, cat.nome_categoria, cat.descricao_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.id_categoria_fk = cat.id_categoria;

SELECT c.id_curso, c.nome_curso, c.descricao_curso, c.valor, c.duracao, cat.nome_categoria, cat.descricao_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.id_categoria_fk = cat.id_categoria
WHERE cat.nome_categoria = 'Java';
