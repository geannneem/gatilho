-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: 12-Fev-2019 às 11:40
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_almoxarifado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblacesso`
--

DROP TABLE IF EXISTS `tblacesso`;
CREATE TABLE IF NOT EXISTS `tblacesso` (
  `intacessoid` int(11) NOT NULL AUTO_INCREMENT,
  `stracesso` varchar(45) NOT NULL,
  `strdescricao` varchar(255) DEFAULT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`intacessoid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblacesso`
--

INSERT INTO `tblacesso` (`intacessoid`, `stracesso`, `strdescricao`, `bolstatus`) VALUES
(1, 'Administrador', 'Perfil para administradores do sistema.', 1),
(2, 'Solicitante', 'Perfil para solicitação de pedidos', 1),
(3, 'Coordenador de Serviços Gerais', 'Perfil para realização de pedidos de posto e pedidos de epi', 1),
(4, 'Coordenador Almoxarifado', 'Perfil para controle do almoxarifado', 1),
(5, 'Terceirizado', 'Perfil de acesso das empresas terceirizadas', 0),
(6, 'Técnico de Segurança do Trabalho', 'Perfil para protocolar EPIs', 1),
(7, 'Atendente Almoxarifado', 'Perfil para atendimento de pedidos do almoxarifado', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblatividade`
--

