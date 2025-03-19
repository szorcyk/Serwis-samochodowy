-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 03:47 PM
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
-- Database: `turbofix`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_napraw`
--

CREATE TABLE `historia_napraw` (
  `ID` int(11) NOT NULL,
  `id_mechanika` int(11) DEFAULT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_uslugi` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `cena` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`) VALUES
(1, 'Adam', 'Mickiewicz'),
(2, 'Andrzej', 'Kmicic'),
(3, 'Jan', 'Kazimierz'),
(4, 'Janusz', 'Radziwiłł');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mechanicy`
--

CREATE TABLE `mechanicy` (
  `id_mechanika` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `rodzaj_uslug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `mechanicy`
--

INSERT INTO `mechanicy` (`id_mechanika`, `imie`, `nazwisko`, `rodzaj_uslug`) VALUES
(1, 'Jan', 'Sobieski', 'Naprawa układów hamulcowych.\r\nNaprawa zawieszenia i układu kierowniczego.\r\nSerwis układu wydechowego.\r\nWymiana i wyważanie opon.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uslugi`
--

CREATE TABLE `uslugi` (
  `id_uslugi` int(11) NOT NULL,
  `nazwa_uslugi` text NOT NULL,
  `rodzaj_uslugi` text NOT NULL,
  `opis_uslugi` text NOT NULL,
  `cena` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uslugi`
--

INSERT INTO `uslugi` (`id_uslugi`, `nazwa_uslugi`, `rodzaj_uslugi`, `opis_uslugi`, `cena`) VALUES
(1, 'Wymiana opon', 'Wulkanizacja', 'Wymiana opon z letnich na zimowe lub na odwrót. Opony dostarcza klient.', 149.99),
(2, 'Wymiana klocków hamulcowych', 'Naprawa układu hamulcowego', 'Wymiana klocków hamulcowych – przednich lub tylnych, poprawa skuteczności hamowania.', 199.99),
(3, 'Odpowietrzanie układu hamulcowego', 'Naprawa układu hamulcowego', 'Odpowietrzanie układu hamulcowego – usunięcie powietrza i wymiana płynu hamulcowego.', 149.99),
(4, 'Wymiana tarcz i klocków', ' Naprawa układu hamulcowego', 'Wymiana tarcz i klocków – kompleksowa wymiana dla bezpieczeństwa jazdy.', 549.99),
(5, 'Wymiana amortyzatorów', 'Naprawa zawieszenia i układu kierowniczego', 'Wymiana amortyzatorów – lepsza stabilność i komfort jazdy.', 599.99),
(6, 'Wymiana drążków i końcówek kierowniczych', 'Naprawa zawieszenia i układu kierowniczego', 'Wymiana drążków i końcówek kierowniczych – poprawa precyzji prowadzenia.', 199.99),
(7, 'Geometria i zbieżność kół', 'Naprawa zawieszenia i układu kierowniczego', 'Geometria i zbieżność kół – ustawienie prawidłowego kąta kół dla równej jazdy.', 249.99),
(8, 'Naprawa tłumika', 'Serwis układu wydechowego', 'Naprawa tłumika – spawanie lub wymiana tłumika środkowego i końcowego.', 249.99),
(9, 'Wymiana katalizatora', 'Serwis układu wydechowego', 'Wymiana katalizatora – poprawa emisji spalin i wydajności silnika.', 1599.99),
(10, 'Uszczelnienie układu wydechowego', 'Serwis układu wydechowego', 'Uszczelnienie układu wydechowego – wykrycie i eliminacja nieszczelności. \r\n', 199.99),
(11, 'Geometria zawieszenia', 'Wymiana i wyważanie opon', 'Geometria zawieszenia – ustawienie kątów kół dla równomiernego zużycia opon. ', 189.99),
(12, 'Wyważanie kół', 'Wymiana i wyważanie opon', 'Wyważanie kół – eliminacja drgań i nierównomiernego zużycia opon.', 99.99),
(13, 'Serwis klimatyzacji', 'Serwis klimatyzacji', 'Serwis klimatyzacji – napełnianie, odgrzybianie, diagnostyka i naprawa układu klimatyzacji.', 89.99),
(14, 'Wymiana oleju i filtrów', 'Wymiana oleju i filtrów', 'Wymiana oleju i filtrów – olej silnikowy, filtr oleju, paliwa, powietrza i kabinowy.', 119.99);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `historia_napraw`
--
ALTER TABLE `historia_napraw`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_mechanika` (`id_mechanika`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_uslugi` (`id_uslugi`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `mechanicy`
--
ALTER TABLE `mechanicy`
  ADD PRIMARY KEY (`id_mechanika`);

--
-- Indeksy dla tabeli `uslugi`
--
ALTER TABLE `uslugi`
  ADD PRIMARY KEY (`id_uslugi`);

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
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mechanicy`
--
ALTER TABLE `mechanicy`
  MODIFY `id_mechanika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id_uslugi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historia_napraw`
--
ALTER TABLE `historia_napraw`
  ADD CONSTRAINT `historia_napraw_ibfk_1` FOREIGN KEY (`id_mechanika`) REFERENCES `mechanicy` (`id_mechanika`),
  ADD CONSTRAINT `historia_napraw_ibfk_2` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `historia_napraw_ibfk_3` FOREIGN KEY (`id_uslugi`) REFERENCES `uslugi` (`id_uslugi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
