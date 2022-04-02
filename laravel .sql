-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2022 at 04:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrateurs`
--

CREATE TABLE `administrateurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mdp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrateurs`
--

INSERT INTO `administrateurs` (`id`, `email`, `mdp`, `created_at`, `updated_at`, `role`) VALUES
(3, 'ziza97tiv@gmail.com', 'qsdfjklm', '2022-01-02 18:13:15', '2022-01-02 18:13:15', 'Super Administrateur'),
(4, 'sadadembat9@gmail.com', 'azrtyuiop', '2022-04-02 01:35:01', '2022-04-02 01:35:01', 'Simple Administrateur');

-- --------------------------------------------------------

--
-- Table structure for table `annees`
--

CREATE TABLE `annees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encours` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `annees`
--

INSERT INTO `annees` (`id`, `code`, `libelle`, `encours`, `created_at`, `updated_at`) VALUES
(1, '2022', 'elections legislatives janvier 2022-2023', 1, NULL, NULL),
(2, '2023', 'Election Legislatvess Janvier 2023-2024', 0, '2021-12-15 12:20:28', '2021-12-15 12:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `centres`
--

CREATE TABLE `centres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commune_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `centres`
--

INSERT INTO `centres` (`id`, `code`, `libelle`, `commune_id`, `created_at`, `updated_at`) VALUES
(1, 'APM', 'Ecole Alioune mbaye palla', 1, NULL, NULL),
(2, 'DKP', 'DAKAR-PLATEAU', 4, NULL, NULL),
(3, 'GDK', 'Grand-DK', 4, NULL, NULL),
(4, 'ALMAD', 'Almadie', 4, NULL, NULL),
(5, 'PARCEL', 'Parcelles-assainies', 4, NULL, NULL),
(6, 'GUEDIAWAYE', 'Guediawaye', 5, NULL, NULL),
(7, 'NIAYES', 'NIAYES', 8, NULL, NULL),
(8, 'PIKINE-DAGOUDANE', 'PIKINE-DAGOUDANE', 8, NULL, NULL),
(9, 'THIAROYE', 'THIAROYE', 8, NULL, NULL),
(10, 'Ruf', 'Ruffisque', 6, NULL, NULL),
(12, 'BAMBEY', 'BAMBEY', 10, NULL, NULL),
(13, 'LAMBAYE', 'LAMBAYE', 10, NULL, NULL),
(14, 'NGOYE', 'NGOYE', 10, NULL, NULL),
(15, 'Diurbel', 'DIOURBEL', 9, NULL, NULL),
(16, 'NDOULO', 'NDOULO', 9, NULL, NULL),
(17, 'NDAME', 'NDAME', 11, NULL, NULL),
(18, 'TAIF', 'TAIF', 11, NULL, NULL),
(20, 'NIODIOR', 'NIODIOR', 13, NULL, NULL),
(21, 'Toubacouta', 'TOUBACOUTA', 13, NULL, NULL),
(22, 'RUFISQUE - EST ', 'RUFISQUE - EST ', 6, NULL, NULL),
(23, 'BAMBYLOR', 'BAMBYLOR', 6, NULL, NULL),
(24, 'NDINDY', 'NDINDY', 9, NULL, NULL),
(25, 'Baba-garage', 'Baba-garage', 10, NULL, NULL),
(26, 'KAEL', 'kael', 11, NULL, NULL),
(27, 'NDIOP ', 'NDIOP ', 12, NULL, NULL),
(28, 'FIMELA ', 'FIMELA ', 12, NULL, NULL),
(29, 'NIAKHAR', 'NIAKHAR', 12, NULL, NULL),
(30, 'TATTAGUINE', 'TATTAGUINE', 12, NULL, NULL),
(31, 'Fatick', 'Fatick', 12, NULL, NULL),
(32, 'Foundiougn', 'Foundiougn', 13, NULL, NULL),
(33, 'DJILOR', 'DJILOR', 13, NULL, NULL),
(34, 'gossas', 'gossas', 15, NULL, NULL),
(35, 'COLOBANE ', 'COLOBANE ', 15, NULL, NULL),
(36, 'OUADIOUR', 'OUADIOUR', 15, NULL, NULL),
(37, 'KATAKEL', 'Katakel', 62, NULL, NULL),
(38, 'Kafrine', 'Kafrine', 62, NULL, NULL),
(39, 'Birkilane', 'Birkilane', 63, NULL, NULL),
(40, 'Keur Mbouki', 'Keur-Mbouki', 63, NULL, NULL),
(41, 'Mabo', 'Mabo', 63, NULL, NULL),
(42, 'Malem Hodar', 'Malem-hodar', 64, NULL, NULL),
(43, 'DAROU MINAM 2 ', 'DAROU MINAM 2 ', 64, NULL, NULL),
(44, 'SAGNA', 'SAGNA', 64, NULL, NULL),
(45, 'Koungheul', 'Koungheul', 72, NULL, NULL),
(46, 'MISSIRAH WADENE ', 'MISSIRAH WADENE ', 72, NULL, NULL),
(47, 'IDA MOURIDE', 'IDA MOURIDE', 72, NULL, NULL),
(48, 'LOUR ESCALE', 'LOUR ESCALE', 72, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `citoyens`
--

CREATE TABLE `citoyens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datenaissance` datetime NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comms`
--

CREATE TABLE `comms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `centre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comms`
--

INSERT INTO `comms` (`id`, `code`, `libelle`, `centre_id`, `created_at`, `updated_at`) VALUES
(1, 'Dakar Plateau', 'Dakar Plateau', 2, NULL, NULL),
(2, 'GTFC', 'Gueule Tapée Fass Colobane', 2, NULL, NULL),
(3, 'Fann-Point EAmitié ', 'Fann-Point EAmitié ', 2, NULL, NULL),
(4, 'Médina ', 'Médina ', 2, NULL, NULL),
(5, 'Grand-Dakar', 'Grand-Dakar', 3, NULL, NULL),
(6, 'Biscuiterie ', 'Biscuiterie ', 3, NULL, NULL),
(7, 'Hann-Bel-Air', 'Hann-Bel-Air', 3, NULL, NULL),
(8, 'Sicap-Liberté ', 'Sicap-Liberté ', 3, NULL, NULL),
(9, 'Dieuppeul-Derklé ', 'Dieuppeul-Derklé ', 3, NULL, NULL),
(10, 'HLM ', 'HLM ', 3, NULL, NULL),
(11, 'Mermoz-Sacré\r\nCoeur', 'Mermoz-Sacré\r\nCoeur', 4, NULL, NULL),
(12, 'Ouakam\r\n', 'Ouakam\r\n', 4, NULL, NULL),
(13, 'Ngor', 'Ngor', 4, NULL, NULL),
(14, 'Yoff', 'Yoff', 4, NULL, NULL),
(15, 'Grand-Yoff', 'Grand-Yoff', 5, NULL, NULL),
(16, 'Patte d’oie', 'Patte d’oie', 5, NULL, NULL),
(17, 'PA', 'Parcelles\r\nAssainies', 5, NULL, NULL),
(18, 'Cambérène\r\n', 'Cambérène\r\n', 5, NULL, NULL),
(20, 'VDG', 'Ville de\r\nGuédiawaye', 6, NULL, NULL),
(21, 'GS', 'Golf-Sud', 6, NULL, NULL),
(22, 'Sam-Notaire ', 'Sam-Notaire ', 6, NULL, NULL),
(24, 'NdiarèmeLimamoulaye', 'NdiarèmeLimamoulaye', 6, NULL, NULL),
(25, 'Wakhinane ', 'Wakhinane ', 6, NULL, NULL),
(26, 'Médina Gounass', 'Médina Gounass', 6, NULL, NULL),
(27, 'Pikine- Est', 'Pikine- Est', 8, NULL, NULL),
(28, 'Pikine-Nord ', 'Pikine-Nord ', 8, NULL, NULL),
(29, 'Pikine-Ouest', 'Pikine-Ouest', 8, NULL, NULL),
(30, 'Dalifort-Foirail', 'Dalifort-Foirail', 8, NULL, NULL),
(31, '', '', 8, NULL, NULL),
(32, 'Djeddha Thiaroye\r\nKao', 'Djeddha Thiaroye\r\nKao', 8, NULL, NULL),
(33, 'Guinaw RailNord ', 'Guinaw RailNord ', 8, NULL, NULL),
(34, 'Guinaw Rail-sud ', 'Guinaw Rail-sud ', 8, NULL, NULL),
(35, 'Thiaroye Gare', 'Thiaroye Gare', 9, NULL, NULL),
(36, 'Thiaroye sur Mer', 'Thiaroye sur Mer', 9, NULL, NULL),
(37, 'Tivaoune-Diacksao', 'Tivaoune-Diacksao', 9, NULL, NULL),
(38, 'DiamagueuneSicap Mbao ', 'DiamagueuneSicap Mbao ', 9, NULL, NULL),
(39, 'Mbao', 'Mbao', 9, NULL, NULL),
(40, 'Keur Massar', 'Keur Massar', 7, NULL, NULL),
(41, 'Malika', 'Malika', 7, NULL, NULL),
(42, 'Yeumbeul-Sud', 'Yeumbeul-Sud', 7, NULL, NULL),
(43, 'Yeumbeul-Nord', 'Yeumbeul-Nord', 7, NULL, NULL),
(44, 'Ville de Rufisque ', 'Ville de Rufisque ', 10, NULL, NULL),
(45, 'Bargny', 'Bargny', 10, NULL, NULL),
(46, 'Sébikotane ', 'Sébikotane ', 10, NULL, NULL),
(47, 'Sendou', 'Sendou', 10, NULL, NULL),
(48, 'Rufisque-Est', 'Rufisque-Est', 22, NULL, NULL),
(49, 'Rufisque-Nord', 'Rufisque-Nord', 22, NULL, NULL),
(50, 'Rufisque-Ouest', 'Rufisque-Ouest', 22, NULL, NULL),
(51, 'Bambylor', 'Bambylor', 23, NULL, NULL),
(52, 'Yène', 'Yène', 23, NULL, NULL),
(53, 'Tivaouane PeulhNiaga', 'Tivaouane PeulhNiaga', 23, NULL, NULL),
(54, 'Diamniadio ', 'Diamniadio ', 23, NULL, NULL),
(55, 'Sangalkam', 'Sangalkam', 23, NULL, NULL),
(56, 'Jaxaay-ParcellesNiakoul Rap', 'Jaxaay-ParcellesNiakoul Rap', 23, NULL, NULL),
(57, 'Diourbel', 'Diourbel', 15, NULL, NULL),
(58, 'Ndoulo', 'Ndoulo', 16, NULL, NULL),
(59, 'Ngohe', 'Ngohe', 16, NULL, NULL),
(60, 'Pattar', 'Pattar', 16, NULL, NULL),
(61, 'Tocky Gare', 'Tocky Gare', 16, NULL, NULL),
(62, 'Touré Mbondé ', 'Touré Mbondé ', 16, NULL, NULL),
(63, 'Ndankh Séne', 'Ndankh Séne', 24, NULL, NULL),
(64, 'Gade Escale', 'Gade Escale', 24, NULL, NULL),
(65, 'Touba Lappé', 'Touba Lappé', 24, NULL, NULL),
(66, 'Keur Ngalgou', 'Keur Ngalgou', 24, NULL, NULL),
(67, 'Ndindy ', 'Ndindy ', 24, NULL, NULL),
(68, 'Taïba Moutoupha', 'Taïba Moutoupha', 24, NULL, NULL),
(69, 'Bambeye', 'Bambeye', 12, NULL, NULL),
(70, 'Dinguiraye ', 'Dinguiraye ', 25, NULL, NULL),
(71, 'Baba Garage ', 'Baba Garage ', 25, NULL, NULL),
(72, 'Keur Samba Kane', 'Keur Samba Kane', 25, NULL, NULL),
(73, 'Ngoye', 'Ngoye', 14, NULL, NULL),
(74, 'Thiakhar', 'Thiakhar', 14, NULL, NULL),
(75, 'Ndondol ', 'Ndondol ', 14, NULL, NULL),
(76, 'Ndangalma', 'Ndangalma', 14, NULL, NULL),
(77, 'Lambaye', 'Lambaye', 13, NULL, NULL),
(78, 'Réfane', 'Réfane', 17, NULL, NULL),
(79, 'Gawane ', 'Gawane ', 13, NULL, NULL),
(80, 'Ngogom', 'Ngogom', 13, NULL, NULL),
(81, 'Mbacké', 'Mbacké', 17, NULL, NULL),
(82, 'Touba Mosquée', 'Touba Mosquée', 17, NULL, NULL),
(83, 'Dalla Ngabou', 'Dalla Ngabou', 17, NULL, NULL),
(84, 'Missirah ', 'Missirah ', 17, NULL, NULL),
(85, 'Nghaye ', 'Nghaye ', 17, NULL, NULL),
(86, 'Touba Fall', 'Touba Fall', 17, NULL, NULL),
(87, 'DST', 'Darou Salam Typ', 26, NULL, NULL),
(88, 'DN', 'Darou Nahim', 26, NULL, NULL),
(89, 'Kael ', 'Kael ', 26, NULL, NULL),
(90, 'Madina', 'Madina', 26, NULL, NULL),
(91, 'Touba Mboul ', 'Touba Mboul ', 26, NULL, NULL),
(92, 'Taïba Thièkène ', 'Taïba Thièkène ', 26, NULL, NULL),
(93, 'DGG', 'Dendèye Gouy\r\nGui', 26, NULL, NULL),
(94, 'Ndioumane ', 'Ndioumane ', 26, NULL, NULL),
(95, 'TAIF', 'Taif', 18, NULL, NULL),
(96, 'SADIO', 'Sadio', 18, NULL, NULL),
(97, 'Fatick', 'Fatick', 31, NULL, NULL),
(98, 'Dioffior', 'Dioffior', 31, NULL, NULL),
(99, 'Thiaré Ndialgui', 'Thiaré Ndialgui', 27, NULL, NULL),
(100, 'Diaoulé ', 'Diaoulé ', 27, NULL, NULL),
(101, 'Mbéllacadiao', 'Mbéllacadiao', 27, NULL, NULL),
(102, 'Ndiop ', 'Ndiop ', 27, NULL, NULL),
(103, 'Diakhao', 'Diakhao', 27, NULL, NULL),
(104, 'Djilasse', 'Djilasse', 28, NULL, NULL),
(105, 'Fimela', 'Fimela', 28, NULL, NULL),
(106, 'Loul Sessène ', 'Loul Sessène ', 28, NULL, NULL),
(107, 'Palmarin Facao', 'Palmarin Facao', 28, NULL, NULL),
(108, 'Niakhar', 'Niakhar', 29, NULL, NULL),
(109, 'Ngayokhème', 'Ngayokhème', 29, NULL, NULL),
(110, 'Patar', 'Patar', 29, NULL, NULL),
(111, 'Diarrère', 'Diarrère', 30, NULL, NULL),
(112, 'Diouroup', 'Diouroup', 30, NULL, NULL),
(113, 'Tattaguine', 'Tattaguine', 30, NULL, NULL),
(114, 'Foundiougne', 'Foundiougne', 32, NULL, NULL),
(115, 'Sokone', 'Sokone', 32, NULL, NULL),
(116, 'Keur Saloum\r\nDiané', 'Keur Saloum\r\nDiané', 21, NULL, NULL),
(117, 'Keur Samba\r\nGueye', 'Keur Samba\r\nGueye', 21, NULL, NULL),
(118, 'Toubacouta', 'Toubacouta', 21, NULL, NULL),
(119, 'Nioro Alassane\r\nTall', 'Nioro Alassane\r\nTall', 21, NULL, NULL),
(120, 'Karang Poste', 'Karang Poste', 21, NULL, NULL),
(121, 'Passy', 'Passy', 33, NULL, NULL),
(122, 'SOUM', 'Soum', 33, NULL, NULL),
(123, 'Diossong\r\n', 'Diossong\r\n', 33, NULL, NULL),
(124, 'Djilor', 'Djilor', 33, NULL, NULL),
(125, 'Niassène', 'Niassène', 33, NULL, NULL),
(126, 'Diagane Barka', 'Diagane Barka', 33, NULL, NULL),
(127, 'Mbam', 'Mbam', 33, NULL, NULL),
(132, 'Bassoul', 'Bassoul', 20, NULL, NULL),
(133, 'Dionewar', 'Dionewar', 20, NULL, NULL),
(134, 'Djirnda', 'Djirnda', 20, NULL, NULL),
(135, 'Gossas', 'Gossas', 34, NULL, NULL),
(136, 'Colobane', 'Colobane', 35, NULL, NULL),
(137, 'Mbar', 'Mbar', 35, NULL, NULL),
(138, 'Ndiene Lagane', 'Ndiene Lagane', 36, NULL, NULL),
(139, 'Ouadiour ', 'Ouadiour ', 36, NULL, NULL),
(140, 'Patar Lia', 'Patar Lia', 36, NULL, NULL),
(141, 'kafrine', 'Kafrine', 38, NULL, NULL),
(142, 'Nganda', 'Nganda', 37, NULL, NULL),
(143, 'Boulel', 'Boulel', 37, NULL, NULL),
(144, 'Keur Mboucki ', 'Keur Mboucki ', 40, NULL, NULL),
(145, 'Diamal', 'Diamal', 40, NULL, NULL),
(146, 'Mabo', 'Mabo', 41, NULL, NULL),
(147, 'Ségré-gatta', 'Ségré-gatta', 41, NULL, NULL),
(148, 'Malem Hodar', 'Malem Hodar', 42, NULL, NULL),
(149, 'Darou Miname II ', 'Darou Miname II ', 43, NULL, NULL),
(150, 'Ndioum Ngainth ', 'Ndioum Ngainth ', 43, NULL, NULL),
(151, 'Sagna', 'Sagna', 44, NULL, NULL),
(152, 'Dianké Souf', 'Dianké Souf', 44, NULL, NULL),
(153, 'Missirah Wadène ', 'Missirah Wadène ', 46, NULL, NULL),
(154, 'Ngainthe Pathé', 'Ngainthe Pathé', 46, NULL, NULL),
(155, 'Fass Thièkène', 'Fass Thièkène', 47, NULL, NULL),
(156, 'Ida Mouride ', 'Ida Mouride ', 47, NULL, NULL),
(157, 'Ribot Escale', 'Ribot Escale', 48, NULL, NULL),
(158, 'Lour Escale', 'Lour Escale', 48, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `communes`
--

CREATE TABLE `communes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communes`
--

INSERT INTO `communes` (`id`, `code`, `libelle`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 'TIV', 'Tivaouane', 2, NULL, NULL),
(2, 'MB', 'Mbour', 2, NULL, NULL),
(3, 'NDF', 'Ndoffane', 3, NULL, NULL),
(4, 'DK', 'Dakar', 1, NULL, NULL),
(5, 'GUED', 'Guediawaye', 1, NULL, NULL),
(6, 'Ruf', 'Rufisque', 1, NULL, NULL),
(8, 'PIK', 'Pikine', 1, NULL, NULL),
(9, 'DL', 'Diourbel', 5, NULL, NULL),
(10, 'BM', 'Bambey', 5, NULL, NULL),
(11, 'MB', 'Mbacke', 5, NULL, NULL),
(12, 'FK', 'Fatick', 7, NULL, NULL),
(13, 'FN', 'Foundiougne', 7, NULL, NULL),
(15, 'GOS', 'Gossas', 7, NULL, NULL),
(16, 'KL', 'Kaolack', 3, NULL, NULL),
(17, 'GUIN', 'Guinguineo', 3, NULL, NULL),
(18, 'NR', 'Nioro', 3, NULL, NULL),
(19, 'KOL', 'Kolda', 6, NULL, NULL),
(20, 'VEL', 'Velingara', 6, NULL, NULL),
(46, 'MYF', 'Medina Yoro Foulah', 6, NULL, NULL),
(47, 'LG', 'Louga', 4, NULL, NULL),
(48, 'KBM', 'Kebemere', 4, NULL, NULL),
(49, 'LING', 'Linguere', 4, NULL, NULL),
(50, 'MTM', 'Matam', 13, NULL, NULL),
(51, 'KAN', 'Kanel', 13, NULL, NULL),
(52, 'RAN', 'Ranerou', 13, NULL, NULL),
(53, 'SL', 'Saint-Louis', 14, NULL, NULL),
(54, 'DAG', 'Dagana', 14, NULL, NULL),
(55, 'POD', 'Podor', 14, NULL, NULL),
(56, 'TAMB', 'Tambacounda', 8, NULL, NULL),
(57, 'KOUMP', 'Koumpentoum', 8, NULL, NULL),
(58, 'BAK', 'Bakel', 8, NULL, NULL),
(59, 'ZIG', 'Ziguinchor', 9, NULL, NULL),
(60, 'BIGN', 'Bignona', 9, NULL, NULL),
(61, 'OUSS', 'Oussouye', 9, NULL, NULL),
(62, 'KAF', 'Kafrine', 10, NULL, NULL),
(63, 'BIRK', 'Birkilane', 10, NULL, NULL),
(64, 'MALEM', 'Malem-Hodar', 10, NULL, NULL),
(65, 'KEDG', 'Kedougou', 11, NULL, NULL),
(66, 'SALMA', 'Salmata', 11, NULL, NULL),
(67, 'Sara', 'Saraya', 11, NULL, NULL),
(68, 'SEDH', 'Sediou', 12, NULL, NULL),
(69, 'GOUD', 'Goudomp', 12, NULL, NULL),
(70, 'BOUNK', 'Boukiling', 12, NULL, NULL),
(71, 'TH', 'Thies', 2, NULL, NULL),
(72, 'KOUNGUEL', 'KOUNGUEL', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `electeurs`
--

CREATE TABLE `electeurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prenom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datenaissance` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cni` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comm_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electeurs`
--

INSERT INTO `electeurs` (`id`, `prenom`, `nom`, `datenaissance`, `adresse`, `cni`, `comm_id`, `created_at`, `updated_at`) VALUES
(1, 'Abdou aziz sy', 'NDIAYE', '22/07/99', 'ndoumbelan', '16481999010203', 2, '2021-12-12 21:10:53', '2021-12-31 04:22:31'),
(2, 'Lamine', 'FALL', '13/09/2000', 'Yaradal', '16581988010302', 2, NULL, NULL),
(3, 'Masssaer', 'Diop', '22/07/99', 'Pikine', '16481999010206', 2, '2021-12-17 21:31:12', '2021-12-17 21:31:12'),
(7, 'Sada Demba', 'THIAM', '21/01/1999', 'simbangmbang', '1251199900803', 16, '2022-01-05 23:51:40', '2022-01-05 23:51:40'),
(8, 'Fatim Sy', 'Ndiaye', '07/07/2000', 'keur ziza', '2777200077777', 7, '2022-01-06 00:00:56', '2022-01-06 00:00:56'),
(11, 'Adja Ndiaré', 'Thioub', '2000-12-27', 'Rue sada', '2000200000000', 1, '2022-01-08 11:15:55', '2022-01-08 11:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `liste_electorals`
--

CREATE TABLE `liste_electorals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_liste` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representant_nom` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representant_prenom` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representant_cni` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representant_adresse` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `representant_datenaissance` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comm_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `liste_electorals`
--

INSERT INTO `liste_electorals` (`id`, `nom_liste`, `code`, `representant_nom`, `representant_prenom`, `representant_cni`, `representant_adresse`, `representant_datenaissance`, `comm_id`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'Benno Bokk Yakkar', 'BBY', 'ndiaye', 'aziz', '16491997010202', 'arafat', '21/09/1999', 1, NULL, NULL, NULL),
(2, 'Yewi Askan Wi', 'YAW', 'DIAS', 'barthelimi', '16489975010203', 'ARAfAt 2', '23/08/1980', 1, '2021-12-15 10:05:29', '2021-12-15 10:05:29', NULL),
(3, 'Geum sa bopou', 'GSB', 'GUEYE', 'Bougane', '16489975010208', 'Randoulein', '23/08/1979', 2, '2021-12-15 10:07:22', '2021-12-15 10:07:22', NULL),
(4, 'Benno Bokk Yakkar', 'BBY', 'THIAM', 'SADA', '16489975010204', 'pikine', '23/08/1987', 10, '2021-12-15 11:22:05', '2021-12-15 11:22:05', NULL),
(5, 'Yewi Askan Wi', 'YAW', 'FOFONA', 'Moussa', '16489975010209', 'asalouma', '23/08/1985', 1, '2021-12-16 10:41:47', '2021-12-16 10:41:47', 'C:/xamp/htdocs/livecoding/storage/app/profils/61bca4e238f3f.png'),
(6, 'Benno Bokk Yakkar', 'BBY', 'KA', 'Lamine', '16489975010212', 'NAWle', '23/08/1980', 72, '2021-12-16 11:32:36', '2021-12-16 11:32:36', NULL),
(7, 'Ziza Ziz', 'YAW', 'Ziz', 'Ziza', '16489975010204', 'Senegal thies', '23/08/1987', 2, '2021-12-16 12:02:46', '2021-12-16 12:02:46', NULL),
(9, 'Ziza Ziza', 'ZIZ', 'Ziz', 'Ziza', '16489975010208', 'Senegal thies', '23/08/1945', 13, '2021-12-16 12:53:08', '2021-12-16 12:53:08', NULL),
(18, 'Benno Bokk Yakkar', 'BBY', 'diaw', 'Moussa', '164899750102156', 'goudiry', '23/08/198ç', 2, '2021-12-17 14:55:30', '2021-12-17 14:55:30', 'C:/xamp/htdocs/livecoding/storage/app/profils/61bca4e238f3f.png'),
(19, 'Béguéééé', '25', 'Sène', 'Djigane', '1265198000578', 'dakar', '21/02/1980', 2, '2022-03-31 22:57:29', '2022-03-31 22:57:29', '25.png');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2021_12_02_103434_create_regions_table', 2),
(12, '2021_12_02_104432_create_users_table', 3),
(13, '2021_12_02_185314_create_communes_table', 4),
(14, '2021_12_03_185008_create_centres_table', 5),
(17, '2021_12_06_151206_create_citoyens_table', 8),
(18, '2021_12_10_212422_update_datenaissance_field_with_format_value_to_electeurs_table', 9),
(20, '2021_12_12_201809_create_comms_table', 10),
(21, '2021_12_12_205906_create_electeurs_table', 11),
(22, '2021_12_13_130956_create_administrateurs_table', 12),
(24, '2021_12_13_215302_create_annees_table', 13),
(31, '2021_12_14_175948_create_liste_electorals_table', 15),
(33, '2021_12_16_101045_ajouter_column_photo_table_listeelctorals', 16),
(34, '2022_01_09_221218_update_add_role_administrateur_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `code`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'DK', 'Dakar', NULL, NULL),
(2, 'TH', 'Thies', NULL, NULL),
(3, 'KL', 'Koalack', NULL, NULL),
(4, 'LG', 'Louga', NULL, NULL),
(5, 'DL', 'Diourbel', NULL, NULL),
(6, 'KD', 'Kolda', NULL, NULL),
(7, 'FK', 'Fatik', NULL, NULL),
(8, 'TMB', 'Tambacounda', NULL, NULL),
(9, 'ZIG', 'Ziguinchor', NULL, NULL),
(10, 'KAF', 'Kafrine', NULL, NULL),
(11, 'KG', 'Kedougou', NULL, NULL),
(12, 'SDH', 'Sedhiou', NULL, NULL),
(13, 'MTM', 'Matam', NULL, NULL),
(14, 'SL', 'Saint-Louis', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`) VALUES
(1, 'Abdou Aziz SY NDIAYE', 'ziza97tiv@gmail.com', NULL, '$2y$10$FHOHyfwhOZ3kPsIsA3Hihecbnbl6RxXVMr7TETdEkGJ7nw6w5Jd4e', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `electeur_id` bigint(20) UNSIGNED NOT NULL,
  `listeelectoral_id` bigint(20) UNSIGNED NOT NULL,
  `annee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `electeur_id`, `listeelectoral_id`, `annee_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2021-12-18 14:10:14', '2021-12-18 14:10:14'),
(2, 2, 18, 1, '2021-12-18 14:23:40', '2021-12-18 14:23:40'),
(3, 3, 3, 1, '2022-01-05 23:42:41', '2022-01-05 23:42:41'),
(4, 11, 2, 1, '2022-01-08 11:16:49', '2022-01-08 11:16:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrateurs`
--
ALTER TABLE `administrateurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annees`
--
ALTER TABLE `annees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `centres`
--
ALTER TABLE `centres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `centres_commune_id_foreign` (`commune_id`);

--
-- Indexes for table `citoyens`
--
ALTER TABLE `citoyens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comms`
--
ALTER TABLE `comms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comms_centre_id_foreign` (`centre_id`);

--
-- Indexes for table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communes_region_id_foreign` (`region_id`);

--
-- Indexes for table `electeurs`
--
ALTER TABLE `electeurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `electeurs_comm_id_foreign` (`comm_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `liste_electorals`
--
ALTER TABLE `liste_electorals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liste_electorals_comm_id_foreign` (`comm_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voters_electeur_id_foreign` (`electeur_id`),
  ADD KEY `voters_listeelectoral_id_foreign` (`listeelectoral_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrateurs`
--
ALTER TABLE `administrateurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `annees`
--
ALTER TABLE `annees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `centres`
--
ALTER TABLE `centres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `citoyens`
--
ALTER TABLE `citoyens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comms`
--
ALTER TABLE `comms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `electeurs`
--
ALTER TABLE `electeurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `liste_electorals`
--
ALTER TABLE `liste_electorals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `centres`
--
ALTER TABLE `centres`
  ADD CONSTRAINT `centres_commune_id_foreign` FOREIGN KEY (`commune_id`) REFERENCES `communes` (`id`);

--
-- Constraints for table `comms`
--
ALTER TABLE `comms`
  ADD CONSTRAINT `comms_centre_id_foreign` FOREIGN KEY (`centre_id`) REFERENCES `centres` (`id`);

--
-- Constraints for table `communes`
--
ALTER TABLE `communes`
  ADD CONSTRAINT `communes_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `electeurs`
--
ALTER TABLE `electeurs`
  ADD CONSTRAINT `electeurs_comm_id_foreign` FOREIGN KEY (`comm_id`) REFERENCES `comms` (`id`);

--
-- Constraints for table `liste_electorals`
--
ALTER TABLE `liste_electorals`
  ADD CONSTRAINT `liste_electorals_comm_id_foreign` FOREIGN KEY (`comm_id`) REFERENCES `comms` (`id`);

--
-- Constraints for table `voters`
--
ALTER TABLE `voters`
  ADD CONSTRAINT `voters_electeur_id_foreign` FOREIGN KEY (`electeur_id`) REFERENCES `electeurs` (`id`),
  ADD CONSTRAINT `voters_listeelectoral_id_foreign` FOREIGN KEY (`listeelectoral_id`) REFERENCES `liste_electorals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
