-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2025 at 02:23 PM
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
-- Database: `turbofix.php`
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
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historia_napraw`
--

INSERT INTO `historia_napraw` (`ID`, `id_mechanika`, `id_klienta`, `id_uslugi`, `data`) VALUES
(16, 1, 3, 5, '2024-03-01'),
(17, 2, 1, 3, '2024-03-02'),
(18, 3, 4, 8, '2024-03-03'),
(19, 4, 2, 6, '2024-03-04'),
(20, 5, 5, 2, '2024-03-05'),
(21, 1, 2, 7, '2024-03-06'),
(22, 2, 3, 4, '2024-03-07'),
(23, 3, 1, 9, '2024-03-08'),
(24, 4, 5, 10, '2024-03-09'),
(25, 5, 4, 1, '2024-03-10'),
(26, 1, 5, 6, '2024-03-11'),
(27, 2, 4, 3, '2024-03-12'),
(28, 3, 2, 8, '2024-03-13'),
(29, 4, 1, 5, '2024-03-14'),
(30, 5, 3, 7, '2024-03-15'),
(31, 6, 3, 5, '2024-03-01'),
(32, 7, 1, 3, '2024-03-02'),
(33, 3, 7, 8, '2024-03-03'),
(34, 5, 6, 7, '2024-03-15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `login` varchar(15) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`, `login`, `password`) VALUES
(1, 'Jan', 'Kowalski', 'janek123', 'c663a35bab3a243337478bb0fb588202'),
(2, 'Anna', 'Nowak', 'anna_n', '26ee7c7c4da667d198cb86d2b33ca70f'),
(3, 'Piotr', 'Wiśniewski', 'piotrekW', '89a4e0a31d5673f95d9e69ba70af19a0'),
(4, 'Katarzyna', 'Dąbrowska', 'kasiaD', '4e9252d36fce6850469b75bf194d8fbe'),
(5, 'Marek', 'Jankowski', 'marekJ', '452591781d0b35125ae574527f6e19db'),
(6, 'Magdalena', 'Zielińska', 'magdaZ', '946c37108e8595cb7b838f09a104fa89'),
(7, 'Tomasz', 'Lewandowski', 'tomekL', 'd6919e55b693f66d6123fc7b56e75af5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mechanicy`
--

CREATE TABLE `mechanicy` (
  `id_mechanika` int(11) NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL,
  `login` varchar(15) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `mechanicy`
--

INSERT INTO `mechanicy` (`id_mechanika`, `imie`, `nazwisko`, `login`, `password`) VALUES
(1, 'Andrzej', 'Kowalski', 'andrzejK', 'c987afaa6917088a48ab8223f1d36186'),
(2, 'Piotr', 'Nowak', 'piotrN', 'fa2082ba7299c350805e55501b21c978'),
(3, 'Krzysztof', 'Wiśniewski', 'krzysztofW', '9a5643133b01ccaea7ab1f754fe6e50a'),
(4, 'Tomasz', 'Dąbrowski', 'tomaszD', '9e49ca6baed65079fc4400844e35aec2'),
(5, 'Marek', 'Jankowski', 'marekJ', '309bc5666c213384c73c7aa8bb8a9984'),
(6, 'Magdalena', 'Zielińska', 'magdaZ', '1fbdb9a79a10f2e1dbd1cc14ecb6bcc5'),
(7, 'Łukasz', 'Lewandowski', 'lukaszL', '06720efa1133b958268205c2d20eff60');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `terminy`
--

CREATE TABLE `terminy` (
  `ID` int(11) NOT NULL,
  `data` varchar(12) DEFAULT NULL,
  `czas` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terminy`
--

INSERT INTO `terminy` (`ID`, `data`, `czas`) VALUES
(1, '2025-04-03', '10:30:00'),
(2, '2025-04-04', '14:00:00'),
(3, '2025-04-05', '09:15:00'),
(4, '2025-04-06', '16:45:00'),
(5, '2025-04-07', '11:20:00'),
(6, '2025-04-08', '13:55:00'),
(7, '2025-04-09', '08:10:00'),
(8, '2025-04-10', '17:30:00'),
(9, '2025-04-11', '12:40:00'),
(10, '2025-04-12', '15:25:00');

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
-- Indeksy dla tabeli `terminy`
--
ALTER TABLE `terminy`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mechanicy`
--
ALTER TABLE `mechanicy`
  MODIFY `id_mechanika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `terminy`
--
ALTER TABLE `terminy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `historia_napraw_ibfk_1` FOREIGN KEY (`id_mechanika`) REFERENCES `mechanicy` (`id_mechanika`) ON DELETE CASCADE,
  ADD CONSTRAINT `historia_napraw_ibfk_2` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE CASCADE,
  ADD CONSTRAINT `historia_napraw_ibfk_3` FOREIGN KEY (`id_uslugi`) REFERENCES `uslugi` (`id_uslugi`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
