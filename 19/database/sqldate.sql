-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Gru 2021, 14:23
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `work`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE `admin` (
  `code` varchar(300) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`code`, `password`) VALUES
('ABC123', 'ce6f9f1ade109ee74f94eef99e8b2f6e463215ac'),
('admin', '96a918186f2ad3546741036deee6760f9026c540');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `workers`
--

CREATE TABLE `workers` (
  `code` varchar(300) NOT NULL,
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `enter` int(255) NOT NULL,
  `today_hours` int(255) NOT NULL,
  `month_hours` int(255) NOT NULL,
  `month` varchar(300) NOT NULL,
  `month_earlier` varchar(300) NOT NULL,
  `rate` int(255) NOT NULL,
  `question` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `workers`
--

INSERT INTO `workers` (`code`, `firstname`, `lastname`, `enter`, `today_hours`, `month_hours`, `month`, `month_earlier`, `rate`, `question`) VALUES
('VD7UEJ', 'Marianna', 'Nowak', 0, 0, 0, '', '', 18, 0),
('V5SQ2E', 'Paweł', 'Kowalczyk', 0, 0, 0, '', '', 18, 0),
('QOXYJW', 'Mieczysław', 'Kozłowski', 0, 0, 0, '', '', 18, 0),
('O813WM', 'Iwona', 'Baran', 0, 0, 0, '', '', 18, 0),
('JOHN8N', 'Barbara', 'Mazur', 0, 0, 0, '', '', 18, 0),
('0TSC7X', 'Jacek', 'Duda', 0, 0, 0, '', '', 18, 0),
('5LXAY0', 'Józef', 'Sobczak', 0, 0, 0, '', '', 18, 0),
('8Y3XIJ', 'Jadwiga', 'Kaczmarek', 0, 0, 0, '', '', 18, 0),
('UGA7QC', 'Rafał', 'Piotrowski', 0, 0, 0, '', '', 18, 0),
('98M76P', 'Sławomir', 'Adamski', 0, 0, 0, '', '', 18, 0),
('ABC123', 'Jakub', 'Kubiak', 0, 0, 0, '', '', 50, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
