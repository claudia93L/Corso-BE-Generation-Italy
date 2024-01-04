-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 04, 2024 at 04:33 PM
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
-- Database: `analisi_cliniche`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisi`
--

CREATE TABLE `analisi` (
  `id_analisi` int(11) NOT NULL,
  `id_paziente` int(11) DEFAULT NULL,
  `nominativo_paziente` varchar(50) DEFAULT NULL,
  `data_analisi` date DEFAULT NULL,
  `S_Lipasi` decimal(6,2) DEFAULT NULL,
  `P_Fibrinogeno` decimal(6,2) DEFAULT NULL,
  `S_Troponina_cardiaca` decimal(6,2) DEFAULT NULL,
  `S_Carbamazepina` decimal(6,2) DEFAULT NULL,
  `Esito` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analisi`
--

INSERT INTO `analisi` (`id_analisi`, `id_paziente`, `nominativo_paziente`, `data_analisi`, `S_Lipasi`, `P_Fibrinogeno`, `S_Troponina_cardiaca`, `S_Carbamazepina`, `Esito`) VALUES
(1, 1, 'Mario Rossi', '2022-10-02', '25.68', '350.20', '0.30', '6.10', 'Negativo'),
(2, 2, 'Lucia Bianchi', '2022-10-04', '26.14', '250.41', '0.50', '7.47', 'Negativo'),
(3, 3, 'Maria Verdi', '2022-09-27', '50.06', '300.78', '0.06', '11.90', 'Negativo'),
(4, 4, 'Luca Neri', '2022-10-01', '30.67', '210.24', '0.20', '8.78', 'Negativo'),
(5, 5, 'Federico Grigi', '2022-10-02', '40.89', '380.36', '0.10', '5.36', 'Negativo'),
(6, 6, 'Sara Gialli', '2022-09-18', '37.56', '348.85', '0.14', '10.42', 'Negativo');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dati_test_join`
-- (See below for the actual view)
--
CREATE TABLE `dati_test_join` (
`nominativo_paziente` varchar(50)
,`data_analisi` date
,`S_Lipasi` decimal(6,2)
,`esito` varchar(10)
,`indirizzo` varchar(100)
,`localita` varchar(50)
,`cap` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `esiti_pazienti`
-- (See below for the actual view)
--
CREATE TABLE `esiti_pazienti` (
`nominativo` varchar(50)
,`data_analisi` date
,`esito` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `pazienti`
--

CREATE TABLE `pazienti` (
  `id_paziente` int(11) NOT NULL,
  `nominativo` varchar(50) DEFAULT NULL,
  `indirizzo` varchar(100) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `localita` varchar(50) DEFAULT NULL,
  `provincia` varchar(2) DEFAULT NULL,
  `codice_fiscale` varchar(16) DEFAULT NULL,
  `data_di_nascita` date DEFAULT NULL,
  `carta_di_credito` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pazienti`
--

