-- Selecionar a quantidade total de estudantes cadastrados no banco;
SELECT count(id_aluno) FROM tb_alunos

-- Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;
SELECT tb_alunos.nome_completo, nome_curso FROM tb_alunos
INNER JOIN tb_turma on tb_alunos.id_turma = tb_turma.id_turma
INNER JOIN tb_cursos on tb_turma.id_curso = tb_cursos.id_curso

-- Selecionar quais pessoas facilitadoras atuam em mais de uma turma;
-- Atualmente so mostra os facilitadores de cada turma
SELECT tb_turma.id_turma, nome from tb_turma
INNER JOIN tb_facilitador_turma ON tb_turma.id_turma = tb_facilitador_turma.id_turma
INNER JOIN tb_facilitadores ON tb_facilitador_turma.id_facilitador = tb_facilitadores.id_facilitador

-- Separar alunos por estado;
SELECT nome_completo, estado FROM tb_alunos
GROUP BY estado, nome_completo
ORDER BY estado

-- Selecionar o tempo de duração, em dias, de cada curso;
SELECT nome_curso, sum(duracao_dias) FROM tb_cursos
INNER JOIN tb_modulos on tb_cursos.id_curso = tb_modulos.id_modulo
GROUP BY nome_curso


-- Selecionar o nome dos aniversariantes do mês de março;
-- Atualmente cria uma tabela com o nome e mes de aniversario de cada aluno
SELECT nome_completo, EXTRACT(MONTH FROM data_nascimento) FROM tb_alunos

-- Selecionar quantas pessoas fazem parte de cada departamento;
SELECT nome_departamento, count(id_facilitador) FROM tb_departamentos
INNER JOIN tb_facilitadores ON tb_departamentos.id_departamento = tb_facilitadores.id_departamento
GROUP BY nome_departamento

-- Em uma coluna, colocar todo o endereço do aluno com seu nome;