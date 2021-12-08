-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Gru 2021, 11:15
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `project`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokalizacja`
--

CREATE TABLE `lokalizacja` (
  `id` int(11) NOT NULL,
  `name` varchar(900) COLLATE utf8mb4_polish_ci NOT NULL,
  `surname` varchar(900) COLLATE utf8mb4_polish_ci NOT NULL,
  `country` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `city` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `lokalizacja`
--

INSERT INTO `lokalizacja` (`id`, `name`, `surname`, `country`, `city`) VALUES
(1, 'Jan', 'Kowalski', 'Polska', 'Warszawa'),
(2, 'Marek', 'Nowak', 'Polska', 'Gdańsk'),
(3, 'John', 'Brown', 'Anglia', 'Londyn'),
(4, 'Julia', 'Kwiatkowska', 'Ukraina', 'Lwów'),
(5, 'Paull', 'Machter', 'Niemcy', 'Berlin'),
(6, 'Ola', 'Nowak', 'Polska', 'Wrocław'),
(7, 'Jola', 'Ptak', 'Francja', 'Paryż'),
(8, 'Konrad', 'Musiał', 'Włochy', 'Rzym'),
(9, 'Max', 'May', 'Stany Zjednoczone', 'Majami '),
(10, 'Anna', 'Kowalska', 'Polska', 'Brodnica');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `lokalizacja`
--
ALTER TABLE `lokalizacja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `lokalizacja`
--
ALTER TABLE `lokalizacja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
