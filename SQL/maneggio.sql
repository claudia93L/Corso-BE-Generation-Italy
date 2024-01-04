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
-- Database: `maneggio`
--

-- --------------------------------------------------------

--
-- Table structure for table `anagrafica_clientela`
--

CREATE TABLE `anagrafica_clientela` (
  `id_anagrafica` int(11) NOT NULL,
  `nominativo` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anagrafica_clientela`
--

INSERT INTO `anagrafica_clientela` (`id_anagrafica`, `nominativo`, `telefono`, `email`, `indirizzo`, `citta`, `provincia`) VALUES
(1, 'Mario Rossi', '745484343', 'mariorossi@gmail.com', 'Via delle Ginestre', 'Roma', 'RM'),
(2, 'Lucia Bianchi', '47548568435', 'luciabianchi@gmail.com', 'Via delle Ortensie', 'Torino', 'TO'),
(3, 'Maria Verdi', '9675563424', 'mariaverdi@gmail.com', 'Via delle Ortiche', 'Milano', 'MI'),
(4, 'Luca Neri', '895563653', 'lucaneri@gmail.com', 'Via delle Mimose', 'Cagliari', 'CA'),
(5, 'Federico Grigi', '32984698365', 'federicogrigi@gmail.com', 'Via delle Olive', 'Bari', 'BA'),
(6, 'Sara Gialli', '89765675433', 'saragialli@gmail.com', 'Via degli Aranci', 'Napoli', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `anagrafica_veterinari`
--

CREATE TABLE `anagrafica_veterinari` (
  `id_veterinario` int(11) NOT NULL,
  `nome_cognome` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `p_iva` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anagrafica_veterinari`
--

INSERT INTO `anagrafica_veterinari` (`id_veterinario`, `nome_cognome`, `indirizzo`, `citta`, `provincia`, `p_iva`, `telefono`, `email`) VALUES
(1, 'Oscar Vaughn', 'Via Roma, 5', 'Roma', 'RM', '4536475868957', '3654765875', 'oscar@gmail.com'),
(2, 'Alex Moore', 'Via Milano, 7', 'Roma', 'RM', '43567586975647', '3546758687', 'alex@gmail.com'),
(3, 'Adelmio Sabbatini', 'Via Puglia, 11', 'Roma', 'RM', '674764759809709', '3786985874', 'adelmio@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `aree`
--

CREATE TABLE `aree` (
  `id_area` int(11) NOT NULL,
  `tipologia_area` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aree`
--

INSERT INTO `aree` (`id_area`, `tipologia_area`) VALUES
(1, 'Esterno'),
(2, 'Recinto livello principiante'),
(3, 'Recinto livello intermedio'),
(4, 'Recinto livello avanzato'),
(5, 'Recinto professionisti');

-- --------------------------------------------------------

--
-- Table structure for table `cavalli`
--

CREATE TABLE `cavalli` (
  `id_cavallo` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_razza` int(11) DEFAULT NULL,
  `id_proprietario` int(11) DEFAULT NULL,
  `inizio_dotazione` date DEFAULT NULL,
  `fine_dotazione` date DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_veterinario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cavalli`
--

INSERT INTO `cavalli` (`id_cavallo`, `nome`, `id_razza`, `id_proprietario`, `inizio_dotazione`, `fine_dotazione`, `id_area`, `id_veterinario`) VALUES
(1, 'Bucefalo', 7, 6, '2022-10-01', '2023-10-18', 1, 3),
(2, 'Marengo', 2, 1, NULL, NULL, 3, 1),
(3, 'Pegaso', 6, 3, '2022-08-09', '2023-04-12', 5, 2),
(4, 'Palomo', 3, 5, '2022-07-11', '2024-09-10', 2, 3),
(5, 'Rocinante', 1, 1, NULL, NULL, 4, 1),
(6, 'Incitatus', 4, 6, '2021-04-06', '2023-03-06', 5, 2),
(7, 'Sefton', 8, 4, '2022-09-02', '2025-10-14', 1, 1),
(8, 'Trigger', 5, 3, '2019-10-07', '2022-10-12', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cavalli_noleggiati`
--

CREATE TABLE `cavalli_noleggiati` (
  `id_cavallo_noleggiato` int(11) NOT NULL,
  `id_noleggio` int(11) DEFAULT NULL,
  `id_cavallo` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `inizio_noleggio` time DEFAULT NULL,
  `fine_noleggio` time DEFAULT NULL,
  `tariffa_oraria` decimal(6,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cavalli_noleggiati`
--

INSERT INTO `cavalli_noleggiati` (`id_cavallo_noleggiato`, `id_noleggio`, `id_cavallo`, `id_area`, `inizio_noleggio`, `fine_noleggio`, `tariffa_oraria`, `id_cliente`) VALUES
(1, 3, 2, 5, '17:00:00', '19:00:00', '150.00', 1),
(2, 1, 3, 4, '17:00:00', '18:00:00', '120.00', 1),
(3, 2, 7, 2, '18:00:00', '19:00:00', '80.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `id_extra` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL,
  `costo` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`id_extra`, `descrizione`, `costo`) VALUES
(1, 'Scarpe', '30.00'),
(2, 'Elmetto', '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `noleggi`
--

CREATE TABLE `noleggi` (
  `id_noleggio` int(11) NOT NULL,
  `id_cavallo_noleggiato` int(11) DEFAULT NULL,
  `data_noleggio` date DEFAULT NULL,
  `fantino` varchar(50) DEFAULT NULL,
  `id_extra` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `importo_totale` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `noleggi`
--

INSERT INTO `noleggi` (`id_noleggio`, `id_cavallo_noleggiato`, `data_noleggio`, `fantino`, `id_extra`, `id_cliente`, `importo_totale`) VALUES
(1, 2, '2022-10-11', 'Moglie', 2, 1, '150.00'),
(2, 3, '2022-10-18', 'Figlio', 1, 1, '100.00'),
(3, 1, '2022-10-27', 'Mario Rossi', NULL, 1, '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `proprietari`
--

CREATE TABLE `proprietari` (
  `id_proprietario` int(11) NOT NULL,
  `nome_proprietario` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(50) DEFAULT NULL,
  `citta` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `p_iva` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sito_web` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proprietari`
--

INSERT INTO `proprietari` (`id_proprietario`, `nome_proprietario`, `indirizzo`, `citta`, `provincia`, `p_iva`, `telefono`, `email`, `sito_web`) VALUES
(1, 'Maneggio', 'Via Roma, 5', 'Milano', 'MI', '89766875435543', '3356786785', 'info@maneggio.it', 'https://www.maneggiohorse.it'),
(2, 'Sellapro', 'Via Milano, 7', 'Torino', 'TO', '2435647586978756453', '354675867', 'info@sellapro.it', 'https://www.sellapro.it'),
(3, 'Vento in Sella', 'Via Bologna, 11', 'Roma', 'RM', '3456789675645', '345687986', 'into@ventoinsella.it', 'https://www.ventoinsella.it'),
(4, 'Selle Selvagge', 'Via Bari, 15', 'Cagliari', 'CA', '3456786907867564', '3456968', 'info@selleselvagge.it', 'https://www.selleselvagge.it'),
(5, 'Centro Canter', 'Via Cagliari, 39', 'Savona', 'SV', '34565907875463', '35467568', 'info@centrocanter.it', 'https://www.centrocanter.it'),
(6, 'Pianeta Equitazione', 'Via Palermo, 98', 'Venezia', 'VE', '987564536475687', '34567689', 'info@pianetaequitazione.it', 'https://www.pianetaequitazione.it'),
(7, 'Sportippica', 'Via Torino, 116', 'Sassari', 'SS', '98764532453645768', '435676879', 'info@sportippica.it', 'https://www.sportippica.it');

-- --------------------------------------------------------

--
-- Table structure for table `razze`
--

CREATE TABLE `razze` (
  `id_razza` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `razze`
--

INSERT INTO `razze` (`id_razza`, `descrizione`) VALUES
(1, 'Quarter Horse'),
(2, 'Arabo'),
(3, 'Paint Horse'),
(4, 'Appaloosa'),
(5, 'Maremmano'),
(6, 'Murgese'),
(7, 'Anglo Arabo Sardo'),
(8, 'Lusitano');

-- --------------------------------------------------------

--
-- Table structure for table `tariffario`
--

CREATE TABLE `tariffario` (
  `id_tariffa` int(11) NOT NULL,
  `id_area` int(11) DEFAULT NULL,
  `tariffa_oraria` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tariffario`
--

INSERT INTO `tariffario` (`id_tariffa`, `id_area`, `tariffa_oraria`) VALUES
(1, 2, '100.00'),
(2, 3, '150.00'),
(3, 4, '200.00'),
(4, 5, '250.00'),
(5, 1, '300.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anagrafica_clientela`
--
ALTER TABLE `anagrafica_clientela`
  ADD PRIMARY KEY (`id_anagrafica`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `anagrafica_veterinari`
--
ALTER TABLE `anagrafica_veterinari`
  ADD PRIMARY KEY (`id_veterinario`),
  ADD UNIQUE KEY `p_iva` (`p_iva`,`telefono`,`email`);

--
-- Indexes for table `aree`
--
ALTER TABLE `aree`
  ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `cavalli`
--
ALTER TABLE `cavalli`
  ADD PRIMARY KEY (`id_cavallo`),
  ADD KEY `id_veterinario` (`id_veterinario`),
  ADD KEY `id_scuderia` (`id_proprietario`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `id_razza` (`id_razza`);

--
-- Indexes for table `cavalli_noleggiati`
--
ALTER TABLE `cavalli_noleggiati`
  ADD PRIMARY KEY (`id_cavallo_noleggiato`),
  ADD KEY `id_noleggio` (`id_noleggio`),
  ADD KEY `id_cavallo` (`id_cavallo`),
  ADD KEY `id_area2` (`id_area`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id_extra`);

--
-- Indexes for table `noleggi`
--
ALTER TABLE `noleggi`
  ADD PRIMARY KEY (`id_noleggio`),
  ADD KEY `id_cavallo_noleggiato` (`id_cavallo_noleggiato`),
  ADD KEY `id_cliente2` (`id_cliente`),
  ADD KEY `id_extra` (`id_extra`);

--
-- Indexes for table `proprietari`
--
ALTER TABLE `proprietari`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `p_iva` (`p_iva`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sito_web` (`sito_web`);

--
-- Indexes for table `razze`
--
ALTER TABLE `razze`
  ADD PRIMARY KEY (`id_razza`);

--
-- Indexes for table `tariffario`
--
ALTER TABLE `tariffario`
  ADD PRIMARY KEY (`id_tariffa`),
  ADD KEY `id_area3` (`id_area`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anagrafica_clientela`
--
ALTER TABLE `anagrafica_clientela`
  MODIFY `id_anagrafica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anagrafica_veterinari`
--
ALTER TABLE `anagrafica_veterinari`
  MODIFY `id_veterinario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aree`
--
ALTER TABLE `aree`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cavalli`
--
ALTER TABLE `cavalli`
  MODIFY `id_cavallo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cavalli_noleggiati`
--
ALTER TABLE `cavalli_noleggiati`
  MODIFY `id_cavallo_noleggiato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `id_extra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `noleggi`
--
ALTER TABLE `noleggi`
  MODIFY `id_noleggio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `proprietari`
--
ALTER TABLE `proprietari`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `razze`
--
ALTER TABLE `razze`
  MODIFY `id_razza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tariffario`
--
ALTER TABLE `tariffario`
  MODIFY `id_tariffa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cavalli`
--
ALTER TABLE `cavalli`
  ADD CONSTRAINT `id_area` FOREIGN KEY (`id_area`) REFERENCES `aree` (`id_area`),
  ADD CONSTRAINT `id_razza` FOREIGN KEY (`id_razza`) REFERENCES `razze` (`id_razza`),
  ADD CONSTRAINT `id_scuderia` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietari` (`id_proprietario`),
  ADD CONSTRAINT `id_veterinario` FOREIGN KEY (`id_veterinario`) REFERENCES `anagrafica_veterinari` (`id_veterinario`);

--
-- Constraints for table `cavalli_noleggiati`
--
ALTER TABLE `cavalli_noleggiati`
  ADD CONSTRAINT `id_area2` FOREIGN KEY (`id_area`) REFERENCES `aree` (`id_area`),
  ADD CONSTRAINT `id_cavallo` FOREIGN KEY (`id_cavallo`) REFERENCES `cavalli` (`id_cavallo`),
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `anagrafica_clientela` (`id_anagrafica`),
  ADD CONSTRAINT `id_noleggio` FOREIGN KEY (`id_noleggio`) REFERENCES `noleggi` (`id_noleggio`);

--
-- Constraints for table `noleggi`
--
ALTER TABLE `noleggi`
  ADD CONSTRAINT `id_cavallo_noleggiato` FOREIGN KEY (`id_cavallo_noleggiato`) REFERENCES `cavalli_noleggiati` (`id_cavallo_noleggiato`),
  ADD CONSTRAINT `id_cliente2` FOREIGN KEY (`id_cliente`) REFERENCES `anagrafica_clientela` (`id_anagrafica`),
  ADD CONSTRAINT `id_extra` FOREIGN KEY (`id_extra`) REFERENCES `extra` (`id_extra`);

--
-- Constraints for table `tariffario`
--
ALTER TABLE `tariffario`
  ADD CONSTRAINT `id_area3` FOREIGN KEY (`id_area`) REFERENCES `aree` (`id_area`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
