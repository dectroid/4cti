-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Gru 2021, 11:13
-- Wersja serwera: 10.4.18-MariaDB
-- Wersja PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bazydanych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `książki`
--

CREATE TABLE `książki` (
  `Id` int(255) NOT NULL,
  `Title` text NOT NULL,
  `Author` text NOT NULL,
  `Ratings` float NOT NULL,
  `Popularity` float NOT NULL,
  `Genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `książki`
--

INSERT INTO `książki` (`Id`, `Title`, `Author`, `Ratings`, `Popularity`, `Genre`) VALUES
(1, 'Ben-Hur: A Tale of the Christ', 'Lew Wallace', 4.02, 50, 'Historical fiction'),
(2, 'The Alchemist', 'Paulo Coelho', 3.89, 65, 'Fantasy'),
(3, 'The Hobbit', 'J. R. R. Tolkien', 4.28, 140.6, 'Fantasy'),
(4, 'Harry Potter and the Philosopher\'s Stone', 'J. K. Rowling', 4.47, 120, 'Fantasy'),
(5, 'The Little Prince', 'Antoine de Saint-Exupéry', 4.31, 100, 'Novella'),
(6, 'Dream of the Red Chamber', 'Cao Xueqin', 4.16, 100, 'Family saga'),
(7, 'And Then There Were None', 'Agatha Christie', 4.26, 100, 'Mystery'),
(8, 'The Lion, the Witch and the Wardrobe', 'C. S. Lewis', 4.22, 85, 'Fantasy'),
(9, 'She: A History of Adventure', 'H. Rider Haggard', 3.57, 83, 'Adventure'),
(10, 'Harry Potter and the Chamber of Secrets', 'J. K. Rowling', 4.43, 77, 'Fantasy');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `książki`
--
ALTER TABLE `książki`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `książki`
--
ALTER TABLE `książki`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
