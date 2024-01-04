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
-- Database: `art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `autore`
--

CREATE TABLE `autore` (
  `id_autore` int(11) NOT NULL,
  `nome_e_cognome_autore` varchar(50) DEFAULT NULL,
  `biografia` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autore`
--

INSERT INTO `autore` (`id_autore`, `nome_e_cognome_autore`, `biografia`) VALUES
(1, 'Leonardo da Vinci', ' Leonardo da Vinci, conosciuto probabilmente come uno dei più grandi geni italiani, è nato il 15 aprile del 1452 ad Archiano di Vinci. Nel 1469 si è trasferito con il padre a Firenze, dove è diventato allievo del Verrocchio. Leonardo è cresciuto artisticamente in un ambiente dove si insegnava a concepire la figura umana, scolpita o dipinta, non immobile ma inserita nello spazio. Non si è limitato ad operare nel campo artistico ma ha spaziato in quasi tutti i campi dello scibile umano. Ha passato gli ultimi periodi della sua vita in Francia, dove ha portato alcuni quadri dipinti in Italia, tra cui la Gioconda. E\' morto ad Amboise il 2 maggio del 1519.'),
(2, 'Pieter Bruegel', 'Pieter Bruegel, o Brueghel; Breda, 1525/1530 circa – Bruxelles, 5 settembre 1569), è stato un pittore olandese. È generalmente indicato come il Vecchio per distinguerlo dal figlio primogenito, Pieter Bruegel il Giovane. Anche il secondogenito Jan Bruegel il Vecchio seguì le orme paterne e così pure il nipote Jan Bruegel il Giovane.'),
(3, 'Francis Bacon', 'Francis Bacon (Dublino, 28 ottobre 1909 – Madrid, 28 aprile 1992) è stato un pittore irlandese. È noto per le sue immagini crude e inquietanti. Focalizzati sulla forma umana, i suoi soggetti includevano generalmente crocifissioni, ritratti di papi, autoritratti e ritratti di amici intimi, con figure astratte a volte isolate in strutture geometriche. Rifiutando varie classificazioni delle sue opere, Bacon affermò che si sforzava di rendere \"la brutalità dei fatti\". Divenne noto come uno dei giganti dell\'arte contemporanea grazie al suo stile caratteristico.'),
(4, 'Jackson Pollock', 'Fondamentale artista della storia americana, Jackson Pollock nasce il 28 gennaio 1912 a Cody nello stato del Wyoming. È il rappresentante più emblematico della cosiddetta \"action painting\", la corrente che rappresenta il contributo americano all\'informale; essa consiste nel trattare la tela con ampi e violenti movimenti del pennello, attraverso \"azioni\" appunto dinamiche.'),
(5, 'Tiziano Vecellio', 'Tiziano Vecellio nasce a Pieve di Cadore, una piccola cittadina della Repubblica veneziana, intorno al 1480. Si trasferisce giovanissimo a Venezia. Si forma nella bottega di Giovanni Bellini a Venezia, dove conosce Giorgione, con il quale lavora nei primi anni della sua carriera. Nel 1513 diventa il pittore ufficiale della Repubblica di Venezia e realizza per la nobiltà molte opere di tema profano.Lavora come ritrattista nelle maggiori corti italiane ed è molto apprezzato dall’imperatore Carlo V. Intorno alla metà del secolo lavora per le più prestigiose corti italiane, come le signorie di Urbino, Ferrara e Mantova. Tra il 1545 e il 1546 è a Roma. Muore a Venezia il 27 agosto 1576.'),
(6, 'Josef Albers', 'Josef Albers nasce in Germania nel 1888 (Bottrop, Westphalia). Eserciterà il mestiere d’istitutore dal 1908 al 1913. Intraprende degli studi d’arte nel 1913. Frequenta l’Accademia Reale di Belle Arti di Berlino, la Kunstgewerbeschule di Essen, l’Accademia di Belle Arti di Berlino, poi, dal 1920 al 1923, la Bauhaus di Weimar. Albers, dopo essere stato “compagnon”, nel 1923 e per dieci anni, diventerà “maestro d’atelier” del Bauhaus. Insegna successivamente negli atelier del vetro, dell’arredamento e del disegno, dirigendo anche (dal 1928) i corsi preliminari della scuola. In questo periodo realizza un insieme di vetrate astratte e geometriche, dei pannelli quadrati o rettangolari, bianchi, neri e rossi, crea delle serie di disegni ed incisioni in cui effettua delle variazioni sulla linea ed il colore. Nel 1933 emigra negli Stati Uniti, dopo che la Bauhaus viene chiusa dal potere nazista (Albers prenderà la nazionalità americana nel 1939). L’artista approfondisce le sue ricerche sull’astrazione. S’interessa agli effetti psichici provocati dall’interazione di due colori vicini risultanti da un’esperienza estetica. Albers continua ad insegnare (Black Mountain College, Harvard, Yale, Pittsburg, etc.). La sua opera ed i suoi insegnamenti sono considerati come precursori dell’Op Art e dell’Art minimal. Nell’opera “L’hommage au carré” (Omaggio al quadrato), Albers declinerà degli insiemi di quattro e poi tre quadrati inscatolati, con formato, colore e toni differenti. L’artista lavorerà anche sulle illusioni prospettiche. Agli inizi degli anni ’50, Albers riceve delle committenze pubbliche ; realizzerà dei grandi pannelli murali e delle vetrate. Josef Albers muore a New Haven (Connecticut, Stati Uniti) nel 1976.\r\n'),
(7, 'Michelangelo Buonarroti', 'Michelangelo Buonarroti noto semplicemente come Michelangelo (Caprese, 6 marzo 1475 – Roma, 18 febbraio 1564) è stato uno scultore, pittore, architetto e poeta italiano. Daniele da Volterra, Ritratto di Michelangelo Autoritratto (?) come Nicodemo, Pietà Bandini Michelangelo, disegno di Daniele da Volterra Protagonista del Rinascimento italiano, già in vita fu riconosciuto dai suoi contemporanei come uno dei più grandi artisti di tutti i tempi. Personalità tanto geniale quanto irrequieta, il suo nome è legato ad alcune delle più maestose opere dell\'arte occidentale, fra cui si annoverano il David, il Mosè, la Pietà del Vaticano, la Cupola di San Pietro e il ciclo di affreschi nella Cappella Sistina, tutti considerati traguardi eccezionali dell\'ingegno creativo. Lo studio delle sue opere segnò le generazioni artistiche successive dando un forte impulso alla corrente del manierismo.'),
(8, 'Joan Miró', 'Joan Miró i Ferrà (Barcellona, 1893 – Palma di Maiorca, 1983) è stato uno degli autori più importanti di tutto il Novecento e ha dedicato la sua carriera a una continua sperimentazione artistica. La sua vicenda è stata spesso accostata all’avanguardia surrealista, di cui fece parte dal 1924 al 1929. Tuttavia, Miró si distaccò dal movimento dopo pochi anni, a causa del rigido schematismo imposto dal teorico più importante del sodalizio: André Robert Breton (Tinchebray, 1896 – Parigi, 1966). L’imposizione di uno stile era in netta contrapposizione con la continua sperimentazione sia in ambito tecnico che stilistico di Joan. L’immaginario artistico di Joan Miró è stato alimentato da influenze di vario genere, a partire da quelle più antiche, per esempio le pitture rupestri primitive, le opere africane e quelle cattoliche catalane. Tra i suoi modelli compaiono anche le pitture dei grandi maestri nordici del XV secolo, come Hieronymus Bosch (’s-Hertogenbosch, 1453 – 1516) e le opere più moderne dell’espressionista Edvard Munch (Løten, 1863 – Oslo, 1944). Eppure, le sue due più grandi fonti di ispirazione furono le opere e le teorie dei suoi compagni surrealisti e quelle del grande maestro Pablo Picasso (Malaga, 1881 – Mougins, 1973). Joan utilizzò questi modelli per creare il suo stile, caratterizzato da un forte spiritualismo e un’incessante ricerca di un linguaggio universalmente comprensibile.'),
(9, 'Alessandro di Antiochia', 'Alessandro di Antiochia, è stato uno scultore greco antico del periodo ellenistico, attivo intorno al 100 a.C. Attivo nel I secolo a.C., è conosciuto soprattutto per essere l\'autore della Venere di Milo, opera greca tra le più famose alta circa 2 metri che ha perso le braccia e il piedistallo originale, rinvenuta nell\'isola di Milo nel 1820 e attualmente conservata al Louvre di Parigi. La sua identità ci è nota tramite le antiche iscrizioni che recano la sua firma, tra le quali il piedistallo rinvenuto insieme alla Venere, che è stato rimosso e perso a causa delle politiche e dell\'orgoglio nazionale del Louvre negli anni 1820.[la frase andrebbe chiarita o rimossa] L\'iscrizione e lo stile della scrittura mettono in dubbio il fatto che la statua sia un originale del maestro scultore Prassitele. Sembra che Alessandro sia stato un artista viaggiatore, chiamato a lavorare per differenti committenti. Un\'iscrizione rinvenuta nell\'antica città di Tespie risalente all\'80 d.C., lo ricorda come vincitore di una gara di composizione e canto; conosciamo inoltre, sempre grazie alle iscrizioni rinvenute, il nome di suo padre, che si chiamava Menide.'),
(10, 'Auguste Rodin', 'Lo scultore francese nacque a Parigi il 12 novembre del 1840 e scomparve a Meudon il 17 febbraio del 1917. Solo tre giorni prima era scomparsa l\'amata moglie Rose. Dopo aver frequentato la scuola di arti decorative entrò nel 1864 come decoratore nell\'atelier dello scultore A.Carrier - Belleuse. Nel 1871 si trasferì a Bruxelles dove eseguì \"le Cariatidi\" del Palazzo della Borsa e i fregi del Palazzo dell\'Accademia. Nel 1875 entra a far parte della cerchia degli artisti francesi del Salon di Parigi, quando gli impressionisti avevano lasciato la loro impronta al di fuori della cultura accademica. Lavorò inoltre a numerosi progetti di monumenti, fra i quali quello di \"Balzac\" nella Boulevard Raspail a Parigi, che rappresenta il tentativo di realizzare in scultura la visione pittorica degli impressionisti. Nel 1916 donò alla nazione francese le sue sculture, i bozzetti, una vasta collezione privata d\'arte e la sua casa parigina che oggi ospita il Musée Rodin, una vita di lavoro che vien donata allo Stato, infatti il bellissimo Museo Rodin apre a Parigi nel 1919, due anni dopo la sua morte.\r\n'),
(11, 'Douglas Coupland', 'Douglas Coupland (Baden-Soellingen, 30 dicembre 1961) è uno scrittore, artista, giornalista, saggista, drammaturgo e sceneggiatore canadese. Autore ed artista visivo postmoderno, assai vicino all\'estetica Avantpop, la maggior parte delle sue opere è imperniata sull\'esplorazione della realtà vissuta dalla sua generazione, caratterizzata dalla nebulosità ideologica e culturale in un\'epoca segnata dalla sovrabbondante presenza dei mass media e da un diffuso stato d\'incertezza e precarietà socioeconomica. Col suo romanzo d\'esordio Generazione X ha di fatto coniato l\'omonima definizione per quella fascia generazionale giovanile vissuta tra la fine degli anni ottanta e gli anni novanta.'),
(12, 'Philip Jackson', 'Philip Henry Christopher Jackson è un premiato scultore scozzese, noto per il suo stile moderno e l\'enfasi delle forme. Agendo come Scultore di Corte per la regina Elisabetta II, le sue sculture appaiono in numerose città del Regno Unito, così come anche in Argentina e Svizzera. La sua statua in bronzo di Bobby Moore, due volte la grandezza naturale (6 metri di altezza), fu eretta davanti all\'ingresso principale presso il nuovo stadio di Wembley nel maggio 2007, per rendere omaggio al suo effetto sul gioco. Philip Jackson, nato nel corso della Seconda Guerra Mondiale, ora lavora presso l\'Edward Lawrence Studio in Midhurst, West Sussex e vive nelle vicinanze. Ha frequentato la Scuola d\'Arte Farnham (oggi Università per le Arti Creative). Dopo aver lasciato la scuola, ha fatto il fotoreporter per un anno e poi si è aggregato ad una società di design come scultore. La metà del suo tempo viene speso per le commissioni e l\'altra metà per la sua galleria di sculture. Jackson è ben noto per i suoi pezzi più importanti esposti all\'aperto, come il giovane Mozart nel Chelsea e la scultura per la Liberazione del Jersey. Le sue fonti di ispirazione sono stati Epstein, Rodin, Henry Moore, Oscar Nemon e Kenneth Armitage . Ma più potenti influenze nella sua vita sono dovute alla moglie e al figlio Jean Jamie che lavorano con lui.'),
(13, 'Helen Frankenthaler', 'Helen Frankenthaler, membro integrante della cosiddetta seconda ondata di espressionisti astratti, è lodata per la sua sperimentazione materiale. Attraverso le sue tele lussureggianti, ha sviluppato la sua caratteristica tecnica di macchia di ammollo, in cui ha applicato lavaggi di vernice diluita su tela non preparata. Questa strategia creò blocchi di colore vividi e apparentemente fluenti ed esercitò una forte influenza su pittori di campi di colore come Morris Louis e Kenneth Noland. Durante la sua vita, Frankenthaler ha mostrato ampiamente in città tra cui New York, Los Angeles, Parigi, San Francisco, Chicago e Londra, tra gli altri. Le sue opere appartengono alle collezioni dell\'Art Institute di Chicago, del Metropolitan Museum of Art, del San Francisco Museum of Modern Art, della Tate e della National Gallery of Art di Washington d.C. Oltre ai suoi dipinti, Frankenthaler realizza anche sculture in ceramica e acciaio e mantiene una vasta pratica di stampa.'),
(14, 'Alessandra Rossi', 'I lavori della friulana Alessandra Rossi esplorano il rapporto tra ciò che è visibile e ciò che è più in profondità, nascosto. Sulla linea di confine tra narrazione e astrazione, in un lavoro in cui prevale l’istinto, si materializzano i pensieri e gli stati d’animo dell’artista. Attraverso le sue opere Alessandra Rossi si interroga su come la tecnologia abbia cambiato il nostro modo di relazionarci, rendendoci scollegati allo stesso tempo.');

