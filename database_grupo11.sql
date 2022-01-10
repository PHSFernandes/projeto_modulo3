CREATE DATABASE projeto_m3
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE TABLE tb_departamentos (
		
	id_departamento VARCHAR (3) PRIMARY KEY,
	nome_departamento VARCHAR (255)

);

INSERT INTO tb_departamentos (id_departamento, nome_departamento)
VALUES
('TF', 'Time Facilitação'),
('CE', 'Comunidade/Empregabilidade'),
('CM', 'Comunicação e Marketing'),
('FI', 'Financeiro'),
('MCI', 'Mentoria para Carreiras Internacionais'),
('TM', 'Monitoria');
