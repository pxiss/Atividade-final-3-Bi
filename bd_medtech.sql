-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/09/2024 às 19:56
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_medtech`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_agendamentos`
--

CREATE TABLE `tb_agendamentos` (
  `nome_usuario` varchar(255) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `numero_usuario` varchar(255) NOT NULL,
  `sintomas` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_agendamentos`
--

INSERT INTO `tb_agendamentos` (`nome_usuario`, `email_usuario`, `numero_usuario`, `sintomas`, `data`) VALUES
('João da Silva', 'joao@example.com', '10001', 'Dor de cabeça', '2024-09-01'),
('Maria Santos', 'maria@example.com', '10002', 'Febre alta', '2024-09-02'),
('Carlos Alberto', 'carlos@example.com', '10003', 'Tosse persistente', '2024-09-03'),
('Ana Clara', 'ana@example.com', '10004', 'Náusea', '2024-09-04'),
('Pedro Oliveira', 'pedro@example.com', '10005', 'Dor nas costas', '2024-09-05'),
('Lucia Ferreira', 'lucia@example.com', '10006', 'Cansaço extremo', '2024-09-06'),
('Marcos Mendes', 'marcos@example.com', '10007', 'Resfriado', '2024-09-07'),
('Fernanda Costa', 'fernanda@example.com', '10008', 'Dor de garganta', '2024-09-08'),
('Rafael Almeida', 'rafael@example.com', '10009', 'Alergia', '2024-09-09'),
('Juliana Rocha', 'juliana@example.com', '10010', 'Dor abdominal', '2024-09-10'),
('Gustavo Pires', 'gustavo@example.com', '10011', 'Desidratação', '2024-09-11'),
('Patrícia Cardoso', 'patricia@example.com', '10012', 'Dor no peito', '2024-09-12'),
('Felipe Ribeiro', 'felipe@example.com', '10013', 'Dor muscular', '2024-09-13'),
('Camila Martins', 'camila@example.com', '10014', 'Fadiga', '2024-09-14'),
('Bruno Gomes', 'bruno@example.com', '10015', 'Erupção cutânea', '2024-09-15'),
('Tatiane Silva', 'tatiane@example.com', '10016', 'Dificuldade respiratória', '2024-09-16'),
('Lucas Dias', 'lucas@example.com', '10017', 'Vertigem', '2024-09-17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_avaliacoes`
--

CREATE TABLE `tb_avaliacoes` (
  `nome_usuario` varchar(255) NOT NULL,
  `numero_usuario` varchar(255) NOT NULL,
  `nome_medico` varchar(255) NOT NULL,
  `especialidade` varchar(255) NOT NULL,
  `nota` int(10) NOT NULL,
  `id_avaliações` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_boletos`
--

CREATE TABLE `tb_boletos` (
  `protocolo_boletos` int(11) NOT NULL,
  `protocolo_hardware` varchar(255) NOT NULL,
  `protocolo_software` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_buscasintomas`
--

CREATE TABLE `tb_buscasintomas` (
  `sintomas_usuario` int(11) NOT NULL,
  `doenca_usuario` varchar(255) NOT NULL,
  `doenca_usuario1` varchar(255) NOT NULL,
  `doenca_usuario2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_buscasintomas`
--

INSERT INTO `tb_buscasintomas` (`sintomas_usuario`, `doenca_usuario`, `doenca_usuario1`, `doenca_usuario2`) VALUES
(0, 'Enxaqueca', 'Sinusite', 'Cefaleia tensional'),
(0, 'Bronquite', 'Asma', 'Alergia'),
(0, 'Gripe', 'Covid-19', 'Infecção'),
(0, 'Gastrite', 'Apendicite', 'Úlcera'),
(0, 'Gastrite', 'Refluxo', 'Apendicite'),
(0, 'Asma', 'DPOC', 'Embolia pulmonar'),
(0, 'Anemia', 'Hipotireoidismo', 'Depressão'),
(0, 'Fibromialgia', 'Gripe', 'Influenza'),
(0, 'Dermatite', 'Alergia', 'Psoríase'),
(0, 'Faringite', 'Amigdalite', 'Gripe'),
(0, 'Artrite viral', 'Dengue', 'Zika'),
(0, 'Ansiedade', 'Depressão', 'Stress'),
(0, 'Hérnia de disco', 'Ciática', 'Fibromialgia'),
(0, 'Tensão', 'Estresse', 'Desidratação'),
(0, 'Rinite alérgica', 'Asma', 'Eczema'),
(0, 'Síndrome de Cansaço Crônico', 'Anemia', 'Hipotireoidismo'),
(0, 'Asma', 'Pneumonia', 'DPOC'),
(0, 'Infarto', 'Angina', 'Refluxo'),
(0, 'Artrite', 'Osteoartrite', 'Lúpus'),
(0, 'Gastrite', 'Intoxicação alimentar', 'Gravidez'),
(0, 'Gastroenterite', 'Intoxicação alimentar', 'Colite'),
(0, 'Desidratação', 'Síndrome do intestino irritável', 'Deficiência de minerais'),
(0, 'Refluxo gastroesofágico', 'Úlcera', 'Gastrite'),
(0, 'Depressão', 'Gastrite', 'Infecção'),
(0, 'Ansiedade', 'Depressão', 'Transtorno bipolar'),
(0, 'Dermatite', 'Psoríase', 'Alergia'),
(0, 'Anemia', 'Hipotensão', 'Desidratação'),
(0, 'Depressão', 'Ansiedade', 'Fadiga mental'),
(0, 'Síndrome do olho seco', 'Alergia', 'Conjuntivite'),
(0, 'Rinite alérgica', 'Sinusite', 'Influenza'),
(0, 'Hepatite', 'Cirrhose', 'Icterícia'),
(0, 'Diabetes', 'Desidratação', 'Hipertireoidismo'),
(0, 'Catarata', 'Glaucoma', 'Diabetes'),
(0, 'Asma', 'DPOC', 'Bronquite');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cadastro`
--

CREATE TABLE `tb_cadastro` (
  `id_usuario` int(255) NOT NULL,
  `sexo_usuario` varchar(255) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `numero_usuario` varchar(255) NOT NULL,
  `senha_usuario` varchar(255) NOT NULL,
  `idade_usuario` varchar(255) NOT NULL,
  `altura_usuario` varchar(255) NOT NULL,
  `peso_usuario` varchar(255) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_cadastro`
--

INSERT INTO `tb_cadastro` (`id_usuario`, `sexo_usuario`, `email_usuario`, `numero_usuario`, `senha_usuario`, `idade_usuario`, `altura_usuario`, `peso_usuario`, `nome_usuario`) VALUES
(1, 'M', 'joao@example.com', '11987654321', 'senha123', '28', '1.75', '70', 'João'),
(2, 'F', 'maria@example.com', '11976543210', 'senha456', '25', '1.60', '55', 'Maria'),
(3, 'M', 'pedro@example.com', '11965432109', 'senha789', '30', '1.80', '80', 'Pedro'),
(4, 'F', 'ana@example.com', '11954321098', 'senha321', '22', '1.70', '60', 'Ana'),
(5, 'M', 'bruno@example.com', '11943210987', 'senha654', '35', '1.85', '90', 'Bruno'),
(6, 'F', 'luana@example.com', '11932109876', 'senha987', '29', '1.65', '65', 'Luana'),
(7, 'M', 'carlo@example.com', '11921098765', 'senha147', '26', '1.77', '75', 'Carlo'),
(8, 'F', 'julia@example.com', '11910987654', 'senha258', '31', '1.62', '58', 'Julia'),
(9, 'M', 'rafael@example.com', '11909876543', 'senha369', '27', '1.82', '82', 'Rafael'),
(10, 'F', 'sara@example.com', '11998765432', 'senha159', '24', '1.68', '62', 'Sara'),
(11, 'M', 'daniel@example.com', '11987654322', 'senha753', '32', '1.78', '78', 'Daniel'),
(12, 'F', 'carla@example.com', '11976543221', 'senha852', '23', '1.69', '63', 'Carla'),
(13, 'M', 'lucas@example.com', '11965432120', 'senha456', '33', '1.80', '85', 'Lucas'),
(14, 'F', 'nina@example.com', '11954321019', 'senha654', '26', '1.61', '57', 'Nina'),
(15, 'M', 'tiago@example.com', '11943210918', 'senha789', '29', '1.83', '88', 'Tiago'),
(16, 'F', 'laura@example.com', '11932109817', 'senha321', '21', '1.66', '59', 'Laura'),
(17, 'M', 'felipe@example.com', '11921098716', 'senha654', '30', '1.79', '76', 'Felipe'),
(18, 'Masculino', 'usuario1@example.com', '11987654321', 'senha1', '25', '1.75', '70', 'João Silva'),
(19, 'Feminino', 'usuario2@example.com', '11976543210', 'senha2', '30', '1.65', '60', 'Maria Oliveira'),
(20, 'Masculino', 'usuario3@example.com', '11965432109', 'senha3', '28', '1.80', '80', 'Carlos Souza'),
(21, 'Feminino', 'usuario4@example.com', '11954321098', 'senha4', '22', '1.70', '55', 'Ana Lima'),
(22, 'Masculino', 'usuario5@example.com', '11943210987', 'senha5', '35', '1.82', '85', 'Pedro Santos'),
(23, 'Feminino', 'usuario6@example.com', '11932109876', 'senha6', '29', '1.60', '50', 'Lucia Ferreira'),
(24, 'Masculino', 'usuario7@example.com', '11921098765', 'senha7', '40', '1.90', '90', 'Marcos Mendes'),
(25, 'Feminino', 'usuario8@example.com', '11910987654', 'senha8', '26', '1.68', '62', 'Fernanda Costa'),
(26, 'Masculino', 'usuario9@example.com', '11909876543', 'senha9', '33', '1.78', '75', 'Rafael Almeida'),
(27, 'Feminino', 'usuario10@example.com', '11998765432', 'senha10', '27', '1.72', '65', 'Juliana Rocha'),
(28, 'Masculino', 'usuario11@example.com', '11987654321', 'senha11', '25', '1.75', '70', 'João Silva'),
(29, 'Feminino', 'usuario12@example.com', '11976543210', 'senha12', '30', '1.65', '60', 'Maria Oliveira'),
(30, 'Masculino', 'usuario13@example.com', '11965432109', 'senha13', '28', '1.80', '80', 'Carlos Souza'),
(31, 'Feminino', 'usuario14@example.com', '11954321098', 'senha14', '22', '1.70', '55', 'Ana Lima'),
(32, 'Masculino', 'usuario15@example.com', '11943210987', 'senha15', '35', '1.82', '85', 'Pedro Santos'),
(33, 'Feminino', 'usuario16@example.com', '11932109876', 'senha16', '29', '1.60', '50', 'Lucia Ferreira'),
(34, 'Masculino', 'usuario17@example.com', '11921098765', 'senha17', '40', '1.90', '90', 'Marcos Mendes'),
(35, 'Feminino', 'usuario18@example.com', '11910987654', 'senha18', '26', '1.68', '62', 'Fernanda Costa'),
(36, 'Masculino', 'usuario19@example.com', '11909876543', 'senha19', '33', '1.78', '75', 'Rafael Almeida'),
(37, 'Feminino', 'usuario20@example.com', '11998765432', 'senha20', '27', '1.72', '65', 'Juliana Rocha'),
(38, 'Masculino', 'usuario100@example.com', '11987654321', 'senha100', '30', '1.80', '80', 'Carlos Silva'),
(39, 'Masculino', 'usuario21@example.com', '11987654321', 'senha21', '24', '1.76', '72', 'Lucas Almeida'),
(40, 'Feminino', 'usuario22@example.com', '11976543210', 'senha22', '31', '1.63', '58', 'Ana Clara'),
(41, 'Masculino', 'usuario23@example.com', '11965432109', 'senha23', '29', '1.81', '82', 'Bruno Gomes'),
(42, 'Feminino', 'usuario24@example.com', '11954321098', 'senha24', '26', '1.69', '61', 'Tatiane Silva'),
(43, 'Masculino', 'usuario25@example.com', '11943210987', 'senha25', '37', '1.85', '88', 'Diego Martins'),
(44, 'Feminino', 'usuario26@example.com', '11932109876', 'senha26', '29', '1.67', '57', 'Sofia Costa'),
(45, 'Masculino', 'usuario27@example.com', '11921098765', 'senha27', '34', '1.79', '76', 'Felipe Ribeiro'),
(46, 'Feminino', 'usuario28@example.com', '11910987654', 'senha28', '22', '1.64', '54', 'Carla Mendes'),
(47, 'Masculino', 'usuario29@example.com', '11909876543', 'senha29', '30', '1.77', '79', 'Ricardo Lima'),
(48, 'Feminino', 'usuario30@example.com', '11998765432', 'senha30', '25', '1.66', '62', 'Priscila Rocha'),
(49, 'Masculino', 'usuario31@example.com', '11987654321', 'senha31', '27', '1.82', '84', 'Matheus Santos'),
(50, 'Feminino', 'usuario32@example.com', '11976543210', 'senha32', '28', '1.70', '63', 'Juliana Costa'),
(51, 'Masculino', 'usuario33@example.com', '11965432109', 'senha33', '29', '1.80', '77', 'André Oliveira'),
(52, 'Feminino', 'usuario34@example.com', '11954321098', 'senha34', '24', '1.65', '59', 'Bianca Ferreira'),
(53, 'Masculino', 'usuario35@example.com', '11943210987', 'senha35', '35', '1.88', '90', 'Victor Mendes'),
(54, 'Feminino', 'usuario36@example.com', '11932109876', 'senha36', '26', '1.61', '55', 'Fernanda Lima'),
(55, 'Masculino', 'usuario37@example.com', '11921098765', 'senha37', '36', '1.83', '81', 'Gabriel Pires'),
(56, 'Feminino', 'usuario38@example.com', '11910987654', 'senha38', '30', '1.66', '64', 'Amanda Rocha'),
(57, 'Masculino', 'usuario39@example.com', '11909876543', 'senha39', '27', '1.78', '74', 'Leonardo Santos'),
(58, 'Feminino', 'usuario40@example.com', '11998765432', 'senha40', '29', '1.62', '56', 'Larissa Alves'),
(59, 'Masculino', 'usuario41@example.com', '11987654321', 'senha41', '34', '1.84', '80', 'Samuel Ferreira'),
(60, 'Feminino', 'usuario42@example.com', '11976543210', 'senha42', '22', '1.69', '60', 'Nathalia Lima'),
(61, 'Masculino', 'usuario43@example.com', '11965432109', 'senha43', '38', '1.80', '78', 'Thiago Mendes'),
(62, 'Feminino', 'usuario44@example.com', '11954321098', 'senha44', '26', '1.68', '63', 'Vanessa Rocha'),
(63, 'Masculino', 'usuario45@example.com', '11943210987', 'senha45', '30', '1.76', '77', 'Roberto Pires'),
(64, 'Feminino', 'usuario46@example.com', '11932109876', 'senha46', '28', '1.64', '58', 'Samantha Costa'),
(65, 'Masculino', 'usuario47@example.com', '11921098765', 'senha47', '25', '1.85', '85', 'Fábio Lima'),
(66, 'Feminino', 'usuario48@example.com', '11910987654', 'senha48', '29', '1.67', '62', 'Clara Mendes'),
(67, 'Masculino', 'usuario49@example.com', '11909876543', 'senha49', '36', '1.79', '75', 'Alexandre Santos'),
(68, 'Feminino', 'usuario50@example.com', '11998765432', 'senha50', '31', '1.71', '66', 'Patrícia Ferreira'),
(69, 'Masculino', 'usuario51@example.com', '11987654321', 'senha51', '33', '1.82', '83', 'Igor Almeida'),
(70, 'Feminino', 'usuario52@example.com', '11976543210', 'senha52', '25', '1.65', '57', 'Jéssica Oliveira'),
(71, 'Masculino', 'usuario53@example.com', '11965432109', 'senha53', '30', '1.77', '78', 'Lucas Rocha'),
(72, 'Feminino', 'usuario54@example.com', '11954321098', 'senha54', '28', '1.68', '61', 'Larissa Lima'),
(73, 'Masculino', 'usuario55@example.com', '11943210987', 'senha55', '36', '1.80', '79', 'Murilo Santos'),
(74, 'Feminino', 'usuario56@example.com', '11932109876', 'senha56', '24', '1.66', '62', 'Vivian Ferreira'),
(75, 'Masculino', 'usuario57@example.com', '11921098765', 'senha57', '38', '1.88', '91', 'Rogério Mendes'),
(76, 'Feminino', 'usuario58@example.com', '11910987654', 'senha58', '29', '1.62', '58', 'Sabrina Rocha'),
(77, 'Masculino', 'usuario59@example.com', '11909876543', 'senha59', '27', '1.81', '82', 'Eduardo Lima'),
(78, 'Feminino', 'usuario60@example.com', '11998765432', 'senha60', '33', '1.70', '65', 'Michele Pires'),
(79, 'Masculino', 'usuario61@example.com', '11987654321', 'senha61', '25', '1.74', '73', 'Ricardo Almeida'),
(80, 'Feminino', 'usuario62@example.com', '11976543210', 'senha62', '28', '1.64', '59', 'Patricia Costa'),
(81, 'Masculino', 'usuario63@example.com', '11965432109', 'senha63', '30', '1.79', '76', 'Felipe Lima'),
(82, 'Feminino', 'usuario64@example.com', '11954321098', 'senha64', '26', '1.67', '64', 'Debora Rocha'),
(83, 'Masculino', 'usuario65@example.com', '11943210987', 'senha65', '32', '1.75', '72', 'Matheus Santos'),
(84, 'Feminino', 'usuario66@example.com', '11932109876', 'senha66', '25', '1.69', '60', 'Natália Ferreira'),
(85, 'Masculino', 'usuario67@example.com', '11921098765', 'senha67', '34', '1.83', '84', 'Thiago Almeida'),
(86, 'Feminino', 'usuario68@example.com', '11910987654', 'senha68', '22', '1.61', '55', 'Mariana Costa'),
(87, 'Masculino', 'usuario69@example.com', '11909876543', 'senha69', '31', '1.82', '80', 'Anderson Lima'),
(88, 'Feminino', 'usuario70@example.com', '11998765432', 'senha70', '29', '1.65', '58', 'Eliane Mendes'),
(89, 'Masculino', 'usuario71@example.com', '11987654321', 'senha71', '37', '1.80', '76', 'Leonardo Rocha'),
(90, 'Feminino', 'usuario72@example.com', '11976543210', 'senha72', '25', '1.70', '62', 'Juliana Almeida'),
(91, 'Masculino', 'usuario73@example.com', '11965432109', 'senha73', '29', '1.78', '79', 'Rodrigo Ferreira'),
(92, 'Masculino', 'usuario101@example.com', '11987654321', 'senha101', '28', '1.76', '74', 'Fernando Silva'),
(93, 'Feminino', 'usuario102@example.com', '11976543210', 'senha102', '29', '1.64', '60', 'Juliana Oliveira'),
(94, 'Masculino', 'usuario103@example.com', '11965432109', 'senha103', '32', '1.82', '82', 'Gustavo Santos'),
(95, 'Feminino', 'usuario104@example.com', '11954321098', 'senha104', '25', '1.68', '58', 'Camila Ferreira'),
(96, 'Masculino', 'usuario105@example.com', '11943210987', 'senha105', '34', '1.80', '79', 'Renan Almeida'),
(97, 'Feminino', 'usuario106@example.com', '11932109876', 'senha106', '30', '1.70', '63', 'Lívia Costa'),
(98, 'Masculino', 'usuario107@example.com', '11921098765', 'senha107', '27', '1.78', '76', 'Felipe Rocha'),
(99, 'Feminino', 'usuario108@example.com', '11910987654', 'senha108', '22', '1.65', '55', 'Aline Lima'),
(100, 'Masculino', 'usuario109@example.com', '11909876543', 'senha109', '29', '1.81', '81', 'Marcio Mendes'),
(101, 'Feminino', 'usuario110@example.com', '11998765432', 'senha110', '33', '1.66', '62', 'Fernanda Santos'),
(102, 'Masculino', 'usuario111@example.com', '11987654321', 'senha111', '31', '1.89', '88', 'Anderson Lima'),
(103, 'Feminino', 'usuario112@example.com', '11976543210', 'senha112', '24', '1.62', '54', 'Jéssica Rocha'),
(104, 'Masculino', 'usuario113@example.com', '11965432109', 'senha113', '36', '1.77', '80', 'Rafael Ferreira'),
(105, 'Feminino', 'usuario114@example.com', '11954321098', 'senha114', '28', '1.69', '60', 'Bruna Almeida'),
(106, 'Masculino', 'usuario115@example.com', '11943210987', 'senha115', '29', '1.84', '82', 'Paulo Santos'),
(107, 'Feminino', 'usuario116@example.com', '11932109876', 'senha116', '22', '1.65', '57', 'Tatiane Lima'),
(108, 'Masculino', 'usuario117@example.com', '11921098765', 'senha117', '33', '1.80', '77', 'Victor Mendes'),
(109, 'Feminino', 'usuario118@example.com', '11910987654', 'senha118', '25', '1.67', '64', 'Rafaela Rocha'),
(110, 'Masculino', 'usuario119@example.com', '11909876543', 'senha119', '27', '1.76', '75', 'Marcelo Almeida'),
(111, 'Feminino', 'usuario120@example.com', '11998765432', 'senha120', '30', '1.70', '65', 'Sabrina Santos'),
(112, 'Masculino', 'usuario121@example.com', '11987654321', 'senha121', '38', '1.89', '85', 'Diego Ferreira'),
(113, 'Feminino', 'usuario122@example.com', '11976543210', 'senha122', '29', '1.63', '61', 'Lara Lima'),
(114, 'Masculino', 'usuario123@example.com', '11965432109', 'senha123', '30', '1.82', '80', 'Gabriel Rocha'),
(115, 'Feminino', 'usuario124@example.com', '11954321098', 'senha124', '34', '1.70', '62', 'Cláudia Santos'),
(116, 'Masculino', 'usuario125@example.com', '11943210987', 'senha125', '31', '1.75', '78', 'Henrique Almeida'),
(117, 'Feminino', 'usuario126@example.com', '11932109876', 'senha126', '28', '1.66', '59', 'Aline Ferreira'),
(118, 'Masculino', 'usuario127@example.com', '11921098765', 'senha127', '39', '1.88', '90', 'Carlos Eduardo'),
(119, 'Feminino', 'usuario128@example.com', '11910987654', 'senha128', '27', '1.65', '56', 'Roberta Rocha'),
(120, 'Masculino', 'usuario129@example.com', '11909876543', 'senha129', '36', '1.79', '75', 'Wellington Santos'),
(121, 'Feminino', 'usuario130@example.com', '11998765432', 'senha130', '31', '1.70', '66', 'Viviane Ferreira'),
(122, 'Masculino', 'usuario131@example.com', '11987654321', 'senha131', '34', '1.80', '82', 'Fernando Lima'),
(123, 'Feminino', 'usuario132@example.com', '11976543210', 'senha132', '30', '1.68', '63', 'Daniele Santos'),
(124, 'Masculino', 'usuario133@example.com', '11965432109', 'senha133', '25', '1.77', '74', 'Ricardo Rocha'),
(125, 'Feminino', 'usuario134@example.com', '11954321098', 'senha134', '29', '1.69', '60', 'Tatiane Almeida'),
(126, 'Masculino', 'usuario135@example.com', '11943210987', 'senha135', '22', '1.81', '79', 'Eduardo Ferreira'),
(127, 'Feminino', 'usuario136@example.com', '11932109876', 'senha136', '27', '1.62', '58', 'Thais Lima'),
(128, 'Masculino', 'usuario137@example.com', '11921098765', 'senha137', '36', '1.75', '80', 'Leonardo Santos'),
(129, 'Feminino', 'usuario138@example.com', '11910987654', 'senha138', '30', '1.64', '55', 'Luciana Rocha'),
(130, 'Masculino', 'usuario139@example.com', '11909876543', 'senha139', '35', '1.80', '81', 'Marcos Almeida'),
(131, 'Feminino', 'usuario140@example.com', '11998765432', 'senha140', '29', '1.66', '64', 'Patricia Ferreira'),
(132, 'Masculino', 'usuario141@example.com', '11987654321', 'senha141', '28', '1.73', '77', 'Fábio Lima'),
(133, 'Feminino', 'usuario142@example.com', '11976543210', 'senha142', '25', '1.61', '52', 'Raquel Santos'),
(134, 'Masculino', 'usuario143@example.com', '11965432109', 'senha143', '32', '1.80', '78', 'Igor Rocha'),
(135, 'Feminino', 'usuario144@example.com', '11954321098', 'senha144', '29', '1.67', '65', 'Janaína Almeida'),
(136, 'Masculino', 'usuario145@example.com', '11943210987', 'senha145', '34', '1.82', '83', 'Thiago Santos'),
(137, 'Feminino', 'usuario146@example.com', '11932109876', 'senha146', '30', '1.72', '66', 'Samara Ferreira'),
(138, 'Masculino', 'usuario147@example.com', '11921098765', 'senha147', '22', '1.74', '76', 'Gustavo Lima'),
(139, 'Feminino', 'usuario148@example.com', '11910987654', 'senha148', '28', '1.66', '60', 'Letícia Rocha'),
(140, 'Masculino', 'usuario149@example.com', '11909876543', 'senha149', '33', '1.78', '79', 'Bruno Almeida'),
(141, 'Feminino', 'usuario150@example.com', '11998765432', 'senha150', '30', '1.70', '65', 'Cíntia Santos'),
(142, 'Masculino', 'otavio.oliveira@example.com', '11912345678', 'senhaOtavio', '28', '1.75', '70', 'Otávio Oliveira'),
(143, 'Masculino', 'marcus.vinicius@example.com', '11923456789', 'senhaMarcus', '30', '1.80', '75', 'Marcus Vinicius'),
(144, 'Masculino', 'guilherme.vital@example.com', '11934567890', 'senhaGuilherme', '25', '1.78', '72', 'Guilherme Vital');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_chamados`
--

CREATE TABLE `tb_chamados` (
  `protocolo` int(255) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `sexo_usuario` varchar(255) NOT NULL,
  `sintomas` varchar(255) NOT NULL,
  `numero_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_chamados`
--

INSERT INTO `tb_chamados` (`protocolo`, `nome_usuario`, `sexo_usuario`, `sintomas`, `numero_usuario`) VALUES
(1, 'João Silva', 'Masculino', 'Dor de cabeça', '123456789'),
(2, 'Maria Oliveira', 'Feminino', 'Febre', '987654321'),
(3, 'Carlos Souza', 'Masculino', 'Tosse', '456789123'),
(4, 'Ana Lima', 'Feminino', 'Náusea', '321654987'),
(5, 'Pedro Santos', 'Masculino', 'Dor nas costas', '654321789'),
(6, 'Lucia Ferreira', 'Feminino', 'Cansaço', '789123456'),
(7, 'Marcos Mendes', 'Masculino', 'Resfriado', '852963741'),
(8, 'Fernanda Costa', 'Feminino', 'Dor de garganta', '963852741'),
(9, 'Rafael Almeida', 'Masculino', 'Alergia', '147258369'),
(10, 'Juliana Rocha', 'Feminino', 'Dor abdominal', '258963147'),
(11, 'Gustavo Pires', 'Masculino', 'Desidratação', '369258147'),
(12, 'Patrícia Cardoso', 'Feminino', 'Dor no peito', '741852963'),
(13, 'Felipe Ribeiro', 'Masculino', 'Dor muscular', '159753486'),
(14, 'Camila Martins', 'Feminino', 'Fadiga', '753159486'),
(15, 'Bruno Gomes', 'Masculino', 'Erupção cutânea', '258147369'),
(16, 'Tatiane Silva', 'Feminino', 'Dificuldade respiratória', '369147258'),
(17, 'Lucas Dias', 'Masculino', 'Vertigem', '456123789');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionários`
--

CREATE TABLE `tb_funcionários` (
  `id_usuario` int(255) NOT NULL,
  `nome_funcionario` varchar(255) NOT NULL,
  `cargo_funcionario` varchar(255) NOT NULL,
  `numero_funcionario` varchar(255) NOT NULL,
  `email_funcionario` varchar(255) NOT NULL,
  `cpf_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_funcionários`
--

INSERT INTO `tb_funcionários` (`id_usuario`, `nome_funcionario`, `cargo_funcionario`, `numero_funcionario`, `email_funcionario`, `cpf_usuario`) VALUES
(1, 'Ana Souza', 'Gerente', '555123456', 'ana.souza@example.com', '123.456.789-00'),
(2, 'Carlos Lima', 'Analista', '555987654', 'carlos.lima@example.com', '234.567.890-01'),
(3, 'Fernanda Costa', 'Desenvolvedora', '555654321', 'fernanda.costa@example.com', '345.678.901-02'),
(4, 'Bruno Almeida', 'Designer', '555321987', 'bruno.almeida@example.com', '456.789.012-03'),
(5, 'Juliana Rocha', 'Recursos Humanos', '555147258', 'juliana.rocha@example.com', '567.890.123-04'),
(6, 'Marcos Mendes', 'Financeiro', '555258369', 'marcos.mendes@example.com', '678.901.234-05'),
(7, 'Tatiane Silva', 'Vendas', '555369852', 'tatiane.silva@example.com', '789.012.345-06'),
(8, 'Lucas Ferreira', 'Suporte', '555951753', 'lucas.ferreira@example.com', '890.123.456-07'),
(9, 'Camila Martins', 'Marketing', '555753159', 'camila.martins@example.com', '901.234.567-08'),
(10, 'Gustavo Pires', 'Técnico', '555852456', 'gustavo.pires@example.com', '012.345.678-09'),
(11, 'Felipe Ribeiro', 'Consultor', '555789123', 'felipe.ribeiro@example.com', '123.456.789-10'),
(12, 'Patrícia Cardoso', 'Coordenadora', '555654987', 'patricia.cardoso@example.com', '234.567.890-11'),
(13, 'Rafael Almeida', 'Gerente', '555321654', 'rafael.almeida@example.com', '345.678.901-12'),
(14, 'Bruno Gomes', 'Analista', '555987321', 'bruno.gomes@example.com', '456.789.012-13'),
(15, 'Ana Clara', 'Desenvolvedora', '555159753', 'ana.clara@example.com', '567.890.123-14'),
(16, 'Maria Santos', 'Designer', '555753951', 'maria.santos@example.com', '678.901.234-15'),
(17, 'Carlos Alberto', 'Financeiro', '555951258', 'carlos.alberto@example.com', '789.012.345-16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_historico`
--

CREATE TABLE `tb_historico` (
  `nome_usuario` varchar(255) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `sexo_usuario` varchar(255) NOT NULL,
  `sintomas` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `prescricao_medica` varchar(255) NOT NULL,
  `protocolo` int(11) NOT NULL,
  `id_historico` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `id_usuario` int(255) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `senha_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_medicos`
--

CREATE TABLE `tb_medicos` (
  `Id_medico` int(255) NOT NULL,
  `nome_medico` varchar(255) NOT NULL,
  `email_medico` varchar(255) NOT NULL,
  `senha_medico` varchar(255) NOT NULL,
  `idade_medico` varchar(255) NOT NULL,
  `certificado_medico` varchar(255) NOT NULL,
  `cpf_medico` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_medicos`
--

INSERT INTO `tb_medicos` (`Id_medico`, `nome_medico`, `email_medico`, `senha_medico`, `idade_medico`, `certificado_medico`, `cpf_medico`) VALUES
(1, 'Dra. Carla Souza', 'carla.souza@example.com', 'senha852', '30', 'CRM-88990', 0),
(2, 'Dr. Pedro Santos', 'pedro.santos@example.com', 'senha789', '50', 'CRM-54321', 0),
(3, 'Dr. Lucas Oliveira', 'lucas.oliveira@example.com', 'senha456', '39', 'CRM-99001', 0),
(4, 'Dr. João Silva', 'joao.silva@example.com', 'senha123', '40', 'CRM-12345', 0),
(5, 'Dra. Ana Lima', 'ana.lima@example.com', 'senha321', '29', 'CRM-98765', 0),
(6, 'Dra. Laura Lima', 'laura.lima@example.com', 'senha321', '25', 'CRM-30334', 0),
(7, 'Dr. Bruno Costa', 'bruno.costa@example.com', 'senha654', '45', 'CRM-11223', 0),
(8, 'Dra. Luana Pereira', 'luana.pereira@example.com', 'senha987', '38', 'CRM-22334', 0),
(9, 'Dra. Nina Costa', 'nina.costa@example.com', 'senha654', '26', 'CRM-10112', 0),
(10, 'Dr. Carlo Almeida', 'carlo.almeida@example.com', 'senha147', '42', 'CRM-33445', 0),
(11, 'Dr. Felipe Santos', 'felipe.santos@example.com', 'senha654', '37', 'CRM-40445', 0),
(12, 'Dra. Julia Rocha', 'julia.rocha@example.com', 'senha258', '31', 'CRM-44556', 0),
(13, 'Dr. Rafael Mendes', 'rafael.mendes@example.com', 'senha369', '36', 'CRM-55667', 0),
(14, 'Dr. Tiago Rocha', 'tiago.rocha@example.com', 'senha789', '34', 'CRM-20223', 0),
(15, 'Dra. Sara Martins', 'sara.martins@example.com', 'senha159', '27', 'CRM-66778', 0),
(16, 'Dra. Maria Oliveira', 'maria.oliveira@example.com', 'senha456', '35', 'CRM-67890', 0),
(17, 'Dr. Daniel Ferreira', 'daniel.ferreira@example.com', 'senha753', '33', 'CRM-77889', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_processoseletivo`
--

CREATE TABLE `tb_processoseletivo` (
  `id_usuario` int(255) NOT NULL,
  `nome_candidato` int(255) NOT NULL,
  `email_candidato` int(255) NOT NULL,
  `numero_candidato` int(11) NOT NULL,
  `curriculo_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_registrohospitalar`
--

CREATE TABLE `tb_registrohospitalar` (
  `id_registrohospitalar` int(255) NOT NULL,
  `nome_medico` varchar(255) NOT NULL,
  `nome_paciente` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `descrição` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_registrohospitalar`
--

INSERT INTO `tb_registrohospitalar` (`id_registrohospitalar`, `nome_medico`, `nome_paciente`, `data`, `descrição`) VALUES
(1, 'Dr. Ana Silva', 'Carlos Almeida', '2023-09-01', 'Consulta de rotina e exames gerais.'),
(2, 'Dr. João Pereira', 'Maria Souza', '2023-09-02', 'Avaliação de pressão arterial e colesterol.'),
(3, 'Dra. Fernanda Costa', 'Lucas Oliveira', '2023-09-03', 'Consulta para acompanhamento de diabetes.'),
(4, 'Dr. Ricardo Santos', 'Juliana Lima', '2023-09-04', 'Tratamento de gripe e prescrição de medicamentos.'),
(5, 'Dra. Carla Dias', 'Roberto Ferreira', '2023-09-05', 'Exame de sangue e avaliação de resultados.'),
(6, 'Dr. Felipe Rocha', 'Tatiane Alves', '2023-09-06', 'Consulta para avaliação de alergias.'),
(7, 'Dra. Gabriela Martins', 'Fernando Santos', '2023-09-07', 'Avaliação de dores nas costas e fisioterapia.'),
(8, 'Dr. Samuel Lima', 'Raquel Mendes', '2023-09-08', 'Consulta pré-operatória.'),
(9, 'Dra. Luiza Ribeiro', 'Bruno Costa', '2023-09-09', 'Avaliação de lesão e prescrição de tratamento.'),
(10, 'Dr. André Souza', 'Vanessa Oliveira', '2023-09-10', 'Consulta para avaliação psicológica.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuários`
--

CREATE TABLE `tb_usuários` (
  `id_usuario` int(255) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `sexo_usuario` varchar(255) NOT NULL,
  `telefone_usuario` varchar(255) NOT NULL,
  `email_usuario` varchar(255) NOT NULL,
  `senha_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_avaliacoes`
--
ALTER TABLE `tb_avaliacoes`
  ADD PRIMARY KEY (`id_avaliações`);

--
-- Índices de tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tb_chamados`
--
ALTER TABLE `tb_chamados`
  ADD PRIMARY KEY (`protocolo`);

--
-- Índices de tabela `tb_funcionários`
--
ALTER TABLE `tb_funcionários`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tb_historico`
--
ALTER TABLE `tb_historico`
  ADD PRIMARY KEY (`id_historico`);

--
-- Índices de tabela `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `tb_medicos`
--
ALTER TABLE `tb_medicos`
  ADD PRIMARY KEY (`Id_medico`);

--
-- Índices de tabela `tb_registrohospitalar`
--
ALTER TABLE `tb_registrohospitalar`
  ADD PRIMARY KEY (`id_registrohospitalar`);

--
-- Índices de tabela `tb_usuários`
--
ALTER TABLE `tb_usuários`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_avaliacoes`
--
ALTER TABLE `tb_avaliacoes`
  MODIFY `id_avaliações` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_cadastro`
--
ALTER TABLE `tb_cadastro`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de tabela `tb_chamados`
--
ALTER TABLE `tb_chamados`
  MODIFY `protocolo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_funcionários`
--
ALTER TABLE `tb_funcionários`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_historico`
--
ALTER TABLE `tb_historico`
  MODIFY `id_historico` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_medicos`
--
ALTER TABLE `tb_medicos`
  MODIFY `Id_medico` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_registrohospitalar`
--
ALTER TABLE `tb_registrohospitalar`
  MODIFY `id_registrohospitalar` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `tb_usuários`
--
ALTER TABLE `tb_usuários`
  MODIFY `id_usuario` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_avaliacoes`
--
ALTER TABLE `tb_avaliacoes`
  ADD CONSTRAINT `tb_avaliacoes_ibfk_1` FOREIGN KEY (`id_avaliações`) REFERENCES `tb_usuários` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_avaliacoes_ibfk_2` FOREIGN KEY (`id_avaliações`) REFERENCES `tb_medicos` (`Id_medico`);

--
-- Restrições para tabelas `tb_historico`
--
ALTER TABLE `tb_historico`
  ADD CONSTRAINT `tb_historico_ibfk_1` FOREIGN KEY (`id_historico`) REFERENCES `tb_registrohospitalar` (`id_registrohospitalar`);

--
-- Restrições para tabelas `tb_login`
--
ALTER TABLE `tb_login`
  ADD CONSTRAINT `tb_login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuários` (`id_usuario`);

--
-- Restrições para tabelas `tb_usuários`
--
ALTER TABLE `tb_usuários`
  ADD CONSTRAINT `tb_usuários_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tb_login` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_usuários_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_login` (`id_usuario`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
