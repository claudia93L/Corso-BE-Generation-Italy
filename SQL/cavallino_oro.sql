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
-- Database: `cavallino_oro`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `noleggio_per_data` (IN `dat` DATE)   BEGIN
  SELECT noleggio.id_noleggio, elenco_cavalli.nome_cavallo, elenco_razze.descrizione, elenco_clienti.cognome, noleggio.data_inizio, noleggio.data_fine, noleggio.orario_inizio, noleggio.orario_fine, elenco_recinti.nome_recinto FROM noleggio 
  INNER JOIN elenco_cavalli ON elenco_cavalli.id_cavallo=noleggio.id_cavallo
  INNER JOIN elenco_clienti ON elenco_clienti.id_cliente=noleggio.id_cliente
  INNER JOIN elenco_razze ON elenco_razze.id_razza=elenco_cavalli.id_razza
  INNER JOIN elenco_recinti ON elenco_recinti.id_recinto=noleggio.id_recinto
  WHERE noleggio.data_inizio=dat;
  
  END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `assistenza_sanitaria`
--

CREATE TABLE `assistenza_sanitaria` (
  `id_anagrafica` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `assistenza_veterinaria`
-- (See below for the actual view)
--
CREATE TABLE `assistenza_veterinaria` (
`id_infermeria` int(11)
,`nome_cavallo` varchar(50)
,`descrizione` varchar(30)
,`nominativo` varchar(50)
,`globuli_rossi` decimal(4,2)
,`emoglobina` decimal(4,2)
,`ematocrito` decimal(4,2)
,`ritmo_cardiaco` decimal(4,2)
,`acido_lattico` decimal(4,2)
,`data_analisi` date
,`tariffa` decimal(10,0)
,`copertura_assicurativa` tinyint(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `cartella_clinica`
--

CREATE TABLE `cartella_clinica` (
  `id_cartella` int(11) NOT NULL,
  `id_cavallo` int(11) DEFAULT NULL,
  `globuli_rossi` decimal(4,2) NOT NULL COMMENT 'Valori di riferimento (x-y)',
  `emoglobina` decimal(4,2) NOT NULL COMMENT 'Valori di riferimento (x-y)',
  `ematocrito` decimal(4,2) NOT NULL COMMENT 'Valori di riferimento (x-y)',
  `ritmo_cardiaco` decimal(4,2) NOT NULL COMMENT 'Valori di riferimento (x-y)',
  `acido_lattico` decimal(4,2) NOT NULL COMMENT 'Valori di riferimento (x-y)',
  `data_analisi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartella_clinica`
--

INSERT INTO `cartella_clinica` (`id_cartella`, `id_cavallo`, `globuli_rossi`, `emoglobina`, `ematocrito`, `ritmo_cardiaco`, `acido_lattico`, `data_analisi`) VALUES
(1, 1, '8.23', '12.03', '4.64', '6.00', '81.12', '2022-10-11'),
(2, 3, '9.00', '12.12', '4.00', '6.74', '83.21', '2022-10-10'),
(3, 2, '10.10', '23.00', '4.74', '8.00', '82.23', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cavalli_in_noleggio`
-- (See below for the actual view)
--
CREATE TABLE `cavalli_in_noleggio` (
`id_noleggio` int(11)
,`nome_cavallo` varchar(50)
,`descrizione` varchar(30)
,`ragione_sociale` varchar(50)
,`data_inizio` date
,`data_fine` date
,`orario_inizio` time
,`orario_fine` time
,`nome_recinto` varchar(30)
,`descrizione_extra` varchar(50)
,`cognome` varchar(30)
,`telefono` varchar(12)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_cavalli`
--

INSERT INTO `elenco_cavalli` (`id_cavallo`, `nome_cavallo`, `id_razza`, `id_proprietario`, `tariffa`) VALUES
(1, 'Arturo', 1, 1, '35.00'),
(2, 'Galeone', 1, 2, '20.00'),
(3, 'Cicciolino', 2, 1, '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_clienti`
--

CREATE TABLE `elenco_clienti` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(30) DEFAULT NULL,
  `localita` varchar(30) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `carta_di_credito` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_clienti`
--

INSERT INTO `elenco_clienti` (`id_cliente`, `nome`, `cognome`, `localita`, `indirizzo`, `telefono`, `email`, `carta_di_credito`) VALUES
(1, 'Davide', 'Vlahovic', 'Torino', 'Via Pellegrini, 7', '0913256698', 'info@finoallafine.it', '4009600354698879'),
(2, 'Mario', 'Arturietti', 'Napoli', 'Via dei furti, 999', '02563398856', 'arturiettimario@gmail.com', '4006900823658556'),
(3, 'Alfonso', 'Cotoletta', 'Milano', 'Vicolo Del Tac, 12', '023369985542', 'ilcotolettaalfonso@gmail.com', '4006200896365544');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_extra`
--

CREATE TABLE `elenco_extra` (
  `id_extra` int(11) NOT NULL,
  `descrizione_extra` varchar(50) DEFAULT NULL,
  `prezzo` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_extra`
--

INSERT INTO `elenco_extra` (`id_extra`, `descrizione_extra`, `prezzo`) VALUES
(1, 'Assicurazione infortuni', '20'),
(2, 'Aperitivo di benvenuto', '18'),
(3, 'Equipaggiamento fantino', '15'),
(4, 'Scarpe comode', '20');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_proprietari`
--

INSERT INTO `elenco_proprietari` (`id_proprietario`, `ragione_sociale`, `localita`, `indirizzo`, `recapito`, `email`) VALUES
(1, 'Scuderia Cavallina Bella', 'Bari', 'Via Nazionale, 50', '0366547899', 'info@scuderiabella.it'),
(2, 'Lombardi srl', 'Lecce', 'Via del Mare,49', '0369963321', 'info@lombardisrl.it'),
(3, 'Leone Cavalli da Corsa', 'Bari', 'Corso della Repubblica, 1099', '0336988523', 'leone@cavallidacorsa.it');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_razze`
--

CREATE TABLE `elenco_razze` (
  `id_razza` int(11) NOT NULL,
  `descrizione` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_razze`
--

INSERT INTO `elenco_razze` (`id_razza`, `descrizione`) VALUES
(1, 'Arabo'),
(2, 'Bardigiano'),
(3, 'Agricolo');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_recinti`
--

CREATE TABLE `elenco_recinti` (
  `id_recinto` int(11) NOT NULL,
  `nome_recinto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_recinti`
--

INSERT INTO `elenco_recinti` (`id_recinto`, `nome_recinto`) VALUES
(1, 'Recinto A'),
(2, 'Recinto B'),
(3, 'Esterno');

-- --------------------------------------------------------

--
-- Table structure for table `elenco_veterinari`
--

CREATE TABLE `elenco_veterinari` (
  `id_veterinario` int(11) NOT NULL,
  `nominativo` varchar(50) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elenco_veterinari`
--

INSERT INTO `elenco_veterinari` (`id_veterinario`, `nominativo`, `telefono`) VALUES
(1, 'Giorgione Barchiesi', '3347859260'),
(2, 'Rodolfo Bacchettoni', '32955446230'),
(3, 'Franco Ticoddiri', '3478806223');

-- --------------------------------------------------------

--
-- Stand-in structure for view `fatturazione_clienti`
-- (See below for the actual view)
--
CREATE TABLE `fatturazione_clienti` (
`id_cliente` int(11)
,`nome` varchar(30)
,`cognome` varchar(30)
,`localita` varchar(30)
,`indirizzo` varchar(50)
,`telefono` varchar(12)
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
  `tariffa` decimal(10,0) DEFAULT NULL,
  `copertura_assicurativa` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infermeria`
--

INSERT INTO `infermeria` (`id_infermeria`, `id_cavallo`, `id_cartella`, `id_veterinario`, `tariffa`, `copertura_assicurativa`) VALUES
(1, 1, 1, 1, '0', 1),
(2, 3, 2, 3, '40', 0);

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
  `id_extra` int(11) DEFAULT NULL,
  `prezzo_noleggio` decimal(6,2) DEFAULT NULL,
  `id_recinto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noleggio`
--

INSERT INTO `noleggio` (`id_noleggio`, `id_cliente`, `id_cavallo`, `data_inizio`, `data_fine`, `orario_inizio`, `orario_fine`, `id_extra`, `prezzo_noleggio`, `id_recinto`) VALUES
(5, 3, 3, '2022-10-14', '2022-10-14', '18:00:00', '20:00:00', 2, '118.00', 3),
(6, 1, 1, '2022-10-15', '2022-10-15', '09:00:00', '13:00:00', 1, '160.00', 1),
(7, 1, 2, '2022-10-15', '2022-10-15', '09:00:00', '13:00:00', 1, '100.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `totale_noleggio`
--

CREATE TABLE `totale_noleggio` (
  `id_totale` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `tariffa_totale` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `totale_noleggio`
--

INSERT INTO `totale_noleggio` (`id_totale`, `id_cliente`, `tariffa_totale`) VALUES
(1, 1, '240.00'),
(2, 3, '118.00');

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
-- Indexes for table `assistenza_sanitaria`
--
ALTER TABLE `assistenza_sanitaria`
  ADD PRIMARY KEY (`id_anagrafica`);

--
-- Indexes for table `cartella_clinica`
--
ALTER TABLE `cartella_clinica`
  ADD PRIMARY KEY (`id_cartella`),
  ADD KEY `id_cavallo_cartella` (`id_cavallo`);

--
-- Indexes for table `elenco_cavalli`
--
ALTER TABLE `elenco_cavalli`
  ADD PRIMARY KEY (`id_cavallo`),
  ADD KEY `id_proprietario` (`id_proprietario`),
  ADD KEY `id_razza` (`id_razza`);

--
-- Indexes for table `elenco_clienti`
--
ALTER TABLE `elenco_clienti`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indexes for table `elenco_extra`
--
ALTER TABLE `elenco_extra`
  ADD PRIMARY KEY (`id_extra`);

--
-- Indexes for table `elenco_proprietari`
--
ALTER TABLE `elenco_proprietari`
  ADD PRIMARY KEY (`id_proprietario`);

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
  ADD KEY `infermeria_cavallo` (`id_cavallo`),
  ADD KEY `infermeria_cartella` (`id_cartella`),
  ADD KEY `infermeria_veterinario` (`id_veterinario`);

--
-- Indexes for table `noleggio`
--
ALTER TABLE `noleggio`
  ADD PRIMARY KEY (`id_noleggio`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_cavallo_noleggio` (`id_cavallo`),
  ADD KEY `id_recinto` (`id_recinto`),
  ADD KEY `id_extra` (`id_extra`);

--
-- Indexes for table `totale_noleggio`
--
ALTER TABLE `totale_noleggio`
  ADD PRIMARY KEY (`id_totale`),
  ADD KEY `id_cliente_totale` (`id_cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assistenza_sanitaria`
--
ALTER TABLE `assistenza_sanitaria`
  MODIFY `id_anagrafica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartella_clinica`
--
ALTER TABLE `cartella_clinica`
  MODIFY `id_cartella` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elenco_cavalli`
--
ALTER TABLE `elenco_cavalli`
  MODIFY `id_cavallo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elenco_clienti`
--
ALTER TABLE `elenco_clienti`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elenco_extra`
--
ALTER TABLE `elenco_extra`
  MODIFY `id_extra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `elenco_proprietari`
--
ALTER TABLE `elenco_proprietari`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elenco_razze`
--
ALTER TABLE `elenco_razze`
  MODIFY `id_razza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elenco_recinti`
--
ALTER TABLE `elenco_recinti`
  MODIFY `id_recinto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elenco_veterinari`
--
ALTER TABLE `elenco_veterinari`
  MODIFY `id_veterinario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `infermeria`
--
ALTER TABLE `infermeria`
  MODIFY `id_infermeria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `noleggio`
--
ALTER TABLE `noleggio`
  MODIFY `id_noleggio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `totale_noleggio`
--
ALTER TABLE `totale_noleggio`
  MODIFY `id_totale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartella_clinica`
--
ALTER TABLE `cartella_clinica`
  ADD CONSTRAINT `id_cavallo_cartella` FOREIGN KEY (`id_cavallo`) REFERENCES `elenco_cavalli` (`id_cavallo`);

--
-- Constraints for table `elenco_cavalli`
--
ALTER TABLE `elenco_cavalli`
  ADD CONSTRAINT `id_proprietario` FOREIGN KEY (`id_proprietario`) REFERENCES `elenco_proprietari` (`id_proprietario`),
  ADD CONSTRAINT `id_razza` FOREIGN KEY (`id_razza`) REFERENCES `elenco_razze` (`id_razza`);

--
-- Constraints for table `infermeria`
--
ALTER TABLE `infermeria`
  ADD CONSTRAINT `infermeria_cartella` FOREIGN KEY (`id_cartella`) REFERENCES `cartella_clinica` (`id_cartella`),
  ADD CONSTRAINT `infermeria_cavallo` FOREIGN KEY (`id_cavallo`) REFERENCES `elenco_cavalli` (`id_cavallo`),
  ADD CONSTRAINT `infermeria_veterinario` FOREIGN KEY (`id_veterinario`) REFERENCES `elenco_veterinari` (`id_veterinario`);

--
-- Constraints for table `noleggio`
--
ALTER TABLE `noleggio`
  ADD CONSTRAINT `id_cavallo_noleggio` FOREIGN KEY (`id_cavallo`) REFERENCES `elenco_cavalli` (`id_cavallo`),
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `elenco_clienti` (`id_cliente`),
  ADD CONSTRAINT `id_extra` FOREIGN KEY (`id_extra`) REFERENCES `elenco_extra` (`id_extra`),
  ADD CONSTRAINT `id_recinto` FOREIGN KEY (`id_recinto`) REFERENCES `elenco_recinti` (`id_recinto`);

--
-- Constraints for table `totale_noleggio`
--
ALTER TABLE `totale_noleggio`
  ADD CONSTRAINT `id_cliente_totale` FOREIGN KEY (`id_cliente`) REFERENCES `elenco_clienti` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
