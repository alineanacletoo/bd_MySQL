
CREATE TABLE Estudantes (
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) not null,
    idade int not null,
    turma varchar(50) not null,
    nota decimal(5, 2) not null,
    matricula date not null
);


INSERT INTO Estudantes (nome, idade, turma, nota, matricula)
VALUES
('Ana Souza', 14, '8A', 8.5, '2023-02-01'),
('Carlos Lima', 15, '9B', 6.8, '2022-03-15'),
('Mariana Oliveira', 13, '7A', 9.0, '2024-01-10'),
('João Pedro', 14, '8B', 5.5, '2023-05-20'),
('Beatriz Costa', 15, '9A', 7.5, '2022-08-01'),
('Felipe Rocha', 14, '8C', 4.0, '2024-02-12'),
('Laura Martins', 13, '7B', 8.0, '2023-11-25'),
('Gabriel Nunes', 16, '10A', 6.0, '2021-09-10');


SELECT * FROM Estudantes
WHERE nota > 7.0;


SELECT * FROM Estudantes
WHERE nota < 7.0;


UPDATE Estudantes SET nota = 7.2 WHERE nome = 'Carlos Lima';

SELECT * FROM Estudantes WHERE nome = 'Carlos Lima';
