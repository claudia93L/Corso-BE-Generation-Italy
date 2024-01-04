-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 04, 2024 at 04:34 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arte`
--

-- --------------------------------------------------------

--
-- Table structure for table `anagrafica`
--

CREATE TABLE `anagrafica` (
  `id_anagrafica` int(11) NOT NULL,
  `ragione_sociale` varchar(50) DEFAULT NULL COMMENT 'Questo è il campo per inserire anche i privati',
  `indirizzo` varchar(50) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `regione` varchar(50) DEFAULT NULL,
  `telefono_cellulare` varchar(30) DEFAULT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `partita_iva` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sito_web` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anagrafica`
--

INSERT INTO `anagrafica` (`id_anagrafica`, `ragione_sociale`, `indirizzo`, `localita`, `provincia`, `cap`, `regione`, `telefono_cellulare`, `codice_fiscale`, `partita_iva`, `email`, `sito_web`) VALUES
(1, 'La Rinascente s.p.a', 'Via Garibaldi, 33', 'Bari', 'BA', '70100', NULL, '7667586669', '', '', '', ''),
(2, 'Divani & Divani', 'Via Gentile, 5', 'Napoli', 'NA', '80100', NULL, '4765875854', '', '', '', ''),
(3, 'Quintavalle s.r.l.', 'Via dei Bersaglieri, 38', 'Bari', 'BA', '70100', NULL, '', '', '', '', ''),
(4, 'Mario Caputi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'De Somma s.r.l.', 'Via della repubblica, 35', 'Napoli', 'NA', '80100', NULL, '', '', '', '', ''),
(6, 'Marino s.r.l.', 'Via dei ciclamini, 42', 'Bari', 'BA', '70100', NULL, '9999999999', NULL, NULL, 'info@marinosrl.it', 'https://www.marinosrl.it'),
(7, 'Giuseppe Caputi', 'Via Restivi, 124', 'Bari', 'BA', '70100', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Mario Rossi', 'Via delle ginestre, 27', 'Napoli', 'NA', '09100', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Galleria L\'Orchidea', 'Via Cavour, 56', 'Roma', 'RM', '00100', 'Lazio', '5674585674', NULL, 'UGU4675', 'info@gallerial\'orchidea@gmail.com', 'www.gallerial\'orchidea.com');

-- --------------------------------------------------------

--
-- Table structure for table `artisti`
--

CREATE TABLE `artisti` (
  `id_artista` int(11) NOT NULL,
  `nome_artista` varchar(50) DEFAULT NULL,
  `biografia` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artisti`
--

INSERT INTO `artisti` (`id_artista`, `nome_artista`, `biografia`) VALUES
(1, 'Leonardo da Vinci', ' Leonardo da Vinci, conosciuto probabilmente come uno dei più grandi geni italiani, è nato il 15 aprile del 1452 ad Archiano di Vinci. Nel 1469 si è trasferito con il padre a Firenze, dove è diventato allievo del Verrocchio. Leonardo è cresciuto artisticamente in un ambiente dove si insegnava a concepire la figura umana, scolpita o dipinta, non immobile ma inserita nello spazio. Non si è limitato ad operare nel campo artistico ma ha spaziato in quasi tutti i campi dello scibile umano. Ha passato gli ultimi periodi della sua vita in Francia, dove ha portato alcuni quadri dipinti in Italia, tra cui la Gioconda. E\' morto ad Amboise il 2 maggio del 1519.'),
(2, 'Antonello da Messina', 'Antonello Da Messina, soprannome di Antonio di Giovanni de Antonio (Messina, fra 1425 e 1430[1] – Messina, febbraio 1479), è stato un pittore italiano. Fu il principale pittore siciliano del Quattrocento, primo nel difficile equilibrio di fondere la luce, l\'atmosfera e l\'attenzione al dettaglio della pittura fiamminga con la monumentalità e la spazialità razionale della scuola italiana. I suoi ritratti sono celebri per vitalità e profondità psicologica.\r\n\r\nDurante la sua carriera dimostrò una costante capacità dinamica di recepire i molteplici stimoli artistici delle città che visitava, offrendo ogni volta importanti contributi autonomi, che spesso andavano ad arricchire le scuole locali. Soprattutto a Venezia rivoluzionò la pittura locale, facendo ammirare i suoi traguardi - ripresi poi dai grandi maestri lagunari - apripista dunque per quella \"pittura tonale\" dolce e umana che caratterizzò il Rinascimento veneto.');

