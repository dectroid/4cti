-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Gru 2021, 15:23
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zaliczenie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `graf`
--

CREATE TABLE `graf` (
  `ilosc_wierzcholkow` int(255) NOT NULL,
  `zdjecie` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `graf`
--

INSERT INTO `graf` (`ilosc_wierzcholkow`, `zdjecie`) VALUES
(1, 'pierwszy.jpg'),
(2, 'drugi.jpg'),
(3, 'trzeci.jpg'),
(4, 'czwarty.jpg'),
(5, 'piaty.jpg'),
(6, 'szusty.jpg'),
(7, 'siodmy.jpg'),
(8, 'osmy.jpg'),
(9, 'dziewiaty.jpg'),
(10, 'dzieciaty.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `graf`
--
ALTER TABLE `graf`
  ADD PRIMARY KEY (`ilosc_wierzcholkow`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
