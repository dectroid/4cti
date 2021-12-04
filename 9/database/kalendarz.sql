-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Gru 2021, 14:31
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
-- Baza danych: `kalendarz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzien`
--

CREATE TABLE `dzien` (
  `Id` int(255) NOT NULL,
  `Id_User` int(255) NOT NULL,
  `Id_Trening` int(255) NOT NULL,
  `Sniadanie` int(10) NOT NULL,
  `Lunch` int(10) NOT NULL,
  `Obiad` int(10) NOT NULL,
  `Deser` int(10) NOT NULL,
  `Kolacja` int(10) NOT NULL,
  `Data` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dzien`
--

INSERT INTO `dzien` (`Id`, `Id_User`, `Id_Trening`, `Sniadanie`, `Lunch`, `Obiad`, `Deser`, `Kolacja`, `Data`) VALUES
(1, 5, 6, 37, 19, 49, 66, 51, 4),
(2, 5, 7, 37, 19, 49, 66, 51, 28),
(3, 4, 12, 26, 1, 52, 66, 9, 28),
(4, 6, 6, 26, 1, 5, 66, 41, 6),
(6, 7, 7, 38, 51, 12, 67, 42, 5),
(7, 7, 10, 38, 51, 12, 67, 42, 13);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posilek`
--

CREATE TABLE `posilek` (
  `Id` int(255) NOT NULL,
  `Nazwa` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Menu` int(10) NOT NULL,
  `Kcal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `posilek`
--

INSERT INTO `posilek` (`Id`, `Nazwa`, `Menu`, `Kcal`) VALUES
(1, 'Hamburger', 2, 253),
(2, 'Cheeseburger', 2, 302),
(3, 'Big Mac', 2, 526),
(4, 'McRoyal', 2, 521),
(5, 'WieśMac', 2, 581),
(6, 'McChicken', 2, 427),
(7, 'Jalapeño Burger', 2, 297),
(8, 'Chikker', 2, 425),
(9, 'Red Chikker', 2, 339),
(10, 'McDouble', 2, 393),
(11, 'Podwójny McRoyal', 2, 761),
(12, 'Podwójny McRoyal Pikantny', 2, 826),
(13, 'Podwójny WieśMac', 2, 934),
(14, 'McWrap Klasyczny Chrupiący Kurczak', 2, 569),
(15, 'McWrap Bekon DeLuxe Chrupiący Kurczak', 2, 701),
(16, 'Sałatka', 2, 39),
(17, 'Sałatka Kurczak Premium', 2, 323),
(18, 'Kurczak McNuggets (4 szt.)', 2, 179),
(19, 'Kurczak McNuggets (6 szt.)', 2, 268),
(20, 'Kurczak McNuggets (9 szt.)', 2, 402),
(21, 'Kurczak McNuggets (20 szt.)', 2, 893),
(22, 'McTost Pieczarki i Ser', 1, 291),
(23, 'McTost Bekon i Ser', 1, 294),
(24, 'McTost Ser', 1, 244),
(25, 'McMuffin Jajko', 1, 276),
(26, 'McMuffin Jajko i Bekon', 1, 317),
(27, 'McMuffin Wieprzowy z Jajkiem', 1, 416),
(28, 'McMuffin Farmerski', 1, 382),
(29, 'McMuffin Twarożek i Rzodkiewka', 1, 281),
(30, 'Kajzerka Kurczak Premium', 1, 438),
(31, 'Kajzerka Kurczak Premium Wieloziarnista', 1, 456),
(32, 'Podwójna Kajzerka Wieprzowa DeLuxe', 1, 646),
(33, 'Podwójna Kajzerka Wieprzowa DeLuxe Wieloziarnista', 1, 664),
(34, 'Kajzerka Jajko i Pieczarki', 1, 437),
(35, 'Kajzerka Jajko i Pieczarki Wieloziarnista', 1, 455),
(36, 'Śniadaniowy McWrap Jajecznica i Bekon', 1, 377),
(37, 'Śniadaniowy McWrap Jajecznica i Pieczarki', 1, 374),
(38, 'Śniadaniowy McWrap Jajecznica i Wieprzowina', 1, 481),
(39, 'Placek ziemniaczany', 1, 141),
(40, 'Frytki małe', 2, 231),
(41, 'Frytki średnie', 2, 330),
(42, 'Frytki duże', 2, 434),
(43, 'Burger Drwala', 2, 894),
(44, 'Burger Drwala na Ostro', 2, 887),
(45, 'Podwójny Burger Drwala', 2, 1130),
(46, 'Burger Drwala z Kurczakiem', 2, 861),
(47, 'Burger Drwala z Żurawiną', 2, 928),
(48, 'Veggie Burger', 2, 548),
(49, 'Supreme Crispy Chicken Sweet&Spicy Burger', 2, 618),
(50, 'Supreme Crispy Chicken Sweet&Spicy McWrap', 2, 629),
(51, 'Supreme Crispy Chicken Tenders 3 szt.', 2, 360),
(52, 'Supreme Crispy Chicken Tenders 5 szt.', 2, 601),
(53, 'Supreme Crispy Chicken Tenders 6 szt.', 2, 721),
(54, 'Frytki zakręcone', 2, 286),
(55, 'Lody Twix o smaku waniliowym', 3, 347),
(56, 'Lody Twix o smaku słonego karmelu', 3, 349),
(57, 'McFlurry Twix o smaku waniliowym', 3, 454),
(58, 'McFlurry Twix o smaku słonego karmelu', 3, 456),
(59, 'McFlurry Lion Peanut Butter o smaku waniliowym', 3, 452),
(60, 'McFlurry Lion Peanut Butter o smaku słonego karmelu', 3, 454),
(61, 'McFlurry Kit Kat Peanut Butter o smaku waniliowym', 3, 475),
(62, 'McFlurry Kit Kat Peanut Butter o smaku słonego karmelu', 3, 477),
(63, 'Shake Twix', 3, 359),
(64, 'Shake o smaku czekoladowym mały', 3, 203),
(65, 'Shake o smaku czekoladowym duży', 3, 326),
(66, 'Shake o smaku waniliowym mały', 3, 196),
(67, 'Shake o smaku waniliowym duży', 3, 313),
(68, 'Shake o smaku truskawkowym mały', 3, 197),
(69, 'Shake o smaku truskawkowym duży', 3, 316),
(70, 'Ciastko jabłkowe', 3, 228);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trening`
--

CREATE TABLE `trening` (
  `Id` int(255) NOT NULL,
  `Partia_Ciala` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Poziom_Trudnosci` int(10) NOT NULL,
  `Opis` varchar(3000) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `trening`
--

INSERT INTO `trening` (`Id`, `Partia_Ciala`, `Poziom_Trudnosci`, `Opis`) VALUES
(1, 'Klatka Piersiowa i Triceps', 1, '<b>Ćwiczenia na klatkę</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka pozioma</td>\r\n                            <td>2</td>\r\n                            <td>5, 4, 4, 3</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka skos 30° w górę</td>\r\n                            <td>1</td>\r\n                            <td>4, 4, 3</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka skos 30° w dół</td>\r\n                            <td>1</td>\r\n                            <td>4, 4, 3</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Rozpiętki  hantlami – ławka pozioma</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr >\r\n                            <td>Przenoszenie hantla, leżąc w poprzek ławki poziomej</td>\r\n                            <td>1</td>\r\n                            <td>4</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na triceps</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Prostowanie ramion stojąc – wyciąg górny</td>\r\n                            <td>2</td>\r\n                            <td>5, 4, 4, 3 (zwiększając obciążenie)</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Pompki na poręczach</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Pompki w podporze tyłem na 2 ławkach poziomych</td>\r\n                            <td>1</td>\r\n                            <td>4</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(2, 'Klatka Piersiowa i Triceps', 2, '<b>Ćwiczenia na klatkę</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka pozioma</td>\r\n                            <td>2</td>\r\n                            <td>10, 8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka skos 30° w górę</td>\r\n                            <td>1</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka skos 30° w dół</td>\r\n                            <td>1</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Rozpiętki  hantlami – ławka pozioma</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr >\r\n                            <td>Przenoszenie hantla, leżąc w poprzek ławki poziomej</td>\r\n                            <td>1</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na triceps</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Prostowanie ramion stojąc – wyciąg górny</td>\r\n                            <td>2</td>\r\n                            <td>10, 8, 8, 6 (zwiększając obciążenie)</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Pompki na poręczach</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Pompki w podporze tyłem na 2 ławkach poziomych</td>\r\n                            <td>1</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(3, 'Plecy i Biceps', 3, '<b>Ćwiczenia na plecy</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Podciąganie na drążku podchwytem</td>\r\n                            <td>2</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie hantla jednorącz w opadzie (wiosłowanie)</td>\r\n                            <td>3</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Przyciąganie linki wyciągu dolnego (wąski uchwyt), siedząc</td>\r\n                            <td>2</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie sztangi w opadzie (wiosłowanie)</td>\r\n                            <td>2</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr >\r\n                            <td>Ściąganie drążka do klatki siedząc (wyciąg górny, szeroki uchwyt)</td>\r\n                            <td>3</td>\r\n                            <td>10, 8, 8</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na biceps</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Uginanie ramion ze sztangą prostą stojąc</td>\r\n                            <td>3</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramion ze sztangą łamaną (modlitewnik)</td>\r\n                            <td>3</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramion z hantlami siedząc (ławka 30° – 45°)</td>\r\n                            <td>2</td>\r\n                            <td>12 - 14</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramienia z hantlem siedząc – w podporze o kolano</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(4, 'Plecy i Biceps', 2, '<b>Ćwiczenia na plecy</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Podciąganie na drążku podchwytem</td>\r\n                            <td>1</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie hantla jednorącz w opadzie (wiosłowanie)</td>\r\n                            <td>1</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Przyciąganie linki wyciągu dolnego (wąski uchwyt), siedząc</td>\r\n                            <td>1</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie sztangi w opadzie (wiosłowanie)</td>\r\n                            <td>1</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                        <tr >\r\n                            <td>Ściąganie drążka do klatki siedząc (wyciąg górny, szeroki uchwyt)</td>\r\n                            <td>1</td>\r\n                            <td>10, 8, 8</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na biceps</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Uginanie ramion ze sztangą prostą stojąc</td>\r\n                            <td>1</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramion ze sztangą łamaną (modlitewnik)</td>\r\n                            <td>1</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramion z hantlami siedząc (ławka 30° – 45°)</td>\r\n                            <td>1</td>\r\n                            <td>12 - 14</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramienia z hantlem siedząc – w podporze o kolano</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(5, 'Plecy i Biceps', 1, '<b>Ćwiczenia na plecy</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Podciąganie na drążku podchwytem</td>\r\n                            <td>1</td>\r\n                            <td>4</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie hantla jednorącz w opadzie (wiosłowanie)</td>\r\n                            <td>1</td>\r\n                            <td>4</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Przyciąganie linki wyciągu dolnego (wąski uchwyt), siedząc</td>\r\n                            <td>1</td>\r\n                            <td>4</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie sztangi w opadzie (wiosłowanie)</td>\r\n                            <td>1</td>\r\n                            <td>4</td>\r\n                        </tr>\r\n                        <tr >\r\n                            <td>Ściąganie drążka do klatki siedząc (wyciąg górny, szeroki uchwyt)</td>\r\n                            <td>1</td>\r\n                            <td>5, 4, 4</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na biceps</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Uginanie ramion ze sztangą prostą stojąc</td>\r\n                            <td>1</td>\r\n                            <td>4, 4, 3</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramion ze sztangą łamaną (modlitewnik)</td>\r\n                            <td>1</td>\r\n                            <td>4, 4, 3</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramion z hantlami siedząc (ławka 30° – 45°)</td>\r\n                            <td>1</td>\r\n                            <td>6 - 7</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie ramienia z hantlem siedząc – w podporze o kolano</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(6, 'Klatka Piersiowa i Triceps', 3, '<b>Ćwiczenia na klatkę</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka pozioma</td>\r\n                            <td>4</td>\r\n                            <td>10, 8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka skos 30° w górę</td>\r\n                            <td>3</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi – ławka skos 30° w dół</td>\r\n                            <td>3</td>\r\n                            <td>8, 8, 6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Rozpiętki  hantlami – ławka pozioma</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr >\r\n                            <td>Przenoszenie hantla, leżąc w poprzek ławki poziomej</td>\r\n                            <td>2</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na triceps</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Prostowanie ramion stojąc – wyciąg górny</td>\r\n                            <td>4</td>\r\n                            <td>10, 8, 8, 6 (zwiększając obciążenie)</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Pompki na poręczach</td>\r\n                            <td>3</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Pompki w podporze tyłem na 2 ławkach poziomych</td>\r\n                            <td>3</td>\r\n                            <td>8</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(7, 'Barki i Przedramiona', 3, '<b>Ćwiczenia na barki</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi sprzed głowy siedząc (Suwnica Smitha)</td>\r\n                            <td>3</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Unoszenie hantli w opadzie tułowia, siedząc</td>\r\n                            <td>3</td>\r\n                            <td>8 - 10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi sprzed głowy stojąc</td>\r\n                            <td>4</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Unoszenie hantli bokiem w górę</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wznosy barków (Szrugsy) ze sztangielkami</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie sztangi wzdłuż tułowia</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na przedramiona</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Uginanie nadgarstków ze sztangą z tyłu, stojąc</td>\r\n                            <td>4</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie nadgarstków podchwytem, siedząc</td>\r\n                            <td>4</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(8, 'Barki i Przedramiona', 2, '<b>Ćwiczenia na barki</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi sprzed głowy siedząc (Suwnica Smitha)</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Unoszenie hantli w opadzie tułowia, siedząc</td>\r\n                            <td>1</td>\r\n                            <td>8 - 10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi sprzed głowy stojąc</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Unoszenie hantli bokiem w górę</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wznosy barków (Szrugsy) ze sztangielkami</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie sztangi wzdłuż tułowia</td>\r\n                            <td>1</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na przedramiona</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Uginanie nadgarstków ze sztangą z tyłu, stojąc</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie nadgarstków podchwytem, siedząc</td>\r\n                            <td>2</td>\r\n                            <td>10</td>\r\n                        </tr>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(9, 'Barki i Przedramiona', 1, '<b>Ćwiczenia na barki</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi sprzed głowy siedząc (Suwnica Smitha)</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Unoszenie hantli w opadzie tułowia, siedząc</td>\r\n                            <td>1</td>\r\n                            <td>4 - 5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wyciskanie sztangi sprzed głowy stojąc</td>\r\n                            <td>2</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Unoszenie hantli bokiem w górę</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wznosy barków (Szrugsy) ze sztangielkami</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Podciąganie sztangi wzdłuż tułowia</td>\r\n                            <td>1</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na przedramiona</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Uginanie nadgarstków ze sztangą z tyłu, stojąc</td>\r\n                            <td>2</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie nadgarstków podchwytem, siedząc</td>\r\n                            <td>2</td>\r\n                            <td>5</td>\r\n                        </tr>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(10, 'Uda i Łydki', 3, '<b>Ćwiczenia na nogi – uda</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Przysiady ze sztangą na barkach</td>\r\n                            <td>5</td>\r\n                            <td>10, 8, 8, 6, 4</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Prostowanie nóg na maszynie siedząc</td>\r\n                            <td>3</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie nóg na maszynie leżąc na brzuchu</td>\r\n                            <td>3</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na łydki</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wspięcia na palcach stojąc (maszyna Smitha)</td>\r\n                            <td>4</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wspięcia na palcach siedząc (na maszynie)</td>\r\n                            <td>2</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(11, 'Uda i Łydki', 2, '<b>Ćwiczenia na nogi – uda</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Przysiady ze sztangą na barkach</td>\r\n                            <td>2</td>\r\n                            <td>10, 8, 8, 6, 4</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Prostowanie nóg na maszynie siedząc</td>\r\n                            <td>1</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie nóg na maszynie leżąc na brzuchu</td>\r\n                            <td>1</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na łydki</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wspięcia na palcach stojąc (maszyna Smitha)</td>\r\n                            <td>2</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wspięcia na palcach siedząc (na maszynie)</td>\r\n                            <td>1</td>\r\n                            <td>12</td>\r\n                        </tr>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>'),
(12, 'Uda i Łydki', 1, '<b>Ćwiczenia na nogi – uda</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Przysiady ze sztangą na barkach</td>\r\n                            <td>2</td>\r\n                            <td>5, 4, 4, 3, 2</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Prostowanie nóg na maszynie siedząc</td>\r\n                            <td>1</td>\r\n                            <td>6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Uginanie nóg na maszynie leżąc na brzuchu</td>\r\n                            <td>1</td>\r\n                            <td>6</td>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>\r\n                <br><b>Ćwiczenia na łydki</b>\r\n                <table>\r\n                    <thead>\r\n                        <tr>\r\n                            <th class=\"exercises\">Ćwiczenie</th> <th class=\"series\">Serie</th> <th class=\"repeat\">Powtórzenia</th>\r\n                        </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                        <tr>\r\n                            <td>Wspięcia na palcach stojąc (maszyna Smitha)</td>\r\n                            <td>2</td>\r\n                            <td>6</td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td>Wspięcia na palcach siedząc (na maszynie)</td>\r\n                            <td>1</td>\r\n                            <td>6</td>\r\n                        </tr>\r\n                        </tr>\r\n                    </tbody>\r\n                </table>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `Id` int(255) NOT NULL,
  `Nick` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `Wiek` int(10) NOT NULL,
  `Wzrost` int(10) NOT NULL,
  `Waga` int(10) NOT NULL,
  `Zapotrzebowanie_Kcal` int(10) NOT NULL,
  `Plec` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`Id`, `Nick`, `Wiek`, `Wzrost`, `Waga`, `Zapotrzebowanie_Kcal`, `Plec`) VALUES
(4, 'Kott', 20, 160, 70, 1706, 1),
(5, 'Dawid', 19, 171, 69, 1754, 1),
(6, 'Pimpek', 18, 177, 60, 1665, 1),
(7, 'Rock', 49, 196, 118, 2355, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dzien`
--
ALTER TABLE `dzien`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `posilek`
--
ALTER TABLE `posilek`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `trening`
--
ALTER TABLE `trening`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dzien`
--
ALTER TABLE `dzien`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `posilek`
--
ALTER TABLE `posilek`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT dla tabeli `trening`
--
ALTER TABLE `trening`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
