CREATE TABLE RESPONSAVEL (
    id_responsavel INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(120),
    parentesco VARCHAR(50)
);

CREATE TABLE TREINADOR (
    id_treinador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especialidade VARCHAR(120),
    telefone VARCHAR(20)
);

CREATE TABLE TURMA (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nivel_tecnico ENUM('iniciante', 'intermediario', 'avancado'),
    horario TIME,
    id_treinador INT,
    FOREIGN KEY (id_treinador) REFERENCES TREINADOR(id_treinador)
);

CREATE TABLE ALUNO (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_nascimento DATE,
    data_matricula DATE,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    id_responsavel INT,
    FOREIGN KEY (id_responsavel) REFERENCES RESPONSAVEL(id_responsavel)
);

CREATE TABLE PRESENCA (
    id_presenca INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    presente BOOLEAN,
    justificativa VARCHAR(255),
    id_aluno INT,
    id_turma INT,
    FOREIGN KEY (id_aluno) REFERENCES ALUNO(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES TURMA(id_turma)
);

CREATE TABLE AVALIACAO (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    data_avaliacao DATE,
    nota_fundamentos DECIMAL(4,2),
    desempenho_fisico DECIMAL(4,2),
    observacoes TEXT,
    id_aluno INT,
    id_treinador INT,
    FOREIGN KEY (id_aluno) REFERENCES ALUNO(id_aluno),
    FOREIGN KEY (id_treinador) REFERENCES TREINADOR(id_treinador)
);

CREATE TABLE AVISO (
    id_aviso INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    descricao TEXT,
    data_envio DATE
);

CREATE TABLE AVISO_RESPONSAVEL (
    id_aviso INT,
    id_responsavel INT,
    PRIMARY KEY (id_aviso, id_responsavel),
    FOREIGN KEY (id_aviso) REFERENCES AVISO(id_aviso),
    FOREIGN KEY (id_responsavel) REFERENCES RESPONSAVEL(id_responsavel)
);