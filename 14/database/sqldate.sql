-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Gru 2021, 16:27
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sensors`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sensors`
--

CREATE TABLE `sensors` (
  `SensorName` text NOT NULL,
  `SensorLocation` text NOT NULL,
  `SensorUnite` text NOT NULL,
  `SensorData` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sensors`
--

INSERT INTO `sensors` (`SensorName`, `SensorLocation`, `SensorUnite`, `SensorData`) VALUES
('Temperature', 'Kitchen', 'Celcius', '36'),
('Temperature', 'Kitchen', 'Celcius', '36'),
('Temperature', 'LivingRoom', 'Celcius', '26'),
('Temperature', 'Basement', 'Celcius', '20'),
('Temperature', 'BedRoom', 'Celcius', '12'),
('MotionSensor', 'Kitchen', 'Move', 'true'),
('MotionSensor', 'Garden', 'Move', 'false'),
('Presure', 'Home', 'Bars', '20'),
('Temperature', 'Basement', 'Celcius', '12'),
('MotionSensor', 'Basement', 'Move', 'true'),
('SecurityCamera', 'Garden', 'Work', 'true'),
('SecurityCamera', 'Garage', 'Work', 'false');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
