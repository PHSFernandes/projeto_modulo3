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

CREATE TABLE tb_alunos (
		
	id_aluno INT PRIMARY KEY,
	nome_completo VARCHAR (255),
	sexo VARCHAR (1),
	data_nascimento DATE, 
	cpf VARCHAR (14),
	telefone VARCHAR (16),
	email VARCHAR (255) NOT NULL,
	cidade VARCHAR (255),
	estado VARCHAR (2),
	pais VARCHAR (255)

);

INSERT INTO tb_alunos (id_aluno, nome_completo, sexo, data_nascimento, cpf, telefone, email, cidade, estado, pais)
VALUES
(1, 'Levi Arlia Moraes', 'M', '01/10/1957', '218.379.751-75', '(61) 98185-6718', 'levi.moraes@aehoo.com.br', 'Brasília', 'DF', 'Brasil'),
(2, 'Miguel Leonardo Márcio Moura', 'M', '07/01/1968', '213.658.305-00', '(61) 99789-3597', 'miguelleonardo@facebok.com', 'Brasília', 'DF', 'Brasil'),
(3, 'Wellington Barroso Muchão', 'M', '19/08/1984', '251.805.542-84', '(92) 98561-6512', 'wellington.muchao@xpto.com.br', 'Manaus', 'AM', 'Brasil'),
(4, 'Tânia Isabel Fátima Novaes', 'F', '06/01/1981', '734.907.244-96', '(65) 98178-9366', 'taniaisabel@acaocontabilsjc.com.br', 'Cuiabá', 'MT', 'Brasil'),
(5, 'Erick Márcio Freitas', 'M', '01/01/1993', '740.097.065-89', '(21) 98546-6487', 'erickmarcio@sfranconsultoria.com.br', 'Rio de Janeiro', 'RJ', 'Brasil'),
(6, 'Yuri Isaac Francisco da Silva', 'M', '04/01/1988', '399.079.643-79', '(92) 99987-1466', 'yyuriisaacfran@metraseg.com.br', 'Manaus', 'AM', 'Brasil'),
(7, 'Matheus Juan Benjamin Baptista', 'M', '07/01/1965', '252.224.394-29', '(51) 98423-0103', 'matheusjuanben@iglod.com', 'Sapucaia do Sul', 'RS', 'Brasil'),
(8, 'Guilherme Rodrigo César Campos', 'M', '06/01/1977', '682.276.104-71', '(65) 98226-5934', 'guilhermerodrigo@oi15.com.br', 'Cuiabá', 'MT', 'Brasil'),
(9, 'Sara Liz Lorena Melo', 'F', '04/10/1996', '843.029.454-60', '(66) 98941-7383', 'saraliz-96@catsfeelings.com.br', 'Rondonópolis', 'MT', 'Brasil'),
(10, 'Isabella Emilly Jéssica Duarte', 'F', '01/04/2001', '258.979.578-51', '(96) 99588-2608', 'isabellaemilly@grupoaguaviva.com.br', 'Macapá', 'AP', 'Brasil'),
(11, 'Bárbara Vanessa Lara Rezende', 'F', '03/12/2000', '598.634.393-04', '(43) 99223-7553', 'babirez@rocketmail.com', 'Londrina', 'PR', 'Brasil'),
(12, 'Brenda Evelyn Caroline da Silva', 'F', '14/12/1979', '860.779.497-36', '(84) 98659-9576', 'bbrendasilva@estadao.com.br', 'Parnamirim', 'RN', 'Brasil'),
(13, 'Caio Juan Guilherme da Costa', 'M', '02/08/1984', '959.048.039-07', '(79) 99569-8542', 'caiojuan@vick1.com.br', 'Aracaju', 'SE', 'Brasil'),
(14, 'Débora Louise Ribeiro', 'F', '07/05/1971', '990.159.813-37', '(86) 98923-4332', 'deboralou@elconsultoria.com.br', 'Teresina', 'PI', 'Brasil'),
(15, 'Gael Giovanni Martin Bernardes', 'M', '06/12/2002', '695.531.588-97', '(21) 99996-7674', 'gaelgio@emerson.com', 'São Gonçalo', 'RJ', 'Brasil'),
(16, 'Isadora Valentina Lopes', 'F', '21/04/1978', '087.877.828-47', '(81) 99236-5481', 'isavalelo_@lordello.com.br', 'Jaboatão dos Guararapes', 'PE', 'Brasil'),
(17, 'Melissa Clara Pinto', 'F', '03/08/1969', '025.057.019-03', '(48) 99736-2440', 'melissapinto@nogueiramoura.com.br', 'Florianópolis', 'SC', 'Brasil'),
(18, 'Helena Yasmin Brito', 'F', '06/11/1995', '578.180.187-19', '(64) 99494-0008', 'helenayasminbrito-73@sefaz.am.gov.br', 'Rio Verde', 'GO', 'Brasil'),
(19, 'Lavínia Moreira', 'F', '02/07/1980', '530.243.713-97', '(61) 99259-5609', 'laviniamoreira@juliosimoes.com.br', 'Brasília', 'DF', 'Brasil'),
(20, 'Henrique Jorge Gael Porto', 'M', '03/03/1981', '687.075.742-90', '(84) 99850-2069', 'henriqueporto@nine9.com.br', 'Mossoró', 'RN', 'Brasil'),
(21, 'Isabel Rocha da Matta', 'F', '07/04/1997', '216.474.048-35', '(91) 99944-7178', 'isabeldamata-97@kframe.com.br', 'Belém', 'PA', 'Brasil'),
(22, 'Débora Carla Ramos', 'F', '22/05/2000', '705.648.225-23', '(61) 98977-0013', 'ddeboracarlaramos@tecnew.net', 'Brasília', 'DF', 'Brasil'),
(23, 'Osvaldo João Alves', 'M', '15/02/1999', '197.766.886-08', '(79) 99579-5853', 'joaoalves.@yande.com.br', 'Aracaju', 'SE', 'Brasil'),
(24, 'Theo Sebastião Yago Araújo', 'M', '06/01/2000', '063.151.199-72', '(86) 98447-4003', 'theoseba_@ig.com', 'Parnaíba', 'PI', 'Brasil'),
(25, 'Jorge Francisco da Rocha', 'M', '05/05/1976', '909.037.117-61', '(81) 98477-8077', 'jjorgefranciscodarocha@liv.com', 'Recife', 'PE', 'Brasil'),
(26, 'Emanuelly Sandra Ramos de Sousa', 'F', '25/08/1999', '285.297.370-75', '(95) 99480-8256', 'emanuelly99@proimagem.com', 'Boa Vista', 'RR', 'Brasil'),
(27, 'Daniela Lorena Cavalcanti', 'F', '14/10/1986', '572.533.506-26', '(68) 98771-4161', 'danicavalcanti@equipavmineracao.com.br', 'Rio Branco', 'AC', 'Brasil'),
(28, 'Calebe Nicolas Pereira', 'M', '21/06/1989', '440.153.756-45', '(82) 98755-5910', 'calebepereir_@yahoo.fr', 'Maceió', 'AL', 'Brasil'),
(29, 'Tânia Fátima Lúcia Castro', 'F', '30/03/1978', '537.580.050-00', '(31) 99882-8765', 'taniafatima@signainfo.com.br', 'Betim', 'MG', 'Brasil'),
(30, 'Luiza Rita de Paula', 'F', '15/12/1998', '069.797.269-00', '(82) 99248-4142', 'lupaula@carreiradasilva.com', 'Maceió', 'AL', 'Brasil'),
(31, 'Danilo Luís Pires', 'M', '05/04/1980', '104.703.619-30', '(68) 99212-9630', 'daniloluis.pires@temavonfeccaosjc.com.br', 'Rio Branco', 'AC', 'Brasil'),
(32, 'Sophia Lívia Rezende', 'F', '11/03/1997', '877.711.668-22', '(84) 98764-7935', 'sophia__rezende@companyvivo.com.br', 'Natal', 'RN', 'Brasil'),
(33, 'Elisa Mariana Bernardes', 'F', '06/05/1993', '598.992.958-76', '(44) 99876-9614', 'elisabernardes_@defensoria.sp.gov.br', 'Maringá', 'PR', 'Brasil'),
(34, 'Carlos Juan Lopes', 'M', '03/04/1982', '706.731.997-89', '(46) 99150-7949', 'carlosjuanlopes_@outershoes.com.br', 'Francisco Beltrão', 'PR', 'Brasil'),
(35, 'Nicolas Samuel Novaes', 'M', '04/08/1987', '962.609.715-91', '(63) 98143-5892', 'nicolassamuca@bol.com.br', 'Araguaina', 'TO', 'Brasil'),
(36, 'Rodrigo Ruan Severino Moraes', 'M', '06/01/1972', '276.647.037-94', '(87) 99869-2420', 'rrodrigomoraes@konekoshouten.com.br', 'Garanhuns', 'PE', 'Brasil'),
(37, 'César Enzo Aragão', 'M', '25/04/1993', '698.671.315-09', '(81) 98803-0337', 'cesarenzo@caferibeiro.com.br', 'São Lourenço da Mata', 'PE', 'Brasil'),
(38, 'Luiz Bernardo Farias', 'M', '28/02/1998', '798.978.879-97', '(19) 98137-1533', 'lluizbernardo@profiledesign.com.br', 'Indaiatuba', 'SP', 'Brasil'),
(39, 'Luna Luana da Rosa', 'F', '21/06/1995', '064.358.076-04', '(21) 98746-4872', 'lulurosa_@milimoveis.com.br', 'São Gonçalo', 'RJ', 'Brasil'),
(40, 'Ruan Caio Figueiredo', 'M', '05/07/1984', '134.259.875-00', '(83) 98855-1796', 'rruancaio@mls.com.br', 'João Pessoa', 'PB', 'Brasil'),
(41, 'Ana Aparecida Souza', 'F', '14/09/1964', '083.709.385-66', '(65) 98759-3483', 'aparecidasouza9@metroquali.com.br', 'Várzea Grande', 'MT', 'Brasil'),
(42, 'Carolina Figueiredo Leal Romanel', 'F', '04/11/2000', '437.035.939-20', '(35) 98575-2969', 'carolroma@auteluque.com', 'Varginha', 'MG', 'Brasil'),
(43, 'Valentina Caldeira', 'F', '02/11/1987', '370.805.685-01', '(51) 99270-4120', 'valecaldeira-87@monsanto.com', 'Progresso', 'RS', 'Brasil'),
(44, 'Milena Giovana Baptista', 'F', '26/09/1990', '261.598.975-86', '(83) 98219-9556', 'mibaptista_@pichler.com.br', 'Campina Grande', 'PB', 'Brasil'),
(45, 'Márcio Vicente Barbosa', 'M', '02/12/1990', '761.717.230-37', '(61) 99631-9655', 'marciovicente@alwan.com.br', 'Brasília', 'DF', 'Brasil'),
(46, 'Laura Bianca Barreto Baptista', 'F', '18/08/1991', '669.510.520-00', '(11) 98809-7727', 'laurabia@libero.it', 'Itapecerica da Serra', 'SP', 'Brasil'),
(47, 'Rita de Cássia Baptista', 'F', '07/01/1979', '072.638.525-51', '(79) 98261-8107', 'rritabap@skapcom.com.br', 'Aracaju', 'SE', 'Brasil'),
(48, 'Eduardo Cauê da Rosa', 'M', '04/12/1975', '393.221.959-75', '(84) 99709-2402', 'eduardocaue@milimoveis.com.br', 'Natal', 'RN', 'Brasil'),
(49, 'Larissa Tancredi Malta', 'F', '17/06/1981', '851.329.348-20', '(95) 98106-4850', 'larimalta@viamoc.com.br', 'Boa Vista', 'RR', 'Brasil'),
(50, 'Antonella Mariana Gonçalves', 'F', '29/04/1982', '081.043.241-28', '(85) 98758-6286', 'antonellagoncalves@sebrace.com.br', 'Fortaleza', 'CE', 'Brasil'),
(51, 'Thales Igor Barreto Aragão', 'M', '12/12/1995', '892.576.770-87', '(69) 98728-4663', 'thalesig@optovac.com.br', 'Ariquemes', 'RO', 'Brasil'),
(52, 'Rosângela Marlene Moura Assis', 'F', '06/01/1970', '280.758.076-93', '(92) 98588-4452', 'rosangelamarlene@dpf.gov.br', 'Manaus', 'AM', 'Brasil'),
(53, 'Severino Monteiro da Costa', 'M', '15/10/1971', '081.029.830-94', '(92) 98794-2351', 'sevemonteiro@ieee.org', 'Manaus', 'AM', 'Brasil'),
(54, 'Stella Barbosa de Castro', 'F', '03/05/1997', '872.988.289-32', '(49) 99103-2439', 'stellaabarbosa_@outlock.com', 'Navegantes', 'SC', 'Brasil'),
(55, 'Alessandra Freitas Rangel', 'F', '03/10/1991', '888.148.314-91', '(66) 99460-6662', 'alefreitas@distribuidorapetfarm.com.br', 'Sinop', 'MT', 'Brasil'),
(56, 'Daiane Machado Aparício', 'F', '20/04/1982', '655.082.551-25', '(63) 98510-4415', 'daianeaparicio@dmadvogados.com', 'Palmas', 'TO', 'Brasil'),
(57, 'João Alboreto Souza', 'M', '24/07/1992', '234.454.558-13', '(95) 98184-0722', 'joaosouza_@stetnet.com.br', 'Boa Vista', 'RR', 'Brasil'),
(58, 'Luiza Fogaça Alliot', 'F', '07/09/1987', '677.096.728-68', '(82) 98433-3540', 'lualliot@escritorioindaia.com.br', 'Maceió', 'AL', 'Brasil'),
(59, 'Sérgio Ian Arthur das Neves', 'M', '02/05/1969', '504.090.371-50', '(98) 99643-1179', 'sergioneves@rebecacometerra.com.br', 'São Luís', 'MA', 'Brasil'),
(60, 'Eliseu Souto Maior Reutemann', 'M', '17/03/1975', '761.020.596-62', '(94) 98569-4645', 'esmreut@iacit.com', 'Ponta Grossa', 'PR', 'Brasil');