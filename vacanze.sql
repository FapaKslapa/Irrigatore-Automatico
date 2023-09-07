-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 07, 2023 alle 18:55
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vacanze`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `linkutili`
--

CREATE TABLE `linkutili` (
  `descrizione` longtext NOT NULL,
  `link` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `rilevazionimeteo`
--

CREATE TABLE `rilevazionimeteo` (
  `DATA_ORA` longtext NOT NULL,
  `TEMPERATURA` longtext NOT NULL,
  `UMIDITA` longtext NOT NULL,
  `PIOVE` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dump dei dati per la tabella `rilevazionimeteo`
--

INSERT INTO `rilevazionimeteo` (`DATA_ORA`, `TEMPERATURA`, `UMIDITA`, `PIOVE`) VALUES
('2023-08-29 22:29:20', '24.00', '19.00', '0'),
('2023-08-29 22:29:52', '26.00', '29.00', '0'),
('2023-08-29 22:30:26', '26.00', '29.00', '0'),
('2023-08-30 09:43:19', '28.00', '30.00', '0'),
('2023-08-30 09:51:15', '24.00', '18.00', '0'),
('2023-08-30 09:54:39', '25.00', '18.00', '0'),
('2023-08-30 10:12:41', '25.00', '16.00', '0'),
('2023-08-30 10:18:35', '24.00', '17.00', '0'),
('2023-08-30 10:24:12', '24.00', '17.00', '0'),
('2023-08-30 10:27:01', '25.00', '16.00', '0'),
('2023-08-30 11:04:36', '25.00', '15.00', '0'),
('2023-08-30 11:05:03', '28.00', '16.00', '0'),
('2023-08-30 11:05:28', '27.00', '17.00', '0'),
('2023-08-30 11:05:54', '25.00', '16.00', '0'),
('2023-08-30 11:06:20', '27.00', '16.00', '0'),
('2023-08-30 11:08:47', '25.00', '15.00', '0'),
('1', '11', '50', '9'),
('1', '11', '40', '5'),
('2023-08-30 12:07:28', '29.00', '16.00', '0'),
('2023-08-30 16:20:28', '23.00', '26.00', '0'),
('2023-08-30 16:21:29', '25.00', '16.00', '0'),
('2023-08-30 16:46:15', '33.00', '14.00', '0'),
('2023-08-30 16:51:20', '28.00', '15.00', '0'),
('2023-08-30 17:31:03', '28.00', '15.00', '0'),
('2023-08-30 18:31:02', '25.00', '15.00', '0'),
('2023-08-30 19:30:26', '25.00', '15.00', '0'),
('2023-08-30 19:31:51', '23.00', '16.00', '0'),
('2023-08-30 19:33:53', '25.00', '15.00', '0'),
('2023-08-30 19:35:20', '25.00', '15.00', '0'),
('2023-08-30 19:42:13', '24.00', '14.00', '0'),
('2023-08-30 19:53:11', '25.00', '15.00', '0'),
('2023-08-30 19:53:18', '27.00', '15.00', '0'),
('2023-08-30 20:39:04', '25.00', '15.00', '0'),
('2023-08-30 21:59:04', '26.00', '16.00', '0'),
('2023-08-30 22:22:37', '25.00', '15.00', '0'),
('2023-09-06 18:37:47', '26.00', '15.00', '0'),
('2023-09-06 18:38:58', '28.00', '14.00', '0');

-- --------------------------------------------------------

--
-- Struttura della tabella `setinnaffiatore`
--

CREATE TABLE `setinnaffiatore` (
  `orario` longtext NOT NULL,
  `gradi` longtext NOT NULL,
  `pioggia` longtext NOT NULL,
  `mlacqua` longtext NOT NULL,
  `lunedi` longtext NOT NULL,
  `martedi` longtext NOT NULL,
  `mercoledi` longtext NOT NULL,
  `giovedi` longtext NOT NULL,
  `venerdi` longtext NOT NULL,
  `sabato` longtext NOT NULL,
  `domenica` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dump dei dati per la tabella `setinnaffiatore`
--

INSERT INTO `setinnaffiatore` (`orario`, `gradi`, `pioggia`, `mlacqua`, `lunedi`, `martedi`, `mercoledi`, `giovedi`, `venerdi`, `sabato`, `domenica`) VALUES
('14:14', '25', '', '690', 'si', 'no', 'no', 'no', 'si', 'no', 'si');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `nome` longtext NOT NULL,
  `nomeUtente` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`nome`, `nomeUtente`, `password`) VALUES
('Stefano', 'maroccostefano@itis-molinari.eu', '¦`'),
('Ciro Andrea Strazzullo', 'strazzullociroandrea@itis-molinari.eu', '§¨gdgef');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