-- --------------------------------------------------------

--
-- Table structure for table `collezionista`
--

CREATE TABLE `collezionista` (
  `id_collezionista` int(11) NOT NULL,
  `nome_collezionista` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collezionista`
--

INSERT INTO `collezionista` (`id_collezionista`, `nome_collezionista`) VALUES
(1, 'Bernard Arnault'),
(2, 'David Geffen'),
(3, 'Steven Cohen'),
(4, 'Charles Saatchi'),
(5, 'Maja Hoffmann');

-- --------------------------------------------------------

--
-- Table structure for table `eventi`
--

CREATE TABLE `eventi` (
  `id_evento` int(11) NOT NULL,
  `titolo_evento` varchar(100) DEFAULT NULL,
  `descrizione_evento` text,
  `data_iniziale_evento` date DEFAULT NULL,
  `data_finale_evento` date DEFAULT NULL,
  `id_sede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `opere`
--

CREATE TABLE `opere` (
  `id_opera` int(11) NOT NULL,
  `nome_opera` varchar(50) DEFAULT NULL,
  `descrizione_opera` text,
  `id_autore` int(11) DEFAULT NULL,
  `id_tipologia_opera` int(11) DEFAULT NULL,
  `id_tecnica_utilizzata` int(11) DEFAULT NULL,
  `id_collezionista` int(11) DEFAULT NULL,
  `id_proprieta` int(11) DEFAULT NULL,
  `data_di_acquisizione` date DEFAULT NULL,
  `data_di_rilascio` date DEFAULT NULL,
  `larghezza` decimal(6,2) DEFAULT NULL,
  `altezza` decimal(6,2) DEFAULT NULL,
  `profondita` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opere_evento`
--

CREATE TABLE `opere_evento` (
  `id_opera_evento` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_opere` int(11) DEFAULT NULL,
  `id_sala` int(11) DEFAULT NULL,
  `id_parete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ospiti`
--

CREATE TABLE `ospiti` (
  `id_ospite` int(11) NOT NULL,
  `nome_ospite` varchar(50) DEFAULT NULL,
  `telefono_cellulare` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ospiti_in_evento`
--

CREATE TABLE `ospiti_in_evento` (
  `id_ospite_in_evento` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_ospite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pareti`
--

CREATE TABLE `pareti` (
  `id_parete` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pareti`
--

INSERT INTO `pareti` (`id_parete`, `descrizione`) VALUES
(6, 'Parete Nord'),
(7, 'Parete Sud'),
(8, 'Parete Est');

-- --------------------------------------------------------

--
-- Table structure for table `proprieta`
--

CREATE TABLE `proprieta` (
  `id_proprieta` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proprieta`
--

INSERT INTO `proprieta` (`id_proprieta`, `descrizione`) VALUES
(5, 'Di Proprietà'),
(6, 'In Prestito'),
(7, 'Galleria d\'Arte'),
(8, 'Museo'),
(9, 'Chiesa');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id_sala` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id_sala`, `descrizione`) VALUES
(1, 'SALA 1'),
(2, 'SALA 2'),
(3, 'SALA 3'),
(4, 'SALA 4'),
(5, 'SALA 5');

-- --------------------------------------------------------

--
-- Table structure for table `sedi`
--

CREATE TABLE `sedi` (
  `id_sede` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tecnica_utilizzata`
--

CREATE TABLE `tecnica_utilizzata` (
  `id_tecnica_utilizzata` int(11) NOT NULL,
  `descrizione` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tecnica_utilizzata`
--

INSERT INTO `tecnica_utilizzata` (`id_tecnica_utilizzata`, `descrizione`) VALUES
(1, 'Olio su Tela'),
(2, 'Olio su Tavola'),
(3, 'Scultura Legno'),
(4, 'Scultura Bronzo'),
(5, 'Scultura Materiali Vari'),
(6, 'Acquerello su Cartoncino');

-- --------------------------------------------------------

--
-- Table structure for table `tipologie_opera`
--

CREATE TABLE `tipologie_opera` (
  `id_tipologia_opera` int(11) NOT NULL,
  `descrizione_tipologia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tipologie_opera`
--

INSERT INTO `tipologie_opera` (`id_tipologia_opera`, `descrizione_tipologia`) VALUES
(1, 'Opera Rinascimentale'),
(2, 'Opera Contemporanea'),
(3, 'Opera Astratta'),
(4, 'Scultura Classica'),
(5, 'Scultura Contemporanea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autore`
--
ALTER TABLE `autore`
  ADD PRIMARY KEY (`id_autore`);

--
-- Indexes for table `collezionista`
--
ALTER TABLE `collezionista`
  ADD PRIMARY KEY (`id_collezionista`);

--
-- Indexes for table `eventi`
--
ALTER TABLE `eventi`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `id_luogo` (`id_sede`);

--
-- Indexes for table `opere`
--
ALTER TABLE `opere`
  ADD PRIMARY KEY (`id_opera`),
  ADD KEY `id_artista` (`id_autore`),
  ADD KEY `id_genere` (`id_tipologia_opera`),
  ADD KEY `id_tecnica` (`id_tecnica_utilizzata`),
  ADD KEY `id_provenienza` (`id_proprieta`),
  ADD KEY `id_proprietario` (`id_collezionista`);

--
-- Indexes for table `opere_evento`
--
ALTER TABLE `opere_evento`
  ADD PRIMARY KEY (`id_opera_evento`),
  ADD KEY `id_locale` (`id_sala`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_opera` (`id_opere`),
  ADD KEY `id_parete` (`id_parete`);

--
-- Indexes for table `ospiti`
--
ALTER TABLE `ospiti`
  ADD PRIMARY KEY (`id_ospite`);

--
-- Indexes for table `ospiti_in_evento`
--
ALTER TABLE `ospiti_in_evento`
  ADD PRIMARY KEY (`id_ospite_in_evento`),
  ADD KEY `id_anagrafica` (`id_ospite`),
  ADD KEY `id_evento1` (`id_evento`);

--
-- Indexes for table `pareti`
--
ALTER TABLE `pareti`
  ADD PRIMARY KEY (`id_parete`);

--
-- Indexes for table `proprieta`
--
ALTER TABLE `proprieta`
  ADD PRIMARY KEY (`id_proprieta`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indexes for table `sedi`
--
ALTER TABLE `sedi`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indexes for table `tecnica_utilizzata`
--
ALTER TABLE `tecnica_utilizzata`
  ADD PRIMARY KEY (`id_tecnica_utilizzata`);

--
-- Indexes for table `tipologie_opera`
--
ALTER TABLE `tipologie_opera`
  ADD PRIMARY KEY (`id_tipologia_opera`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autore`
--
ALTER TABLE `autore`
  MODIFY `id_autore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `collezionista`
--
ALTER TABLE `collezionista`
  MODIFY `id_collezionista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventi`
--
ALTER TABLE `eventi`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opere`
--
ALTER TABLE `opere`
  MODIFY `id_opera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opere_evento`
--
ALTER TABLE `opere_evento`
  MODIFY `id_opera_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospiti`
--
ALTER TABLE `ospiti`
  MODIFY `id_ospite` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ospiti_in_evento`
--
ALTER TABLE `ospiti_in_evento`
  MODIFY `id_ospite_in_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pareti`
--
ALTER TABLE `pareti`
  MODIFY `id_parete` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `proprieta`
--
ALTER TABLE `proprieta`
  MODIFY `id_proprieta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sedi`
--
ALTER TABLE `sedi`
  MODIFY `id_sede` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tecnica_utilizzata`
--
ALTER TABLE `tecnica_utilizzata`
  MODIFY `id_tecnica_utilizzata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tipologie_opera`
--
ALTER TABLE `tipologie_opera`
  MODIFY `id_tipologia_opera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eventi`
--
ALTER TABLE `eventi`
  ADD CONSTRAINT `id_sede` FOREIGN KEY (`id_sede`) REFERENCES `sedi` (`id_sede`);

--
-- Constraints for table `opere`
--
ALTER TABLE `opere`
  ADD CONSTRAINT `id_autore` FOREIGN KEY (`id_autore`) REFERENCES `autore` (`id_autore`),
  ADD CONSTRAINT `id_collezionista` FOREIGN KEY (`id_collezionista`) REFERENCES `collezionista` (`id_collezionista`),
  ADD CONSTRAINT `id_proprieta` FOREIGN KEY (`id_proprieta`) REFERENCES `proprieta` (`id_proprieta`),
  ADD CONSTRAINT `id_tecnica_utilizzata` FOREIGN KEY (`id_tecnica_utilizzata`) REFERENCES `tecnica_utilizzata` (`id_tecnica_utilizzata`),
  ADD CONSTRAINT `id_tipologia_opera` FOREIGN KEY (`id_tipologia_opera`) REFERENCES `tipologie_opera` (`id_tipologia_opera`);

--
-- Constraints for table `opere_evento`
--
ALTER TABLE `opere_evento`
  ADD CONSTRAINT `id_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventi` (`id_evento`),
  ADD CONSTRAINT `id_opera` FOREIGN KEY (`id_opere`) REFERENCES `opere` (`id_opera`),
  ADD CONSTRAINT `id_parete` FOREIGN KEY (`id_parete`) REFERENCES `pareti` (`id_parete`),
  ADD CONSTRAINT `id_sala` FOREIGN KEY (`id_sala`) REFERENCES `sale` (`id_sala`);

--
-- Constraints for table `ospiti_in_evento`
--
ALTER TABLE `ospiti_in_evento`
  ADD CONSTRAINT `id_evento1` FOREIGN KEY (`id_evento`) REFERENCES `eventi` (`id_evento`),
  ADD CONSTRAINT `id_ospite` FOREIGN KEY (`id_ospite`) REFERENCES `ospiti` (`id_ospite`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
