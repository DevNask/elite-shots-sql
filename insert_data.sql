INSERT INTO RESPONSAVEL (nome, telefone, email, parentesco)
VALUES
('Carlos Silva', '11988887777', 'carlos@gmail.com', 'Pai'),
('Mariana Costa', '11977776666', 'mariana@hotmail.com', 'Mãe'),
('João Pereira', '11955554444', 'joao@gmail.com', 'Tio');

INSERT INTO TREINADOR (nome, especialidade, telefone)
VALUES
('Rodrigo Santos', 'Arremesso e fundamentos', '11944443333'),
('Bruno Almeida', 'Defesa e preparo físico', '11933332222');

INSERT INTO TURMA (nivel_tecnico, horario, id_treinador)
VALUES
('iniciante', '14:00:00', 1),
('intermediario', '16:00:00', 2);

INSERT INTO ALUNO (nome, data_nascimento, data_matricula, endereco, telefone, id_responsavel)
VALUES
('Gabriel Souza', '2010-05-10', '2025-02-01', 'Rua A, 123', '11999998888', 1),
('Lucas Rocha', '2009-03-22', '2025-02-01', 'Rua B, 456', '11999997777', 2);

INSERT INTO PRESENCA (data, presente, justificativa, id_aluno, id_turma)
VALUES
('2025-02-10', TRUE, NULL, 1, 1),
('2025-02-10', FALSE, 'Doente', 2, 1);

INSERT INTO AVALIACAO (data_avaliacao, nota_fundamentos, desempenho_fisico, observacoes, id_aluno, id_treinador)
VALUES
('2025-02-15', 8.5, 7.9, 'Bom controle de bola', 1, 1),
('2025-02-15', 7.2, 8.3, 'Boa resistência', 2, 2);

INSERT INTO AVISO (titulo, descricao, data_envio)
VALUES
('Reunião de Pais', 'Reunião no sábado às 10h.', '2025-02-20');

INSERT INTO AVISO_RESPONSAVEL (id_aviso, id_responsavel)
VALUES (1, 1), (1, 2);