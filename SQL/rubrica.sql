-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 04, 2024 at 04:35 PM
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
-- Database: `rubrica`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `clienti_nella_provincia` (IN `prov` VARCHAR(2))   BEGIN
	SELECT * FROM anagrafica_clienti WHERE provincia = prov;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `numero_vendite` (OUT `totale` INT)   BEGIN
	SELECT COUNT(*) INTO totale FROM vendite;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `numero_vendite_localita` (IN `loc` VARCHAR(50), OUT `totale` INT)   BEGIN
	SELECT COUNT(*) INTO totale 
    FROM vendite 
    INNER JOIN anagrafica_clienti
   	ON vendite.id_anagrafica = anagrafica_clienti.id_anagrafica
    WHERE anagrafica_clienti.localita = loc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `quanti_clienti` (OUT `totale` INT)   BEGIN
	SELECT COUNT(*) INTO totale FROM anagrafica_clienti;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `quanti_clienti_nella_provincia` (IN `prov` VARCHAR(2), OUT `totale` INT)   BEGIN
	SELECT COUNT(*) INTO totale FROM anagrafica_clienti WHERE provincia = prov;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tutte_le_vendite` ()   BEGIN
	SELECT id_vendita,descrizione,prezzo_di_vendita,id_anagrafica FROM vendite;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vendite_per_localita` (IN `loc` VARCHAR(50))   BEGIN
	SELECT vendite.id_vendita,vendite.descrizione, anagrafica_clienti.ragione_sociale, anagrafica_clienti.localita 
    FROM vendite 
    INNER JOIN anagrafica_clienti
    ON anagrafica_clienti.id_anagrafica = vendite.id_anagrafica
    WHERE anagrafica_clienti.localita = loc;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `agenti_incaricati`
--

