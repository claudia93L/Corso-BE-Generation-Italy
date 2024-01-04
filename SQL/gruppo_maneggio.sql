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
-- Database: `gruppo_maneggio`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `assistenza_veterinaria`
-- (See below for the actual view)
--
CREATE TABLE `assistenza_veterinaria` (
`id_infermeria` int(11)
,`nome_cavallo` varchar(50)
,`descrizione` varchar(50)
,`nominativo` varchar(50)
,`globuli_rossi` decimal(6,2)
,`emoglobina` decimal(6,2)
,`ematocrito` decimal(6,2)
,`ritmo_cardiaco` decimal(6,2)
,`acido_lattico` decimal(6,2)
,`data_analisi` date
,`tariffa` decimal(6,2)
,`copertura_assicurativa` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `cartella_clinica`
--

CREATE TABLE `cartella_clinica` (
  `id_cartella` int(11) NOT NULL,
  `data_analisi` date DEFAULT NULL,
  `id_cavallo` int(11) DEFAULT NULL,
  `globuli_rossi` decimal(6,2) DEFAULT NULL COMMENT 'valori di riferimento ',
  `emoglobina` decimal(6,2) DEFAULT NULL COMMENT 'valori di riferimento ',
  `ematocrito` decimal(6,2) DEFAULT NULL COMMENT 'valori di riferimento ',
  `ritmo_cardiaco` decimal(6,2) DEFAULT NULL COMMENT 'valori di riferimento ',
  `acido_lattico` decimal(6,2) DEFAULT NULL COMMENT 'valori di riferimento '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cavalli_in_noleggio`
-- (See below for the actual view)
--
CREATE TABLE `cavalli_in_noleggio` (
`id_noleggio` int(11)
,`nome_cavallo` varchar(50)
,`descrizione` varchar(50)
,`ragione_sociale` varchar(50)
,`data_inizio` date
,`data_fine` date
,`orario_inizio` time
,`orario_fine` time
,`nome_recinto` varchar(30)
,`descrizione_extra` varchar(50)
,`cognome` varchar(50)
,`telefono` varchar(50)
,`prezzo_noleggio` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `elenco_cavalli`
--

CREATE TABLE `elenco_cavalli` (
  `id_cavallo` int(11) NOT NULL,
  `nome_cavallo` varchar(50) DEFAULT NULL,
  `id_razza` int(11) DEFAULT NULL,
  `id_proprietario` int(11) DEFAULT NULL,
  `tariffa` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elenco_cavalli`
--

INSERT INTO `elenco_cavalli` (`id_cavallo`, `nome_cavallo`, `id_razza`, `id_proprietario`, `tariffa`) VALUES
(1, 'Arturo', 1, 1, '35.00');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_clienti`
--

CREATE TABLE `elenco_clienti` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `carta_di_credito` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elenco_clienti`
--

INSERT INTO `elenco_clienti` (`id_cliente`, `nome`, `cognome`, `localita`, `indirizzo`, `telefono`, `email`, `carta_di_credito`) VALUES
(1, 'Marco', 'Rossi', 'Bari', 'Via Bari, 50', '23784578456', 'sugfiugfh@gmail.com', '4536757853536356');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_extra`
--

CREATE TABLE `elenco_extra` (
  `id_extra` int(11) NOT NULL,
  `descrizione_extra` varchar(50) DEFAULT NULL,
  `prezzo` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `elenco_proprietari`
--

CREATE TABLE `elenco_proprietari` (
  `id_proprietario` int(11) NOT NULL,
  `ragione_sociale` varchar(50) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `recapito` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elenco_proprietari`
--

INSERT INTO `elenco_proprietari` (`id_proprietario`, `ragione_sociale`, `localita`, `indirizzo`, `recapito`, `email`) VALUES
(1, 'Davide', 'Roma', 'Via Roma, 5', '3478687264', 'isodhf@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_razze`
--

CREATE TABLE `elenco_razze` (
  `id_razza` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elenco_razze`
--

INSERT INTO `elenco_razze` (`id_razza`, `descrizione`) VALUES
(1, 'Arabo');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_recinti`
--

CREATE TABLE `elenco_recinti` (
  `id_recinto` int(11) NOT NULL,
  `nome_recinto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `elenco_veterinari`
--

CREATE TABLE `elenco_veterinari` (
  `id_veterinario` int(11) NOT NULL,
  `nominativo` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `fatturazione_clienti`
-- (See below for the actual view)
--
CREATE TABLE `fatturazione_clienti` (
`id_cliente` int(11)
,`nome` varchar(50)
,`cognome` varchar(50)
,`localita` varchar(50)
,`indirizzo` varchar(50)
,`telefono` varchar(50)
,`email` varchar(50)
,`carta_di_credito` varchar(16)
,`tariffa_totale` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `infermeria`
--

CREATE TABLE `infermeria` (
  `id_infermeria` int(11) NOT NULL,
  `id_cavallo` int(11) DEFAULT NULL,
  `id_cartella` int(11) DEFAULT NULL,
  `id_veterinario` int(11) DEFAULT NULL,
  `copertura_assicurativa` tinyint(1) DEFAULT NULL,
  `tariffa` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `log_nuovo_noleggio`
--

CREATE TABLE `log_nuovo_noleggio` (
  `id_nuovo_noleggio` int(11) NOT NULL,
  `id_noleggio` int(11) DEFAULT NULL,
  `ragione_sociale` varchar(50) DEFAULT NULL,
  `nome_cavallo` varchar(50) DEFAULT NULL,
  `recinto` varchar(50) DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `ora_inizio` time DEFAULT NULL,
  `ora_fine` time DEFAULT NULL,
  `data_prenotazione` datetime DEFAULT NULL,
  `operatore` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `noleggio`
--

CREATE TABLE `noleggio` (
  `id_noleggio` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_cavallo` int(11) DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `orario_inizio` time DEFAULT NULL,
  `orario_fine` time DEFAULT NULL,
  `prezzo_noleggio` decimal(6,2) DEFAULT NULL,
  `id_recinto` int(11) DEFAULT NULL,
  `id_extra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `noleggio`
--
DELIMITER $$
CREATE TRIGGER `log_insert_noleggio` AFTER INSERT ON `noleggio` FOR EACH ROW BEGIN
	INSERT INTO log_nuovo_noleggio
    SET id_noleggio=id_noleggio,
    ragione_sociale=id_cliente,
    nome_cavallo=id_cavallo,
    data_inizio=data_inizio,
    data_fine=data_fine,
    ora_inizio=ora_inizio,
    ora_fine=ora_fine,
    recinto=recinto,
    data_prenotazione=now(),
    operatore=USER();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `totale_noleggio`
--

CREATE TABLE `totale_noleggio` (
  `id_totale` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `tariffa_totale` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `assistenza_veterinaria`
--
DROP TABLE IF EXISTS `assistenza_veterinaria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `assistenza_veterinaria`  AS SELECT `infermeria`.`id_infermeria` AS `id_infermeria`, `elenco_cavalli`.`nome_cavallo` AS `nome_cavallo`, `elenco_razze`.`descrizione` AS `descrizione`, `elenco_veterinari`.`nominativo` AS `nominativo`, `cartella_clinica`.`globuli_rossi` AS `globuli_rossi`, `cartella_clinica`.`emoglobina` AS `emoglobina`, `cartella_clinica`.`ematocrito` AS `ematocrito`, `cartella_clinica`.`ritmo_cardiaco` AS `ritmo_cardiaco`, `cartella_clinica`.`acido_lattico` AS `acido_lattico`, `cartella_clinica`.`data_analisi` AS `data_analisi`, `infermeria`.`tariffa` AS `tariffa`, `infermeria`.`copertura_assicurativa` AS `copertura_assicurativa` FROM ((((`infermeria` join `elenco_cavalli` on((`infermeria`.`id_cavallo` = `elenco_cavalli`.`id_cavallo`))) join `elenco_razze` on((`elenco_razze`.`id_razza` = `elenco_cavalli`.`id_razza`))) join `elenco_veterinari` on((`elenco_veterinari`.`id_veterinario` = `infermeria`.`id_veterinario`))) join `cartella_clinica` on((`cartella_clinica`.`id_cartella` = `infermeria`.`id_cartella`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `cavalli_in_noleggio`
--
DROP TABLE IF EXISTS `cavalli_in_noleggio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cavalli_in_noleggio`  AS SELECT `noleggio`.`id_noleggio` AS `id_noleggio`, `elenco_cavalli`.`nome_cavallo` AS `nome_cavallo`, `elenco_razze`.`descrizione` AS `descrizione`, `elenco_proprietari`.`ragione_sociale` AS `ragione_sociale`, `noleggio`.`data_inizio` AS `data_inizio`, `noleggio`.`data_fine` AS `data_fine`, `noleggio`.`orario_inizio` AS `orario_inizio`, `noleggio`.`orario_fine` AS `orario_fine`, `elenco_recinti`.`nome_recinto` AS `nome_recinto`, `elenco_extra`.`descrizione_extra` AS `descrizione_extra`, `elenco_clienti`.`cognome` AS `cognome`, `elenco_clienti`.`telefono` AS `telefono`, `noleggio`.`prezzo_noleggio` AS `prezzo_noleggio` FROM ((((((`noleggio` join `elenco_cavalli` on((`elenco_cavalli`.`id_cavallo` = `noleggio`.`id_cavallo`))) join `elenco_razze` on((`elenco_cavalli`.`id_razza` = `elenco_razze`.`id_razza`))) join `elenco_proprietari` on((`elenco_cavalli`.`id_proprietario` = `elenco_proprietari`.`id_proprietario`))) join `elenco_recinti` on((`elenco_recinti`.`id_recinto` = `noleggio`.`id_recinto`))) join `elenco_extra` on((`elenco_extra`.`id_extra` = `noleggio`.`id_extra`))) join `elenco_clienti` on((`noleggio`.`id_cliente` = `elenco_clienti`.`id_cliente`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `fatturazione_clienti`
--
DROP TABLE IF EXISTS `fatturazione_clienti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fatturazione_clienti`  AS SELECT `elenco_clienti`.`id_cliente` AS `id_cliente`, `elenco_clienti`.`nome` AS `nome`, `elenco_clienti`.`cognome` AS `cognome`, `elenco_clienti`.`localita` AS `localita`, `elenco_clienti`.`indirizzo` AS `indirizzo`, `elenco_clienti`.`telefono` AS `telefono`, `elenco_clienti`.`email` AS `email`, `elenco_clienti`.`carta_di_credito` AS `carta_di_credito`, `totale_noleggio`.`tariffa_totale` AS `tariffa_totale` FROM (`elenco_clienti` join `totale_noleggio` on((`totale_noleggio`.`id_cliente` = `elenco_clienti`.`id_cliente`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartella_clinica`
--
ALTER TABLE `cartella_clinica`
  ADD PRIMARY KEY (`id_cartella`),
  ADD KEY `id_cavallo3` (`id_cavallo`);

--
-- Indexes for table `elenco_cavalli`
--
ALTER TABLE `elenco_cavalli`
  ADD PRIMARY KEY (`id_cavallo`),
  ADD KEY `id_proprietario` (`id_proprietario`),
  ADD KEY `id_razza2` (`id_razza`);

--
-- Indexes for table `elenco_clienti`
--
ALTER TABLE `elenco_clienti`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `telefono` (`telefono`,`email`,`carta_di_credito`);

--
-- Indexes for table `elenco_extra`
--
ALTER TABLE `elenco_extra`
  ADD PRIMARY KEY (`id_extra`);

--
-- Indexes for table `elenco_proprietari`
--
ALTER TABLE `elenco_proprietari`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `recapito` (`recapito`,`email`);

--
-- Indexes for table `elenco_razze`
--
ALTER TABLE `elenco_razze`
  ADD PRIMARY KEY (`id_razza`);

--
-- Indexes for table `elenco_recinti`
--
ALTER TABLE `elenco_recinti`
  ADD PRIMARY KEY (`id_recinto`);

--
-- Indexes for table `elenco_veterinari`
--
ALTER TABLE `elenco_veterinari`
  ADD PRIMARY KEY (`id_veterinario`);

--
-- Indexes for table `infermeria`
--
ALTER TABLE `infermeria`
  ADD PRIMARY KEY (`id_infermeria`),
  ADD KEY `id_cavallo4` (`id_cavallo`),
  ADD KEY `id_cartella` (`id_cartella`),
  ADD KEY `id_veterinario` (`id_veterinario`);

--
-- Indexes for table `log_nuovo_noleggio`
--
ALTER TABLE `log_nuovo_noleggio`
  ADD PRIMARY KEY (`id_nuovo_noleggio`);

--
-- Indexes for table `noleggio`
--
ALTER TABLE `noleggio`
  ADD PRIMARY KEY (`id_noleggio`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_cavallo` (`id_cavallo`),
  ADD KEY `id_recinto` (`id_recinto`),
  ADD KEY `id_extra2` (`id_extra`);

--
-- Indexes for table `totale_noleggio`
--
ALTER TABLE `totale_noleggio`
  ADD PRIMARY KEY (`id_totale`),
  ADD KEY `id_cliente2` (`id_cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartella_clinica`
--
ALTER TABLE `cartella_clinica`
  MODIFY `id_cartella` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elenco_cavalli`
--
ALTER TABLE `elenco_cavalli`
  MODIFY `id_cavallo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elenco_clienti`
--
ALTER TABLE `elenco_clienti`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elenco_extra`
--
ALTER TABLE `elenco_extra`
  MODIFY `id_extra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elenco_proprietari`
--
ALTER TABLE `elenco_proprietari`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elenco_razze`
--
ALTER TABLE `elenco_razze`
  MODIFY `id_razza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elenco_recinti`
--
ALTER TABLE `elenco_recinti`
  MODIFY `id_recinto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elenco_veterinari`
--
ALTER TABLE `elenco_veterinari`
  MODIFY `id_veterinario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infermeria`
--
ALTER TABLE `infermeria`
  MODIFY `id_infermeria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_nuovo_noleggio`
--
ALTER TABLE `log_nuovo_noleggio`
  MODIFY `id_nuovo_noleggio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noleggio`
--
ALTER TABLE `noleggio`
  MODIFY `id_noleggio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `totale_noleggio`
--
ALTER TABLE `totale_noleggio`
  MODIFY `id_totale` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartella_clinica`
--
ALTER TABLE `cartella_clinica`
  ADD CONSTRAINT `id_cavallo3` FOREIGN KEY (`id_cavallo`) REFERENCES `elenco_cavalli` (`id_cavallo`);

--
-- Constraints for table `elenco_cavalli`
--
ALTER TABLE `elenco_cavalli`
  ADD CONSTRAINT `id_proprietario` FOREIGN KEY (`id_proprietario`) REFERENCES `elenco_proprietari` (`id_proprietario`),
  ADD CONSTRAINT `id_razza2` FOREIGN KEY (`id_razza`) REFERENCES `elenco_razze` (`id_razza`);

--
-- Constraints for table `infermeria`
--
ALTER TABLE `infermeria`
  ADD CONSTRAINT `id_cartella` FOREIGN KEY (`id_cartella`) REFERENCES `cartella_clinica` (`id_cartella`),
  ADD CONSTRAINT `id_cavallo4` FOREIGN KEY (`id_cavallo`) REFERENCES `elenco_cavalli` (`id_cavallo`),
  ADD CONSTRAINT `id_veterinario` FOREIGN KEY (`id_veterinario`) REFERENCES `elenco_veterinari` (`id_veterinario`);

--
-- Constraints for table `noleggio`
--
ALTER TABLE `noleggio`
  ADD CONSTRAINT `id_cavallo` FOREIGN KEY (`id_cavallo`) REFERENCES `elenco_cavalli` (`id_cavallo`),
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `elenco_clienti` (`id_cliente`),
  ADD CONSTRAINT `id_extra` FOREIGN KEY (`id_extra`) REFERENCES `elenco_extra` (`id_extra`),
  ADD CONSTRAINT `id_extra2` FOREIGN KEY (`id_extra`) REFERENCES `elenco_extra` (`id_extra`),
  ADD CONSTRAINT `id_recinto` FOREIGN KEY (`id_recinto`) REFERENCES `elenco_recinti` (`id_recinto`);

--
-- Constraints for table `totale_noleggio`
--
ALTER TABLE `totale_noleggio`
  ADD CONSTRAINT `id_cliente2` FOREIGN KEY (`id_cliente`) REFERENCES `elenco_clienti` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
