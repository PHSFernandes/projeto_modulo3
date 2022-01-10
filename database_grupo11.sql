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

CREATE TABLE tb_facilitadores
(
    id_facilitador INT NOT NULL,
    nome VARCHAR(200) NOT NULL,
    idade INT,
    cpf VARCHAR(14) NOT NULL,
    rg VARCHAR(15),
    data_nasc DATE,
    sexo VARCHAR(1),
    email VARCHAR(80),
    celular VARCHAR(15),
    tipo_sang VARCHAR(3),
    CONSTRAINT "PK_tb_facilitadores" PRIMARY KEY  ("id_facilitador")
);
INSERT INTO tb_facilitadores (id_facilitador, nome, idade, cpf, rg, data_nasc, sexo, email, celular, tipo_sang) VALUES 
(1, 'Benício Heitor Tomás Araújo', 40, '661.086.457-84', '23.891.613-3', '1/2/1982', 'M', 'beniaraujo-82@arganet.com.br', '(21) 98716-7547', 'O+'),
(2, 'Henrique Osvaldo de Paula', 21, '442.017.587-70', '31.701.995-8', '1/1/2001', 'M', 'henriquepaul-72@tokiomarine.com.br', '(21) 99457-7604', 'A-'),
(3, 'Aparecida Melissa Barros', 35, '212.880.497-30', '29.205.711-8', '1/6/1987', 'F', 'aaparecidamelissabarros@fazergourmet.com.br', '(21) 99866-8181', 'O-'),
(4, 'Aline Luna Elza Cardoso', 60, '570.239.427-50', '13.364.514-9', '1/7/1962', 'F', 'alinelunaelzacardoso_@supercarioca.com', '(21) 99853-9407', 'A+'),
(5, 'Cristiane Laura da Luz', 47, '874.304.707-69', '10.385.078-8', '1/3/1975', 'F', 'cristianelauradaluz@facebook.com', '(21) 99471-8033', 'B-'),
(6, 'Rebeca Nicole Bianca Galvão', 18, '339.147.187-57', '46.170.976-4', '1/1/2004', 'F', 'rebecagalvao@platinium.com.br', '(21) 98160-9264', 'A-'),
(7, 'Sérgio Tomás Lopes', 56, '643.342.517-81', '36.170.125-1', '1/7/1966', 'M', 'sergiotomaslopes@impactatp.com.br', '(21) 98926-1525', 'AB-'),
(8, 'Bryan Roberto Nelson Bernardes', 19, '754.369.517-08', '19.137.902-5', '1/1/1998', 'M', 'bryanbernardes-98@ovi.com', '(21) 98703-9011', 'A+'),
(9, 'Noah Cauã Marcelo Barros', 61, '345.385.307-51', '38.735.822-5', '1/4/1961', 'M', 'noahbarros@opera.com.br', '(21) 99649-8467', 'O+'),
(10, 'Sabrina Pietra Vitória Barros', 47, '596.984.447-00', '18.140.181-2', '1/5/1975', 'F', 'sabrinabarros@jammer.com.br', '(21) 98407-6922', 'O+'),
(11, 'Bento Kauê Isaac Cardoso', 47, '743.729.757-40', '30.277.510-9', '1/4/1975', 'M', 'bentocardoso@pisbrasil.com.br', '(21) 98977-8421', 'O+'),
(12, 'Cauã Martin Samuel Corte Real', 77, '348.016.537-07', '43.673.899-5', '1/4/1945', 'M', 'cauacortereal@nine9.com.br', '(21) 99311-3201', 'O-'),
(13, 'Giovanna Luna Marcela da Rocha', 60, '278.482.697-01', '27.041.996-2', '1/5/1962', 'F', 'giovannarocha@webin.com.br', '(21) 99119-6965', 'A+'),
(14, 'Evelyn Luciana Nair Souza', 59, '369.239.887-56', '48.758.973-7', '1/7/1963', 'F', 'eve_souza@tanby.com.br', '(21) 99685-2621', 'O-'),
(15, 'Enzo Otávio Nunes', 60, '388.231.867-81', '21.740.520-4', '1/7/1962', 'M', 'enzonunes@zulix.com.br', '(21) 98975-2053', 'O+'),
(16, 'Cleonice Rocha', 50, '139.891.957-86', '33.169.958-8', '9/11/1971', 'F', 'caca@saudade.com.br', '(21) 99761-0000', 'O+'),
(17, 'Calebe Edson Gomes', 46, '328.287.507-01', '47.251.500-7', '1/3/1976', 'M', 'calebgomes@argo.com.br', '(21) 98155-0273', 'A+'),
(18, 'Theo Kauê Cardoso', 66, '863.313.687-28', '34.044.761-8', '1/5/1956', 'M', 'theokaue@araraquara.com.br', '(21) 98891-1756', 'AB+'),
(19, 'Paulo Henrique Fernandes', 44, '338.080.108-32', '74.152.072-2', '1/3/1978', 'M', 'phfernandes@carioca.com.br', '(21) 98839-0273', 'A+'),
(20, 'Betina Assis', 46, '932.013.108-31', '23.023.238-9', '1/5/1976', 'M', 'betinass@arara.com.br', '(22) 98891-1756', 'AB+');