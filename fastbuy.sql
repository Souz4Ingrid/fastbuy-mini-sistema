-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/12/2025 às 01:15
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fastbuy`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `preco`, `data_cadastro`) VALUES
(9, 'Rise Of The Tomb Raider', '', 29.90, '2025-12-01 23:56:42'),
(10, 'Far Cry 6', '', 129.90, '2025-12-01 23:56:51'),
(11, 'Minecraft', '', 42.90, '2025-12-01 23:57:01'),
(12, 'God Of War', '', 169.99, '2025-12-01 23:57:10'),
(13, 'God Of War Ragnarok', '', 265.00, '2025-12-01 23:57:25'),
(14, 'Mortal Kombat X', '', 49.90, '2025-12-01 23:57:35'),
(15, 'Spider Man 2', '', 245.00, '2025-12-01 23:57:49'),
(16, 'Spider Man - Miles Morales', '', 319.00, '2025-12-01 23:58:03'),
(17, 'The Last Of Us', '', 149.90, '2025-12-01 23:58:15'),
(18, 'The Last Of Us 2', '', 309.90, '2025-12-01 23:58:25'),
(19, 'Alan Wake', '', 21.90, '2025-12-01 23:58:42'),
(20, 'Assassins Creed Valhalla', '', 200.00, '2025-12-01 23:58:53'),
(21, 'Battlefield 5', '', 159.00, '2025-12-01 23:59:02'),
(22, 'Call Of Duty Black Ops 2', '', 12.90, '2025-12-01 23:59:09'),
(23, 'Boorderlands 4', '', 132.90, '2025-12-01 23:59:27'),
(24, 'Cyberpunk 2077', '', 299.90, '2025-12-01 23:59:39'),
(25, 'Dead By Daylight', '', 65.90, '2025-12-01 23:59:49'),
(26, 'Hogwarts Legacy', '', 129.90, '2025-12-02 00:00:00'),
(27, 'Fallout 3', '', 75.90, '2025-12-02 00:00:08'),
(28, 'Cuphead', '', 19.90, '2025-12-02 00:00:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `criado_em`) VALUES
(13, 'Ingrid', 'Ingrid@gmail.com', '$2y$10$Xd4e0sjLwXESj0lJmBjGxussmBTnEzsyw58ni1jX0eBbQdnrGRHea', '2025-12-02 00:02:21'),
(14, 'Emmanuel', 'Emmanuel@gmail.com', '$2y$10$VrnibkVSOSCngqn8Smnw5eUG1I4E1BOYjIx/aYPRk0kMAmBVsxxdy', '2025-12-02 00:02:33'),
(15, 'Rhodrigo', 'Rhodrigo@gmail.com', '$2y$10$On9YpSTJp3x5vmR8YZ6ibO3QvBp5r/j04SmFSSsvAEE/RTgD8cDvu', '2025-12-02 00:02:49');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