-- --------------------------------------------------------

--
-- Table structure for table `eventi`
--

CREATE TABLE `eventi` (
  `id_evento` int(11) NOT NULL,
  `titolo_evento` varchar(100) DEFAULT NULL,
  `descrizione_evento` text,
  `data_iniziale` date DEFAULT NULL,
  `data_finale` date DEFAULT NULL,
  `id_luogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventi`
--

INSERT INTO `eventi` (`id_evento`, `titolo_evento`, `descrizione_evento`, `data_iniziale`, `data_finale`, `id_luogo`) VALUES
(1, 'MOSTRA INTERNAZIONALE RINASCIMENTO', 'Viaggio artistico nel periodo d\'oro dell\'arte mondiale.', '2022-10-01', '2022-10-31', 3),
(2, 'Mostra Da Vinci', 'Mostra delle opere di Leonardo da Vinci', '2022-08-01', '2022-10-31', 2);

-- --------------------------------------------------------

--
-- Table structure for table `generi`
--

CREATE TABLE `generi` (
  `id_genere` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `generi`
--

INSERT INTO `generi` (`id_genere`, `descrizione`) VALUES
(1, 'Opera Rinascimento'),
(2, 'Opera Contemporanea'),
(3, 'Opera Classica'),
(4, 'Opera Astrattismo'),
(5, 'Opera Impressionismo'),
(6, 'Opera Cubismo');

-- --------------------------------------------------------

--
-- Table structure for table `locali`
--

CREATE TABLE `locali` (
  `id_locale` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locali`
--

INSERT INTO `locali` (`id_locale`, `descrizione`) VALUES
(1, 'Sala Rossa'),
(2, 'Sala Blu'),
(3, 'Sala Verde'),
(4, 'Gazebo');

-- --------------------------------------------------------

--
-- Table structure for table `luoghi`
--

CREATE TABLE `luoghi` (
  `id_luogo` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `luoghi`
--

INSERT INTO `luoghi` (`id_luogo`, `descrizione`) VALUES
(1, 'Locali interni '),
(2, 'Locali esterni'),
(3, 'Chiostro Chiesa San Domenico - Pavia'),
(4, 'Androne Palazzo Provincia Brescia');

-- --------------------------------------------------------

--
-- Table structure for table `opere`
--

CREATE TABLE `opere` (
  `id_opera` int(11) NOT NULL,
  `titolo` varchar(50) DEFAULT NULL,
  `descrizione_opera` text,
  `id_artista` int(11) DEFAULT NULL,
  `id_genere` int(11) DEFAULT NULL,
  `id_tecnica` int(11) DEFAULT NULL,
  `id_proprietario` int(11) DEFAULT NULL,
  `id_provenienza` int(11) DEFAULT NULL,
  `data_di_acquisizione` date DEFAULT NULL,
  `data_di_rilascio` date DEFAULT NULL,
  `larghezza` decimal(6,2) DEFAULT NULL,
  `altezza` decimal(6,2) DEFAULT NULL,
  `profondita` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opere`
--

INSERT INTO `opere` (`id_opera`, `titolo`, `descrizione_opera`, `id_artista`, `id_genere`, `id_tecnica`, `id_proprietario`, `id_provenienza`, `data_di_acquisizione`, `data_di_rilascio`, `larghezza`, `altezza`, `profondita`) VALUES
(1, 'La Gioconda', 'La Gioconda, nota anche come Monna Lisa, è un dipinto a olio su tavola di legno di pioppo realizzato da Leonardo da Vinci (77×53 cm e 13 mm di spessore), databile al 1503-1506 circa e conservato nel Museo del Louvre di Parigi.\r\n\r\nOpera iconica ed enigmatica della pittura mondiale, si tratta sicuramente del ritratto più celebre della storia nonché di una delle opere d\'arte più note in assoluto. Il sorriso quasi impercettibile del soggetto, col suo alone di mistero, ha ispirato tantissime pagine di critica, letteratura, opere di immaginazione e persino studi psicoanalitici; sfuggente, ironica e sensuale, la Monna Lisa è stata di volta in volta amata e idolatrata, ma anche irrisa e vandalizzata.[1]\r\n\r\nLa Gioconda viene ammirata ogni giorno da circa trentamila visitatori, ovvero l\'80% dei visitatori del Museo del Louvre in cui è esposta,[2] tanto che nella grande sala in cui si trova, un cordone deve tenere a debita distanza le persone. Nella lunga storia del dipinto non sono infatti mancati i tentativi di vandalismo, nonché un furto rocambolesco, che ne hanno alimentato la popolarità.', 2, 1, 2, 10, 2, '2022-09-06', NULL, '53.00', '77.00', '10.00'),
(2, 'Ritratto d\'Uomo Antonello da Messina', 'Ritratto d\'uomo è un dipinto olio su tavola (25,5x35,5 cm) di Antonello da Messina, datato 1475-1476 circa e conservato nella National Gallery di Londra. È noto anche per essere stato il soggetto della quarta serie della banconota da 5.000 lire italiane, stampata dal 1979 al 1983.', 1, 1, 2, 5, 1, '2022-10-17', '2022-11-16', '60.00', '80.00', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `opere_in_evento`
--

CREATE TABLE `opere_in_evento` (
  `id_opera_in_evento` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_opera` int(11) DEFAULT NULL,
  `id_locale` int(11) DEFAULT NULL,
  `id_parete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opere_in_evento`
--

INSERT INTO `opere_in_evento` (`id_opera_in_evento`, `id_evento`, `id_opera`, `id_locale`, `id_parete`) VALUES
(1, 1, 1, 2, 3),
(2, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ospiti_in_evento`
--

CREATE TABLE `ospiti_in_evento` (
  `id_ospite_in_evento` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_anagrafica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ospiti_in_evento`
--

INSERT INTO `ospiti_in_evento` (`id_ospite_in_evento`, `id_evento`, `id_anagrafica`) VALUES
(1, 1, 6),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pareti`
--

CREATE TABLE `pareti` (
  `id_parete` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pareti`
--

INSERT INTO `pareti` (`id_parete`, `descrizione`) VALUES
(1, 'Parete Nord'),
(2, 'Parete Sud'),
(3, 'Parete Est'),
(4, 'Parete Ovest'),
(5, 'Parete Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `provenienze`
--

CREATE TABLE `provenienze` (
  `id_provenienza` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provenienze`
--

INSERT INTO `provenienze` (`id_provenienza`, `descrizione`) VALUES
(1, 'Prestito'),
(2, 'Acquistata'),
(3, 'Museo'),
(4, 'Galleria d\'Arte');

-- --------------------------------------------------------

--
-- Table structure for table `tecniche`
--

CREATE TABLE `tecniche` (
  `id_tecnica` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tecniche`
--

INSERT INTO `tecniche` (`id_tecnica`, `descrizione`) VALUES
(1, 'Olio su Tela'),
(2, 'Olio su Tavola'),
(3, 'Scultura Legno'),
(4, 'Scultura Bronzo'),
(5, 'Scultura Materiali Vari'),
(6, 'Acquerello su Cartoncino');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_evento`
-- (See below for the actual view)
--
CREATE TABLE `vista_evento` (
`titolo_evento` varchar(100)
,`descrizione` varchar(50)
,`titolo` varchar(50)
,`nome_artista` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `vista_evento`
--
DROP TABLE IF EXISTS `vista_evento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_evento`  AS SELECT `eventi`.`titolo_evento` AS `titolo_evento`, `luoghi`.`descrizione` AS `descrizione`, `opere`.`titolo` AS `titolo`, `artisti`.`nome_artista` AS `nome_artista` FROM ((`eventi` join `luoghi` on((`eventi`.`id_luogo` = `luoghi`.`id_luogo`))) join (`opere` join `artisti` on((`opere`.`id_artista` = `artisti`.`id_artista`))))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anagrafica`
--
ALTER TABLE `anagrafica`
  ADD PRIMARY KEY (`id_anagrafica`);

--
-- Indexes for table `artisti`
--
ALTER TABLE `artisti`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indexes for table `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_luogo` (`id_luogo`);

--
-- Indexes for table `generi`
--
ALTER TABLE `generi`
  ADD PRIMARY KEY (`id_genere`);

--
-- Indexes for table `locali`
--
ALTER TABLE `locali`
  ADD PRIMARY KEY (`id_locale`);

--
-- Indexes for table `luoghi`
--
ALTER TABLE `luoghi`
  ADD PRIMARY KEY (`id_luogo`);

--
-- Indexes for table `opere`
--
ALTER TABLE `opere`
  ADD PRIMARY KEY (`id_opera`),
  ADD KEY `id_artista` (`id_artista`),
  ADD KEY `id_genere` (`id_genere`),
  ADD KEY `id_tecnica` (`id_tecnica`),
  ADD KEY `id_provenienza` (`id_provenienza`),
  ADD KEY `id_proprietario` (`id_proprietario`);

--
-- Indexes for table `opere_in_evento`
--
ALTER TABLE `opere_in_evento`
  ADD PRIMARY KEY (`id_opera_in_evento`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_locale` (`id_locale`),
  ADD KEY `id_parete` (`id_parete`),
  ADD KEY `id_opera` (`id_opera`) USING BTREE;

--
-- Indexes for table `ospiti_in_evento`
--
ALTER TABLE `ospiti_in_evento`
  ADD PRIMARY KEY (`id_ospite_in_evento`),
  ADD KEY `id_anagrafica` (`id_anagrafica`),
  ADD KEY `id_evento1` (`id_evento`);

--
-- Indexes for table `pareti`
--
ALTER TABLE `pareti`
  ADD PRIMARY KEY (`id_parete`);

--
-- Indexes for table `provenienze`
--
ALTER TABLE `provenienze`
  ADD PRIMARY KEY (`id_provenienza`);

--
-- Indexes for table `tecniche`
--
ALTER TABLE `tecniche`
  ADD PRIMARY KEY (`id_tecnica`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anagrafica`
--
ALTER TABLE `anagrafica`
  MODIFY `id_anagrafica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artisti`
--
ALTER TABLE `artisti`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eventi`
--
ALTER TABLE `eventi`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `generi`
--
ALTER TABLE `generi`
  MODIFY `id_genere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locali`
--
ALTER TABLE `locali`
  MODIFY `id_locale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `luoghi`
--
ALTER TABLE `luoghi`
  MODIFY `id_luogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `opere`
--
ALTER TABLE `opere`
  MODIFY `id_opera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opere_in_evento`
--
ALTER TABLE `opere_in_evento`
  MODIFY `id_opera_in_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ospiti_in_evento`
--
ALTER TABLE `ospiti_in_evento`
  MODIFY `id_ospite_in_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pareti`
--
ALTER TABLE `pareti`
  MODIFY `id_parete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `provenienze`
--
ALTER TABLE `provenienze`
  MODIFY `id_provenienza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tecniche`
--
ALTER TABLE `tecniche`
  MODIFY `id_tecnica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventi`
--
ALTER TABLE `eventi`
  ADD CONSTRAINT `id_luogo` FOREIGN KEY (`id_luogo`) REFERENCES `luoghi` (`id_luogo`);

--
-- Constraints for table `opere`
--
ALTER TABLE `opere`
  ADD CONSTRAINT `id_artista` FOREIGN KEY (`id_artista`) REFERENCES `artisti` (`id_artista`),
  ADD CONSTRAINT `id_genere` FOREIGN KEY (`id_genere`) REFERENCES `generi` (`id_genere`),
  ADD CONSTRAINT `id_proprietario` FOREIGN KEY (`id_proprietario`) REFERENCES `anagrafica` (`id_anagrafica`),
  ADD CONSTRAINT `id_provenienza` FOREIGN KEY (`id_provenienza`) REFERENCES `provenienze` (`id_provenienza`),
  ADD CONSTRAINT `id_tecnica` FOREIGN KEY (`id_tecnica`) REFERENCES `tecniche` (`id_tecnica`);

--
-- Constraints for table `opere_in_evento`
--
ALTER TABLE `opere_in_evento`
  ADD CONSTRAINT `id_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventi` (`id_evento`),
  ADD CONSTRAINT `id_locale` FOREIGN KEY (`id_locale`) REFERENCES `locali` (`id_locale`),
  ADD CONSTRAINT `id_opera` FOREIGN KEY (`id_opera`) REFERENCES `opere` (`id_opera`),
  ADD CONSTRAINT `id_parete` FOREIGN KEY (`id_parete`) REFERENCES `pareti` (`id_parete`);

--
-- Constraints for table `ospiti_in_evento`
--
ALTER TABLE `ospiti_in_evento`
  ADD CONSTRAINT `id_anagrafica` FOREIGN KEY (`id_anagrafica`) REFERENCES `anagrafica` (`id_anagrafica`),
  ADD CONSTRAINT `id_evento1` FOREIGN KEY (`id_evento`) REFERENCES `eventi` (`id_evento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
