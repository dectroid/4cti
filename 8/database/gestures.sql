-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Gru 2021, 13:19
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sql`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gestures`
--

CREATE TABLE `gestures` (
  `ID` int(255) NOT NULL,
  `gesture` varchar(300) COLLATE utf8_polish_ci NOT NULL,
  `filename` varchar(300) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gestures`
--

INSERT INTO `gestures` (`ID`, `gesture`, `filename`) VALUES
(1, 'brofist', 'brofist.png'),
(2, 'clap', 'clap.png'),
(3, 'cool', 'cool.png'),
(4, 'fyou', 'fyou.png'),
(5, 'peace', 'peace.png'),
(6, 'perfect', 'perfect.png'),
(7, 'rocks', 'rocks.png'),
(8, 'shake', 'shake.png'),
(9, 'thumbsdown', 'thumbsdown.png'),
(10, 'thumbsup', 'thumbsup.png'),
(11, 'wave', 'wave.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gestures`
--
ALTER TABLE `gestures`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `gestures`
--
ALTER TABLE `gestures`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
