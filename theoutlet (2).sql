-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08-Mar-2019 às 15:26
-- Versão do servidor: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theoutlet`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `cod_categoria` int(4) NOT NULL,
  `tipo_produto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`cod_categoria`, `tipo_produto`) VALUES
(1, ''),
(2, ''),
(3, 'Camisa'),
(4, 'bermuda'),
(5, 'bermuda'),
(6, 'bermuda'),
(7, 'bermuda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cod_end` int(4) NOT NULL,
  `tipo_logradouro` varchar(20) NOT NULL,
  `logradouro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`cod_end`, `tipo_logradouro`, `logradouro`) VALUES
(8, 'Avenida', 'Brasil'),
(9, 'Avenida1', 'Brasil1'),
(10, 'aa', 'aa'),
(11, 'aaaaaaaaaaa', 'aaaaaaaaa'),
(12, 'aaaaaaaaa', 'aaaaaaaaa'),
(13, 'aa', 'aa'),
(14, 'asdsad', 'asdsa'),
(15, 'Avenida', 'Brasil'),
(16, 'Avenida', 'Brasil'),
(17, 'Avenida', 'Brasil'),
(18, 'Avenida', 'Brasil'),
(19, 'avenida', 'br'),
(20, 'avenidaas', 'br1as'),
(21, 'avenida', 'rua 12'),
(22, 'avenida', 'rua 12'),
(23, 'avenida', 'rua 12'),
(24, 'avenida', 'rua 12'),
(25, 'avenida', 'bairro 12'),
(26, 'avenida', 'predio 2'),
(27, 'avenida', 'predio 2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `cod_produto` int(4) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `preco_produto` int(8) NOT NULL,
  `codigo_produto` varchar(50) NOT NULL,
  `tamanho_produto` varchar(2) NOT NULL,
  `cod_categoria` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`cod_produto`, `nome_produto`, `preco_produto`, `codigo_produto`, `tamanho_produto`, `cod_categoria`) VALUES
(1, '223', 222, '0', '22', 1),
(2, 'Camisa Boss', 110, '0', 'M', 2),
(3, 'Camisa Boss1', 110, '0', 'M', 3),
(4, 'Bermuda boss', 100, '0', '12', 4),
(5, 'Bermuda boss', 100, 'G', '', 5),
(6, 'Bermuda Bossss', 10, 'GG', '12', 6),
(7, 'Bermuda bossssss', 1, '1234asd', 'g', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cod_cliente` int(4) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(30) NOT NULL,
  `cod_end` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cod_cliente`, `login`, `senha`, `nome`, `sobrenome`, `cod_end`) VALUES
(5, 'Leo', '0', 'Leonardo', 'Fabbio', 8),
(6, 'Leo1', '0', 'Leonardo1', 'Fabbio1', 9),
(7, 'aa', '0', 'asd', 'aa', 10),
(8, 'aaaaaaaaaaaaaaaaaaaa', '0', 'aaaaaaaaaa', 'aaaaaaaaa', 11),
(9, 'aaaaaaaaaaa', '0', 'aaaaa', 'aaaaaaaaa', 12),
(10, 'aa', '0', 'aaaaaaaaaaaaaaaaaa', 'aaaaa', 13),
(11, 'asdsad', '0', 'as', 'macke1', 14),
(12, 'zinler', '0', 'Leonardo', 'Castro', 15),
(13, 'zinler', '1597563', 'Leonardo', 'Castro', 16),
(14, 'zinler', '0', 'Leonardo', 'Castro', 17),
(15, 'zinler', 'asd123s', 'Leonardo', 'Castro', 18),
(16, 'flp1', 'macke123', 'felipe', 'castro', 19),
(17, 'flp1', 'asasas', 'felipe', 'castro', 20),
(18, 'matheus', '12345', 'matheus', 'gomes', 21),
(19, 'matheus', '12345', 'matheus', 'gomes', 22),
(20, 'matheus', '12345', 'matheus', 'gomes', 23),
(21, 'matheus', '12345', 'matheus', 'gomes', 24),
(22, 'tibala', '12345', 'pedro', 'henrique', 25),
(23, 'nescau', 'asasas', 'asasas', 'asas', 26),
(24, 'nescau', '12345', 'david', 'nescau', 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`cod_categoria`),
  ADD UNIQUE KEY `cod_categoria` (`cod_categoria`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cod_end`),
  ADD UNIQUE KEY `cod_end` (`cod_end`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`cod_produto`),
  ADD UNIQUE KEY `cod_produto` (`cod_produto`),
  ADD KEY `cod_categoria` (`cod_categoria`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod_cliente`),
  ADD UNIQUE KEY `cod_cliente` (`cod_cliente`),
  ADD UNIQUE KEY `cod_end` (`cod_end`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `cod_categoria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `cod_end` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `cod_produto` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod_cliente` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`cod_categoria`) REFERENCES `categoria` (`cod_categoria`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`cod_end`) REFERENCES `endereco` (`cod_end`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