INSERT INTO `pazienti` (`id_paziente`, `nominativo`, `indirizzo`, `cap`, `localita`, `provincia`, `codice_fiscale`, `data_di_nascita`, `carta_di_credito`) VALUES
(1, 'Mario Rossi', 'Via delle Ginestre', '00123', 'Roma', 'RM', 'KHKUFS3846847', '1990-05-20', '2694386498236494'),
(2, 'Lucia Bianchi', 'Via delle Ortensie', '00123', 'Roma', 'RM', 'KHDKDHFIH5647', '1985-08-25', '836498236489475'),
(3, 'Maria Verdi', 'Via delle Ortiche', '80100', 'Napoli', 'NA', 'JGFIDUGFIU36563', '1960-03-15', '8364783264876436'),
(4, 'Luca Neri', 'Via delle Mimose', '80100', 'Napoli', 'NA', 'RUIYIHFD67476', '1945-02-12', '3248968926346'),
(5, 'Federico Grigi', 'Via delle Olive', '70125', 'Bari', 'BA', 'FIUSDYIUF7578545', '1975-08-09', '87587578578434'),
(6, 'Sara Gialli', 'Via delle Arance', '70125', 'Bari', 'BA', 'SDFOIFIO64764576', '1995-10-28', '475568568765845');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_assistenti`
-- (See below for the actual view)
--
CREATE TABLE `vista_assistenti` (
`nominativo_paziente` varchar(50)
,`data_analisi` date
,`S_Lipasi` decimal(6,2)
,`P_Fibrinogeno` decimal(6,2)
,`S_Troponina_cardiaca` decimal(6,2)
,`S_Carbamazepina` decimal(6,2)
,`Esito` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_contabilita`
-- (See below for the actual view)
--
CREATE TABLE `vista_contabilita` (
`nominativo` varchar(50)
,`carta_di_credito` varchar(16)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_medici`
-- (See below for the actual view)
--
CREATE TABLE `vista_medici` (
`nominativo_paziente` varchar(50)
,`data_analisi` date
,`S_Lipasi` decimal(6,2)
,`P_Fibrinogeno` decimal(6,2)
,`S_Troponina_cardiaca` decimal(6,2)
,`S_Carbamazepina` decimal(6,2)
,`Esito` varchar(10)
,`indirizzo` varchar(100)
,`cap` varchar(5)
,`localita` varchar(50)
,`provincia` varchar(2)
,`codice_fiscale` varchar(16)
,`data_di_nascita` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vista_segreteria`
-- (See below for the actual view)
--
CREATE TABLE `vista_segreteria` (
`nominativo` varchar(50)
,`indirizzo` varchar(100)
,`cap` varchar(5)
,`localita` varchar(50)
,`provincia` varchar(2)
,`data_di_nascita` date
);

-- --------------------------------------------------------

--
-- Structure for view `dati_test_join`
--
DROP TABLE IF EXISTS `dati_test_join`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dati_test_join`  AS SELECT `analisi`.`nominativo_paziente` AS `nominativo_paziente`, `analisi`.`data_analisi` AS `data_analisi`, `analisi`.`S_Lipasi` AS `S_Lipasi`, `analisi`.`Esito` AS `esito`, `pazienti`.`indirizzo` AS `indirizzo`, `pazienti`.`localita` AS `localita`, `pazienti`.`cap` AS `cap` FROM (`pazienti` join `analisi` on((`analisi`.`nominativo_paziente` = `pazienti`.`nominativo`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `esiti_pazienti`
--
DROP TABLE IF EXISTS `esiti_pazienti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `esiti_pazienti`  AS SELECT `pazienti`.`nominativo` AS `nominativo`, `analisi`.`data_analisi` AS `data_analisi`, `analisi`.`Esito` AS `esito` FROM (`pazienti` join `analisi` on((`analisi`.`nominativo_paziente` = `pazienti`.`nominativo`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `vista_assistenti`
--
DROP TABLE IF EXISTS `vista_assistenti`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_assistenti`  AS SELECT `analisi`.`nominativo_paziente` AS `nominativo_paziente`, `analisi`.`data_analisi` AS `data_analisi`, `analisi`.`S_Lipasi` AS `S_Lipasi`, `analisi`.`P_Fibrinogeno` AS `P_Fibrinogeno`, `analisi`.`S_Troponina_cardiaca` AS `S_Troponina_cardiaca`, `analisi`.`S_Carbamazepina` AS `S_Carbamazepina`, `analisi`.`Esito` AS `Esito` FROM `analisi``analisi`  ;

-- --------------------------------------------------------

--
-- Structure for view `vista_contabilita`
--
DROP TABLE IF EXISTS `vista_contabilita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_contabilita`  AS SELECT `pazienti`.`nominativo` AS `nominativo`, `pazienti`.`carta_di_credito` AS `carta_di_credito` FROM `pazienti``pazienti`  ;

-- --------------------------------------------------------

--
-- Structure for view `vista_medici`
--
DROP TABLE IF EXISTS `vista_medici`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medici`  AS SELECT `analisi`.`nominativo_paziente` AS `nominativo_paziente`, `analisi`.`data_analisi` AS `data_analisi`, `analisi`.`S_Lipasi` AS `S_Lipasi`, `analisi`.`P_Fibrinogeno` AS `P_Fibrinogeno`, `analisi`.`S_Troponina_cardiaca` AS `S_Troponina_cardiaca`, `analisi`.`S_Carbamazepina` AS `S_Carbamazepina`, `analisi`.`Esito` AS `Esito`, `pazienti`.`indirizzo` AS `indirizzo`, `pazienti`.`cap` AS `cap`, `pazienti`.`localita` AS `localita`, `pazienti`.`provincia` AS `provincia`, `pazienti`.`codice_fiscale` AS `codice_fiscale`, `pazienti`.`data_di_nascita` AS `data_di_nascita` FROM (`analisi` join `pazienti` on((`analisi`.`id_paziente` = `pazienti`.`id_paziente`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `vista_segreteria`
--
DROP TABLE IF EXISTS `vista_segreteria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_segreteria`  AS SELECT `pazienti`.`nominativo` AS `nominativo`, `pazienti`.`indirizzo` AS `indirizzo`, `pazienti`.`cap` AS `cap`, `pazienti`.`localita` AS `localita`, `pazienti`.`provincia` AS `provincia`, `pazienti`.`data_di_nascita` AS `data_di_nascita` FROM `pazienti``pazienti`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisi`
--
ALTER TABLE `analisi`
  ADD PRIMARY KEY (`id_analisi`),
  ADD KEY `id_paziente` (`id_paziente`);

--
-- Indexes for table `pazienti`
--
ALTER TABLE `pazienti`
  ADD PRIMARY KEY (`id_paziente`),
  ADD UNIQUE KEY `codice_fiscale` (`codice_fiscale`,`carta_di_credito`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisi`
--
ALTER TABLE `analisi`
  MODIFY `id_analisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pazienti`
--
ALTER TABLE `pazienti`
  MODIFY `id_paziente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analisi`
--
ALTER TABLE `analisi`
  ADD CONSTRAINT `id_paziente` FOREIGN KEY (`id_paziente`) REFERENCES `pazienti` (`id_paziente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
