CREATE DATABASE IF NOT EXISTS escola;

USE escola;

CREATE TABLE IF NOT EXISTS alunos (
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome_aluno VARCHAR(100),
email_aluno VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS matricula (
id_matricula INT PRIMARY KEY AUTO_INCREMENT,
id_aluno INT NOT NULL,
disciplina_matricula VARCHAR(100),
nota_matricula DECIMAL(3, 1),
FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);


INSERT INTO alunos (nome_aluno, email_aluno)
VALUES ('Claudio Dantas', 'claudio@email.com');
    
INSERT INTO matricula(id_aluno, disciplina_matricula, nota_matricula)
VALUES (1, 'Matemática', '9.2');

SELECT * FROM alunos;
SELECT * FROM matricula;