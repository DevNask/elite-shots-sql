-- 1. Lista de alunos e seus responsáveis
SELECT a.nome AS aluno, r.nome AS responsavel
FROM ALUNO a
JOIN RESPONSAVEL r ON a.id_responsavel = r.id_responsavel;

-- 2. Presenças dos alunos
SELECT a.nome, p.data, p.presente, p.justificativa
FROM PRESENCA p
JOIN ALUNO a ON p.id_aluno = a.id_aluno
ORDER BY p.data DESC;

-- 3. Avaliações ordenadas por nota
SELECT a.nome, av.nota_fundamentos, av.desempenho_fisico
FROM AVALIACAO av
JOIN ALUNO a ON av.id_aluno = a.id_aluno
ORDER BY av.nota_fundamentos DESC
LIMIT 5;

-- 4. Alunos por turma
SELECT t.nivel_tecnico, a.nome
FROM TURMA t
JOIN PRESENCA p ON t.id_turma = p.id_turma
JOIN ALUNO a ON p.id_aluno = a.id_aluno;

-- 5. Avisos enviados
SELECT r.nome, av.titulo
FROM AVISO_RESPONSAVEL ar
JOIN RESPONSAVEL r ON ar.id_responsavel = r.id_responsavel
JOIN AVISO av ON ar.id_aviso = av.id_aviso;
