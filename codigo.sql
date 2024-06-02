-- Cria o banco de dados
CREATE DATABASE gestao_academica;

-- Seleciona o banco de dados para uso
USE gestao_academica;

-- Cria a tabela de alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Cria a tabela de professores
CREATE TABLE professores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Cria a tabela de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Insere dados de exemplo na tabela de alunos
INSERT INTO alunos (nome, email, data_nascimento) VALUES
('Victor Ambrosio', 'victor@estacio.com.br', '2001-01-16'),
('João Souza', 'joao.souza@estacio.com.br', '1999-02-20');

-- Insere dados de exemplo na tabela de professores
INSERT INTO professores (nome, email, data_nascimento) VALUES
('Rodrigo Fernandes', 'rodrigo@estacio.com.br', '1985-09-05'),
('Adriano Firmo', 'adriano.firmo@estacio.com.br', '1990-06-07');

-- Insere dados de exemplo na tabela de usuarios
INSERT INTO professores (nome, email, cpf, telefone, senha) VALUES
('Davi', 'davi@gmail.com.br', '02069143613', '31986887269', '123'),
('Victor', 'victor@gmail.com.br', '02069142612', '31997443640', '123');


-- -- PARA CASO FOSSE ADICIONAR CURSOS E AS MATRICULAS NO SITE -- --

-- -- Insere dados de exemplo na tabela de cursos
-- INSERT INTO cursos (nome, descricao) VALUES
-- ('Dev WEB', 'Curso de Desenvolvimento WEB'),
-- ('Banco de Dados', 'Curso de Banco de Dados');

-- -- Insere dados de exemplo na tabela de matriculas
-- INSERT INTO matriculas (aluno_id, curso_id, data_matricula) VALUES
-- (1, 1, '2023-01-10'),
-- (2, 2, '2023-02-15');

-- CREATE TABLE cursos (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     descricao TEXT,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- CREATE TABLE matriculas (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     aluno_id INT NOT NULL,
--     curso_id INT NOT NULL,
--     data_matricula DATE NOT NULL,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON DELETE CASCADE,
--     FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
-- );