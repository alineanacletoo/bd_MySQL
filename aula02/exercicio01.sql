
CREATE TABLE Colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) not null,
    cargo varchar(50) not null,
    departamento varchar(50) not null,
    salario decimal(10, 2) not null,
    data_admissao date not null
);

-- Inserção de registros na tabela
INSERT INTO Colaboradores (nome, cargo, departamento, salario, data_admissao)
VALUES
('João Silva', 'Analista de Sistemas', 'TI', 3500.00, '2022-05-10'),
('Maria Oliveira', 'Assistente Administrativo', 'Administração', 1800.00, '2023-01-15'),
('Carlos Souza', 'Desenvolvedor Frontend', 'TI', 2500.00, '2021-10-20'),
('Ana Costa', 'Gerente de Projetos', 'TI', 5000.00, '2020-08-01'),
('Pedro Lima', 'Estagiário', 'Marketing', 1200.00, '2024-03-01');


SELECT * FROM Colaboradores
WHERE salario > 2000;


SELECT * FROM Colaboradores
WHERE salario < 2000;


UPDATE Colaboradores
SET salario = 1900.00
WHERE nome = 'Maria Oliveira';


SELECT * FROM Colaboradores WHERE nome = 'Maria Oliveira';