CREATE TABLE `agenti_incaricati` (
  `id_agente_incaricato` int(11) NOT NULL,
  `nome_e_cognome` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `telefono_cellulare` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sesso` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agenti_incaricati`
--

INSERT INTO `agenti_incaricati` (`id_agente_incaricato`, `nome_e_cognome`, `indirizzo`, `cap`, `localita`, `provincia`, `telefono_cellulare`, `email`, `sesso`) VALUES
(1, 'Arturo Mazzetti', 'Via Toscanini, 38', '00100', 'Roma', 'RM', '37673269864', 'arturomazzetti@gmail.com', 'M'),
(2, 'Stefania Biondini', NULL, NULL, NULL, NULL, '864764743', 'stefaniabiondini@gmail.com', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `anagrafica_clienti`
--

CREATE TABLE `anagrafica_clienti` (
  `id_anagrafica` int(11) NOT NULL,
  `ragione_sociale` varchar(50) DEFAULT NULL COMMENT 'Questo è il campo per inserire anche i privati',
  `indirizzo` varchar(50) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `telefono_cellulare` varchar(30) DEFAULT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `partita_iva` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sito_web` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anagrafica_clienti`
--

INSERT INTO `anagrafica_clienti` (`id_anagrafica`, `ragione_sociale`, `indirizzo`, `cap`, `localita`, `provincia`, `telefono_cellulare`, `codice_fiscale`, `partita_iva`, `email`, `sito_web`) VALUES
(1, 'La Rinascente s.p.a', 'Via Garibaldi, 33', '70100', 'Bari', 'BA', '7667586669', '', '', '', ''),
(2, 'Divani & Divani', 'Via Gentile, 5', '80100', 'Napoli', 'NA', '4765875854', '', '', '', ''),
(3, 'Quintavalle s.r.l.', 'Via dei Bersaglieri, 38', '70100', 'Bari', 'BA', '', '', '', '', ''),
(4, 'Mario Caputi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'De Somma s.r.l.', 'Via della repubblica, 35', '80100', 'Napoli', 'NA', '', '', '', '', ''),
(6, 'Marino s.r.l.', 'Via dei ciclamini, 42', '70100', 'Bari', 'BA', '9999999999', NULL, NULL, 'info@marinosrl.it', 'https://www.marinosrl.it'),
(7, 'Giuseppe Caputi', 'Via Restivi, 124', '70100', 'Bari', 'BA', NULL, NULL, NULL, NULL, NULL),
(9, 'Mario Rossi', 'Via delle ginestre, 27', '09100', 'Napoli', 'NA', NULL, NULL, NULL, NULL, NULL),
(13, 'Claudia', 'Via tale dei tali, 35', '00100', 'Roma', 'RM', '65465476', NULL, NULL, NULL, NULL),
(14, 'federico', 'Via delle ginestre, 27', '09100', 'Palermo', 'PA', '5878585876', NULL, NULL, NULL, NULL);

--
-- Triggers `anagrafica_clienti`
--
DELIMITER $$
CREATE TRIGGER `log_insert_anagrafica` AFTER INSERT ON `anagrafica_clienti` FOR EACH ROW BEGIN
	INSERT INTO log_anagrafica
    SET id_anagrafica=id_anagrafica,
    nuova_ragione_sociale=new.ragione_sociale,
    nuova_localita=new.localita,
    modificato=now(),
    utente=USER();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `anagrafica_secondaria`
--

CREATE TABLE `anagrafica_secondaria` (
  `id_anagrafica_secondaria` int(11) NOT NULL,
  `ragione_sociale` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `carta_di_credito` varchar(20) NOT NULL,
  `carta_identita` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anagrafica_secondaria`
--

INSERT INTO `anagrafica_secondaria` (`id_anagrafica_secondaria`, `ragione_sociale`, `indirizzo`, `cap`, `localita`, `provincia`, `password`, `carta_di_credito`, `carta_identita`) VALUES
(1, 'La Splendente srl', 'Via Filipponi, 54', '80100', 'Napoli', 'NA', 'GGDUGI', '7574575467', '235364');

-- --------------------------------------------------------

--
-- Table structure for table `log_anagrafica`
--

CREATE TABLE `log_anagrafica` (
  `id_log_anagrafica` int(11) NOT NULL,
  `id_anagrafica` int(11) DEFAULT NULL,
  `nuova_ragione_sociale` varchar(50) DEFAULT NULL,
  `nuova_localita` varchar(50) DEFAULT NULL,
  `modificato` datetime DEFAULT NULL,
  `utente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_anagrafica`
--

INSERT INTO `log_anagrafica` (`id_log_anagrafica`, `id_anagrafica`, `nuova_ragione_sociale`, `nuova_localita`, `modificato`, `utente`) VALUES
(1, NULL, 'Claudia', 'Roma', '2022-10-14 11:17:10', 'root@localhost'),
(2, NULL, 'federico', 'Palermo', '2022-10-14 11:20:59', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `log_vendite`
--

CREATE TABLE `log_vendite` (
  `id_log_vendita` int(11) NOT NULL,
  `id_vendita` int(11) DEFAULT NULL,
  `vecchio_id_anagrafica` int(11) DEFAULT NULL,
  `nuovo_id_anagrafica` int(11) DEFAULT NULL,
  `vecchio_prezzo_di_vendita` int(11) DEFAULT NULL,
  `nuovo_prezzo_di_vendita` int(11) DEFAULT NULL,
  `modificato` datetime DEFAULT NULL,
  `utente` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_vendite`
--

INSERT INTO `log_vendite` (`id_log_vendita`, `id_vendita`, `vecchio_id_anagrafica`, `nuovo_id_anagrafica`, `vecchio_prezzo_di_vendita`, `nuovo_prezzo_di_vendita`, `modificato`, `utente`) VALUES
(1, 1, 1, 3, 791, 650, '2022-10-14 10:08:48', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `scaffali`
--

CREATE TABLE `scaffali` (
  `id_scaffale` int(11) NOT NULL,
  `descrizione` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabella per magazzino e disposizione scaffali';

-- --------------------------------------------------------

--
-- Table structure for table `social_clienti`
--

CREATE TABLE `social_clienti` (
  `id_social` int(11) NOT NULL,
  `Descrizione` varchar(50) DEFAULT NULL,
  `link_social` varchar(50) DEFAULT NULL,
  `id_anagrafica` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_clienti`
--

INSERT INTO `social_clienti` (`id_social`, `Descrizione`, `link_social`, `id_anagrafica`) VALUES
(1, 'Facebook', 'www.facebook.com/LaRinascente', 1),
(2, 'Facebook', 'www.facebook.com/giuseppecaputi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `vendite`
--

CREATE TABLE `vendite` (
  `id_vendita` varchar(11) DEFAULT NULL,
  `descrizione` varchar(50) DEFAULT NULL,
  `prezzo_di_vendita` decimal(6,2) DEFAULT NULL,
  `prezzo_di_costo` decimal(6,2) DEFAULT NULL,
  `id_anagrafica` int(11) DEFAULT NULL,
  `giacenza` int(11) DEFAULT NULL,
  `metodo_di_pagamento` varchar(50) DEFAULT NULL,
  `numero_carta` varchar(50) DEFAULT NULL,
  `data_vendita` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendite`
--

INSERT INTO `vendite` (`id_vendita`, `descrizione`, `prezzo_di_vendita`, `prezzo_di_costo`, `id_anagrafica`, `giacenza`, `metodo_di_pagamento`, `numero_carta`, `data_vendita`) VALUES
('1', 'Smarthphone Iphone', '650.00', '550.80', 3, 18, 'Carta di credito', '74634744252363756', NULL),
('2', 'Tablet Samsung', '650.00', '500.00', 2, 23, 'Carta di credito', '7857947648895', NULL),
('3', 'Forno Microonde', '500.00', '300.00', 7, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06');

--
-- Triggers `vendite`
--
DELIMITER $$
CREATE TRIGGER `log_update_vendite` AFTER UPDATE ON `vendite` FOR EACH ROW BEGIN 
	INSERT INTO log_vendite
    SET 
    id_vendita = old.id_vendita,
    vecchio_id_anagrafica = old.id_vendita,
    nuovo_id_anagrafica = new.id_anagrafica,
    vecchio_prezzo_di_vendita = old.prezzo_di_vendita,
    nuovo_prezzo_di_vendita = new.prezzo_di_vendita,
    modificato = now(),
    utente = USER();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenti_incaricati`
--
ALTER TABLE `agenti_incaricati`
  ADD PRIMARY KEY (`id_agente_incaricato`);

--
-- Indexes for table `anagrafica_clienti`
--
ALTER TABLE `anagrafica_clienti`
  ADD PRIMARY KEY (`id_anagrafica`);

--
-- Indexes for table `anagrafica_secondaria`
--
ALTER TABLE `anagrafica_secondaria`
  ADD PRIMARY KEY (`id_anagrafica_secondaria`);

--
-- Indexes for table `log_anagrafica`
--
ALTER TABLE `log_anagrafica`
  ADD PRIMARY KEY (`id_log_anagrafica`);

--
-- Indexes for table `log_vendite`
--
ALTER TABLE `log_vendite`
  ADD PRIMARY KEY (`id_log_vendita`);

--
-- Indexes for table `scaffali`
--
ALTER TABLE `scaffali`
  ADD PRIMARY KEY (`id_scaffale`);

--
-- Indexes for table `social_clienti`
--
ALTER TABLE `social_clienti`
  ADD PRIMARY KEY (`id_social`),
  ADD KEY `id_anagrafica` (`id_anagrafica`);

--
-- Indexes for table `vendite`
--
ALTER TABLE `vendite`
  ADD KEY `id_anagrafica1` (`id_anagrafica`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenti_incaricati`
--
ALTER TABLE `agenti_incaricati`
  MODIFY `id_agente_incaricato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `anagrafica_clienti`
--
ALTER TABLE `anagrafica_clienti`
  MODIFY `id_anagrafica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `anagrafica_secondaria`
--
ALTER TABLE `anagrafica_secondaria`
  MODIFY `id_anagrafica_secondaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_anagrafica`
--
ALTER TABLE `log_anagrafica`
  MODIFY `id_log_anagrafica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_vendite`
--
ALTER TABLE `log_vendite`
  MODIFY `id_log_vendita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scaffali`
--
ALTER TABLE `scaffali`
  MODIFY `id_scaffale` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_clienti`
--
ALTER TABLE `social_clienti`
  MODIFY `id_social` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `social_clienti`
--
ALTER TABLE `social_clienti`
  ADD CONSTRAINT `id_anagrafica` FOREIGN KEY (`id_anagrafica`) REFERENCES `anagrafica_clienti` (`id_anagrafica`);

--
-- Constraints for table `vendite`
--
ALTER TABLE `vendite`
  ADD CONSTRAINT `id_anagrafica1` FOREIGN KEY (`id_anagrafica`) REFERENCES `anagrafica_clienti` (`id_anagrafica`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
