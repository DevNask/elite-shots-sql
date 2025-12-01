UPDATE ALUNO
SET telefone = '11911112222'
WHERE id_aluno = 1;

UPDATE PRESENCA
SET presente = TRUE, justificativa = NULL
WHERE id_presenca = 2;

UPDATE AVALIACAO
SET nota_fundamentos = 9.1
WHERE id_avaliacao = 1;
