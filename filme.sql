--
-- Database: `tpa_crud`
--

CREATE SCHEMA IF NOT EXISTS tpa_crud;
USE tpa_crud;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

DROP TABLE IF EXISTS `filme`;
CREATE TABLE `filme` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `ano` year(4) DEFAULT NULL,
  `aluguel_duracao` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `aluguel_taxa` decimal(4,2) NOT NULL DEFAULT '0.00',
  `duracao` smallint(5) UNSIGNED DEFAULT NULL,
  `valor_reposicao` decimal(5,2) NOT NULL DEFAULT '0.00',
  `classificacao` varchar(80) DEFAULT NULL,
  `caracteristicas` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`id`, `titulo`, `descricao`, `ano`, `aluguel_duracao`, `aluguel_taxa`, `duracao`, `valor_reposicao`, `classificacao`, `caracteristicas`) VALUES
(1, 'ACADEMY DINOSAUR', 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies', 2006, 6, '0.99', 86, '20.99', 'PG', 'Deleted Scenes,Behind the Scenes'),
(2, 'ACE GOLDFINGER', 'A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China', 2006, 3, '4.99', 48, '12.99', 'G', 'Trailers,Deleted Scenes'),
(3, 'ADAPTATION HOLES', 'A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory', 2006, 7, '2.99', 50, '18.99', 'NC-17', 'Trailers,Deleted Scenes'),
(4, 'AFFAIR PREJUDICE', 'A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank', 2006, 5, '2.99', 117, '26.99', 'G', 'Commentaries,Behind the Scenes'),
(5, 'AFRICAN EGG', 'A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico', 2006, 6, '2.99', 130, '22.99', 'G', 'Deleted Scenes'),
(6, 'AGENT TRUMAN', 'A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China', 2006, 3, '2.99', 169, '17.99', 'PG', 'Deleted Scenes'),
(7, 'AIRPLANE SIERRA', 'A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat', 2006, 6, '4.99', 62, '28.99', 'PG-13', 'Trailers,Deleted Scenes'),
(8, 'AIRPORT POLLOCK', 'A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India', 2006, 6, '4.99', 54, '15.99', 'R', 'Trailers'),
(9, 'ALABAMA DEVIL', 'A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat', 2006, 3, '2.99', 114, '21.99', 'PG-13', 'Trailers,Deleted Scenes'),
(10, 'ALADDIN CALENDAR', 'A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China', 2006, 6, '4.99', 63, '24.99', 'NC-17', 'Trailers,Deleted Scenes'),
(11, 'ALAMO VIDEOTAPE', 'A Boring Epistle of a Butler And a Cat who must Fight a Pastry Chef in A MySQL Convention', 2006, 6, '0.99', 126, '16.99', 'G', 'Commentaries,Behind the Scenes'),
(12, 'ALASKA PHANTOM', 'A Fanciful Saga of a Hunter And a Pastry Chef who must Vanquish a Boy in Australia', 2006, 6, '0.99', 136, '22.99', 'PG', 'Commentaries,Deleted Scenes'),
(13, 'ALI FOREVER', 'A Action-Packed Drama of a Dentist And a Crocodile who must Battle a Feminist in The Canadian Rockies', 2006, 4, '4.99', 150, '21.99', 'PG', 'Deleted Scenes,Behind the Scenes'),
(14, 'ALICE FANTASIA', 'A Emotional Drama of a A Shark And a Database Administrator who must Vanquish a Pioneer in Soviet Georgia', 2006, 6, '0.99', 94, '23.99', 'NC-17', 'Trailers,Deleted Scenes,Behind the Scenes'),
(15, 'ALIEN CENTER', 'A Brilliant Drama of a Cat And a Mad Scientist who must Battle a Feminist in A MySQL Convention', 2006, 5, '2.99', 46, '10.99', 'NC-17', 'Trailers,Commentaries,Behind the Scenes'),
(16, 'ALLEY EVOLUTION', 'A Fast-Paced Drama of a Robot And a Composer who must Battle a Astronaut in New Orleans', 2006, 6, '2.99', 180, '23.99', 'NC-17', 'Trailers,Commentaries'),
(17, 'ALONE TRIP', 'A Fast-Paced Character Study of a Composer And a Dog who must Outgun a Boat in An Abandoned Fun House', 2006, 3, '0.99', 82, '14.99', 'R', 'Trailers,Behind the Scenes'),
(18, 'ALTER VICTORY', 'A Thoughtful Drama of a Composer And a Feminist who must Meet a Secret Agent in The Canadian Rockies', 2006, 6, '0.99', 57, '27.99', 'PG-13', 'Trailers,Behind the Scenes'),
(19, 'AMADEUS HOLY', 'A Emotional Display of a Pioneer And a Technical Writer who must Battle a Man in A Baloon', 2006, 6, '0.99', 113, '20.99', 'PG', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(20, 'AMELIE HELLFIGHTERS', 'A Boring Drama of a Woman And a Squirrel who must Conquer a Student in A Baloon', 2006, 4, '4.99', 79, '23.99', 'R', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(21, 'AMERICAN CIRCUS', 'A Insightful Drama of a Girl And a Astronaut who must Face a Database Administrator in A Shark Tank', 2006, 3, '4.99', 129, '17.99', 'R', 'Commentaries,Behind the Scenes'),
(22, 'AMISTAD MIDSUMMER', 'A Emotional Character Study of a Dentist And a Crocodile who must Meet a Sumo Wrestler in California', 2006, 6, '2.99', 85, '10.99', 'G', 'Commentaries,Behind the Scenes'),
(23, 'ANACONDA CONFESSIONS', 'A Lacklusture Display of a Dentist And a Dentist who must Fight a Girl in Australia', 2006, 3, '0.99', 92, '9.99', 'R', 'Trailers,Deleted Scenes'),
(24, 'ANALYZE HOOSIERS', 'A Thoughtful Display of a Explorer And a Pastry Chef who must Overcome a Feminist in The Sahara Desert', 2006, 6, '2.99', 181, '19.99', 'R', 'Trailers,Behind the Scenes'),
(25, 'ANGELS LIFE', 'A Thoughtful Display of a Woman And a Astronaut who must Battle a Robot in Berlin', 2006, 3, '2.99', 74, '15.99', 'G', 'Trailers'),
(26, 'ANNIE IDENTITY', 'A Amazing Panorama of a Pastry Chef And a Boat who must Escape a Woman in An Abandoned Amusement Park', 2006, 3, '0.99', 86, '15.99', 'G', 'Commentaries,Deleted Scenes'),
(27, 'ANONYMOUS HUMAN', 'A Amazing Reflection of a Database Administrator And a Astronaut who must Outrace a Database Administrator in A Shark Tank', 2006, 7, '0.99', 179, '12.99', 'NC-17', 'Deleted Scenes,Behind the Scenes'),
(28, 'ANTHEM LUKE', 'A Touching Panorama of a Waitress And a Woman who must Outrace a Dog in An Abandoned Amusement Park', 2006, 5, '4.99', 91, '16.99', 'PG-13', 'Deleted Scenes,Behind the Scenes'),
(29, 'ANTITRUST TOMATOES', 'A Fateful Yarn of a Womanizer And a Feminist who must Succumb a Database Administrator in Ancient India', 2006, 5, '2.99', 168, '11.99', 'NC-17', 'Trailers,Commentaries,Deleted Scenes'),
(30, 'ANYTHING SAVANNAH', 'A Epic Story of a Pastry Chef And a Woman who must Chase a Feminist in An Abandoned Fun House', 2006, 4, '2.99', 82, '27.99', 'R', 'Trailers,Deleted Scenes,Behind the Scenes'),
(31, 'APACHE DIVINE', 'A Awe-Inspiring Reflection of a Pastry Chef And a Teacher who must Overcome a Sumo Wrestler in A U-Boat', 2006, 5, '4.99', 92, '16.99', 'NC-17', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(32, 'APOCALYPSE FLAMINGOS', 'A Astounding Story of a Dog And a Squirrel who must Defeat a Woman in An Abandoned Amusement Park', 2006, 6, '4.99', 119, '11.99', 'R', 'Trailers,Commentaries'),
(33, 'APOLLO TEEN', 'A Action-Packed Reflection of a Crocodile And a Explorer who must Find a Sumo Wrestler in An Abandoned Mine Shaft', 2006, 5, '2.99', 153, '15.99', 'PG-13', 'Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),
(34, 'ARABIA DOGMA', 'A Touching Epistle of a Madman And a Mad Cow who must Defeat a Student in Nigeria', 2006, 6, '0.99', 62, '29.99', 'NC-17', 'Commentaries,Deleted Scenes'),
(35, 'ARACHNOPHOBIA ROLLERCOASTER', 'A Action-Packed Reflection of a Pastry Chef And a Composer who must Discover a Mad Scientist in The First Manned Space Station', 2006, 4, '2.99', 147, '24.99', 'PG-13', 'Trailers,Deleted Scenes,Behind the Scenes'),
(36, 'ARGONAUTS TOWN', 'A Emotional Epistle of a Forensic Psychologist And a Butler who must Challenge a Waitress in An Abandoned Mine Shaft', 2006, 7, '0.99', 127, '12.99', 'PG-13', 'Trailers,Commentaries'),
(37, 'ARIZONA BANG', 'A Brilliant Panorama of a Mad Scientist And a Mad Cow who must Meet a Pioneer in A Monastery', 2006, 3, '2.99', 121, '28.99', 'PG', 'Trailers,Deleted Scenes'),
(38, 'ARK RIDGEMONT', 'A Beautiful Yarn of a Pioneer And a Monkey who must Pursue a Explorer in The Sahara Desert', 2006, 6, '0.99', 68, '25.99', 'NC-17', 'Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),
(39, 'ARMAGEDDON LOST', 'A Fast-Paced Tale of a Boat And a Teacher who must Succumb a Composer in An Abandoned Mine Shaft', 2006, 5, '0.99', 99, '10.99', 'G', 'Trailers'),
(40, 'ARMY FLINTSTONES', 'A Boring Saga of a Database Administrator And a Womanizer who must Battle a Waitress in Nigeria', 2006, 4, '0.99', 148, '22.99', 'R', 'Trailers,Commentaries'),
(41, 'ARSENIC INDEPENDENCE', 'A Fanciful Documentary of a Mad Cow And a Womanizer who must Find a Dentist in Berlin', 2006, 4, '0.99', 137, '17.99', 'PG', 'Trailers,Deleted Scenes,Behind the Scenes'),
(42, 'ARTIST COLDBLOODED', 'A Stunning Reflection of a Robot And a Moose who must Challenge a Woman in California', 2006, 5, '2.99', 170, '10.99', 'NC-17', 'Trailers,Behind the Scenes'),
(43, 'ATLANTIS CAUSE', 'A Thrilling Yarn of a Feminist And a Hunter who must Fight a Technical Writer in A Shark Tank', 2006, 6, '2.99', 170, '15.99', 'G', 'Behind the Scenes'),
(44, 'ATTACKS HATE', 'A Fast-Paced Panorama of a Technical Writer And a Mad Scientist who must Find a Feminist in An Abandoned Mine Shaft', 2006, 5, '4.99', 113, '21.99', 'PG-13', 'Trailers,Behind the Scenes'),
(45, 'ATTRACTION NEWTON', 'A Astounding Panorama of a Composer And a Frisbee who must Reach a Husband in Ancient Japan', 2006, 5, '4.99', 83, '14.99', 'PG-13', 'Trailers,Behind the Scenes'),
(46, 'AUTUMN CROW', 'A Beautiful Tale of a Dentist And a Mad Cow who must Battle a Moose in The Sahara Desert', 2006, 3, '4.99', 108, '13.99', 'G', 'Trailers,Commentaries,Deleted Scenes,Behind the Scenes'),
(47, 'BABY HALL', 'A Boring Character Study of a A Shark And a Girl who must Outrace a Feminist in An Abandoned Mine Shaft', 2006, 5, '4.99', 153, '23.99', 'NC-17', 'Commentaries'),
(48, 'BACKLASH UNDEFEATED', 'A Stunning Character Study of a Mad Scientist And a Mad Cow who must Kill a Car in A Monastery', 2006, 3, '4.99', 118, '24.99', 'PG-13', 'Trailers,Behind the Scenes'),
(49, 'BADMAN DAWN', 'A Emotional Panorama of a Pioneer And a Composer who must Escape a Mad Scientist in A Jet Boat', 2006, 6, '2.99', 162, '22.99', 'R', 'Trailers,Commentaries,Behind the Scenes'),
(50, 'BAKED CLEOPATRA', 'A Stunning Drama of a Forensic Psychologist And a Husband who must Overcome a Waitress in A Monastery', 2006, 3, '2.99', 182, '20.99', 'G', 'Commentaries,Behind the Scenes'),
(51, 'BALLOON HOMEWARD', 'A Insightful Panorama of a Forensic Psychologist And a Mad Cow who must Build a Mad Scientist in The First Manned Space Station', 2006, 5, '2.99', 75, '10.99', 'NC-17', 'Deleted Scenes'),
(52, 'BALLROOM MOCKINGBIRD', 'A Thrilling Documentary of a Composer And a Monkey who must Find a Feminist in California', 2006, 6, '0.99', 173, '29.99', 'G', 'Commentaries,Deleted Scenes'),
(53, 'BANG KWAI', 'A Epic Drama of a Madman And a Cat who must Face a A Shark in An Abandoned Amusement Park', 2006, 5, '2.99', 87, '25.99', 'NC-17', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(54, 'BANGER PINOCCHIO', 'A Awe-Inspiring Drama of a Car And a Pastry Chef who must Chase a Crocodile in The First Manned Space Station', 2006, 5, '0.99', 113, '15.99', 'R', 'Trailers,Commentaries,Deleted Scenes'),
(55, 'BARBARELLA STREETCAR', 'A Awe-Inspiring Story of a Feminist And a Cat who must Conquer a Dog in A Monastery', 2006, 6, '2.99', 65, '27.99', 'G', 'Behind the Scenes'),
(56, 'BAREFOOT MANCHURIAN', 'A Intrepid Story of a Cat And a Student who must Vanquish a Girl in An Abandoned Amusement Park', 2006, 6, '2.99', 129, '15.99', 'G', 'Trailers,Commentaries'),
(57, 'BASIC EASY', 'A Stunning Epistle of a Man And a Husband who must Reach a Mad Scientist in A Jet Boat', 2006, 4, '2.99', 90, '18.99', 'PG-13', 'Deleted Scenes'),
(58, 'BEACH HEARTBREAKERS', 'A Fateful Display of a Womanizer And a Mad Scientist who must Outgun a A Shark in Soviet Georgia', 2006, 6, '2.99', 122, '16.99', 'G', 'Deleted Scenes,Behind the Scenes'),
(59, 'BEAR GRACELAND', 'A Astounding Saga of a Dog And a Boy who must Kill a Teacher in The First Manned Space Station', 2006, 4, '2.99', 160, '20.99', 'R', 'Deleted Scenes'),
(60, 'BEAST HUNCHBACK', 'A Awe-Inspiring Epistle of a Student And a Squirrel who must Defeat a Boy in Ancient China', 2006, 3, '4.99', 89, '22.99', 'R', 'Deleted Scenes,Behind the Scenes'),
(61, 'BEAUTY GREASE', 'A Fast-Paced Display of a Composer And a Moose who must Sink a Robot in An Abandoned Mine Shaft', 2006, 5, '4.99', 175, '28.99', 'G', 'Trailers,Commentaries'),
(62, 'BED HIGHBALL', 'A Astounding Panorama of a Lumberjack And a Dog who must Redeem a Woman in An Abandoned Fun House', 2006, 5, '2.99', 106, '23.99', 'NC-17', 'Trailers,Commentaries,Deleted Scenes'),
(63, 'BEDAZZLED MARRIED', 'A Astounding Character Study of a Madman And a Robot who must Meet a Mad Scientist in An Abandoned Fun House', 2006, 6, '0.99', 73, '21.99', 'PG', 'Trailers,Deleted Scenes,Behind the Scenes'),
(64, 'BEETHOVEN EXORCIST', 'A Epic Display of a Pioneer And a Student who must Challenge a Butler in The Gulf of Mexico', 2006, 6, '0.99', 151, '26.99', 'PG-13', 'Commentaries,Behind the Scenes'),
(65, 'BEHAVIOR RUNAWAY', 'A Unbelieveable Drama of a Student And a Husband who must Outrace a Sumo Wrestler in Berlin', 2006, 3, '4.99', 100, '20.99', 'PG', 'Trailers,Deleted Scenes,Behind the Scenes'),
(66, 'BENEATH RUSH', 'A Astounding Panorama of a Man And a Monkey who must Discover a Man in The First Manned Space Station', 2006, 6, '0.99', 53, '27.99', 'NC-17', 'Commentaries,Deleted Scenes'),
(67, 'BERETS AGENT', 'A Taut Saga of a Crocodile And a Boy who must Overcome a Technical Writer in Ancient China', 2006, 5, '2.99', 77, '24.99', 'PG-13', 'Deleted Scenes'),
(68, 'BETRAYED REAR', 'A Emotional Character Study of a Boat And a Pioneer who must Find a Explorer in A Shark Tank', 2006, 5, '4.99', 122, '26.99', 'NC-17', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(69, 'BEVERLY OUTLAW', 'A Fanciful Documentary of a Womanizer And a Boat who must Defeat a Madman in The First Manned Space Station', 2006, 3, '2.99', 85, '21.99', 'R', 'Trailers'),
(70, 'BIKINI BORROWERS', 'A Astounding Drama of a Astronaut And a Cat who must Discover a Woman in The First Manned Space Station', 2006, 7, '4.99', 142, '26.99', 'NC-17', 'Commentaries,Deleted Scenes'),
(71, 'BILKO ANONYMOUS', 'A Emotional Reflection of a Teacher And a Man who must Meet a Cat in The First Manned Space Station', 2006, 3, '4.99', 100, '25.99', 'PG-13', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(72, 'BILL OTHERS', 'A Stunning Saga of a Mad Scientist And a Forensic Psychologist who must Challenge a Squirrel in A MySQL Convention', 2006, 6, '2.99', 93, '12.99', 'PG', 'Trailers,Commentaries'),
(73, 'BINGO TALENTED', 'A Touching Tale of a Girl And a Crocodile who must Discover a Waitress in Nigeria', 2006, 5, '2.99', 150, '22.99', 'PG-13', 'Trailers,Commentaries'),
(74, 'BIRCH ANTITRUST', 'A Fanciful Panorama of a Husband And a Pioneer who must Outgun a Dog in A Baloon', 2006, 4, '4.99', 162, '18.99', 'PG', 'Trailers,Commentaries,Deleted Scenes'),
(75, 'BIRD INDEPENDENCE', 'A Thrilling Documentary of a Car And a Student who must Sink a Hunter in The Canadian Rockies', 2006, 6, '4.99', 163, '14.99', 'G', 'Commentaries,Behind the Scenes'),
(76, 'BIRDCAGE CASPER', 'A Fast-Paced Saga of a Frisbee And a Astronaut who must Overcome a Feminist in Ancient India', 2006, 4, '0.99', 103, '23.99', 'NC-17', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(77, 'BIRDS PERDITION', 'A Boring Story of a Womanizer And a Pioneer who must Face a Dog in California', 2006, 5, '4.99', 61, '15.99', 'G', 'Trailers,Behind the Scenes'),
(78, 'BLACKOUT PRIVATE', 'A Intrepid Yarn of a Pastry Chef And a Mad Scientist who must Challenge a Secret Agent in Ancient Japan', 2006, 7, '2.99', 85, '12.99', 'PG', 'Trailers,Deleted Scenes'),
(79, 'BLADE POLISH', 'A Thoughtful Character Study of a Frisbee And a Pastry Chef who must Fight a Dentist in The First Manned Space Station', 2006, 5, '0.99', 114, '10.99', 'PG-13', 'Trailers,Behind the Scenes'),
(80, 'BLANKET BEVERLY', 'A Emotional Documentary of a Student And a Girl who must Build a Boat in Nigeria', 2006, 7, '2.99', 148, '21.99', 'G', 'Trailers'),
(81, 'BLINDNESS GUN', 'A Touching Drama of a Robot And a Dentist who must Meet a Hunter in A Jet Boat', 2006, 6, '4.99', 103, '29.99', 'PG-13', 'Trailers,Behind the Scenes'),
(82, 'BLOOD ARGONAUTS', 'A Boring Drama of a Explorer And a Man who must Kill a Lumberjack in A Manhattan Penthouse', 2006, 3, '0.99', 71, '13.99', 'G', 'Trailers,Commentaries,Behind the Scenes'),
(83, 'BLUES INSTINCT', 'A Insightful Documentary of a Boat And a Composer who must Meet a Forensic Psychologist in An Abandoned Fun House', 2006, 5, '2.99', 50, '18.99', 'G', 'Trailers,Deleted Scenes,Behind the Scenes'),
(84, 'BOILED DARES', 'A Awe-Inspiring Story of a Waitress And a Dog who must Discover a Dentist in Ancient Japan', 2006, 7, '4.99', 102, '13.99', 'PG', 'Trailers,Commentaries'),
(85, 'BONNIE HOLOCAUST', 'A Fast-Paced Story of a Crocodile And a Robot who must Find a Moose in Ancient Japan', 2006, 4, '0.99', 63, '29.99', 'G', 'Deleted Scenes'),
(86, 'BOOGIE AMELIE', 'A Lacklusture Character Study of a Husband And a Sumo Wrestler who must Succumb a Technical Writer in The Gulf of Mexico', 2006, 6, '4.99', 121, '11.99', 'R', 'Commentaries,Behind the Scenes'),
(87, 'BOONDOCK BALLROOM', 'A Fateful Panorama of a Crocodile And a Boy who must Defeat a Monkey in The Gulf of Mexico', 2006, 7, '0.99', 76, '14.99', 'NC-17', 'Behind the Scenes'),
(88, 'BORN SPINAL', 'A Touching Epistle of a Frisbee And a Husband who must Pursue a Student in Nigeria', 2006, 7, '4.99', 179, '17.99', 'PG', 'Trailers,Commentaries,Deleted Scenes'),
(89, 'BORROWERS BEDAZZLED', 'A Brilliant Epistle of a Teacher And a Sumo Wrestler who must Defeat a Man in An Abandoned Fun House', 2006, 7, '0.99', 63, '22.99', 'G', 'Commentaries,Deleted Scenes,Behind the Scenes'),
(90, 'BOULEVARD MOB', 'A Fateful Epistle of a Moose And a Monkey who must Confront a Lumberjack in Ancient China', 2006, 3, '0.99', 63, '11.99', 'R', 'Trailers'),
(91, 'BOUND CHEAPER', 'A Thrilling Panorama of a Database Administrator And a Astronaut who must Challenge a Lumberjack in A Baloon', 2006, 5, '0.99', 98, '17.99', 'PG', 'Behind the Scenes'),
(92, 'BOWFINGER GABLES', 'A Fast-Paced Yarn of a Waitress And a Composer who must Outgun a Dentist in California', 2006, 7, '4.99', 72, '19.99', 'NC-17', 'Trailers,Deleted Scenes'),
(93, 'BRANNIGAN SUNRISE', 'A Amazing Epistle of a Moose And a Crocodile who must Outrace a Dog in Berlin', 2006, 4, '4.99', 121, '27.99', 'PG', 'Trailers'),
(94, 'BRAVEHEART HUMAN', 'A Insightful Story of a Dog And a Pastry Chef who must Battle a Girl in Berlin', 2006, 7, '2.99', 176, '14.99', 'PG-13', 'Trailers,Deleted Scenes'),
(95, 'BREAKFAST GOLDFINGER', 'A Beautiful Reflection of a Student And a Student who must Fight a Moose in Berlin', 2006, 5, '4.99', 123, '18.99', 'G', 'Trailers,Commentaries,Deleted Scenes'),
(96, 'BREAKING HOME', 'A Beautiful Display of a Secret Agent And a Monkey who must Battle a Sumo Wrestler in An Abandoned Mine Shaft', 2006, 4, '2.99', 169, '21.99', 'PG-13', 'Trailers,Commentaries'),
(97, 'BRIDE INTRIGUE', 'A Epic Tale of a Robot And a Monkey who must Vanquish a Man in New Orleans', 2006, 7, '0.99', 56, '24.99', 'G', 'Trailers,Commentaries,Behind the Scenes'),
(98, 'BRIGHT ENCOUNTERS', 'A Fateful Yarn of a Lumberjack And a Feminist who must Conquer a Student in A Jet Boat', 2006, 4, '4.99', 73, '12.99', 'PG-13', 'Trailers'),
(99, 'BRINGING HYSTERICAL', 'A Fateful Saga of a A Shark And a Technical Writer who must Find a Woman in A Jet Boat', 2006, 7, '2.99', 136, '14.99', 'PG', 'Trailers'),
(100, 'BROOKLYN DESERT', 'A Beautiful Drama of a Dentist And a Composer who must Battle a Sumo Wrestler in The First Manned Space Station', 2006, 7, '4.99', 161, '21.99', 'R', 'Commentaries');

--
-- Indexes for table `filme`
--

ALTER TABLE `filme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `filmes`
--

ALTER TABLE `filme`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

