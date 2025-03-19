-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 01:06 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warsztat`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_napraw`
--

CREATE TABLE `historia_napraw` (
  `ID` int(11) NOT NULL,
  `mechanik` text NOT NULL,
  `klient` text NOT NULL,
  `data` date NOT NULL,
  `cena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `ID` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`ID`, `imie`, `nazwisko`) VALUES
(1, 'Adam', 'Mickiewicz'),
(2, 'Andrzej', 'Kmicic'),
(3, 'Jan', 'Kazimierz'),
(4, 'Janusz', 'Radziwiłł');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mechanicy`
--

CREATE TABLE `mechanicy` (
  `ID` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `rodzaj_uslug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `mechanicy`
--

INSERT INTO `mechanicy` (`ID`, `imie`, `nazwisko`, `rodzaj_uslug`) VALUES
(1, 'Jan', 'Sobieski', 'Naprawa układów hamulcowych.\r\nNaprawa zawieszenia i układu kierowniczego.\r\nSerwis układu wydechowego.\r\nWymiana i wyważanie opon.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `ID` int(11) NOT NULL,
  `nazwa_uslugi` text NOT NULL,
  `rodzaj_uslugi` text NOT NULL,
  `opis_uslugi` text NOT NULL,
  `cena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uslugi`
--

INSERT INTO `uslugi` (`ID`, `nazwa_uslugi`, `rodzaj_uslugi`, `opis_uslugi`, `cena`) VALUES
(1, 'Wymiana opon', 'Wulkanizacja', 'Wymiana opon z letnich na zimowe lub na odwrót. Opony dostarcza klient.', 149.99),
(2, 'Wymiana klocków hamulcowych', 'Naprawa układu hamulcowego', 'Wymiana klocków hamulcowych – przednich lub tylnych, poprawa skuteczności hamowania.', 199.99);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `historia_napraw`
--
ALTER TABLE `historia_napraw`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `mechanicy`
--
ALTER TABLE `mechanicy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historia_napraw`
--
ALTER TABLE `historia_napraw`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mechanicy`
--
ALTER TABLE `mechanicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
