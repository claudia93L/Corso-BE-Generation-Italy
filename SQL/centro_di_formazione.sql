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
-- Database: `centro_di_formazione`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `dettagli_evento` (IN `idEvento` INT)   BEGIN 
	SELECT eventi.id_evento, eventi.evento, tipi_evento.tipo_evento, aule.numero_aula, aule.locazione, eventi.orario_inizio, eventi.orario_fine, anagrafica.nominativo
    FROM eventi
    INNER JOIN tipi_evento ON tipi_evento.id_tipo_evento = eventi.id_tipo_evento
    INNER JOIN aule ON aule.id_aula = eventi.id_aula 
    INNER JOIN anagrafica ON anagrafica.id_anagrafica = eventi.id_organizzatore
    WHERE eventi.id_evento = idEvento;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `materie_nel_corso` (IN `idCorso` INT)   BEGIN 
	SELECT materie_nel_corso.id_materia_nel_corso, materie.nome, livelli.descrizione, anagrafica.nominativo, aule.numero_aula, aule.locazione, materie_nel_corso.ora_giorno_inizio, materie_nel_corso.ora_giorno_fine
    FROM materie_nel_corso
    INNER JOIN materie ON materie.id_materia = materie_nel_corso.id_materia
    INNER JOIN livelli ON livelli.id_livello = materie_nel_corso.id_livello
    INNER JOIN aule ON aule.id_aula = materie_nel_corso.id_aula
    INNER JOIN anagrafica ON anagrafica.id_anagrafica = materie_nel_corso.id_docente
    WHERE materie_nel_corso.id_corso = idCorso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `partecipanti_corso` (IN `idCorso` INT)   BEGIN 
	SELECT partecipanti_corso.id_partecipante_corso, anagrafica.nominativo, ruoli.descrizione, corsi.nome_corso, 
    	corsi.data_inizio, corsi.data_fine, corsi.prezzo_pro_capite AS prezzo
    FROM partecipanti_corso
    INNER JOIN anagrafica ON anagrafica.id_anagrafica = partecipanti_corso.id_anagrafica
    INNER JOIN ruoli ON ruoli.id_ruolo = partecipanti_corso.id_ruolo
    INNER JOIN corsi ON corsi.id_corso = partecipanti_corso.id_corso
    WHERE partecipanti_corso.id_corso = idCorso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `partecipanti_evento` (IN `idEvento` INT)   BEGIN
	SELECT partecipanti_eventi.id_partecipante_evento, anagrafica.nominativo, partecipanti_eventi.id_gruppo_di_partecipanti, ruoli.descrizione, eventi.evento
    FROM partecipanti_eventi
    LEFT JOIN anagrafica ON anagrafica.id_anagrafica = partecipanti_eventi.id_anagrafica
    INNER JOIN gruppi_di_partecipanti ON gruppi_di_partecipanti.id_gruppo_di_partecipanti = partecipanti_eventi.id_gruppo_di_partecipanti
    INNER JOIN eventi ON eventi.id_evento = gruppi_di_partecipanti.id_evento
    INNER JOIN ruoli ON ruoli.id_ruolo = partecipanti_eventi.id_ruolo
    WHERE eventi.id_evento = idEvento
    ORDER BY partecipanti_eventi.id_gruppo_di_partecipanti ASC;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `anagrafica`
--

