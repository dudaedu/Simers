-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 10-Out-2016 às 09:57
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `simers`
--
CREATE DATABASE IF NOT EXISTS `simers` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `simers`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cw_user`
--

CREATE TABLE IF NOT EXISTS `cw_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `cw_user`
--

INSERT INTO `cw_user` (`id`, `nome`, `sobrenome`, `usuario`, `senha`, `email`, `status`) VALUES
(1, 'Joao', 'Matias', 'joao.matias', 'asdf', 'joao.matias@inmemori', b'1'),
(2, 'Maria', 'da Graca', 'maria.graca', 'fdsa', 'maria.graca@inmemori', b'1'),
(3, 'Pedro', 'de Lara', 'pedro.lara', '1234asdf', 'pedro.lara@inmemoria', b'0'),
(4, 'Fulano', 'de Tal', 'fulano.tal', 'onaluf', 'fulano.tal@detal.com', b'1'),
(5, 'Marcelo', 'Moura', 'marcelo.moura', 'plokiqaws', 'marcelo.moura@teste.', b'1'),
(6, 'Joao', 'Maria', 'joao.maria', 'qawsed', 'joao.maria@terra.com', b'0'),
(7, 'Luciano', 'Bobsin', 'luciano.bobsin', 'frvdgr', 'luciano.bobsin@site.', b'1'),
(8, 'Pug', 'Nassal', 'pug', 's123w4', 'pug.nassal@terra.com', b'0'),
(9, 'Vonnan', 'Niato', 'vonnan', 's125w4', 'vonnan@mail.com.br', b'1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
