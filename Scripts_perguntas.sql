-- Selecionar a quantidade total de estudantes cadastrados no banco;
SELECT COUNT(id_aluno) FROM tb_alunos;

-- Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;
SELECT tb_alunos.nome_completo, nome_curso FROM tb_alunos
INNER JOIN tb_turma ON tb_alunos.id_turma = tb_turma.id_turma
INNER JOIN tb_cursos ON tb_turma.id_curso = tb_cursos.id_curso;

-- Selecionar quais pessoas facilitadoras atuam em mais de uma turma;
SELECT nome, COUNT(id_turma) AS numero_de_turmas FROM tb_facilitadores
INNER JOIN tb_facilitador_turma ON tb_facilitadores.id_facilitador = tb_facilitador_turma.id_facilitador
GROUP BY nome HAVING COUNT(id_turma)>= 2;

-- Separar alunos por estado;
SELECT nome_completo, estado FROM tb_alunos
GROUP BY estado, nome_completo
ORDER BY estado;

-- Selecionar o tempo de duração, em dias, de cada curso;
SELECT nome_curso, SUM(duracao_dias) FROM tb_cursos
INNER JOIN tb_modulos ON tb_cursos.id_curso = tb_modulos.id_curso
GROUP BY nome_curso;

-- Selecionar o nome dos aniversariantes do mês de março;
SELECT nome_completo FROM tb_alunos WHERE EXTRACT (MONTH FROM data_nascimento) = '03';

-- Selecionar quantas pessoas fazem parte de cada departamento;
SELECT nome_departamento, count(id_facilitador) FROM tb_departamentos
INNER JOIN tb_facilitadores ON tb_departamentos.id_departamento = tb_facilitadores.id_departamento
GROUP BY nome_departamento;