DROP TABLE IF EXISTS `tblatividade`;
CREATE TABLE IF NOT EXISTS `tblatividade` (
  `intatividadeid` int(11) NOT NULL AUTO_INCREMENT,
  `intusuarioid` int(11) NOT NULL,
  `stratividade` varchar(45) NOT NULL,
  `strtipoatividade` varchar(45) DEFAULT NULL,
  `datinicial` date NOT NULL,
  `datfinal` date NOT NULL,
  `datvalidade` date DEFAULT NULL,
  `timcargahoraria` time NOT NULL,
  `bolstatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intatividadeid`),
  KEY `fk_ativ_usuario_idx` (`intusuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcargo`
--

DROP TABLE IF EXISTS `tblcargo`;
CREATE TABLE IF NOT EXISTS `tblcargo` (
  `intcargoid` int(11) NOT NULL AUTO_INCREMENT,
  `strcargo` varchar(45) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intcargoid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblcargo`
--

INSERT INTO `tblcargo` (`intcargoid`, `strcargo`, `bolstatus`, `created_at`, `updated_at`) VALUES
(1, 'teste', 0, '2019-01-14 10:32:01', '2019-02-08 17:31:15'),
(2, 'funçao', 0, '2019-01-21 19:37:09', '2019-02-11 18:53:33'),
(3, 'teste', 0, '2019-01-29 14:00:49', '2019-02-08 17:31:18'),
(6, 'teste', 0, '2019-01-29 14:25:43', '2019-01-29 14:25:46'),
(7, 't', 0, '2019-02-06 13:10:49', '2019-02-08 17:31:11'),
(8, 'qdddddddddd', 1, '2019-02-11 18:52:14', '2019-02-11 18:52:14'),
(9, 'função', 0, '2019-02-11 18:52:24', '2019-02-11 18:53:35'),
(10, 'função', 0, '2019-02-11 18:52:34', '2019-02-11 18:55:25'),
(11, 'função', 0, '2019-02-11 18:52:58', '2019-02-11 18:53:37'),
(12, 'funcao', 1, '2019-02-11 18:53:22', '2019-02-11 18:53:22'),
(13, 'funcao', 0, '2019-02-11 18:53:30', '2019-02-11 18:55:27'),
(14, 'funcaos', 1, '2019-02-11 18:54:16', '2019-02-11 18:56:25'),
(15, 'função', 0, '2019-02-11 18:55:23', '2019-02-11 18:55:30'),
(16, 'funcaoss', 1, '2019-02-11 18:56:19', '2019-02-11 18:56:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcategoria`
--

DROP TABLE IF EXISTS `tblcategoria`;
CREATE TABLE IF NOT EXISTS `tblcategoria` (
  `intcategoriaid` int(11) NOT NULL AUTO_INCREMENT,
  `strcategoria` varchar(45) NOT NULL,
  `strdescricao` varchar(255) DEFAULT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intcategoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblcategoria`
--

INSERT INTO `tblcategoria` (`intcategoriaid`, `strcategoria`, `strdescricao`, `bolstatus`, `created_at`, `updated_at`) VALUES
(1, 'Não Categorizado', NULL, 1, '2019-01-28 12:16:14', '2019-01-28 12:16:14'),
(17, 'Categoria A', NULL, 0, '2018-11-27 08:08:26', '2018-11-28 14:48:48'),
(18, 'Material de Nutrição', NULL, 1, '2018-11-27 14:55:59', '2018-11-29 20:37:04'),
(19, 'Material de Escritório', NULL, 1, '2018-11-28 15:03:25', '2018-11-28 15:03:25'),
(20, 'Material descartável', NULL, 1, '2018-11-28 15:53:18', '2018-11-28 15:53:18'),
(21, 'Material de limpeza', NULL, 1, '2018-12-03 14:49:38', '2018-12-03 14:49:38'),
(23, 'Fardamento', NULL, 1, '2018-12-18 08:57:53', '2018-12-18 08:57:53'),
(24, 'Rouparia', NULL, 1, '2018-12-20 10:51:15', '2018-12-20 10:51:15'),
(25, 'Equipamento de Proteção Individual', NULL, 1, '2019-01-14 10:21:45', '2019-01-14 10:21:45'),
(26, 'Emergência', NULL, 1, '2019-01-16 11:34:17', '2019-01-16 11:34:17'),
(27, 'teste', NULL, 0, '2019-01-17 15:44:49', '2019-01-17 16:05:32'),
(28, 'testee', NULL, 0, '2019-01-17 16:06:40', '2019-01-17 16:13:39'),
(34, 'w', NULL, 0, '2019-01-17 16:13:25', '2019-01-17 16:26:37'),
(35, 'm5', NULL, 0, '2019-02-04 13:39:20', '2019-02-04 13:39:27'),
(36, 'Material Higiênico', NULL, 1, '2019-02-05 14:04:10', '2019-02-05 14:04:10'),
(37, 'Material  permanente', NULL, 1, '2019-02-06 11:55:48', '2019-02-06 11:55:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcontato`
--

DROP TABLE IF EXISTS `tblcontato`;
CREATE TABLE IF NOT EXISTS `tblcontato` (
  `intcontatoid` int(11) NOT NULL AUTO_INCREMENT,
  `intfornecedorid` int(11) NOT NULL,
  `strcontato` varchar(191) NOT NULL,
  `strtelefone` varchar(15) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intcontatoid`),
  KEY `fk_forn_contato_idx` (`intfornecedorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcontrole`
--

DROP TABLE IF EXISTS `tblcontrole`;
CREATE TABLE IF NOT EXISTS `tblcontrole` (
  `intcontroleid` int(11) NOT NULL AUTO_INCREMENT,
  `intfuncionarioid` int(11) NOT NULL,
  `intpostoid` int(11) NOT NULL,
  `intusuarioid` int(11) NOT NULL,
  `datinicial` datetime NOT NULL,
  `datfinal` datetime NOT NULL,
  `intapto` int(11) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`intcontroleid`),
  KEY `fk_func_controle_idx` (`intfuncionarioid`),
  KEY `fk_posto_controle_idx` (`intpostoid`),
  KEY `fk_users_controle_idx` (`intusuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldetalhesatividade`
--

DROP TABLE IF EXISTS `tbldetalhesatividade`;
CREATE TABLE IF NOT EXISTS `tbldetalhesatividade` (
  `intdetalhesatividadeid` int(11) NOT NULL AUTO_INCREMENT,
  `intatividadeid` int(11) NOT NULL,
  `intfuncionarioid` int(11) NOT NULL,
  PRIMARY KEY (`intdetalhesatividadeid`),
  KEY `fk_detatv_func_idx` (`intfuncionarioid`),
  KEY `fk_det_atv_idx` (`intatividadeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldetalhesentrada`
--

DROP TABLE IF EXISTS `tbldetalhesentrada`;
CREATE TABLE IF NOT EXISTS `tbldetalhesentrada` (
  `intdetalhesentradaid` int(11) NOT NULL AUTO_INCREMENT,
  `intnotaentradaid` int(11) NOT NULL,
  `intprodutoid` int(11) NOT NULL,
  `intquantidade` int(11) NOT NULL,
  `dblvalor` decimal(7,2) NOT NULL,
  PRIMARY KEY (`intdetalhesentradaid`),
  KEY `idproduto_idx` (`intprodutoid`),
  KEY `fk_entrada_det_idx` (`intnotaentradaid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbldetalhesentrada`
--

INSERT INTO `tbldetalhesentrada` (`intdetalhesentradaid`, `intnotaentradaid`, `intprodutoid`, `intquantidade`, `dblvalor`) VALUES
(2, 2, 941, 100, '0.38'),
(3, 2, 942, 10, '7.89'),
(4, 2, 943, 15, '10.12'),
(5, 2, 944, 50, '7.49'),
(6, 2, 945, 1, '100.75'),
(7, 2, 946, 46, '2.00'),
(8, 2, 947, 5, '74.22'),
(9, 2, 948, 50, '3.70'),
(10, 2, 949, 3, '6.95'),
(11, 3, 950, 600, '8.00'),
(12, 4, 953, 60, '12.58'),
(13, 4, 954, 240, '0.55'),
(14, 5, 956, 50, '48.80');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldetalhesnotaxml`
--

DROP TABLE IF EXISTS `tbldetalhesnotaxml`;
CREATE TABLE IF NOT EXISTS `tbldetalhesnotaxml` (
  `intdetalhesnotaxmlid` int(11) NOT NULL AUTO_INCREMENT,
  `intnotaxmlid` int(11) NOT NULL,
  `intnumnota` int(11) NOT NULL,
  `intcodproduto` int(11) NOT NULL,
  `strnomeproduto` varchar(255) NOT NULL,
  `charunidade` char(3) CHARACTER SET utf8 NOT NULL,
  `intquantidade_produto` int(11) NOT NULL,
  `dblvalor_produto` decimal(7,2) NOT NULL,
  `dblvalortotal_produto` decimal(7,2) NOT NULL,
  PRIMARY KEY (`intdetalhesnotaxmlid`),
  KEY `fk_intxmlid_notaxml_idx` (`intnotaxmlid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbldetalhesnotaxml`
--

INSERT INTO `tbldetalhesnotaxml` (`intdetalhesnotaxmlid`, `intnotaxmlid`, `intnumnota`, `intcodproduto`, `strnomeproduto`, `charunidade`, `intquantidade_produto`, `dblvalor_produto`, `dblvalortotal_produto`) VALUES
(1, 1, 3609, 8556, 'CH.CA31266T RELOGIO CHAMPION/PULSO ICMS: (12.00) 0.00, COFINS: (0.00) 0.00, PIS: (0.00) 0.00', 'UN', 1, '189.05', '189.05'),
(2, 2, 2759309, 13369178, 'SMARTPHONE SAMSUNG GALAXY J6 - PRETO', 'PC', 1, '794.32', '794.32'),
(3, 3, 13414047, 934942, '100 Bota Feminino LACEY RAIN BLAC 35 36', 'PEC', 1, '319.90', '319.90');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldetalhespedido`
--

DROP TABLE IF EXISTS `tbldetalhespedido`;
CREATE TABLE IF NOT EXISTS `tbldetalhespedido` (
  `intdetalhespedidoid` int(11) NOT NULL AUTO_INCREMENT,
  `intpedidoid` int(11) NOT NULL,
  `intprodutoid` int(11) NOT NULL,
  `intquantidade` int(11) NOT NULL,
  `intqntentregue` int(11) DEFAULT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`intdetalhespedidoid`),
  KEY `fk_pedido_detalhes_idx` (`intpedidoid`),
  KEY `fk_pedido_produto_idx` (`intprodutoid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbldetalhespedido`
--

INSERT INTO `tbldetalhespedido` (`intdetalhespedidoid`, `intpedidoid`, `intprodutoid`, `intquantidade`, `intqntentregue`, `bolstatus`) VALUES
(1, 1, 9402, 1, NULL, 0),
(6, 5, 9292, 1, 0, 0),
(7, 5, 951, 1, 1, 1),
(8, 5, 22, 1, 1, 1),
(9, 5, 45, 1, 0, 0),
(10, 6, 45, 1, 0, 0),
(11, 7, 9292, 1, 0, 0),
(12, 8, 9293, 1, 1, 1),
(13, 8, 941, 1, 1, 1),
(14, 9, 950, 1, NULL, 0),
(16, 11, 9292, 1, NULL, 0),
(17, 12, 22, 1, 1, 1),
(18, 13, 941, 1, 0, 0),
(19, 16, 914, 1, NULL, 0),
(20, 18, 914, 1, NULL, 0),
(21, 17, 914, 1, NULL, 0),
(22, 19, 914, 1, NULL, 0),
(23, 20, 914, 1, NULL, 0),
(24, 21, 914, 1, NULL, 0),
(25, 22, 914, 1, NULL, 0),
(26, 27, 914, 1, NULL, 0),
(27, 25, 914, 1, 0, 0),
(28, 23, 914, 1, NULL, 0),
(29, 24, 914, 1, NULL, 0),
(30, 26, 914, 1, NULL, 0),
(31, 28, 9321, 1, NULL, 0),
(32, 29, 9296, 1, 1, 1),
(33, 29, 9314, 1, 1, 1),
(34, 30, 914, 0, NULL, 0),
(36, 32, 9295, 10, 0, 0),
(37, 33, 1256, 1, NULL, 0),
(38, 34, 9390, 1, NULL, 0),
(40, 36, 914, 1, 0, 0),
(41, 36, 4589, 1, 1, 1),
(42, 37, 4589, 1, NULL, 0),
(43, 38, 9390, 1, NULL, 0),
(44, 39, 1256, 1, 0, 0),
(45, 40, 951, 1, NULL, 0),
(46, 40, 9294, 1, NULL, 0),
(47, 40, 22, 1, NULL, 0),
(48, 40, 45, 1, NULL, 0),
(49, 41, 951, 1, NULL, 0),
(50, 41, 9294, 1, NULL, 0),
(51, 41, 22, 1, NULL, 0),
(52, 41, 45, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldetalhespedidoepi`
--

DROP TABLE IF EXISTS `tbldetalhespedidoepi`;
CREATE TABLE IF NOT EXISTS `tbldetalhespedidoepi` (
  `intdetalhespedidoepiid` int(11) NOT NULL AUTO_INCREMENT,
  `intpedidoepiid` int(11) NOT NULL,
  `intprodutoid` int(11) NOT NULL,
  `intquantidade` int(11) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `intqntentregue` int(11) DEFAULT NULL,
  PRIMARY KEY (`intdetalhespedidoepiid`),
  KEY `fk_det_ped_epi_idx` (`intpedidoepiid`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbldetalhespedidoepi`
--

INSERT INTO `tbldetalhespedidoepi` (`intdetalhespedidoepiid`, `intpedidoepiid`, `intprodutoid`, `intquantidade`, `bolstatus`, `intqntentregue`) VALUES
(37, 35, 87, 1, 1, 0),
(38, 35, 98, 1, 1, 1),
(39, 36, 87, 1, 1, NULL),
(40, 36, 98, 1, 1, NULL),
(41, 37, 98, 1, 1, NULL),
(42, 38, 87, 1, 1, NULL),
(43, 39, 98, 1, 1, NULL),
(44, 39, 87, 1, 1, NULL),
(45, 40, 87, 1, 1, 1),
(46, 40, 98, 1, 1, 1),
(47, 41, 98, 1, 1, NULL),
(48, 42, 98, 1, 1, NULL),
(49, 43, 87, 1, 1, 1),
(50, 43, 98, 1, 1, 1),
(51, 44, 98, 8, 1, NULL),
(52, 45, 87, 1, 1, NULL),
(53, 45, 98, 1, 1, NULL),
(54, 46, 98, 1, 1, NULL),
(55, 47, 87, 1, 1, NULL),
(56, 48, 87, 1, 1, NULL),
(57, 49, 98, 1, 1, NULL),
(58, 50, 87, 1, 1, NULL),
(59, 50, 98, 1, 1, NULL),
(60, 51, 87, 1, 1, NULL),
(61, 51, 98, 1, 1, NULL),
(62, 52, 87, 1, 1, NULL),
(63, 52, 98, 1, 1, NULL),
(64, 53, 98, 1, 1, NULL),
(65, 54, 98, 1, 1, NULL),
(66, 55, 87, 1, 1, NULL),
(67, 56, 87, 1, 1, NULL),
(68, 57, 87, 1, 1, NULL),
(69, 57, 98, 1, 1, NULL),
(70, 58, 98, 1, 1, NULL),
(71, 58, 87, 1, 1, NULL),
(72, 59, 98, 1, 1, NULL),
(73, 59, 87, 1, 1, NULL),
(74, 60, 87, 1, 1, 0),
(75, 60, 98, 1, 1, 1),
(76, 61, 9405, 1, 1, NULL),
(77, 62, 9404, 1, 1, NULL),
(78, 63, 9410, 1, 1, NULL),
(79, 64, 9410, 1, 1, NULL),
(80, 64, 9404, 1, 1, NULL),
(81, 64, 9412, 1, 1, NULL),
(82, 65, 9410, 1, 1, NULL),
(83, 66, 93049042, 1, 1, 1),
(84, 67, 93049042, 1, 1, NULL),
(85, 68, 98, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldetalhesprotocolo`
--

DROP TABLE IF EXISTS `tbldetalhesprotocolo`;
CREATE TABLE IF NOT EXISTS `tbldetalhesprotocolo` (
  `intdetalhesprotocoloid` int(11) NOT NULL AUTO_INCREMENT,
  `intprotocoloid` int(11) NOT NULL,
  `intprodutoid` int(11) NOT NULL,
  `intpedidoepiid` int(11) DEFAULT NULL,
  `intqntautorizada` int(11) NOT NULL,
  `bolestado` tinyint(1) DEFAULT '0',
  `bolsubstituicao` char(2) DEFAULT 'ND',
  PRIMARY KEY (`intdetalhesprotocoloid`),
  KEY `fk_prod_protocolo_idx` (`intprodutoid`),
  KEY `fk_protocolo_detalhes_idx` (`intprotocoloid`),
  KEY `fk_protocolo_pedido_idx` (`intpedidoepiid`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbldetalhesprotocolo`
--

INSERT INTO `tbldetalhesprotocolo` (`intdetalhesprotocoloid`, `intprotocoloid`, `intprodutoid`, `intpedidoepiid`, `intqntautorizada`, `bolestado`, `bolsubstituicao`) VALUES
(68, 201, 98, 35, 0, 0, 'N'),
(69, 201, 87, 35, 1, 1, '0'),
(70, 202, 98, 36, 0, 0, '0'),
(71, 202, 87, 36, 2, 1, '0'),
(72, 203, 98, 37, 1, 1, '0'),
(73, 204, 98, 37, 1, 1, '0'),
(74, 205, 87, 38, 1, 1, '0'),
(75, 206, 87, 39, 0, 0, '0'),
(76, 206, 98, 39, 2, 1, '0'),
(77, 207, 98, 40, 1, 1, '0'),
(78, 207, 87, 40, 1, 1, '0'),
(79, 208, 98, 43, 1, 1, '0'),
(80, 208, 87, 43, 1, 1, '0'),
(81, 209, 98, 41, 0, 0, '~'),
(82, 210, 98, 42, 1, 1, 'N'),
(83, 211, 98, 44, 1, 1, 'S'),
(84, 218, 98, 45, 0, 0, '~'),
(85, 218, 87, 45, 0, 0, '~'),
(86, 219, 98, 45, 0, 0, '~'),
(87, 219, 87, 45, 0, 0, '~'),
(88, 220, 98, 46, 0, 0, '~'),
(89, 221, 87, 47, 0, 0, '~'),
(90, 223, 87, 48, 1, 0, '~'),
(91, 226, 98, 50, 0, 0, 'S'),
(92, 226, 87, 50, 1, 1, 'S'),
(93, 229, 98, 49, 0, 0, 'S'),
(95, 236, 98, 51, 0, 0, '~'),
(96, 236, 87, 51, 1, 1, '~'),
(97, 237, 98, 52, 0, 0, '~'),
(98, 237, 87, 52, 1, 1, 'N'),
(99, 240, 98, 53, 0, 1, '~'),
(100, 241, 98, 54, 0, 1, '~'),
(101, 243, 87, 55, 0, 1, '~'),
(102, 244, 87, 56, 0, 1, '~'),
(103, 245, 98, 57, 0, 0, '~'),
(104, 245, 87, 57, 1, 1, 'S'),
(105, 246, 87, 58, 0, 0, '~'),
(106, 246, 98, 58, 1, 1, '~'),
(107, 256, 87, 59, 0, 0, 'S'),
(108, 256, 98, 59, 1, 1, 'N'),
(109, 269, 98, 60, 0, 0, '~'),
(110, 269, 87, 60, 1, 1, 'S'),
(111, 270, 9410, 63, 1, 1, 'N'),
(112, 271, 9412, 64, 0, 0, '~'),
(113, 271, 9404, 64, 0, 0, '~'),
(114, 271, 9410, 64, 1, 1, 'S'),
(115, 272, 93049042, 66, 1, 1, 'S'),
(116, 273, 9404, 62, 1, 1, 'S'),
(117, 274, 9410, 65, 0, 0, '~'),
(118, 275, 98, 68, 0, 0, 'ND');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbldevolucao`
--

DROP TABLE IF EXISTS `tbldevolucao`;
CREATE TABLE IF NOT EXISTS `tbldevolucao` (
  `intdevolucaoid` int(11) NOT NULL AUTO_INCREMENT,
  `datdevolucao` datetime NOT NULL,
  `intusuarioid` int(11) NOT NULL,
  PRIMARY KEY (`intdevolucaoid`),
  KEY `fk_usuario_dev_idx` (`intusuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblfornecedor`
--

DROP TABLE IF EXISTS `tblfornecedor`;
CREATE TABLE IF NOT EXISTS `tblfornecedor` (
  `intfornecedorid` int(11) NOT NULL AUTO_INCREMENT,
  `strfornecedor` varchar(50) NOT NULL,
  `strcnpj` varchar(18) NOT NULL,
  `stremail` varchar(191) DEFAULT NULL,
  `strendereco` varchar(255) DEFAULT NULL,
  `strbairro` varchar(45) DEFAULT NULL,
  `strcep` varchar(9) DEFAULT NULL,
  `strtelefone` varchar(16) DEFAULT NULL,
  `strcidade` varchar(45) DEFAULT NULL,
  `charuf` char(2) DEFAULT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intfornecedorid`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblfornecedor`
--

INSERT INTO `tblfornecedor` (`intfornecedorid`, `strfornecedor`, `strcnpj`, `stremail`, `strendereco`, `strbairro`, `strcep`, `strtelefone`, `strcidade`, `charuf`, `bolstatus`, `created_at`, `updated_at`) VALUES
(5, 'Fornecedor teste', '11.111.111/1111-11', NULL, 'Av. Daniel De La Touche', NULL, '65074-115', '(98) 3236-4525', 'São Luís', 'MA', 0, '2018-11-27 11:37:20', '2018-12-04 10:30:27'),
(6, 'Brasil Papeis Informática', '09.381.597/0001-36', NULL, 'Rua do Arame, Lote 10, Qd.120A, Nº 445', 'Bom Jesus', '65041-871', '(98) 3253-1929', 'São Luis', 'MA', 1, '2018-11-28 18:43:37', '2019-02-05 22:07:25'),
(7, 'Fibra Indústria de Papeis Ltda -ME', '19.517.665/0001-03', 'contabilidade@papeisfibra.com.br', 'Rua Santo Antonio, 1042, Galpão C', 'Tibiri', '65095-330', '(98) 3241-7077', 'São Luis', 'MA', 1, '2018-11-29 19:14:50', '2018-12-04 10:30:16'),
(8, 'M. A. MENDES COMERCIO', '08.992.990/0001-01', NULL, 'ESTRADA DA RAPOSA  ARAÇAGY, QDA 2, Nº 7A', 'ARAÇAGY / SÃO JOSÉ DE RIBAMAR', '65110-000', '(98) 3312-2857', 'SÃO LUIS', 'MA', 1, '2018-12-03 12:08:29', '2018-12-03 12:08:29'),
(9, 'Agnelo Costa Junior', '30.465.424/0001-92', NULL, 'Travessa 04, nº 06, Qd. D', 'Centro', '65110-000', '(98) 98884-7578', 'São José de Ribamar', 'MA', 1, '2018-12-03 19:52:23', '2018-12-03 19:52:23'),
(10, 'Fornecedor ABC', '00.000.000/0000-00', 'email@mail.com', 'av 01', 'bairro x', '00000-000', '(00) 00000-0000', 'cidade abc', 'MA', 1, '2019-01-23 14:43:39', '2019-01-23 14:43:39'),
(25, 'GFG COMERCIO DIGITAL LTDA', '11.200.418/0006-73', NULL, 'RUA MARIA MARGARIDA PINTO Nro. S/N', 'DOS PIRES', '37640-915', NULL, 'EXTREMA', 'MG', 1, '2019-01-29 22:17:55', '2019-02-12 10:34:46'),
(26, 'B2W Companhia Digital', '00.776.574/0007-41', NULL, 'Rua Estrada Dos Alpes,  555', 'Itaqui', '06696-150', NULL, 'Itapevi', 'SP', 0, '2019-01-30 15:52:37', '2019-02-12 10:28:53'),
(27, 'B2W Companhia Digital', '00.776.574/0015-51', NULL, 'Rodovia Br-101 Sul,  9415', 'Centro', '54510-000', NULL, 'Cabo De Santo Agostinho', 'PE', 1, '2019-02-01 17:47:51', '2019-02-12 10:18:20'),
(28, 'NS2.COM INTERNET S.A.', '09.339.936/0007-01', NULL, 'Rua Riachao,  200', 'Muribeca', '54355-057', NULL, 'Jaboatao Dos Guararapes', 'PE', 1, '2019-02-01 21:03:18', '2019-02-06 16:00:20'),
(29, 'nome', '00.000.000/0000-00', NULL, NULL, NULL, NULL, NULL, '0', '0', 0, '2019-02-04 16:51:29', '2019-02-04 16:53:45'),
(30, 'B2W Companhia Digital', '00.776.574/0007-41', NULL, 'Rua Estrada Dos Alpes,  555', 'Itaqui', '06696-150', NULL, 'Itapevi', 'SP', 1, '2019-02-05 16:44:20', '2019-02-06 16:14:48'),
(31, 'B2W Companhia Digital', '00.776.574/0007-41', NULL, 'Rua Estrada Dos Alpes,  555', 'Itaqui', '06696-150', NULL, 'Itapevi', 'SP', 0, '2019-02-05 16:47:06', '2019-02-12 10:28:57'),
(32, 'M E R ARTEFATOS DE METAIS E ACESSORIOS', '05.578.106/0001-90', NULL, 'Libanio De Morais,  068', 'Centro', '44002-240', NULL, 'Feira De Santana', 'BA', 1, '2019-02-12 10:17:44', '2019-02-12 10:17:44');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblfuncionario`
--

DROP TABLE IF EXISTS `tblfuncionario`;
CREATE TABLE IF NOT EXISTS `tblfuncionario` (
  `intfuncionarioid` int(11) NOT NULL AUTO_INCREMENT,
  `intcargoid` int(11) NOT NULL,
  `intmatricula` int(6) NOT NULL,
  `strnome` varchar(255) NOT NULL,
  `datnascimento` date NOT NULL,
  `datadmissao` date NOT NULL,
  `bolstatus` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intfuncionarioid`),
  KEY `fk_func_cargo_idx` (`intcargoid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblfuncionario`
--

INSERT INTO `tblfuncionario` (`intfuncionarioid`, `intcargoid`, `intmatricula`, `strnome`, `datnascimento`, `datadmissao`, `bolstatus`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'Funcionario teste', '2019-01-14', '2017-01-20', 1, '2019-01-14 10:32:26', '2019-01-14 10:32:26'),
(4, 1, 2151, 'Geanne Maynara', '1995-11-16', '2018-08-22', 1, '2019-01-21 19:31:43', '2019-01-21 19:34:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblnotaentrada`
--

DROP TABLE IF EXISTS `tblnotaentrada`;
CREATE TABLE IF NOT EXISTS `tblnotaentrada` (
  `intnotaentradaid` int(11) NOT NULL AUTO_INCREMENT,
  `intfornecedorid` int(11) NOT NULL,
  `intusuarioid` int(11) NOT NULL,
  `intnumnota` int(11) UNSIGNED ZEROFILL NOT NULL,
  `datentrada` datetime NOT NULL,
  `dblfrete` decimal(7,2) DEFAULT NULL,
  `dbldesconto` decimal(7,2) DEFAULT NULL,
  `dbltotal` decimal(7,2) NOT NULL,
  `bolstatus` char(1) NOT NULL DEFAULT 'R',
  `strnatureza` varchar(11) NOT NULL,
  PRIMARY KEY (`intnotaentradaid`),
  UNIQUE KEY `intnumnota_UNIQUE` (`intnumnota`),
  KEY `fk_entrada_forn_idx` (`intfornecedorid`),
  KEY `fk_entrada_user_idx` (`intusuarioid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblnotaentrada`
--

INSERT INTO `tblnotaentrada` (`intnotaentradaid`, `intfornecedorid`, `intusuarioid`, `intnumnota`, `datentrada`, `dblfrete`, `dbldesconto`, `dbltotal`, `bolstatus`, `strnatureza`) VALUES
(2, 6, 8, 00000011116, '2018-11-29 16:04:40', '0.00', NULL, '1412.09', 'R', 'VENDA'),
(3, 7, 8, 00000006608, '2018-11-29 16:31:49', '0.00', NULL, '4800.00', 'R', 'VENDA'),
(4, 8, 8, 00000009022, '2018-12-03 15:06:36', '0.00', NULL, '886.80', 'R', 'VENDA'),
(5, 9, 8, 00000000028, '2018-12-03 16:54:30', '0.00', NULL, '2440.00', 'R', 'VENDA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblnotaxml`
--

DROP TABLE IF EXISTS `tblnotaxml`;
CREATE TABLE IF NOT EXISTS `tblnotaxml` (
  `intnotaxmlid` int(11) NOT NULL AUTO_INCREMENT,
  `strnomexml` varchar(255) NOT NULL,
  `strcaminhoxml` varchar(255) NOT NULL,
  `strextensao` varchar(100) NOT NULL,
  `datenvioxml` timestamp NOT NULL,
  `inttamanho` int(11) NOT NULL,
  `intnumnota` int(11) DEFAULT NULL,
  `strnome_fornecedor` varchar(255) DEFAULT NULL,
  `datemissao_nota` datetime DEFAULT NULL,
  `strnatureza_operacao` varchar(100) DEFAULT NULL,
  `strcnpj_fornecedor` varchar(18) DEFAULT NULL,
  `strendereco_fornecedor` varchar(255) DEFAULT NULL,
  `strcep_fornecedor` varchar(9) DEFAULT NULL,
  `strbairro_fornecedor` varchar(100) DEFAULT NULL,
  `strcidade_fornecedor` varchar(100) DEFAULT NULL,
  `charuf_fornecedor` mediumtext,
  `dblvalor_parcial` decimal(7,2) DEFAULT NULL,
  `dblvalor_frete` decimal(7,2) DEFAULT NULL,
  `dblvalor_desconto` decimal(7,2) DEFAULT NULL,
  `dblvalor_total` decimal(11,2) DEFAULT NULL,
  `strstatus` varchar(20) NOT NULL DEFAULT 'Enviado',
  PRIMARY KEY (`intnotaxmlid`),
  UNIQUE KEY `intnumnota_UNIQUE` (`intnumnota`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblnotaxml`
--

INSERT INTO `tblnotaxml` (`intnotaxmlid`, `strnomexml`, `strcaminhoxml`, `strextensao`, `datenvioxml`, `inttamanho`, `intnumnota`, `strnome_fornecedor`, `datemissao_nota`, `strnatureza_operacao`, `strcnpj_fornecedor`, `strendereco_fornecedor`, `strcep_fornecedor`, `strbairro_fornecedor`, `strcidade_fornecedor`, `charuf_fornecedor`, `dblvalor_parcial`, `dblvalor_frete`, `dblvalor_desconto`, `dblvalor_total`, `strstatus`) VALUES
(1, '29190205578106000190550010000036091000036097.xml', '5cb039d8389022939b6d6e1c29e29487fe1481204bbdefc0cf69a04c0784b7b5', 'text/xml', '2019-02-12 10:17:44', 6672, 3609, 'M E R ARTEFATOS DE METAIS E ACESSORIOS', '2019-02-01 10:25:19', 'VENDA DE MERC. TERC. AO CONSUMIDOR FORA DO ESTADO', '05.578.106/0001-90', 'LIBANIO DE MORAIS, 068', '44002-240', 'CENTRO', 'FEIRA DE SANTANA', 'BA', '189.05', '0.00', NULL, '189.05', 'Recebido'),
(2, '26181100776574001551550040027593091172372345.xml', 'a1757ef35f6fe510ac834056baaa8b74abf2e7364a96b23172fe990eb2107219', 'text/xml', '2019-02-12 10:18:20', 7585, 2759309, 'B2W Companhia Digital', '2018-11-24 13:18:08', 'Venda Merc Adq Terc N/Contrib', '00.776.574/0015-51', 'Rodovia BR-101 Sul, 9415', '54510-000', 'Centro', 'Cabo de Santo Agostinho', 'PE', '794.32', '9.99', NULL, '794.31', 'Recebido'),
(3, '31181011200418000673550010134140471779055429.xml', 'aa32251dc233a8e45a9ef5e97e7314c73a325ceae0ff27e037635e55f976a91b', 'text/xml', '2019-02-12 10:34:46', 7264, 13414047, 'GFG COMERCIO DIGITAL LTDA', '2018-10-10 17:15:59', 'Venda merc.adq.rec.terceiros dest.n contribuinte', '11.200.418/0006-73', 'RUA MARIA MARGARIDA PINTO, S/N', '37640-915', 'DOS PIRES', 'EXTREMA', 'MG', '319.90', '17.99', NULL, '117.98', 'Recebido');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblordemservico`
--

DROP TABLE IF EXISTS `tblordemservico`;
CREATE TABLE IF NOT EXISTS `tblordemservico` (
  `intordemservicoid` int(11) NOT NULL AUTO_INCREMENT,
  `intusuarioid` int(11) NOT NULL,
  `intfornecedorid` int(11) NOT NULL,
  `intcontatoid` int(11) NOT NULL,
  `intsetorid` int(11) NOT NULL,
  `strtiposervico` varchar(20) NOT NULL,
  `datservico` date NOT NULL,
  `datgarantia` date NOT NULL,
  `dblvalor` decimal(7,2) NOT NULL,
  `strservico` varchar(255) NOT NULL,
  `charpagamento` char(2) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intordemservicoid`),
  KEY `fk_ordemserv_forn_idx` (`intfornecedorid`),
  KEY `fk_ordemserv_setor_idx` (`intsetorid`),
  KEY `fk_ordemserv_contato_idx` (`intcontatoid`),
  KEY `fk_ordemserv_usuario_idx` (`intusuarioid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpedido`
--

DROP TABLE IF EXISTS `tblpedido`;
CREATE TABLE IF NOT EXISTS `tblpedido` (
  `intpedidoid` int(11) NOT NULL AUTO_INCREMENT,
  `intusuarioid` int(11) NOT NULL,
  `intpostoid` int(11) NOT NULL,
  `intusuario_atendente` int(11) DEFAULT NULL,
  `datpedido` datetime NOT NULL,
  `datatendimento` datetime DEFAULT NULL,
  `inttotal` int(11) NOT NULL,
  `strobservacao` varchar(255) DEFAULT NULL,
  `strstatus` varchar(40) NOT NULL DEFAULT 'REALIZADO',
  PRIMARY KEY (`intpedidoid`),
  KEY `fk_pedido_posto_idx` (`intpostoid`),
  KEY `fk_pedido_usuario_idx` (`intusuarioid`),
  KEY `fk_pedido_atendente_idx` (`intusuario_atendente`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpedido`
--

INSERT INTO `tblpedido` (`intpedidoid`, `intusuarioid`, `intpostoid`, `intusuario_atendente`, `datpedido`, `datatendimento`, `inttotal`, `strobservacao`, `strstatus`) VALUES
(1, 5, 2, NULL, '2019-02-12 07:33:05', NULL, 1, NULL, 'Enviado'),
(5, 11, 18, 8, '2019-01-14 07:22:58', '2019-01-14 07:23:21', 4, NULL, 'Atendido Parcialmente'),
(6, 11, 16, 8, '2019-01-14 07:29:09', '2019-01-14 07:29:17', 1, NULL, 'Cancelado'),
(7, 7, 35, 8, '2019-01-14 07:59:50', '2019-01-21 16:02:06', 1, NULL, 'Recusado'),
(8, 11, 8, 13, '2019-01-14 14:41:58', '2019-01-14 14:52:01', 2, NULL, 'Atendido'),
(9, 5, 2, NULL, '2019-01-15 07:54:24', NULL, 1, NULL, 'Cancelado'),
(11, 5, 7, NULL, '2019-01-15 09:18:49', NULL, 1, NULL, 'Cancelado'),
(12, 5, 15, 5, '2019-01-15 09:19:08', '2019-01-15 09:30:12', 1, NULL, 'Atendido'),
(13, 12, 33, 5, '2019-01-15 09:50:31', '2019-01-15 09:52:08', 1, NULL, 'Cancelado'),
(16, 11, 3, NULL, '2019-01-15 14:48:05', NULL, 1, NULL, 'Cancelado'),
(17, 11, 3, NULL, '2019-01-15 14:48:07', NULL, 1, NULL, 'Cancelado'),
(18, 11, 3, NULL, '2019-01-15 14:48:07', NULL, 1, NULL, 'Cancelado'),
(19, 11, 3, NULL, '2019-01-15 14:48:07', NULL, 1, NULL, 'Cancelado'),
(20, 11, 3, NULL, '2019-01-15 14:48:07', NULL, 1, NULL, 'Cancelado'),
(21, 11, 3, NULL, '2019-01-15 14:48:14', NULL, 1, NULL, 'Cancelado'),
(22, 11, 3, NULL, '2019-01-15 14:48:16', NULL, 1, NULL, 'Enviado'),
(23, 11, 3, NULL, '2019-01-15 14:48:17', NULL, 1, NULL, 'Cancelado'),
(24, 11, 3, NULL, '2019-01-15 14:48:17', NULL, 1, NULL, 'Cancelado'),
(25, 11, 3, 8, '2019-01-15 14:48:17', '2019-01-21 15:46:39', 1, NULL, 'Cancelado'),
(26, 11, 3, NULL, '2019-01-15 14:48:17', NULL, 1, NULL, 'Cancelado'),
(27, 11, 3, NULL, '2019-01-15 14:48:17', NULL, 1, NULL, 'Cancelado'),
(28, 12, 2, NULL, '2019-01-15 14:51:28', NULL, 1, NULL, 'Enviado'),
(29, 12, 10, 13, '2019-01-15 14:55:21', '2019-01-15 15:08:24', 2, NULL, 'Atendido'),
(30, 11, 7, NULL, '2019-01-15 15:31:52', NULL, 0, NULL, 'Cancelado'),
(32, 5, 8, 8, '2019-01-15 15:47:54', '2019-01-18 07:42:59', 10, NULL, 'Cancelado'),
(33, 5, 17, NULL, '2019-01-21 09:22:19', NULL, 1, NULL, 'Cancelado'),
(34, 5, 18, NULL, '2019-01-21 10:11:16', NULL, 1, NULL, 'Cancelado'),
(36, 5, 17, 5, '2019-01-21 10:16:12', '2019-01-21 12:02:34', 2, NULL, 'Atendido Parcialmente'),
(37, 5, 5, NULL, '2019-01-21 10:37:10', NULL, 1, NULL, 'Cancelado'),
(38, 12, 17, NULL, '2019-01-21 15:43:48', NULL, 1, NULL, 'Enviado'),
(39, 8, 19, 8, '2019-01-21 15:55:09', '2019-01-21 15:55:20', 1, NULL, 'Cancelado'),
(40, 5, 3, NULL, '2019-02-05 07:19:59', NULL, 4, NULL, 'Cancelado'),
(41, 5, 5, NULL, '2019-02-05 07:20:17', NULL, 4, NULL, 'Enviado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpedidoepi`
--

DROP TABLE IF EXISTS `tblpedidoepi`;
CREATE TABLE IF NOT EXISTS `tblpedidoepi` (
  `intpedidoepiid` int(11) NOT NULL AUTO_INCREMENT,
  `intfuncionarioid` int(11) NOT NULL,
  `intusuarioid` int(11) NOT NULL,
  `intusuario_atendente` int(11) DEFAULT NULL,
  `datpedidoepi` datetime NOT NULL,
  `datatendimento` datetime DEFAULT NULL,
  `strobservacao` varchar(255) DEFAULT NULL,
  `strstatus` varchar(45) NOT NULL DEFAULT 'Aguardando Protocolo',
  PRIMARY KEY (`intpedidoepiid`),
  KEY `fk_ped_epi_func_idx` (`intfuncionarioid`),
  KEY `fk_ped_usuario_idx` (`intusuarioid`),
  KEY `fk_pedidoepi_usuario_idx` (`intusuario_atendente`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblpedidoepi`
--

INSERT INTO `tblpedidoepi` (`intpedidoepiid`, `intfuncionarioid`, `intusuarioid`, `intusuario_atendente`, `datpedidoepi`, `datatendimento`, `strobservacao`, `strstatus`) VALUES
(35, 3, 12, 5, '2019-01-14 07:35:52', '2019-01-15 11:12:46', NULL, 'Atendido'),
(36, 3, 12, NULL, '2019-01-14 07:40:20', NULL, NULL, 'Parcialmente Autorizado'),
(37, 3, 12, NULL, '2019-01-14 07:57:48', NULL, NULL, 'Autorizado'),
(38, 3, 5, NULL, '2019-01-14 08:01:26', NULL, NULL, 'Autorizado'),
(39, 3, 5, NULL, '2019-01-14 08:45:45', NULL, NULL, 'Parcialmente Autorizado'),
(40, 3, 12, 5, '2019-01-14 14:43:58', '2019-01-15 11:24:53', NULL, 'Atendido'),
(41, 3, 5, NULL, '2019-01-14 15:31:03', NULL, NULL, 'Não Autorizado'),
(42, 3, 5, NULL, '2019-01-15 08:02:44', NULL, NULL, 'Autorizado'),
(43, 3, 12, 13, '2019-01-15 14:56:27', '2019-01-15 15:09:47', NULL, 'Atendido'),
(44, 3, 5, NULL, '2019-01-15 16:08:26', NULL, NULL, 'Autorizado'),
(45, 3, 5, NULL, '2019-01-16 07:51:27', NULL, NULL, 'Parcialmente Autorizado'),
(46, 3, 5, NULL, '2019-01-16 10:34:54', NULL, NULL, 'Parcialmente Autorizado'),
(47, 3, 5, NULL, '2019-01-16 10:37:40', NULL, NULL, 'Parcialmente Autorizado'),
(48, 3, 5, NULL, '2019-01-16 10:38:18', NULL, NULL, 'Parcialmente Autorizado'),
(49, 3, 5, NULL, '2019-01-16 10:40:30', NULL, NULL, 'Parcialmente Autorizado'),
(50, 3, 5, NULL, '2019-01-16 10:41:53', NULL, NULL, 'Parcialmente Autorizado'),
(51, 3, 5, NULL, '2019-01-16 11:13:20', NULL, NULL, 'Parcialmente Autorizado'),
(52, 3, 5, NULL, '2019-01-16 11:30:54', NULL, NULL, 'Parcialmente Autorizado'),
(53, 3, 5, NULL, '2019-01-16 11:34:15', NULL, NULL, 'Parcialmente Autorizado'),
(54, 3, 5, NULL, '2019-01-16 11:36:23', NULL, NULL, 'Parcialmente Autorizado'),
(55, 3, 5, NULL, '2019-01-16 11:37:47', NULL, NULL, 'Parcialmente Autorizado'),
(56, 3, 5, NULL, '2019-01-16 11:39:22', NULL, NULL, 'Parcialmente Autorizado'),
(57, 3, 5, NULL, '2019-01-16 11:42:14', NULL, NULL, 'Parcialmente Autorizado'),
(58, 3, 5, NULL, '2019-01-16 11:43:33', NULL, NULL, 'Parcialmente Autorizado'),
(59, 3, 5, NULL, '2019-01-16 11:44:27', NULL, NULL, 'Parcialmente Autorizado'),
(60, 3, 5, 5, '2019-01-16 11:52:38', '2019-01-18 09:03:30', NULL, 'Atendido'),
(61, 3, 5, NULL, '2019-01-21 08:56:39', NULL, NULL, 'Cancelado'),
(62, 3, 5, NULL, '2019-01-21 09:19:52', NULL, NULL, 'Autorizado'),
(63, 3, 5, NULL, '2019-01-21 09:24:14', NULL, NULL, 'Autorizado'),
(64, 3, 5, NULL, '2019-01-21 16:27:33', NULL, NULL, 'Parcialmente Autorizado'),
(65, 3, 5, NULL, '2019-01-23 10:00:54', NULL, NULL, 'Não Autorizado'),
(66, 3, 5, 5, '2019-02-04 10:21:25', '2019-02-05 07:24:42', NULL, 'Atendido'),
(67, 3, 5, NULL, '2019-02-04 10:26:37', NULL, NULL, 'Aguardando Protocolo'),
(68, 3, 5, NULL, '2019-02-04 10:35:47', NULL, NULL, 'Não Autorizado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblposto`
--

DROP TABLE IF EXISTS `tblposto`;
CREATE TABLE IF NOT EXISTS `tblposto` (
  `intpostoid` int(11) NOT NULL AUTO_INCREMENT,
  `strposto` varchar(45) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intpostoid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblposto`
--

INSERT INTO `tblposto` (`intpostoid`, `strposto`, `bolstatus`, `created_at`, `updated_at`) VALUES
(2, 'Banco de Sangue', 1, '2018-11-30 15:02:47', '2018-11-30 15:02:47'),
(3, 'Central de Materiais', 1, '2018-11-30 15:03:06', '2018-11-30 15:03:06'),
(4, 'Centro Cirúrgico', 1, '2018-11-30 15:05:31', '2018-11-30 15:05:31'),
(5, 'Diretoria Bacelar', 1, '2018-11-30 15:05:47', '2018-11-30 15:05:47'),
(6, 'Diretoria Bogéa', 1, '2018-11-30 15:05:55', '2018-11-30 15:05:55'),
(7, 'Eco Endoscopia Ltda', 1, '2018-11-30 15:06:06', '2018-11-30 15:06:06'),
(8, 'Emergência - Observação', 1, '2018-11-30 15:06:12', '2018-11-30 15:06:12'),
(9, 'Emergência - UCE', 1, '2018-11-30 15:06:22', '2018-11-30 15:06:22'),
(10, 'Emergência Atendimento', 1, '2018-11-30 15:06:29', '2018-11-30 15:06:29'),
(11, 'Emergência Internação', 1, '2018-11-30 15:06:37', '2018-11-30 15:06:37'),
(12, 'Emergência Ortopedia', 1, '2018-11-30 15:06:44', '2018-11-30 15:06:44'),
(13, 'Emergência PAC Externo', 1, '2018-11-30 15:06:55', '2018-11-30 15:06:55'),
(14, 'Emergência Recepção', 1, '2018-11-30 15:07:05', '2018-11-30 15:07:05'),
(15, 'Exame Patológico', 1, '2018-11-30 15:07:12', '2018-11-30 15:07:12'),
(16, 'Farmácia - Estoque Central', 1, '2018-11-30 15:07:19', '2018-11-30 15:07:19'),
(17, 'Faturamento', 1, '2018-11-30 15:07:29', '2018-11-30 15:07:29'),
(18, 'Fisioterapia - FISIOMA', 1, '2018-11-30 15:07:42', '2018-11-30 15:07:42'),
(19, 'Hemodinâmica', 1, '2018-11-30 15:07:52', '2018-11-30 15:07:52'),
(20, 'Hemodinâmica IRSL', 1, '2018-11-30 15:08:01', '2018-11-30 15:08:01'),
(21, 'Higienização e Limpeza', 1, '2018-11-30 15:08:13', '2018-11-30 15:08:13'),
(22, 'Incordis', 1, '2018-11-30 15:08:19', '2018-11-30 15:08:19'),
(23, 'Incordis Recepção', 1, '2018-11-30 15:08:27', '2018-11-30 15:08:27'),
(24, 'Instituto de Radiologia', 1, '2018-11-30 17:12:33', '2018-11-30 17:12:33'),
(25, 'MaxLab', 1, '2018-11-30 17:12:42', '2018-11-30 17:12:42'),
(26, 'Medicina Ocupacional', 1, '2018-11-30 17:12:53', '2018-11-30 17:12:53'),
(27, 'Nossa Senhora da Conceição', 0, '2018-11-30 17:13:03', '2018-11-30 17:13:35'),
(28, 'Nutrição', 1, '2018-11-30 17:13:14', '2018-11-30 17:13:14'),
(29, 'Otorrinos', 1, '2018-11-30 17:13:27', '2018-11-30 17:13:27'),
(30, 'Protocolo Sepse', 1, '2018-11-30 17:13:49', '2018-11-30 17:13:49'),
(31, 'Recepção Pediátrica', 1, '2018-11-30 17:13:57', '2018-11-30 17:13:57'),
(32, 'Sala CCIH', 1, '2018-11-30 17:14:07', '2018-11-30 17:14:07'),
(33, 'Sala de Leitura', 1, '2018-11-30 17:14:18', '2018-11-30 17:14:18'),
(34, 'Sala RH', 1, '2018-11-30 17:14:27', '2018-11-30 17:14:27'),
(35, 'Sala SESMT', 1, '2018-11-30 17:14:37', '2018-11-30 17:14:37'),
(36, 'Santa Maria', 1, '2018-11-30 17:14:46', '2018-11-30 17:14:46'),
(37, 'Santa Mônica', 1, '2018-11-30 17:14:56', '2018-11-30 17:14:56'),
(38, 'Santa Rita', 1, '2018-11-30 17:15:07', '2018-11-30 17:15:07'),
(39, 'Santa Rosa', 1, '2018-11-30 17:15:16', '2018-11-30 17:15:16'),
(40, 'Santo Expedito', 1, '2018-11-30 17:15:28', '2018-11-30 17:15:28'),
(41, 'UTI', 1, '2018-11-30 17:15:34', '2018-11-30 17:15:34'),
(42, 'Venda', 1, '2018-11-30 14:29:50', '2018-11-30 14:29:50'),
(43, 'Paciente Externo', 1, '2018-11-30 14:29:57', '2018-11-30 14:29:57'),
(44, 'Rouparia', 1, '2018-12-20 13:47:20', '2018-12-20 13:47:20'),
(45, '_', 1, '2019-02-04 16:39:50', '2019-02-04 16:40:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblproduto`
--

DROP TABLE IF EXISTS `tblproduto`;
CREATE TABLE IF NOT EXISTS `tblproduto` (
  `intprodutoid` int(11) NOT NULL AUTO_INCREMENT,
  `intcategoriaid` int(11) NOT NULL,
  `strproduto` varchar(200) NOT NULL,
  `charunidade` char(3) NOT NULL,
  `intestoque` int(11) DEFAULT NULL,
  `strlote` varchar(30) DEFAULT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intprodutoid`),
  KEY `idcategoria_idx` (`intcategoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=812076062 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblproduto`
--

INSERT INTO `tblproduto` (`intprodutoid`, `intcategoriaid`, `strproduto`, `charunidade`, `intestoque`, `strlote`, `bolstatus`, `created_at`, `updated_at`) VALUES
(4, 19, 'Clips Nº02', 'CX', 1, '', 1, '2019-01-16 17:13:39', '2019-01-16 17:14:50'),
(22, 21, 'teste de pedidos', 'CX', 20, NULL, 1, '2019-01-14 13:21:08', '2019-01-14 13:21:08'),
(45, 23, 'teste de pedidos 1', 'CX', 26, NULL, 1, '2019-01-14 13:21:22', '2019-01-14 13:21:22'),
(51, 21, 'test de produtos', 'LT', 0, NULL, 1, '2019-01-17 19:31:14', '2019-01-17 19:31:14'),
(87, 25, 'Bota EPI', 'PR', 15, NULL, 0, '2019-01-14 13:22:29', '2019-01-18 16:57:07'),
(98, 25, 'Luva malha c/ pigmento', 'PR', 20, NULL, 1, '2019-01-14 13:22:13', '2019-02-05 22:07:25'),
(256, 19, 'Envelope Timbrado CM', 'UN', 1, '', 1, '2019-01-17 15:19:17', '2019-01-17 15:19:17'),
(369, 19, 'Caneta esterografica bic cristal preta', 'UN', 1, '', 1, '2019-01-16 16:38:38', '2019-01-16 16:38:38'),
(425, 19, 'Telefone com fio', 'UN', 1, '', 1, '2019-01-16 15:11:32', '2019-01-16 15:11:32'),
(436, 26, 'Bobina 57x300 via termica', 'UN', 2, '', 1, '2019-01-16 15:28:46', '2019-01-16 15:28:46'),
(444, 19, 'Toner compatível HP 12A Maxprint', 'UN', 1, '', 1, '2019-01-16 16:50:16', '2019-01-17 17:53:54'),
(448, 19, 'Telefone sem fio', 'UN', 1, '', 1, '2019-01-16 15:10:58', '2019-01-16 15:10:58'),
(456, 19, 'Telefone pleno preto', 'UN', 1, '', 1, '2019-01-16 15:13:48', '2019-01-16 15:13:48'),
(459, 19, 'Crachá c/ clips removível', 'UN', 1, '', 1, '2019-01-17 14:54:57', '2019-01-17 14:54:57'),
(485, 19, 'Telefone pleno cz artico', 'UN', 1, '', 1, '2019-01-16 15:12:23', '2019-01-16 15:12:23'),
(489, 19, 'Envelope saco ouro (pardo)', 'UN', 1, '', 1, '2019-01-17 15:17:09', '2019-01-17 15:17:09'),
(556, 19, 'Toner compatível HP 78A Maxprint', 'UN', 1, '', 0, '2019-01-16 17:01:21', '2019-01-18 16:00:54'),
(669, 19, 'Cola bastão', 'UN', 1, '', 1, '2019-01-16 17:17:34', '2019-01-16 17:17:34'),
(762, 19, 'Almofada P/carimbo Super Radex Alcar N 3 Pret', 'UN', 1, NULL, 1, '2019-02-01 17:45:45', '2019-02-05 22:07:25'),
(778, 19, 'Colchete Nº07', 'CX', 1, '', 1, '2019-01-16 17:20:00', '2019-01-16 17:20:00'),
(786, 19, 'Colchete Nº 15', 'CX', 1, '', 1, '2019-01-17 14:50:10', '2019-01-17 14:50:10'),
(788, 19, 'Colchete Nº08', 'CX', 1, '', 1, '2019-01-16 17:20:50', '2019-01-16 17:20:50'),
(789, 19, 'Divisória universal c/10 unids', 'PC', 1, '', 1, '2019-01-17 14:57:03', '2019-01-17 14:57:03'),
(912, 18, 'Pallet 50 x 50 x 45 MM BELMONT', 'UN', 1, NULL, 1, '2018-11-28 13:55:02', '2018-11-28 13:55:02'),
(913, 18, 'Avental Branco Em PVC forrado com poliéster', 'UN', 2, NULL, 1, '2018-11-28 13:58:39', '2018-11-28 13:58:39'),
(914, 18, 'Avental Tipo Canguru Com Bordados', 'UN', 2, NULL, 1, '2018-11-28 14:00:12', '2018-11-28 14:00:12'),
(915, 18, 'Copo Para Sobremesa', 'CX', 1, NULL, 1, '2018-11-28 14:02:30', '2018-11-28 14:02:30'),
(916, 18, 'Copo Térmico 250ML', 'CX', 1, NULL, 1, '2018-11-28 14:04:10', '2018-11-28 14:04:10'),
(917, 18, 'Dispenser Papel Toalha Interfolhado', 'UN', 1, NULL, 0, '2018-11-28 14:07:41', '2018-12-20 13:08:33'),
(918, 18, 'Extrator de suco', 'UN', 1, NULL, 1, '2018-11-28 14:09:52', '2018-11-28 14:09:52'),
(919, 18, 'Faca descartável branca', 'PC', 1, NULL, 1, '2018-11-28 14:11:23', '2018-11-28 14:11:23'),
(920, 18, 'Filme de PVC 38 x 800 ULTRA', 'UN', 1, NULL, 0, '2018-11-28 14:12:30', '2018-11-28 18:52:36'),
(921, 18, 'Fogão PMS 600 com chapa', 'UN', 1, NULL, 0, '2018-11-28 14:14:40', '2018-11-28 18:05:01'),
(922, 18, 'Forno p/ fogão PMS FS 1680', 'UN', 1, NULL, 0, '2018-11-28 14:15:53', '2018-11-28 18:06:50'),
(923, 18, 'Garfo descartável branco', 'PC', 1, NULL, 1, '2018-11-28 14:17:10', '2018-11-28 14:17:10'),
(924, 18, 'Garrafa térmica mini garbo branca e preta 250ML', 'CX', 1, NULL, 1, '2018-11-28 14:25:54', '2018-11-28 14:25:54'),
(925, 18, 'Kit luxo (Garfo,Faca,Guardanapo)', 'KT', 1, NULL, 1, '2018-11-28 14:35:56', '2018-11-28 14:35:56'),
(926, 18, 'Liquidificador IND. 4LTS', 'UN', 1, NULL, 1, '2018-11-28 14:37:41', '2018-11-28 14:37:41'),
(927, 18, 'MC-500 redonda c/ TP (Base redonda)', 'CX', 2, NULL, 1, '2018-11-28 14:40:14', '2018-11-28 14:40:14'),
(928, 18, 'MO - 100 Tampa CX 100', 'CX', 1, NULL, 1, '2018-11-28 14:41:14', '2018-11-28 14:41:14'),
(929, 18, 'MO - 100/4 Base C/ 4 Divisórias', 'CX', 1, NULL, 1, '2018-11-28 14:43:00', '2018-11-28 14:43:00'),
(930, 18, 'MO - 100 Tampa CX 100 MEIW (Tampa p/ base c/ divisórias)', 'CX', 2, NULL, 1, '2018-11-28 14:45:39', '2018-11-28 14:45:39'),
(931, 18, 'MO - 100/4 base CX 100 MEIWA (base c/4 lugares)', 'CX', 1, NULL, 1, '2018-11-28 14:47:52', '2018-11-28 14:47:52'),
(932, 18, 'Saco de baixa  ( 12 x 26 ) PEDB', 'CT', 1, NULL, 1, '2018-11-28 14:54:06', '2019-02-05 16:45:15'),
(933, 18, 'Saco p/ Talher plast', 'CT', 1, NULL, 1, '2018-11-28 14:56:48', '2018-11-28 14:56:48'),
(934, 18, 'Sapato fujiwara banco TAM.38', 'PR', 0, NULL, 1, '2018-11-28 14:58:23', '2019-01-18 16:58:14'),
(935, 18, 'Sapato fujiwara branco pont TAM.36', 'PR', 1, NULL, 1, '2018-11-28 15:00:11', '2018-11-28 15:00:11'),
(936, 18, 'Sapato seg tradicional branco pont TAM.40', 'PR', 1, NULL, 1, '2018-11-28 15:02:08', '2018-11-28 15:02:08'),
(937, 18, 'Sapato seg tradicional branco pont TAM.39', 'PR', 1, NULL, 1, '2018-11-28 15:03:11', '2018-11-28 15:03:11'),
(938, 18, 'Seven Sanit clor sache', 'UN', 1, NULL, 1, '2018-11-28 15:04:15', '2018-11-28 15:04:15'),
(939, 18, 'Tampa copo termico 350ML', 'CT', 1, NULL, 1, '2018-11-28 15:06:28', '2018-11-28 15:06:28'),
(940, 18, 'Termômetro digital MV363', 'UN', 1, NULL, 1, '2018-11-28 15:08:08', '2018-11-28 15:08:08'),
(941, 19, 'Chaveiro sortidos', 'UN', 100, NULL, 1, '2018-11-28 18:15:00', '2018-11-29 23:37:25'),
(942, 19, 'Pasta AZ', 'UN', 11, NULL, 1, '2018-11-28 18:17:16', '2018-11-28 18:17:16'),
(943, 19, 'Fita adesiva transparente', 'UN', 16, NULL, 1, '2018-11-28 18:23:05', '2019-01-18 16:05:51'),
(944, 19, 'Grampo plástico (Romeu e Julieta)', 'PC', 51, NULL, 1, '2018-11-28 18:26:44', '2018-11-28 18:26:44'),
(945, 19, 'Telefone sem fio', 'UN', 2, NULL, 1, '2018-11-28 18:27:58', '2018-11-28 18:27:58'),
(946, 19, 'Organizador triplo office cristal', 'UN', 47, NULL, 1, '2018-11-28 18:29:56', '2018-11-28 18:29:56'),
(947, 20, 'Filme pvc', 'UN', 6, NULL, 1, '2018-11-28 18:31:40', '2018-11-28 18:53:45'),
(948, 19, 'Saco para açuquinha', 'PC', 51, NULL, 1, '2018-11-28 18:34:46', '2018-11-28 18:34:46'),
(949, 19, 'Mexedor para café', 'PC', 4, NULL, 1, '2018-11-28 18:36:08', '2018-11-28 18:36:08'),
(950, 20, 'Papel toalha interfoliado 100% celulose 23x20,5', 'UN', 601, NULL, 1, '2018-11-29 19:26:49', '2018-11-29 19:26:49'),
(951, 20, 'Produto teste', 'UN', 10, NULL, 1, '2018-12-03 12:55:33', '2018-12-03 13:08:12'),
(952, 36, 'Papel toalha bobina', 'UN', 1, NULL, 1, '2018-12-03 17:58:27', '2019-02-05 17:04:53'),
(953, 21, 'Papel toalha bobina', 'UN', 61, NULL, 0, '2018-12-03 17:58:27', '2018-12-03 18:07:34'),
(954, 18, 'Guardanapo 20x18 48x50', 'PC', 241, NULL, 1, '2018-12-03 18:03:23', '2018-12-03 18:03:23'),
(955, 21, 'Saco preto p/lixo de 200Lt 85x100', 'UN', 1, NULL, 0, '2018-12-03 19:45:27', '2018-12-03 19:55:11'),
(956, 21, 'Saco preto p/lixo de 200Lt 85x100', 'UN', 51, NULL, 0, '2018-12-03 19:45:27', '2019-02-05 16:49:22'),
(998, 19, 'Clips Nº10', 'CX', 2, '', 1, '2019-01-16 17:12:06', '2019-01-16 17:15:10'),
(1256, 19, 'Almofada para carimbo', 'UN', 2, '', 1, '2019-01-16 15:16:52', '2019-01-17 16:47:26'),
(1779, 19, 'Papel Carbono Genial Azul', 'UN', 1, NULL, 1, '2019-02-01 17:45:44', '2019-02-05 22:07:25'),
(2226, 19, 'Carrinho CPU c/ rodinhas preto', 'UN', 2, '', 0, '2019-01-16 16:43:24', '2019-01-18 16:02:34'),
(2369, 19, 'Cadiado 25MM', 'UN', 1, '', 1, '2019-01-16 16:08:34', '2019-01-16 16:08:34'),
(2789, 19, 'Calculadorade mesa 12 digitos', 'UN', 2, '', 1, '2019-01-16 16:36:58', '2019-01-16 16:36:58'),
(3332, 19, 'Caneta estereográfica bic cristal azul', 'UN', 1, '', 1, '2019-01-16 16:41:13', '2019-01-16 16:41:13'),
(3907, 19, 'Pasta Arquivo Facil  Verde Polibras', 'UN', 1, NULL, 1, '2019-02-01 17:45:45', '2019-02-05 16:03:20'),
(4056, 26, 'Bobina térmica para ponto pdv', 'UN', 2, '', 1, '2019-01-16 15:44:27', '2019-01-16 15:44:27'),
(4263, 19, 'Solicitação de exames periodicos', 'BL', 1, '', 1, '2019-01-16 15:07:47', '2019-01-16 15:07:47'),
(4589, 19, 'Aviso de cirurgia', 'BL', 0, '', 1, '2019-01-16 15:23:42', '2019-01-16 15:23:42'),
(4755, 19, 'Caneta estereográfica bic cristal vermelha', 'UN', 1, '', 1, '2019-01-16 16:40:01', '2019-01-16 16:40:01'),
(4777, 19, 'Toner tinta HP 122 Maxprint', 'UN', 1, '', 1, '2019-01-16 16:59:18', '2019-01-17 17:54:49'),
(4789, 19, 'Teclado preto USB', 'UN', 1, '', 1, '2019-01-16 15:10:08', '2019-01-17 17:47:03'),
(5369, 19, 'Etiqueta A4 C/25 folhas tamanho 20', 'CX', 1, NULL, 1, '2019-01-17 15:20:57', '2019-01-17 15:20:57'),
(6336, 19, 'Cola branca 90GR', 'UN', 1, '', 1, '2019-01-16 17:19:02', '2019-01-16 17:19:02'),
(7412, 19, 'Cadeira tipo auxiliar fixa c/ 4 pés sem braço', 'UN', 1, '', 1, '2019-01-16 16:17:31', '2019-01-16 16:17:31'),
(7530, 26, 'Bobina termossensivel p/ ecg 216x30 bionet', 'CX', 1, '', 1, '2019-01-16 15:47:23', '2019-01-16 15:47:23'),
(7552, 19, 'Borracha bicolor', 'UN', 1, '', 1, '2019-01-16 15:48:49', '2019-01-16 15:48:49'),
(7888, 19, 'Clips Nº08', 'CX', 1, '', 1, '2019-01-16 17:05:34', '2019-01-16 17:14:23'),
(7889, 19, 'Corretivo', 'UN', 1, '', 1, '2019-01-17 14:48:36', '2019-01-17 14:48:36'),
(7896, 18, 'Processador intel Celeron', 'UN', 1, '', 1, '2019-01-16 14:52:33', '2019-01-16 14:52:33'),
(8556, 1, 'Ch.ca31266T Relogio Champion/pulso Icms: (12.00) 0.00, Cofins: (0.00) 0.00, Pis: (0.00) 0.00', 'UN', 0, NULL, 1, '2019-02-12 10:17:44', '2019-02-12 10:17:44'),
(9292, 19, 'prod teste', 'M', 0, NULL, 1, '2018-12-14 10:42:31', '2019-01-25 20:32:33'),
(9293, 23, 'Bata tipo polo com bordado', 'UN', 1, NULL, 1, '2018-12-18 12:33:19', '2018-12-18 12:33:19'),
(9294, 23, 'teste', 'CX', 1, '', 1, '2018-12-18 14:03:23', '2018-12-18 14:03:23'),
(9295, 23, 'Blazer sem manga bordado', 'UN', 2, '', 0, '2018-12-20 10:56:34', '2019-02-06 14:53:11'),
(9296, 23, 'Blusa gola careca', 'UN', 1, '', 1, '2018-12-20 11:43:27', '2018-12-20 11:43:27'),
(9297, 23, 'Blusa feminina lisa', 'UN', 1, NULL, 1, '2018-12-20 11:44:53', '2019-01-14 15:42:11'),
(9298, 23, 'Blusas MC', 'UN', 1, NULL, 1, '2018-12-20 11:45:55', '2018-12-20 11:45:55'),
(9299, 23, 'Calçado de borracha branca', 'PR', 1, NULL, 0, '2018-12-20 11:46:44', '2018-12-20 13:17:15'),
(9300, 23, 'Calça operacional', 'UN', 1, NULL, 0, '2018-12-20 11:51:59', '2018-12-20 11:59:26'),
(9301, 23, 'Calça operacional na cor branca', 'UN', 1, NULL, 0, '2018-12-20 11:54:50', '2018-12-20 13:16:16'),
(9302, 23, 'Calça prf verde bandeira t 46', 'UN', 1, NULL, 0, '2018-12-20 11:56:35', '2018-12-20 11:59:33'),
(9303, 23, 'Calçado de segurança sem bico Tam. 41', 'PR', 1, NULL, 1, '2018-12-20 11:58:02', '2018-12-20 13:04:48'),
(9304, 23, 'Calçado de segurança sem bicoTam. 42', 'PR', 1, NULL, 0, '2018-12-20 11:59:06', '2018-12-20 13:29:46'),
(9305, 23, 'Calçado de segurança sem bico Tam. 43', 'PR', 1, NULL, 1, '2018-12-20 12:11:46', '2018-12-20 13:18:43'),
(9306, 23, 'Calçado de segurança sem bico Tam. 40', 'PR', 1, NULL, 1, '2018-12-20 12:51:16', '2018-12-20 13:18:07'),
(9307, 23, 'Calçado de segurança pvc preta c/ forro Tam. 37', 'PR', 1, NULL, 1, '2018-12-20 12:53:42', '2018-12-20 13:06:56'),
(9308, 23, 'Calçado de segurança industry bic Tam.39', 'PR', 2, NULL, 1, '2018-12-20 12:57:09', '2018-12-20 13:02:51'),
(9309, 23, 'Calçado de segurança  industry bid c/biq T 37', 'PR', 2, NULL, 1, '2018-12-20 12:59:07', '2018-12-20 12:59:07'),
(9310, 23, 'Calçado de segurança industry bid c/biq Tam.38', 'PR', 2, NULL, 1, '2018-12-20 13:22:05', '2018-12-20 13:22:05'),
(9311, 23, 'Calçado de segurança industry bid c/ biq Tam.44', 'PR', 2, NULL, 1, '2018-12-20 13:24:25', '2018-12-20 13:24:25'),
(9312, 23, 'Calçado de segurança industry big Tam.42', 'PR', 1, NULL, 0, '2018-12-20 13:26:37', '2018-12-20 13:29:11'),
(9313, 23, 'Calçado de segurança industry big Tam.42', 'PR', 2, NULL, 1, '2018-12-20 13:28:42', '2018-12-20 13:28:42'),
(9314, 23, 'Calça masculina', 'UN', 0, NULL, 1, '2018-12-20 13:33:09', '2019-01-14 15:42:33'),
(9315, 23, 'Camisa social m/c com bordado', 'UN', 2, NULL, 1, '2018-12-20 13:37:48', '2018-12-20 13:37:48'),
(9316, 23, 'Camisa do Centro medico cor verde', 'UN', 1, NULL, 1, '2018-12-20 13:41:53', '2018-12-20 13:41:53'),
(9317, 24, 'Capote cirurgico', 'UN', 1, NULL, 1, '2018-12-20 13:56:54', '2018-12-20 13:56:54'),
(9318, 18, 'Pallet 50 x 50 x 45 mm belmont', 'UN', 1, NULL, 0, '2018-12-27 11:30:06', '2018-12-27 11:30:45'),
(9319, 21, 'Pá coletora clip sem tampa e sem fixador', 'UN', 1, NULL, 1, '2018-12-27 11:32:38', '2018-12-27 11:32:38'),
(9320, 19, 'Gravador DVD asus', 'UN', 1, NULL, 1, '2018-12-27 11:36:57', '2018-12-27 11:36:57'),
(9321, 19, 'HD toshiba 500GB 600MB/S', 'UN', 2, NULL, 1, '2018-12-27 11:39:12', '2018-12-27 11:39:12'),
(9322, 19, 'Kitgabinete multileser', 'UN', 1, NULL, 1, '2018-12-27 11:42:09', '2018-12-27 11:42:09'),
(9323, 19, 'Memoria 2GB DDRS 1333MHZ', 'UN', 1, NULL, 1, '2018-12-27 11:43:22', '2018-12-27 11:43:22'),
(9324, 19, 'Memória DDR3 8GB', 'UN', 1, NULL, 1, '2018-12-27 11:44:22', '2018-12-27 11:44:22'),
(9325, 19, 'Monitor led 15,6', 'UN', 1, NULL, 1, '2018-12-27 11:45:18', '2018-12-27 11:45:18'),
(9326, 19, 'Mouse opt usb', 'UN', 1, NULL, 1, '2018-12-27 11:46:04', '2018-12-27 11:46:04'),
(9327, 19, 'Pasta c/ grampo trilho transparente', 'UN', 1, NULL, 1, '2018-12-27 11:49:34', '2018-12-27 11:49:34'),
(9328, 19, 'Pasta catalogo', 'UN', 1, NULL, 1, '2018-12-27 11:50:04', '2018-12-27 11:50:04'),
(9329, 19, 'Placa mãe Gigabyte markvision', 'UN', 1, NULL, 1, '2018-12-27 11:51:31', '2018-12-27 11:51:31'),
(9330, 19, 'Etiqueta carta 65 por folha', 'CX', 0, NULL, 1, '2019-01-17 15:29:28', '2019-01-17 15:29:28'),
(9335, 19, 'Etiqueta carta 80 por folha', 'CX', 1, NULL, 1, '2019-01-17 15:33:12', '2019-01-17 15:33:12'),
(9337, 19, 'Extrator de grampo', 'UN', 1, NULL, 1, '2019-01-17 15:40:59', '2019-01-17 15:40:59'),
(9338, 19, 'Ficha de transferência interna', 'BL', 1, NULL, 1, '2019-01-17 15:42:21', '2019-01-17 15:42:21'),
(9339, 19, 'Fita adesiva plastica transparente', 'UN', 1, NULL, 0, '2019-01-17 15:43:53', '2019-01-17 15:46:57'),
(9340, 19, 'Fita dupla face 19mm x 10m', 'RO', 1, NULL, 1, '2019-01-17 15:56:24', '2019-01-17 15:56:24'),
(9341, 19, 'Fita gomada', 'UN', 1, NULL, 1, '2019-01-17 16:01:56', '2019-01-17 16:01:56'),
(9342, 19, 'Grampeador médio', 'UN', 1, NULL, 1, '2019-01-17 16:03:41', '2019-01-17 16:03:41'),
(9343, 19, 'Grampo 23/13', 'CX', 1, NULL, 1, '2019-01-17 16:04:12', '2019-01-17 16:04:12'),
(9344, 19, 'Grampo cobreado 26/6 C/500', 'CX', 1, NULL, 1, '2019-01-17 16:05:06', '2019-01-17 16:05:06'),
(9345, 19, 'Grampo trilho plastico 80mm', 'PC', 1, NULL, 1, '2019-01-17 16:07:56', '2019-01-17 16:07:56'),
(9346, 19, 'Lapis preto', 'UN', 1, NULL, 1, '2019-01-17 16:08:56', '2019-01-17 16:08:56'),
(9347, 19, 'Liga elástica', 'PC', 1, NULL, 1, '2019-01-17 16:11:44', '2019-01-17 16:11:44'),
(9348, 19, 'Livro de ata 100fls', 'UN', 1, NULL, 1, '2019-01-17 16:13:07', '2019-01-17 16:13:07'),
(9349, 19, 'Livro de ata 200fls', 'UN', 1, NULL, 1, '2019-01-17 16:13:44', '2019-01-17 16:13:44'),
(9350, 19, 'Livro protocolo de correspondência C/100fls', 'UN', 1, NULL, 1, '2019-01-17 16:33:35', '2019-01-17 16:33:35'),
(9351, 19, 'Marca texto desart verde', 'UN', 1, NULL, 1, '2019-01-17 16:36:06', '2019-01-17 16:37:55'),
(9352, 19, 'Marca texto desart amarelo', 'UN', 1, NULL, 1, '2019-01-17 16:36:33', '2019-01-17 16:37:46'),
(9353, 19, 'Marca texto desart laranja', 'UN', 1, NULL, 1, '2019-01-17 16:37:25', '2019-01-17 16:37:25'),
(9354, 19, 'Marca texto desat rosa', 'UN', 1, NULL, 1, '2019-01-17 16:38:45', '2019-01-17 16:38:45'),
(9355, 19, 'Marcador de quadro branco azul', 'UN', 1, NULL, 1, '2019-01-17 16:40:16', '2019-01-17 16:40:16'),
(9356, 19, 'Marcador de quadro branco vermelho', 'UN', 1, NULL, 1, '2019-01-17 16:41:22', '2019-01-17 16:41:22'),
(9357, 19, 'Marcador retroprojetor', 'UN', 1, NULL, 1, '2019-01-17 16:43:36', '2019-01-17 16:43:36'),
(9358, 26, 'Mergulhão aço gigante 2000w', 'UN', 0, NULL, 1, '2019-01-17 16:45:43', '2019-01-17 16:46:50'),
(9359, 19, 'Molha dedo', 'UN', 1, NULL, 1, '2019-01-17 16:49:03', '2019-01-17 16:49:03'),
(9360, 19, 'Mouse classis box usb optico preto', 'UN', 1, NULL, 1, '2019-01-17 16:51:23', '2019-01-17 16:51:23'),
(9361, 19, 'Organizador de chaves (chaveiros)', 'UN', 1, NULL, 1, '2019-01-17 16:53:03', '2019-01-17 16:53:03'),
(9362, 19, 'Papel contact', 'RO', 1, NULL, 1, '2019-01-17 17:02:03', '2019-01-17 17:02:03'),
(9363, 19, 'Papel pardo', 'UN', 1, NULL, 1, '2019-01-17 17:02:28', '2019-01-17 17:02:28'),
(9364, 19, 'Pasta L A4', 'UN', 1, NULL, 1, '2019-01-17 17:03:08', '2019-01-17 17:03:08'),
(9365, 19, 'Pasta ABA elastico oficil fina', 'UN', 1, NULL, 1, '2019-01-17 17:04:29', '2019-01-17 17:12:22'),
(9366, 19, 'Pasta AZ', 'UN', 1, NULL, 0, '2019-01-17 17:07:19', '2019-01-17 17:16:00'),
(9367, 19, 'Pasta arquivo morto', 'UN', 1, NULL, 1, '2019-01-17 17:08:58', '2019-01-17 17:08:58'),
(9368, 19, 'Pasta C/ elástico grossa', 'UN', 1, NULL, 1, '2019-01-17 17:10:21', '2019-01-17 17:10:21'),
(9369, 19, 'Pasta C/ grampo plastica', 'UN', 1, NULL, 1, '2019-01-17 17:13:31', '2019-01-17 17:13:31'),
(9370, 19, 'Pasta classificadora', 'UN', 1, NULL, 1, '2019-01-17 17:15:27', '2019-01-17 17:15:27'),
(9371, 19, 'Pasta suspensa', 'UN', 1, NULL, 1, '2019-01-17 17:17:20', '2019-01-17 17:17:20'),
(9372, 19, 'Pendrive Twist 32G USB Multilaser', 'UN', 1, NULL, 1, '2019-01-17 17:26:27', '2019-01-17 17:26:27'),
(9373, 19, 'Perfurador grande de 35 folhas', 'UN', 1, NULL, 1, '2019-01-17 17:28:16', '2019-01-17 17:28:16'),
(9374, 19, 'Perfurador médio', 'UN', 1, NULL, 1, '2019-01-17 17:33:47', '2019-01-17 17:33:47'),
(9375, 19, 'Perfurador de metal 60 folhas', 'UN', 1, NULL, 1, '2019-01-17 17:34:31', '2019-01-17 17:34:31'),
(9376, 19, 'Pilha alcalina AA', 'UN', 1, NULL, 1, '2019-01-17 17:35:44', '2019-01-17 17:35:44'),
(9377, 19, 'Pilha alcalina AAA', 'UN', 1, NULL, 1, '2019-01-17 17:35:58', '2019-01-17 17:35:58'),
(9378, 19, 'Pilha media', 'UN', 1, NULL, 1, '2019-01-17 17:36:51', '2019-01-17 17:36:51'),
(9379, 19, 'Prancheta plastica', 'UN', 1, NULL, 1, '2019-01-17 17:38:41', '2019-01-17 17:38:41'),
(9380, 19, 'Quadro branco 120x90', 'UN', 1, NULL, 1, '2019-01-17 17:39:45', '2019-01-17 17:39:45'),
(9381, 19, 'Quadro cortiça 90x60', 'UN', 1, NULL, 1, '2019-01-17 17:40:46', '2019-01-17 17:40:46'),
(9382, 19, 'Régua 30cm', 'UN', 1, NULL, 1, '2019-01-17 17:45:27', '2019-01-17 17:45:27'),
(9383, 19, 'Termo de responsabilidade', 'BL', 1, NULL, 1, '2019-01-17 17:47:43', '2019-01-17 17:47:43'),
(9384, 19, 'Tinta p/ carimbo azul', 'UN', 1, NULL, 1, '2019-01-17 17:48:22', '2019-01-17 17:48:22'),
(9385, 19, 'Tinta p/ carimbo preto', 'UN', 1, NULL, 1, '2019-01-17 17:49:07', '2019-01-17 17:49:07'),
(9386, 19, 'Toner comp. HP 80X Maxprint', 'UN', 1, NULL, 1, '2019-01-17 17:50:24', '2019-01-17 17:53:24'),
(9387, 19, 'Toner comp. HP 35/36/85A Maxprint', 'UN', 1, NULL, 1, '2019-01-17 17:51:49', '2019-01-18 16:01:17'),
(9388, 19, 'Toner comp. HP 55 Maxprint', 'UN', 1, NULL, 1, '2019-01-17 17:53:08', '2019-01-17 17:53:08'),
(9389, 19, 'Toner comp. HP 12A ESC85C', 'UN', 1, NULL, 0, '2019-01-17 17:56:40', '2019-01-18 16:00:10'),
(9390, 19, 'Adesivo dml cm', 'UN', 2, NULL, 1, '2019-01-18 15:39:06', '2019-01-18 15:39:06'),
(9391, 19, 'Bobina senha 3DIG', 'UN', 1, NULL, 1, '2019-01-18 15:51:45', '2019-01-18 15:51:45'),
(9392, 19, 'Caneta retroprojetor CD', 'UN', 1, NULL, 1, '2019-01-18 15:55:57', '2019-01-18 15:55:57'),
(9393, 19, 'Toner camp HP 55X', 'UN', 1, NULL, 0, '2019-01-18 15:57:21', '2019-01-18 16:00:21'),
(9394, 19, 'Toner comp. HP 78A Maxprint', 'UN', 1, NULL, 1, '2019-01-18 15:58:34', '2019-01-18 15:58:34'),
(9395, 19, 'Evolução medica cm', 'BL', 1, NULL, 1, '2019-01-18 16:05:08', '2019-01-18 16:05:08'),
(9396, 19, 'Papel A4 resma com 500 folhas', 'RM', 1, NULL, 1, '2019-01-18 16:08:02', '2019-01-18 16:08:02'),
(9397, 19, 'Papel carbono preto c/100fls', 'CX', 1, NULL, 0, '2019-01-18 16:09:13', '2019-02-05 17:07:54'),
(9398, 19, 'Pasta sanfonada', 'UN', 1, NULL, 1, '2019-01-18 16:24:10', '2019-01-18 16:24:10'),
(9399, 19, 'Rótulo enteral cm - Adesivo', 'UN', 1, NULL, 1, '2019-01-18 16:25:53', '2019-01-18 16:25:53'),
(9400, 19, 'Tesoura 17 cm', 'UN', 1, NULL, 1, '2019-01-18 16:26:36', '2019-01-18 16:26:36'),
(9401, 21, 'Reservatório para sabonete', 'UN', 1, NULL, 1, '2019-01-18 16:33:12', '2019-01-18 16:33:12'),
(9402, 21, 'Álcool em gel 800ml', 'UN', 1, NULL, 1, '2019-01-18 16:34:07', '2019-01-18 16:39:10'),
(9403, 25, 'Bota de borracha 07 léguas T: 40', 'PR', 1, NULL, 1, '2019-01-18 17:07:18', '2019-01-18 17:07:18'),
(9404, 25, 'Bota de borracha 07 léguas T: 36', 'PR', 1, NULL, 1, '2019-01-18 17:09:49', '2019-01-18 17:09:49'),
(9405, 25, 'Bota de borracha 07 léguas T: 38', 'PR', 1, NULL, 0, '2019-01-18 17:10:41', '2019-01-18 17:21:03'),
(9406, 25, 'Bota de borracha 07 léguas T: 39', 'PR', 1, NULL, 1, '2019-01-18 17:10:59', '2019-01-18 17:10:59'),
(9407, 25, 'Bota de borracha 07 léguas T: 41', 'PR', 1, NULL, 1, '2019-01-18 17:11:18', '2019-01-18 17:11:18'),
(9408, 25, 'Bota de borracha 07 léguas T: 42', 'PR', 1, NULL, 1, '2019-01-18 17:16:57', '2019-01-18 17:16:57'),
(9409, 25, 'Bota de borracha 07 léguas T: 43', 'PR', 1, NULL, 1, '2019-01-18 17:18:42', '2019-01-18 17:18:42'),
(9410, 25, 'Bota de borracha 07 léguas T: 35', 'PR', 1, NULL, 1, '2019-01-18 17:19:12', '2019-01-18 17:19:12'),
(9411, 25, 'Bota de borracha 07 léguas T: 38', 'PR', 1, NULL, 1, '2019-01-18 17:20:56', '2019-01-18 17:20:56'),
(9412, 25, 'Bota de borracha 07 léguas T: 37', 'PR', 1, NULL, 1, '2019-01-18 17:21:48', '2019-01-18 17:21:48'),
(9413, 20, 'Coletor perfuro-cortante 20Lts', 'UN', 1, NULL, 1, '2019-01-18 17:24:13', '2019-01-18 17:26:07'),
(9414, 20, 'Coletor perfuro-cortante 07Lts', 'UN', 1, NULL, 1, '2019-01-18 17:25:50', '2019-01-18 17:25:50'),
(9415, 21, 'Desengraxante universal 5L', 'GL', 1, NULL, 1, '2019-01-18 17:28:22', '2019-01-18 17:28:22'),
(9416, 21, 'Detergente para metal e pedra', 'GL', 1, NULL, 1, '2019-01-18 17:29:55', '2019-01-18 17:29:55'),
(934942, 1, '100 Bota Feminino Lacey Rain Blac 35 36', 'PEC', 0, NULL, 1, '2019-02-12 10:34:46', '2019-02-12 10:34:46'),
(13369178, 1, 'Smartphone Samsung Galaxy J6 - Preto', 'PC', 0, NULL, 1, '2019-02-12 10:18:20', '2019-02-12 10:18:20'),
(93049042, 25, 'Bota Feminino Lacey Rain Blac 35 36', 'PR', 2, NULL, 1, '2019-01-29 22:11:14', '2019-02-05 16:08:32'),
(132246214, 21, 'Fibra em disco 440 mm verde', 'UN', 0, NULL, 1, '2019-02-05 14:23:35', '2019-02-05 14:23:35'),
(132246215, 21, 'Fibra em disco 440 mm verde', 'UN', 0, NULL, 1, '2019-02-05 14:26:37', '2019-02-05 14:26:37'),
(132246216, 21, 'Fibra em disco 440 mm preta', 'UN', 0, NULL, 1, '2019-02-05 14:27:31', '2019-02-05 14:27:31'),
(132246217, 21, 'Suporte p/ Hig Rolão', 'UN', 0, NULL, 1, '2019-02-05 14:34:42', '2019-02-05 14:34:42'),
(132246218, 21, 'Suporte para sabão liquido', 'UN', 0, NULL, 1, '2019-02-05 14:35:45', '2019-02-05 14:35:45'),
(132246219, 21, 'Escovão de Plastico', 'UN', 0, NULL, 1, '2019-02-05 14:36:44', '2019-02-05 14:36:44'),
(132246220, 21, 'Esponja dupla face', 'UN', 0, NULL, 1, '2019-02-05 14:50:03', '2019-02-05 14:50:03'),
(132246221, 21, 'Fibra  limp uso leve branca', 'UN', 0, NULL, 1, '2019-02-05 14:59:44', '2019-02-05 14:59:44'),
(132246222, 21, 'Fibra para limpeza uso em geral verde', 'UN', 0, NULL, 1, '2019-02-05 15:01:10', '2019-02-05 15:01:10'),
(132246223, 21, 'Limpa obras e porcelanato 20L', 'GL', 0, NULL, 1, '2019-02-05 15:02:25', '2019-02-05 15:02:25'),
(132246224, 21, 'Limpa vidros 500 ml', 'UN', 0, NULL, 1, '2019-02-05 15:03:29', '2019-02-05 15:03:29'),
(132246225, 21, 'Limpador industrial 500 ml', 'UN', 0, NULL, 1, '2019-02-05 15:06:29', '2019-02-05 15:06:29'),
(132246226, 21, 'Lixeira c/ pedal 240 L azul', 'UN', 0, NULL, 1, '2019-02-05 15:07:57', '2019-02-05 15:07:57'),
(132246227, 21, 'Lixeira c/ com pedal 25 L branca', 'UN', 0, NULL, 1, '2019-02-05 15:12:26', '2019-02-05 15:12:26'),
(132246228, 21, 'Lixeira com pedal 240 L verde', 'UN', 0, NULL, 1, '2019-02-05 15:13:24', '2019-02-05 15:13:24'),
(132246229, 21, 'Lixeira com pedal 240 L cinza', 'UN', 0, NULL, 1, '2019-02-05 15:39:35', '2019-02-05 15:39:35'),
(132246230, 21, 'Lixeira inox c/ pedal 20 L', 'UN', 0, NULL, 1, '2019-02-05 15:40:35', '2019-02-05 15:40:35'),
(132246231, 21, 'Luva amarela nitrílica látex', 'PR', 0, NULL, 1, '2019-02-05 15:42:10', '2019-02-05 15:46:45'),
(132246232, 21, 'Luva bicolor az/ ama. c/ azul', 'PR', 0, NULL, 1, '2019-02-05 15:43:53', '2019-02-05 15:48:24'),
(132246233, 21, 'Luva laranja', 'PR', 0, NULL, 1, '2019-02-05 15:49:05', '2019-02-05 15:49:05'),
(132246234, 21, 'Luva verde', 'PR', 0, NULL, 1, '2019-02-05 15:50:41', '2019-02-05 15:50:41'),
(132246235, 21, 'Mascara mask pff2', 'UN', 0, NULL, 1, '2019-02-05 15:51:24', '2019-02-05 15:51:24'),
(132246236, 21, 'Óculos de segurança', 'UN', 0, NULL, 1, '2019-02-05 15:52:47', '2019-02-05 15:52:47'),
(132246237, 21, 'Óleo de conservação para aço inox', 'UN', 0, NULL, 1, '2019-02-05 15:54:01', '2019-02-05 15:54:01'),
(132246238, 21, 'Opiticare antisseptico espuma 1450 ml', 'UN', 0, NULL, 1, '2019-02-05 15:56:02', '2019-02-05 15:56:02'),
(132246239, 21, 'Pano de chão', 'UN', 0, NULL, 1, '2019-02-05 15:56:40', '2019-02-05 15:56:40'),
(132246240, 18, 'Papel filme 80 metros', 'RO', 0, NULL, 1, '2019-02-05 15:57:24', '2019-02-05 16:01:56'),
(132246241, 36, 'Papel Hig Roll', 'UN', 0, NULL, 1, '2019-02-05 16:00:21', '2019-02-05 17:05:20'),
(132246242, 36, 'Papel Higienico', 'UN', 0, NULL, 1, '2019-02-05 16:08:12', '2019-02-05 17:04:40'),
(132246243, 36, 'Papel toalha interfoliado', 'UN', 0, NULL, 1, '2019-02-05 16:12:41', '2019-02-05 17:05:49'),
(132246244, 21, 'Suporte de Papel toalha interfoliado', 'UN', 0, NULL, 1, '2019-02-05 16:16:50', '2019-02-05 16:16:50'),
(132246245, 21, 'Perfex rolo azul / laranja 30x50 c/ 600m', 'UN', 0, NULL, 1, '2019-02-05 16:24:57', '2019-02-05 16:24:57'),
(132246246, 21, 'Refil  (Cabeleira) polister  amarela', 'UN', 0, NULL, 1, '2019-02-05 16:29:15', '2019-02-05 16:29:15'),
(132246247, 21, 'Refil  (Cabeleira) polister  vermelho', 'UN', 0, NULL, 1, '2019-02-05 16:29:47', '2019-02-05 16:29:47'),
(132246248, 21, 'Removedor de cimento 20 L', 'GL', 0, NULL, 1, '2019-02-05 16:30:28', '2019-02-05 16:30:28'),
(132246249, 21, 'Restaurador para aço inox', 'UN', 0, NULL, 1, '2019-02-05 16:33:04', '2019-02-05 16:33:04'),
(132246250, 21, 'Rodo de plastico 40 cm', 'UN', 0, NULL, 1, '2019-02-05 16:33:35', '2019-02-05 16:33:35'),
(132246251, 21, 'Sabonete liquido 5L', 'GL', 0, NULL, 1, '2019-02-05 16:34:14', '2019-02-05 16:34:14'),
(132246252, 21, 'Saco branco de lixo hospitalar 30 LT', 'UN', 0, NULL, 1, '2019-02-05 16:35:32', '2019-02-05 16:35:32'),
(132246253, 21, 'Saco branco de lixo hospitalar 100 LT', 'UN', 0, NULL, 1, '2019-02-05 16:36:14', '2019-02-05 16:36:14'),
(132246254, 21, 'Saco de lixo vermelho 60 LT', 'UN', 0, NULL, 1, '2019-02-05 16:37:24', '2019-02-05 16:37:24'),
(132246255, 21, 'Saco preto de 100 LT 75X90', 'UN', 0, NULL, 1, '2019-02-05 16:41:20', '2019-02-05 16:41:20'),
(132246256, 21, 'Saco preto de 200  LT 85X100', 'UN', 0, NULL, 1, '2019-02-05 16:43:01', '2019-02-05 16:43:01'),
(132246257, 21, 'Saco preto  de 30 LT 25x10', 'UN', 0, NULL, 1, '2019-02-05 16:44:40', '2019-02-05 16:44:40'),
(132246258, 21, 'Suporte p/ LT', 'UN', 0, NULL, 1, '2019-02-05 16:54:16', '2019-02-05 16:54:16'),
(132246259, 21, 'Vassoura de pelo c/ cabo plastico', 'UN', 0, NULL, 1, '2019-02-05 16:59:06', '2019-02-05 16:59:06'),
(132246260, 21, 'Vassoura p/ vaso de plastico c/ suporte', 'UN', 0, NULL, 1, '2019-02-05 17:00:04', '2019-02-05 17:00:04'),
(132246261, 21, 'Vassoura piaçava', 'UN', 0, NULL, 1, '2019-02-05 17:00:33', '2019-02-05 17:00:33'),
(132246262, 21, 'Spray aço inox 400 ML', 'UN', 0, NULL, 1, '2019-02-05 17:01:52', '2019-02-05 17:01:52'),
(132246263, 36, 'Tampa para vaso (completo)', 'UN', 0, NULL, 1, '2019-02-05 17:09:44', '2019-02-05 17:09:44'),
(812076007, 21, 'Limpa contato 300 ML', 'UN', 0, NULL, 1, '2019-02-05 20:38:42', '2019-02-05 20:38:42'),
(812076008, 21, 'Removedor de ferrugem 5L', 'GL', 0, NULL, 1, '2019-02-05 20:42:15', '2019-02-05 20:42:15'),
(812076009, 21, 'Rost off wurth', 'UN', 0, NULL, 1, '2019-02-05 20:43:35', '2019-02-05 20:43:35'),
(812076010, 25, 'Lacre em nylon 16 cm', 'UN', 0, NULL, 1, '2019-02-05 20:54:55', '2019-02-05 20:54:55'),
(812076011, 19, 'Serviço de farmácia  hospitalar', 'BL', 0, NULL, 1, '2019-02-05 20:58:49', '2019-02-05 20:58:49'),
(812076012, 19, 'Adesivo cme desinfecção', 'UN', 0, NULL, 1, '2019-02-05 21:00:01', '2019-02-05 21:00:01'),
(812076013, 19, 'Adesivo acompanhante', 'UN', 0, NULL, 1, '2019-02-05 21:00:42', '2019-02-05 21:00:42'),
(812076014, 19, 'Anaminese', 'BL', 0, NULL, 1, '2019-02-05 21:02:10', '2019-02-05 21:02:10'),
(812076015, 19, 'Anti-microbiano', 'BL', 0, NULL, 0, '2019-02-05 21:02:54', '2019-02-05 21:23:17'),
(812076016, 19, 'Atestado de saúde ocupacional  cm', 'BL', 0, NULL, 1, '2019-02-05 21:04:44', '2019-02-05 21:04:44'),
(812076017, 19, 'Avaliação de lesão de pele', 'BL', 0, NULL, 1, '2019-02-05 21:05:53', '2019-02-05 21:05:53'),
(812076018, 19, 'Avaliação de lesão de pele  dermatite e estomago', 'BL', 0, NULL, 1, '2019-02-05 21:07:09', '2019-02-05 21:07:09'),
(812076019, 19, 'Aviso de Óbito', 'BL', 0, NULL, 1, '2019-02-05 21:07:47', '2019-02-05 21:07:47'),
(812076020, 19, 'Aviso de aparecer', 'BL', 0, NULL, 1, '2019-02-05 21:08:11', '2019-02-05 21:08:11'),
(812076021, 19, 'Aviso de transferência', 'BL', 0, NULL, 1, '2019-02-05 21:08:39', '2019-02-05 21:08:39'),
(812076022, 19, 'Balanço hidrico uti', 'BL', 0, NULL, 1, '2019-02-05 21:09:47', '2019-02-05 21:09:47'),
(812076023, 19, 'Boletim anestesia cm', 'BL', 0, NULL, 1, '2019-02-05 21:11:30', '2019-02-05 21:11:30'),
(812076024, 19, 'Capa de prontuario', 'UN', 0, NULL, 1, '2019-02-05 21:24:05', '2019-02-05 21:24:05'),
(812076025, 19, 'Cartão de dieta', 'UN', 0, NULL, 1, '2019-02-05 21:25:39', '2019-02-05 21:25:39'),
(812076026, 19, 'Cartão enteral cm', 'UN', 0, NULL, 1, '2019-02-05 21:26:25', '2019-02-05 21:26:25'),
(812076027, 19, 'Check list cm', 'BL', 0, NULL, 1, '2019-02-05 21:27:55', '2019-02-05 21:28:18'),
(812076028, 19, 'CME desinfecção-adesivo', 'BL', 0, NULL, 1, '2019-02-05 21:29:53', '2019-02-05 21:29:53'),
(812076029, 19, 'Comprovante de refeição p/ acompanhante  cm', 'BL', 0, NULL, 1, '2019-02-05 21:31:39', '2019-02-05 21:31:39'),
(812076030, 19, 'Controle diário de limpeza dos postos', 'BL', 0, NULL, 1, '2019-02-05 21:33:27', '2019-02-05 21:33:27'),
(812076031, 19, 'Controle de esterilização', 'BL', 0, NULL, 1, '2019-02-05 21:35:46', '2019-02-05 21:35:46'),
(812076032, 19, 'Devolução manual', 'BL', 0, NULL, 1, '2019-02-05 21:36:26', '2019-02-05 21:36:26'),
(812076033, 19, 'Esclarecimento de consentimento cirúrgico', 'BL', 0, NULL, 1, '2019-02-05 21:39:25', '2019-02-05 21:39:25'),
(812076034, 19, 'Etiqueta adesiva clorexidina aquosa', 'BL', 0, NULL, 1, '2019-02-05 21:44:08', '2019-02-05 21:44:08'),
(812076035, 19, 'Etiqueta  adesiva clorexidina degermante', 'UN', 0, NULL, 1, '2019-02-05 21:48:33', '2019-02-05 21:48:47'),
(812076036, 19, 'Etiqueta central de material e esterilização', 'UN', 0, NULL, 1, '2019-02-05 21:53:12', '2019-02-05 21:53:12'),
(812076037, 19, 'Etiqueta de identificação de bolsa', 'UN', 0, NULL, 1, '2019-02-05 21:55:23', '2019-02-05 21:55:23'),
(812076038, 19, 'Evolução de enfermagem', 'BL', 0, NULL, 1, '2019-02-05 22:31:07', '2019-02-05 22:31:07'),
(812076039, 19, 'Ficha de avaliação pré-anestésico', 'BL', 0, NULL, 1, '2019-02-05 22:32:26', '2019-02-05 22:32:26'),
(812076040, 19, 'Ficha de lesão de pele', 'BL', 0, NULL, 1, '2019-02-05 22:32:58', '2019-02-05 22:32:58'),
(812076041, 19, 'Ficha de ocorrência individual', 'BL', 0, NULL, 1, '2019-02-05 22:33:51', '2019-02-05 22:33:51'),
(812076042, 19, 'Ficha de refeição de acompanhante', 'BL', 0, NULL, 1, '2019-02-05 22:34:43', '2019-02-05 22:34:43'),
(812076043, 19, 'Gastro de sala', 'BL', 0, NULL, 1, '2019-02-05 22:35:54', '2019-02-05 22:35:54'),
(812076044, 19, 'Mapa de dieta', 'BL', 0, NULL, 1, '2019-02-05 22:36:55', '2019-02-05 22:36:55'),
(812076045, 19, 'Prescrição medica', 'BL', 0, NULL, 1, '2019-02-05 22:38:44', '2019-02-05 22:38:44'),
(812076046, 19, 'Prevenção de lesões de pele e tratam de feridas', 'BL', 0, NULL, 1, '2019-02-05 22:40:47', '2019-02-05 22:40:47'),
(812076047, 19, 'Protocolo de correspondência', 'BL', 0, NULL, 1, '2019-02-05 22:42:13', '2019-02-05 22:42:13'),
(812076048, 19, 'Receituário do centro medico', 'BL', 0, NULL, 1, '2019-02-05 22:47:14', '2019-02-05 22:47:14'),
(812076049, 19, 'Relatório de enfermagem dos postos', 'BL', 0, NULL, 1, '2019-02-06 14:00:49', '2019-02-06 14:00:49'),
(812076050, 19, 'Requisição de medicamento postos cm', 'BL', 0, NULL, 1, '2019-02-06 14:01:58', '2019-02-06 14:01:58'),
(812076051, 19, 'Requisição de aparecer', 'BL', 0, NULL, 1, '2019-02-06 14:02:25', '2019-02-06 14:02:25'),
(812076052, 19, 'Rótulo de enteral', 'BL', 0, NULL, 1, '2019-02-06 14:03:11', '2019-02-06 14:03:11'),
(812076053, 19, 'Rótulo de soro cm', 'BL', 0, NULL, 1, '2019-02-06 14:04:42', '2019-02-06 14:04:42'),
(812076054, 19, 'Solicitação de sangue  / hemocomponente', 'BL', 0, NULL, 1, '2019-02-06 14:09:38', '2019-02-06 14:09:38'),
(812076055, 19, 'Solicitação de serviços de manutenção cm', 'BL', 0, NULL, 1, '2019-02-06 14:10:31', '2019-02-06 14:10:31'),
(812076056, 19, 'Termo de esclarecimento e consentimento cirúrgico', 'BL', 0, NULL, 1, '2019-02-06 14:11:33', '2019-02-06 14:11:33'),
(812076057, 19, 'Triagem e classificação de risco', 'BL', 0, NULL, 1, '2019-02-06 14:12:39', '2019-02-06 14:12:39'),
(812076058, 19, 'Papel timbrado', 'BL', 0, NULL, 1, '2019-02-06 14:36:08', '2019-02-06 14:36:08'),
(812076059, 19, 'Manguito completo adulto instramed', 'UN', 0, NULL, 0, '2019-02-06 14:40:36', '2019-02-06 14:51:50'),
(812076060, 19, 'Oximetro de pulto dixtal', 'UN', 0, NULL, 0, '2019-02-06 14:41:24', '2019-02-06 14:51:57'),
(812076061, 37, 'Cadeira secretaria giratória sem braço', 'UN', 0, NULL, 1, '2019-02-06 14:57:46', '2019-02-06 14:57:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblprotocolo`
--

DROP TABLE IF EXISTS `tblprotocolo`;
CREATE TABLE IF NOT EXISTS `tblprotocolo` (
  `intprotocoloid` int(11) NOT NULL AUTO_INCREMENT,
  `intpedidoepiid` int(11) NOT NULL,
  `intfuncionarioid` int(11) NOT NULL,
  `intusuarioid` int(11) NOT NULL,
  `datprotocolo` datetime NOT NULL,
  `strobservacao` varchar(255) DEFAULT NULL,
  `strstatus` varchar(40) NOT NULL DEFAULT 'Protocolo Aceito',
  PRIMARY KEY (`intprotocoloid`),
  KEY `fk_func_protocolo_idx` (`intfuncionarioid`),
  KEY `fk_usuario_protocolo_idx` (`intusuarioid`),
  KEY `fk_pedidoepi_protocolo_idx` (`intpedidoepiid`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblprotocolo`
--

INSERT INTO `tblprotocolo` (`intprotocoloid`, `intpedidoepiid`, `intfuncionarioid`, `intusuarioid`, `datprotocolo`, `strobservacao`, `strstatus`) VALUES
(201, 35, 3, 7, '2019-01-14 07:36:19', NULL, 'Protocolo Parcialmente Aceito'),
(202, 36, 3, 7, '2019-01-14 07:41:37', NULL, 'Protocolo Parcialmente Aceito'),
(203, 37, 3, 7, '2019-01-14 07:58:59', NULL, 'Protocolo Aceito'),
(204, 37, 3, 7, '2019-01-14 07:58:59', NULL, 'Protocolo Aceito'),
(205, 38, 3, 5, '2019-01-14 08:03:39', NULL, 'Protocolo Aceito'),
(206, 39, 3, 5, '2019-01-14 08:46:05', NULL, 'Protocolo Parcialmente Aceito'),
(207, 40, 3, 7, '2019-01-14 14:55:38', NULL, 'Protocolo Aceito'),
(208, 43, 3, 7, '2019-01-15 15:05:24', NULL, 'Protocolo Aceito'),
(209, 41, 3, 5, '2019-01-16 08:23:39', NULL, 'Protocolo Recusado'),
(210, 42, 3, 5, '2019-01-16 08:38:22', NULL, 'Protocolo Aceito'),
(211, 44, 3, 5, '2019-01-16 08:38:35', NULL, 'Protocolo Aceito'),
(218, 45, 3, 5, '2019-01-16 10:31:34', NULL, 'Protocolo Parcialmente Aceito'),
(219, 45, 3, 5, '2019-01-16 10:33:36', NULL, 'Protocolo Parcialmente Aceito'),
(220, 46, 3, 5, '2019-01-16 10:35:03', NULL, 'Protocolo Parcialmente Aceito'),
(221, 47, 3, 5, '2019-01-16 10:37:45', NULL, 'Protocolo Parcialmente Aceito'),
(223, 48, 3, 5, '2019-01-16 10:38:32', NULL, 'Protocolo Parcialmente Aceito'),
(226, 50, 3, 5, '2019-01-16 10:57:20', NULL, 'Protocolo Parcialmente Aceito'),
(229, 49, 3, 5, '2019-01-16 10:59:33', NULL, 'Protocolo Parcialmente Aceito'),
(236, 51, 3, 5, '2019-01-16 11:27:40', NULL, 'Protocolo Parcialmente Aceito'),
(237, 52, 3, 5, '2019-01-16 11:31:19', NULL, 'Protocolo Parcialmente Aceito'),
(240, 53, 3, 5, '2019-01-16 11:35:33', NULL, 'Protocolo Parcialmente Aceito'),
(241, 54, 3, 5, '2019-01-16 11:36:34', NULL, 'Protocolo Parcialmente Aceito'),
(243, 55, 3, 5, '2019-01-16 11:38:52', NULL, 'Protocolo Parcialmente Aceito'),
(244, 56, 3, 5, '2019-01-16 11:41:00', NULL, 'Protocolo Parcialmente Aceito'),
(245, 57, 3, 5, '2019-01-16 11:42:38', NULL, 'Protocolo Parcialmente Aceito'),
(246, 58, 3, 5, '2019-01-16 11:43:48', NULL, 'Protocolo Parcialmente Aceito'),
(256, 59, 3, 5, '2019-01-16 11:51:18', NULL, 'Protocolo Parcialmente Aceito'),
(269, 60, 3, 5, '2019-01-16 14:32:25', NULL, 'Protocolo Parcialmente Aceito'),
(270, 63, 3, 7, '2019-01-21 15:45:51', NULL, 'Protocolo Aceito'),
(271, 64, 3, 5, '2019-01-21 16:27:49', NULL, 'Protocolo Parcialmente Aceito'),
(272, 66, 3, 5, '2019-02-04 10:25:30', NULL, 'Protocolo Aceito'),
(273, 62, 3, 5, '2019-02-04 10:30:37', NULL, 'Protocolo Aceito'),
(274, 65, 3, 5, '2019-02-04 10:33:44', NULL, 'Protocolo Recusado'),
(275, 68, 3, 5, '2019-02-04 10:35:52', NULL, 'Protocolo Recusado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblservico`
--

DROP TABLE IF EXISTS `tblservico`;
CREATE TABLE IF NOT EXISTS `tblservico` (
  `intservicoid` int(11) NOT NULL AUTO_INCREMENT,
  `intcontatoid` int(11) NOT NULL,
  `datservico` date NOT NULL,
  `intcodigo` varchar(45) DEFAULT NULL,
  `strservico` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intservicoid`),
  KEY `fk_contato_servico_idx` (`intcontatoid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblsetor`
--

DROP TABLE IF EXISTS `tblsetor`;
CREATE TABLE IF NOT EXISTS `tblsetor` (
  `intsetorid` int(11) NOT NULL AUTO_INCREMENT,
  `strsetor` varchar(45) NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intsetorid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblsetor`
--

INSERT INTO `tblsetor` (`intsetorid`, `strsetor`, `bolstatus`, `created_at`, `updated_at`) VALUES
(1, 'teste', 1, '2019-01-17 19:42:49', '2019-01-17 19:42:49'),
(2, 's', 0, '2019-02-04 16:40:33', '2019-02-04 16:43:46'),
(3, '_', 0, '2019-02-04 16:43:52', '2019-02-04 16:46:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `intacessoid` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bolstatus` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`usuario`),
  KEY `fk_user_acesso` (`intacessoid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `intacessoid`, `name`, `usuario`, `password`, `bolstatus`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 1, 'Geanne Aguiar', 'gmaynara', '$2y$10$fH0kYX3T.rqo5bb8F2nLrOk7IZNEood8t/tor1v4/5Cw2qCF1Ymz6', 1, 'EWeoiIHlaAL7qMcZLHrK7jfazEG5nC0w3Ysqr2Ztr9nTNgJffjGsdNgK9cIg', NULL, '2019-02-04 10:38:56'),
(6, 5, 'Usuário Teste', 'teste.123', '$2y$10$nCFO8LX.W/PcD.OgUS8ubOpndqciyYuwZhSXBVyaX7y0dEc2hMTia', 0, '', '2018-11-22 12:29:04', '2018-12-07 16:31:50'),
(7, 6, 'Téc. Segurança', 'tec_seguranca', '$2y$10$naM9E.Vo2uNEv2Pi.qMo0eIn5zdk1SeTsTB8QQs8IiLOd60GZWf.2', 1, '', '2018-11-26 19:41:01', '2019-01-22 11:59:30'),
(8, 4, 'Maria', 'maria', '$2y$10$Pp6AtmE6TUCmXluYTwt0hOO1Y57gVdQmuGq4J/xFPKSfsR2kF22zW', 1, '', '2018-11-27 17:48:07', '2018-11-27 14:48:07'),
(9, 4, 'Genisa', 'genisa', '$2y$10$b3hvDvpjmkJybagQkxs5OeCRmCV5ACftgrNNQ2wHA4IE.ZKLcji9m', 1, '', '2018-12-18 11:39:04', '2018-12-18 08:39:04'),
(11, 2, 'Solicitante de Pedidos', 'pedidos', '$2y$10$61V3UGDQnESzTRpKK1gGVeg9FZq0r8/bhJ9pCWuaEkP8u2GWiCoq.', 1, '', '2019-01-14 13:20:33', '2019-01-22 11:58:40'),
(12, 3, 'Coord. Serviços Gerais', 'coord_servgerais', '$2y$10$WimGyi1D0rn1qGjuG7raueztAxwBsKYt06heluPmTXtbOzuSzL0l2', 1, '', '2019-01-14 13:35:34', '2019-01-22 11:59:01'),
(13, 4, 'Coord. Almox', 'coord_almox', '$2y$10$cFTMf6QtGHkrh8TlUN93quKW6uWDh3lkbMpzqu1MWmBUgyebKbtMK', 1, 'AFsQkpN6iEJNoOTtByGMc5l8aUT2UiAB31QzCRy7wvV6e4AYVtCukinXcgGk', '2019-01-14 20:32:52', '2019-01-22 11:58:18'),
(14, 7, 'Atendente Almoxarifado', 'atend_almox', '$2y$10$.Z9ppbe1hegzeVjXIF0la.xUCCt5BZxVK/5RGMieAlm26bXV4qeDy', 1, '', '2019-01-14 22:53:09', '2019-01-14 16:53:09'),
(15, 1, 'Usuário Administrador', 'adm', '$2y$10$1C0SN.S2gc1cjqP3ne5Ez.aDInlRKOtz8KRIkol/HJbI65QoXj5jq', 1, 'Ke5vGqv1m3CGJ7EjDoWFvM5gqWGBT8iAwopHgYlYkPlvbalol794AeRhbgXY', '2019-01-22 17:58:03', '2019-01-22 11:58:03'),
(16, 4, 'teste', '12', '$2y$10$o35PSFhrKKX6kTIPR.b4DeHBzIzNcNeN2h1yzi8A1IpXmGAispp3y', 0, NULL, '2019-02-04 16:33:06', '2019-02-04 10:33:11');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tblatividade`
--
ALTER TABLE `tblatividade`
  ADD CONSTRAINT `fk_ativ_usuario` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblcontato`
--
ALTER TABLE `tblcontato`
  ADD CONSTRAINT `fk_forn_contato` FOREIGN KEY (`intfornecedorid`) REFERENCES `tblfornecedor` (`intfornecedorid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblcontrole`
--
ALTER TABLE `tblcontrole`
  ADD CONSTRAINT `fk_func_controle` FOREIGN KEY (`intfuncionarioid`) REFERENCES `tblfuncionario` (`intfuncionarioid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posto_controle` FOREIGN KEY (`intpostoid`) REFERENCES `tblposto` (`intpostoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_controle` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldetalhesatividade`
--
ALTER TABLE `tbldetalhesatividade`
  ADD CONSTRAINT `fk_det_atv` FOREIGN KEY (`intatividadeid`) REFERENCES `tblatividade` (`intatividadeid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detatv_func` FOREIGN KEY (`intfuncionarioid`) REFERENCES `tblfuncionario` (`intfuncionarioid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldetalhesentrada`
--
ALTER TABLE `tbldetalhesentrada`
  ADD CONSTRAINT `fk_entrada_det` FOREIGN KEY (`intnotaentradaid`) REFERENCES `tblnotaentrada` (`intnotaentradaid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_det` FOREIGN KEY (`intprodutoid`) REFERENCES `tblproduto` (`intprodutoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldetalhesnotaxml`
--
ALTER TABLE `tbldetalhesnotaxml`
  ADD CONSTRAINT `fk_intxmlid_notaxml` FOREIGN KEY (`intnotaxmlid`) REFERENCES `tblnotaxml` (`intnotaxmlid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldetalhespedido`
--
ALTER TABLE `tbldetalhespedido`
  ADD CONSTRAINT `fk_pedido_detalhes` FOREIGN KEY (`intpedidoid`) REFERENCES `tblpedido` (`intpedidoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_produto` FOREIGN KEY (`intprodutoid`) REFERENCES `tblproduto` (`intprodutoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldetalhespedidoepi`
--
ALTER TABLE `tbldetalhespedidoepi`
  ADD CONSTRAINT `fk_det_ped_epi` FOREIGN KEY (`intpedidoepiid`) REFERENCES `tblpedidoepi` (`intpedidoepiid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldetalhesprotocolo`
--
ALTER TABLE `tbldetalhesprotocolo`
  ADD CONSTRAINT `fk_prod_detalhes` FOREIGN KEY (`intprodutoid`) REFERENCES `tblproduto` (`intprodutoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_protocolo_detalhes` FOREIGN KEY (`intprotocoloid`) REFERENCES `tblprotocolo` (`intprotocoloid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tbldevolucao`
--
ALTER TABLE `tbldevolucao`
  ADD CONSTRAINT `fk_usuario_dev` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblfuncionario`
--
ALTER TABLE `tblfuncionario`
  ADD CONSTRAINT `fk_func_cargo` FOREIGN KEY (`intcargoid`) REFERENCES `tblcargo` (`intcargoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblnotaentrada`
--
ALTER TABLE `tblnotaentrada`
  ADD CONSTRAINT `fk_entrada_forn` FOREIGN KEY (`intfornecedorid`) REFERENCES `tblfornecedor` (`intfornecedorid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_entrada_user` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblordemservico`
--
ALTER TABLE `tblordemservico`
  ADD CONSTRAINT `fk_ordemserv_contato` FOREIGN KEY (`intcontatoid`) REFERENCES `tblcontato` (`intcontatoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordemserv_forn` FOREIGN KEY (`intfornecedorid`) REFERENCES `tblfornecedor` (`intfornecedorid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordemserv_setor` FOREIGN KEY (`intsetorid`) REFERENCES `tblsetor` (`intsetorid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ordemserv_usuario` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblpedido`
--
ALTER TABLE `tblpedido`
  ADD CONSTRAINT `fk_pedido_atendente` FOREIGN KEY (`intusuario_atendente`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_posto` FOREIGN KEY (`intpostoid`) REFERENCES `tblposto` (`intpostoid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_usuario` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblpedidoepi`
--
ALTER TABLE `tblpedidoepi`
  ADD CONSTRAINT `fk_ped_epi_func` FOREIGN KEY (`intfuncionarioid`) REFERENCES `tblfuncionario` (`intfuncionarioid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ped_usuario` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedidoepi_usuario` FOREIGN KEY (`intusuario_atendente`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblproduto`
--
ALTER TABLE `tblproduto`
  ADD CONSTRAINT `fk_prod_cat` FOREIGN KEY (`intcategoriaid`) REFERENCES `tblcategoria` (`intcategoriaid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblprotocolo`
--
ALTER TABLE `tblprotocolo`
  ADD CONSTRAINT `fk_func_protocolo` FOREIGN KEY (`intfuncionarioid`) REFERENCES `tblfuncionario` (`intfuncionarioid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedidoepi_protocolo` FOREIGN KEY (`intpedidoepiid`) REFERENCES `tblpedidoepi` (`intpedidoepiid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_protocolo` FOREIGN KEY (`intusuarioid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `tblservico`
--
ALTER TABLE `tblservico`
  ADD CONSTRAINT `fk_contato_servico` FOREIGN KEY (`intcontatoid`) REFERENCES `tblcontato` (`intcontatoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_acesso` FOREIGN KEY (`intacessoid`) REFERENCES `tblacesso` (`intacessoid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