CREATE TABLE `anagrafica` (
  `id_anagrafica` int(11) NOT NULL,
  `nominativo` varchar(50) DEFAULT NULL,
  `data_di_nascita` date DEFAULT NULL,
  `contatto` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `partita_iva` varchar(15) DEFAULT NULL,
  `sito_web` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anagrafica`
--

INSERT INTO `anagrafica` (`id_anagrafica`, `nominativo`, `data_di_nascita`, `contatto`, `e_mail`, `codice_fiscale`, `partita_iva`, `sito_web`) VALUES
(1, 'Mario Rossi', '1973-10-12', '51469156156', 'dasdasda@sdasd.it', 'fsdfdsf564fds', '4694fsddfs', 'www.sadasddas.it'),
(2, 'Giuseppe Verdi', '2022-10-11', '131241412', 'idascv@dsfsd.it', '3123vf11v2', NULL, 'www.daasdsadasd.com'),
(3, 'Michele Salvemini', '2021-08-25', '51469156156', 'erwetwer@sdcasd.it', 'fd122', 'fdsfsd2342', 'www.tuttacolpadidamiano.com'),
(4, 'Gennaro Marchini', '2022-09-06', '564563426', 'dasdas@gafsa.it', '23132dfef', NULL, 'www.salve.ciao'),
(5, 'Manuel Lepore', '2022-10-03', '5647474', 'manuel.lepore@manuel.lepore.com', '3123ddasddsa', NULL, 'www.nientepartitaiva.com'),
(6, 'Macelleria Abruzzese', '2022-08-08', '13525345', 'dasdasddsa@fsdfds.com', NULL, '31231fdsd3421', NULL),
(7, 'Claudia Lai', '2022-06-13', '2344535245', 'edasa@dsadsa.com', 'dasdsa2321dsa', NULL, 'www.scherzava.com'),
(8, 'Sarah Profeta', '2022-10-05', '213213132213', 'ddsa@dsasda.it', NULL, 'sdasddas342423', 'www.manuel.com'),
(9, 'Centro di formazione Jaita', '2022-10-01', '423342', 'jaita@gmail.com', NULL, '312321123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aule`
--

CREATE TABLE `aule` (
  `id_aula` int(11) NOT NULL,
  `numero_aula` int(11) DEFAULT NULL,
  `locazione` varchar(50) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `capienza` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aule`
--

INSERT INTO `aule` (`id_aula`, `numero_aula`, `locazione`, `id_tipo`, `capienza`) VALUES
(1, 117, 'secondo piano, lato nord', 1, 20),
(2, 458, 'piano terra, accanto al bagno', 2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `corsi`
--

CREATE TABLE `corsi` (
  `id_corso` int(11) NOT NULL,
  `nome_corso` varchar(50) DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `prezzo_pro_capite` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corsi`
--

INSERT INTO `corsi` (`id_corso`, `nome_corso`, `data_inizio`, `data_fine`, `prezzo_pro_capite`) VALUES
(1, 'JAITA 67', '2022-10-01', '2022-10-31', '20.00'),
(2, 'JAITA 68', '2022-09-01', '2022-09-30', '30.00'),
(3, 'Corso di Cucina', '2022-10-01', '2023-02-01', '25.00');

-- --------------------------------------------------------

--
-- Table structure for table `eventi`
--

CREATE TABLE `eventi` (
  `id_evento` int(11) NOT NULL,
  `evento` varchar(50) DEFAULT NULL,
  `id_tipo_evento` int(11) DEFAULT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `orario_inizio` datetime DEFAULT NULL,
  `orario_fine` datetime DEFAULT NULL,
  `id_organizzatore` int(11) DEFAULT NULL,
  `prezzo_pro_capite` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventi`
--

INSERT INTO `eventi` (`id_evento`, `evento`, `id_tipo_evento`, `id_aula`, `orario_inizio`, `orario_fine`, `id_organizzatore`, `prezzo_pro_capite`) VALUES
(1, 'chi ruba la carta igienica?', 1, 2, '2022-10-01 10:27:17', '2022-10-30 10:27:17', 5, '0.00'),
(2, 'rubare carta igienica', 2, 2, '2022-09-01 10:27:17', '2022-09-30 10:27:17', 6, '30.00'),
(3, 'ristrutturazione immobile', 1, 1, '2022-10-17 11:23:42', '2022-10-18 11:23:42', 9, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `gruppi_di_partecipanti`
--

CREATE TABLE `gruppi_di_partecipanti` (
  `id_gruppo_di_partecipanti` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gruppi_di_partecipanti`
--

INSERT INTO `gruppi_di_partecipanti` (`id_gruppo_di_partecipanti`, `id_evento`) VALUES
(3, 1),
(4, 2),
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `livelli`
--

CREATE TABLE `livelli` (
  `id_livello` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livelli`
--

INSERT INTO `livelli` (`id_livello`, `descrizione`) VALUES
(1, 'Avanzato'),
(2, 'Base');

-- --------------------------------------------------------

--
-- Table structure for table `materie`
--

CREATE TABLE `materie` (
  `id_materia` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `descrizione` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materie`
--

INSERT INTO `materie` (`id_materia`, `nome`, `descrizione`) VALUES
(1, 'informatica', 'studia i pc'),
(2, 'inglese', 'do you speak english?'),
(3, 'Economato', NULL),
(4, 'Modulo 1-primi piatti', NULL),
(5, 'Modulo 2 - secondi piatti', NULL),
(6, 'Modulo 3 - Dolci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `materie_nel_corso`
--

CREATE TABLE `materie_nel_corso` (
  `id_materia_nel_corso` int(11) NOT NULL,
  `id_materia` int(11) DEFAULT NULL,
  `descrizione` text,
  `id_corso` int(11) DEFAULT NULL,
  `id_livello` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `id_aula` int(11) DEFAULT NULL,
  `ora_giorno_inizio` datetime DEFAULT NULL,
  `ora_giorno_fine` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materie_nel_corso`
--

INSERT INTO `materie_nel_corso` (`id_materia_nel_corso`, `id_materia`, `descrizione`, `id_corso`, `id_livello`, `id_docente`, `id_aula`, `ora_giorno_inizio`, `ora_giorno_fine`) VALUES
(1, 1, 'parte 1', 1, 2, 5, 2, '2022-10-01 12:14:59', '2022-10-17 12:14:59'),
(2, 1, 'parte 2', 1, 2, 1, 2, '2022-10-17 12:14:59', '2022-10-31 12:14:59'),
(3, 3, 'Economato ecc. ecc.', 3, 1, 1, 1, '2022-09-01 16:55:45', '2022-09-30 16:55:45'),
(4, 4, 'Modulo Primi Piatti', 3, 1, 5, 1, '2022-10-17 09:00:00', '2022-10-17 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `partecipanti_corso`
--

CREATE TABLE `partecipanti_corso` (
  `id_partecipante_corso` int(11) NOT NULL,
  `id_anagrafica` int(11) DEFAULT NULL,
  `id_ruolo` int(11) DEFAULT NULL,
  `id_corso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partecipanti_corso`
--

INSERT INTO `partecipanti_corso` (`id_partecipante_corso`, `id_anagrafica`, `id_ruolo`, `id_corso`) VALUES
(1, 5, 1, 1),
(2, 7, 2, 2),
(3, 2, 2, 1),
(4, 4, 2, 2),
(5, 6, 2, 2),
(6, 8, 2, 1),
(7, 7, 2, 3),
(8, 2, 2, 3),
(9, 6, 2, 3),
(10, 3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `partecipanti_eventi`
--

CREATE TABLE `partecipanti_eventi` (
  `id_partecipante_evento` int(11) NOT NULL,
  `id_gruppo_di_partecipanti` int(11) DEFAULT NULL,
  `id_anagrafica` int(11) DEFAULT NULL,
  `id_ruolo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partecipanti_eventi`
--

INSERT INTO `partecipanti_eventi` (`id_partecipante_evento`, `id_gruppo_di_partecipanti`, `id_anagrafica`, `id_ruolo`) VALUES
(1, 1, 4, 6),
(2, 1, NULL, 5),
(3, 2, NULL, 5),
(4, 2, 7, 4),
(5, 1, NULL, 5),
(6, 3, 4, 4),
(7, 3, NULL, 5),
(8, 4, 8, 2),
(9, 4, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ruoli`
--

CREATE TABLE `ruoli` (
  `id_ruolo` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruoli`
--

INSERT INTO `ruoli` (`id_ruolo`, `descrizione`) VALUES
(1, 'Insegnante'),
(2, 'Studente'),
(3, 'Moderatore'),
(4, 'Relatore'),
(5, 'Ospite'),
(6, 'Giornalista');

-- --------------------------------------------------------

--
-- Table structure for table `tipi_di_aule`
--

CREATE TABLE `tipi_di_aule` (
  `id_tipo` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipi_di_aule`
--

INSERT INTO `tipi_di_aule` (`id_tipo`, `descrizione`) VALUES
(1, 'teorica'),
(2, 'laboratorio informatico');

-- --------------------------------------------------------

--
-- Table structure for table `tipi_evento`
--

CREATE TABLE `tipi_evento` (
  `id_tipo_evento` int(11) NOT NULL,
  `tipo_evento` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipi_evento`
--

INSERT INTO `tipi_evento` (`id_tipo_evento`, `tipo_evento`) VALUES
(1, 'riunione'),
(2, 'conferenza');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anagrafica`
--
ALTER TABLE `anagrafica`
  ADD PRIMARY KEY (`id_anagrafica`);

--
-- Indexes for table `aule`
--
ALTER TABLE `aule`
  ADD PRIMARY KEY (`id_aula`),
  ADD KEY `id_tipo_aula` (`id_tipo`);

--
-- Indexes for table `corsi`
--
ALTER TABLE `corsi`
  ADD PRIMARY KEY (`id_corso`);

--
-- Indexes for table `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_tipo_attivita` (`id_tipo_evento`),
  ADD KEY `id_aula` (`id_aula`),
  ADD KEY `id_organizzatore` (`id_organizzatore`);

--
-- Indexes for table `gruppi_di_partecipanti`
--
ALTER TABLE `gruppi_di_partecipanti`
  ADD PRIMARY KEY (`id_gruppo_di_partecipanti`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indexes for table `livelli`
--
ALTER TABLE `livelli`
  ADD PRIMARY KEY (`id_livello`);

--
-- Indexes for table `materie`
--
ALTER TABLE `materie`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indexes for table `materie_nel_corso`
--
ALTER TABLE `materie_nel_corso`
  ADD PRIMARY KEY (`id_materia_nel_corso`),
  ADD KEY `id_materia3` (`id_materia`),
  ADD KEY `id_aula3` (`id_aula`),
  ADD KEY `id_livello` (`id_livello`),
  ADD KEY `id_docente3` (`id_docente`),
  ADD KEY `id_corso3` (`id_corso`);

--
-- Indexes for table `partecipanti_corso`
--
ALTER TABLE `partecipanti_corso`
  ADD PRIMARY KEY (`id_partecipante_corso`) USING BTREE,
  ADD KEY `id_corso` (`id_corso`),
  ADD KEY `id_anagrafica3` (`id_anagrafica`),
  ADD KEY `id_ruolo2` (`id_ruolo`);

--
-- Indexes for table `partecipanti_eventi`
--
ALTER TABLE `partecipanti_eventi`
  ADD PRIMARY KEY (`id_partecipante_evento`) USING BTREE,
  ADD KEY `id_gruppo_di_partecipanti` (`id_gruppo_di_partecipanti`),
  ADD KEY `id_ruolo_partecipante` (`id_ruolo`),
  ADD KEY `id_anagrafica5` (`id_anagrafica`);

--
-- Indexes for table `ruoli`
--
ALTER TABLE `ruoli`
  ADD PRIMARY KEY (`id_ruolo`) USING BTREE;

--
-- Indexes for table `tipi_di_aule`
--
ALTER TABLE `tipi_di_aule`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indexes for table `tipi_evento`
--
ALTER TABLE `tipi_evento`
  ADD PRIMARY KEY (`id_tipo_evento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anagrafica`
--
ALTER TABLE `anagrafica`
  MODIFY `id_anagrafica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `aule`
--
ALTER TABLE `aule`
  MODIFY `id_aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `corsi`
--
ALTER TABLE `corsi`
  MODIFY `id_corso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eventi`
--
ALTER TABLE `eventi`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gruppi_di_partecipanti`
--
ALTER TABLE `gruppi_di_partecipanti`
  MODIFY `id_gruppo_di_partecipanti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `livelli`
--
ALTER TABLE `livelli`
  MODIFY `id_livello` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `materie`
--
ALTER TABLE `materie`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materie_nel_corso`
--
ALTER TABLE `materie_nel_corso`
  MODIFY `id_materia_nel_corso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partecipanti_corso`
--
ALTER TABLE `partecipanti_corso`
  MODIFY `id_partecipante_corso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partecipanti_eventi`
--
ALTER TABLE `partecipanti_eventi`
  MODIFY `id_partecipante_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ruoli`
--
ALTER TABLE `ruoli`
  MODIFY `id_ruolo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipi_di_aule`
--
ALTER TABLE `tipi_di_aule`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tipi_evento`
--
ALTER TABLE `tipi_evento`
  MODIFY `id_tipo_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aule`
--
ALTER TABLE `aule`
  ADD CONSTRAINT `id_tipo_aula` FOREIGN KEY (`id_tipo`) REFERENCES `tipi_di_aule` (`id_tipo`);

--
-- Constraints for table `eventi`
--
ALTER TABLE `eventi`
  ADD CONSTRAINT `id_aula` FOREIGN KEY (`id_aula`) REFERENCES `aule` (`id_aula`),
  ADD CONSTRAINT `id_organizzatore` FOREIGN KEY (`id_organizzatore`) REFERENCES `anagrafica` (`id_anagrafica`),
  ADD CONSTRAINT `id_tipo_attivita` FOREIGN KEY (`id_tipo_evento`) REFERENCES `tipi_evento` (`id_tipo_evento`);

--
-- Constraints for table `gruppi_di_partecipanti`
--
ALTER TABLE `gruppi_di_partecipanti`
  ADD CONSTRAINT `id_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventi` (`id_evento`);

--
-- Constraints for table `materie_nel_corso`
--
ALTER TABLE `materie_nel_corso`
  ADD CONSTRAINT `id_aula3` FOREIGN KEY (`id_aula`) REFERENCES `aule` (`id_aula`),
  ADD CONSTRAINT `id_corso3` FOREIGN KEY (`id_corso`) REFERENCES `corsi` (`id_corso`),
  ADD CONSTRAINT `id_docente3` FOREIGN KEY (`id_docente`) REFERENCES `anagrafica` (`id_anagrafica`),
  ADD CONSTRAINT `id_livello` FOREIGN KEY (`id_livello`) REFERENCES `livelli` (`id_livello`),
  ADD CONSTRAINT `id_materia3` FOREIGN KEY (`id_materia`) REFERENCES `materie` (`id_materia`);

--
-- Constraints for table `partecipanti_corso`
--
ALTER TABLE `partecipanti_corso`
  ADD CONSTRAINT `id_anagrafica3` FOREIGN KEY (`id_anagrafica`) REFERENCES `anagrafica` (`id_anagrafica`),
  ADD CONSTRAINT `id_corso` FOREIGN KEY (`id_corso`) REFERENCES `corsi` (`id_corso`),
  ADD CONSTRAINT `id_ruolo2` FOREIGN KEY (`id_ruolo`) REFERENCES `ruoli` (`id_ruolo`);

--
-- Constraints for table `partecipanti_eventi`
--
ALTER TABLE `partecipanti_eventi`
  ADD CONSTRAINT `id_anagrafica5` FOREIGN KEY (`id_anagrafica`) REFERENCES `anagrafica` (`id_anagrafica`),
  ADD CONSTRAINT `id_gruppo_di_partecipanti` FOREIGN KEY (`id_gruppo_di_partecipanti`) REFERENCES `gruppi_di_partecipanti` (`id_gruppo_di_partecipanti`),
  ADD CONSTRAINT `id_ruolo_partecipante` FOREIGN KEY (`id_ruolo`) REFERENCES `ruoli` (`id_ruolo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
