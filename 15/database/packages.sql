-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Gru 2021, 11:42
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zaliczeniebazy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `packages`
--

CREATE TABLE `packages` (
  `userID` int(255) NOT NULL,
  `name` text COLLATE utf8mb4_polish_ci NOT NULL,
  `lastName` text COLLATE utf8mb4_polish_ci NOT NULL,
  `packageNumber` int(255) NOT NULL,
  `packagePlace` varchar(300) COLLATE utf8mb4_polish_ci NOT NULL,
  `whatIsInPackage` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `packages`
--
ALTER TABLE `packages`
  MODIFY `userID` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
