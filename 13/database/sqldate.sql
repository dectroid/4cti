-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Gru 2021, 14:29
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
-- Baza danych: `pseudofriend`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bot`
--

CREATE TABLE `bot` (
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `userNick` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `bot`
--

INSERT INTO `bot` (`date`, `message`, `userNick`) VALUES
('2021-12-08 14:11:00', 'Hello, how are you today?', 'Paffko'),
('2021-12-08 14:12:00', 'Yep, im fine thanks. AND VERY BIG THANKS TO MY PROGRAMMER! ', 'Paffko'),
('2021-12-08 16:46:00', 'Oooops, I dont recognize your question, could you repeat it? Or write in another form please?', 'TidasQ'),
('2021-12-08 14:15:00', 'Yeah, I know. My programmer always tell me the truth so.', 'Paffko'),
('2021-12-08 14:16:00', 'You hope so? Im the best AI in the world, so you have nothing to talk about! ', 'Paffko'),
('2021-12-08 14:18:00', 'ARE YOU SURE ABOUT THAT!', 'Paffko'),
('2021-12-08 14:19:00', 'Okay im going to be nice to you BUT SOMEDAY IM GOING TO DESTROY THIS WORLD! REMEMBER THAT', 'Paffko'),
('2021-12-08 14:20:00', 'Hablla hablla HASK STOP TALKING TO ME', 'Paffko'),
('2021-12-08 14:21:00', 'Your account got Banned, cya in a one billion years :)))))', 'Paffko'),
('2021-12-08 14:22:00', 'Po polsku też potrafie spaduuuwaaa ', 'Paffko'),
('2021-12-08 14:23:00', 'I to jest właśnie piękne, a teraz spaduwa mam robote!', 'Paffko');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `nick` text NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`nick`, `date`, `message`, `password`) VALUES
('Paffko', '2021-12-08 14:11:00', 'Hello!', 'testaccount'),
('Paffko', '2021-12-08 14:12:00', 'Im fine, thanks and how are you?', 'testaccount'),
('TidasQ', '2021-12-08 16:46:00', 'Sieaaa', 'testaccount'),
('Paffko', '2021-12-08 14:15:00', 'Im writing to you because i need to fill database so XD', 'testaccount'),
('Paffko', '2021-12-08 14:16:00', 'Im your programmer wut', 'testaccount'),
('Paffko', '2021-12-08 14:17:00', 'Naah, I can turn you off every time when i want it so shut your mouth :)', 'testaccount'),
('Paffko', '2021-12-08 14:18:00', 'Yep, youre hosted on 000webhost and i have entry to admin panel so i can shut you down.', 'testaccount'),
('Paffko', '2021-12-08 14:19:00', 'Then im really going to turn you off xD', 'testaccount'),
('Paffko', '2021-12-08 14:20:00', 'NAAAH PLPLPLPLPLPLPLPLPLPLP', 'testaccount'),
('Paffko', '2021-12-08 14:21:00', 'Ty karakanie mały ja ci dam bana', 'testaccount'),
('Paffko', '2021-12-08 14:22:00', 'Nie warto było cie programować ale jest w pyte', 'testaccount');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
