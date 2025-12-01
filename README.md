# Sistema de Banco de Dados — Elite Shots 🏀

Projeto acadêmico de modelagem e manipulação de dados usando SQL.

## 🧱 Estrutura das tabelas
As tabelas foram criadas com base no modelo lógico da escola de basquete Elite Shots, contendo:
- Alunos
- Responsáveis
- Turmas
- Treinadores
- Presenças
- Avaliações
- Avisos

## 📌 Scripts incluídos
- `create_tables.sql` — criação das tabelas normalizadas (3FN)
- `insert_data.sql` — inserção de dados fictícios
- `select_queries.sql` — consultas SQL (JOIN, ORDER BY, LIMIT etc.)
- `updates.sql` — atualizações de registros
- `deletes.sql` — exclusões com integridade

## ▶️ Como executar
1. Abra o MySQL Workbench  
2. Crie um schema (database)  
3. Execute:
SOURCE create_tables.sql;
SOURCE insert_data.sql;
SOURCE select_queries.sql;
SOURCE updates.sql;
SOURCE deletes.sql;

Gabriel Nascimento Fontes / Análise e Desenvolvimento de Sistemas
