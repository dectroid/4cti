-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Gru 2021, 12:17
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `face`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faces`
--

CREATE TABLE `faces` (
  `id` int(11) NOT NULL,
  `face_expression` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `source` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `faces`
--

INSERT INTO `faces` (`id`, `face_expression`, `source`) VALUES
(1, 'happy', 'happy.jpg'),
(2, 'sad', 'sad.jpg'),
(3, 'angry', 'angry.jpg'),
(4, 'frustrated', 'frustrated.jpg'),
(5, 'shocked', 'shocked.jpg'),
(6, 'sober', 'sober.jpg'),
(7, 'depressed', 'depressed.jpg'),
(8, 'excited', 'excited.jpg'),
(9, 'glad', 'glad.jpg'),
(10, 'joyous', 'joyous.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `faces`
--
ALTER TABLE `faces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `faces`
--
ALTER TABLE `faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
