-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 16 okt 2020 om 12:52
-- Serverversie: 5.5.14
-- PHP-versie: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u533314_api`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(256) CHARACTER SET utf8 NOT NULL,
  `beschrijving` text CHARACTER SET utf8 NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `naam` varchar(32) NOT NULL,
  `beschrijving` text NOT NULL,
  `prijs` decimal(10,0) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `toegevoegd_op` datetime NOT NULL,
  `gewijzigd_op` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `naam`, `beschrijving`, `prijs`, `categorie_id`, `toegevoegd_op`, `gewijzigd_op`) VALUES
(8, 'Daphne', 'Test', '1000', 1, '0000-00-00 00:00:00', '2020-10-16 12:42:50'),
(10, 'Tomaat', 'Rood', '5', 3, '0000-00-00 00:00:00', '2020-10-16 12:44:50'),
(11, 'Snoep', 'Zoet', '3', 4, '0000-00-00 00:00:00', '2020-10-16 12:49:06'),
(12, 'Drop', 'Zout', '2', 4, '0000-00-00 00:00:00', '2020-10-16 12:49:21');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
