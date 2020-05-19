-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Maj 2020, 15:53
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bartek saracen`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `daty`
--

CREATE TABLE `daty` (
  `Numer` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `Nazwa` varchar(70) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `daty`
--

INSERT INTO `daty` (`Numer`, `Data`, `Nazwa`) VALUES
(1, '2020-03-21', 'Komenda /execute - poradnik minecraft 1.13++'),
(2, '2019-04-01', 'Jak wgrać shadery do minecraft 1.13 | minecraftNERO'),
(3, '2018-11-13', 'Jak dodać własną ofertę Villager\'owi - minecraft 1.13 | minecraftNERO'),
(4, '2018-10-31', 'Jak przywołać głowę gracza i nie tylko: Minecraft 1.13'),
(5, '2018-08-27', 'Odcineczek o \"Armor Stand\",minecraft 1.13'),
(6, '2018-07-24', 'Structure block-co to?'),
(7, '2018-07-23', 'Minecraft 1.13: napisy na tabliczkach'),
(8, '2018-07-16', 'Itemy na tabliczkach:minecraft'),
(9, '2018-06-01', 'Klikalne tabliczki i nie tylko!!!-minecraft 1.12'),
(10, '2018-05-20', 'Minecraft komendy: /fill -jak używać!!!');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyswietlenia`
--

CREATE TABLE `wyswietlenia` (
  `Numer` int(11) NOT NULL,
  `Wyswietlenia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wyswietlenia`
--

INSERT INTO `wyswietlenia` (`Numer`, `Wyswietlenia`) VALUES
(1, 385),
(2, 450),
(3, 7483),
(4, 8102),
(5, 11132),
(6, 143),
(7, 642),
(8, 273),
(9, 839),
(10, 43236);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `daty`
--
ALTER TABLE `daty`
  ADD PRIMARY KEY (`Numer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `daty`
--
ALTER TABLE `daty`
  MODIFY `Numer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
