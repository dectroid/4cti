-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Gru 2021, 13:20
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
-- Zrzut danych tabeli `packages`
--

INSERT INTO `packages` (`userID`, `name`, `lastName`, `packageNumber`, `packagePlace`, `whatIsInPackage`) VALUES
(1, 'Olga', 'Brzoza', 1000, 'Warszawa ul. Sienkiewicza 7', 'Rower'),
(2, 'Marian', 'Wczesny', 1001, 'Warszawa ul. Długa 2', 'Myjnia Ciśnieniowa '),
(3, 'Michał', 'Kozak', 1002, 'Mileszewy', 'Nóż Kuchenny'),
(4, 'Karim', 'Benzema', 1003, 'Warszawa ul. Madrycka 9', 'Piłka'),
(5, 'Józef', 'Zupa', 1004, 'Zupowo ul. Rosołowa', 'Kostki rosołowe'),
(6, 'Tadeusz', 'Śmiały', 1005, 'Chełmża ul. Ciasna 2', 'Perfumy CR7'),
(7, 'Zosia', 'Kwarc', 1006, 'Brodnica ul. Karbowska 4/5', 'Diamentowy kilof'),
(8, 'Mariola', 'Kos', 1007, 'Brodnica ul. Ceglana 34', 'Długopis'),
(9, 'Ryszard', 'Ciemny', 1008, 'Kalisz ul. Wyszyńskiego 31', 'Ubrania'),
(10, 'Dawid', 'Rempuszewski', 1009, 'Strzygi 7', 'Zegarek Patek Philippe Grandmaster Chime Ref. 6300A'),
(11, 'Mariusz', 'Klawiatura', 1010, 'Toruń ul. Długa 23', 'Okulary'),
(12, 'Mariusz', 'Pudzianowski', 1011, 'Warszawa ul. Silna 12', 'Sterydy'),
(13, 'Agnieszka', 'Łapczyńska', 1012, 'Rypin ul. Antkowa 15', 'Monitor'),
(14, 'Kamil', 'Kuczbański', 1013, 'Świedziebnia 17', 'mikrofon'),
(15, 'Jacek', 'Placek', 1014, 'Nipy 68', 'Telewizor'),
(16, 'Andrzej', 'Planski', 1015, 'Warszawa ul. Nowy Świat 15', 'Korki'),
(17, 'Sebastian', 'Górski', 1016, 'Brodnica ul. Karbowska 42', 'Zestaw Drwala'),
(18, 'Klaudia', 'Górecka', 1017, 'Brodnica ul. Chopina 10', 'Torebka Dior');

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
  MODIFY `userID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
