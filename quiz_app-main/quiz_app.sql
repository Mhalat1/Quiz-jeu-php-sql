-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 18 juin 2024 à 11:36
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quiz_app`
--

-- --------------------------------------------------------
--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `answers`;
DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `difficulty` varchar(50) DEFAULT NULL,
  `options` text DEFAULT NULL,
  `correctAnswer` TINYINT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `question`, `category`, `difficulty`, `options`, `correctAnswer`) VALUES
(4, 'Quel Pokémon est une souris électrique ?', 'Pokemon', 'Facile', '["Salamèche", "Pikachu", "Bulbizarre", "Carapuce"]', 2),
(5, 'Quel type est le Pokémon Rondoudou ?', 'Pokemon', 'Moyen', '["Eau", "Feu", "Fée", "Électrique"]', 3),
(6, 'Quel Pokémon évolue en Dracaufeu ?', 'Pokemon', 'Facile', '["Reptincel", "Bulbizarre", "Carapuce", "Roucoups"]', 1),
(7, 'Quel Pokémon est numéro 1 dans le Pokédex ?', 'Pokemon', 'Facile', '["Bulbizarre", "Herbizarre", "Florizarre", "Salamèche"]', 1),
(8, 'De quelle couleur est Léviator shiny ?', 'Pokemon', 'Moyen', '["Bleu", "Rouge", "Vert", "Jaune"]', 2),
(9, 'Quel Pokémon est connu pour dire \"Carapuce, à l\'attaque\" ?', 'Pokemon', 'Facile', '["Salamèche", "Pikachu", "Bulbizarre", "Carapuce"]', 4),
(10, 'Quel est le type principal de Dracolosse ?', 'Pokemon', 'Moyen', '["Dragon", "Vol", "Eau", "Feu"]', 1),
(11, 'Quelle est l\'évolution de Pikachu ?', 'Pokemon', 'Facile', '["Raichu", "Evoli", "Voltali", "Roucarnage"]', 1),
(12, 'Quel Pokémon est le partenaire principal de Sacha dans l\'anime ?', 'Pokemon', 'Facile', '["Bulbizarre", "Pikachu", "Carapuce", "Salamèche"]', 2),
(13, 'Quel type de Pokémon est Arcanin ?', 'Pokemon', 'Moyen', '["Feu", "Eau", "Électrique", "Plante"]', 1),
(14, 'Quel est le héros principal de la série The Legend of Zelda ?', 'Jeux vidéos', 'Facile', '["Link", "Zelda", "Ganon", "Sheik"]', 1),
(15, 'Quel jeu vidéo met en scène des voitures jouant au football ?', 'Jeux vidéos', 'Moyen', '["Rocket League", "Need for Speed", "FIFA", "Gran Turismo"]', 1),
(16, 'Dans quel jeu vidéo trouve-t-on l\'île de Banoi ?', 'Jeux vidéos', 'Moyen', '["Dead Island", "Far Cry", "Crysis", "Just Cause"]', 1),
(17, 'Quel est le nom du personnage principal de la série Halo ?', 'Jeux vidéos', 'Facile', '["Master Chief", "Cortana", "Arbiter", "Sergeant Johnson"]', 1),
(18, 'Quel jeu vidéo a popularisé le genre Battle Royale ?', 'Jeux vidéos', 'Moyen', '["PUBG", "Fortnite", "Apex Legends", "Call of Duty: Warzone"]', 1),
(19, 'Dans quel jeu incarne-t-on un tueur à gages nommé Agent 47 ?', 'Jeux vidéos', 'Facile', '["Hitman", "Assassin\'s Creed", "Splinter Cell", "Metal Gear Solid"]', 1),
(20, 'Quel est le studio de développement derrière le jeu The Witcher 3 ?', 'Jeux vidéos', 'Moyen', '["CD Projekt Red", "Bethesda", "Ubisoft", "Rockstar Games"]', 1),
(21, 'Dans quel jeu vidéo peut-on explorer une version fictive de l\'Amérique post-apocalyptique appelée Appalachia ?', 'Jeux vidéos', 'Difficile', '["Fallout 76", "The Last of Us", "Metro Exodus", "Days Gone"]', 1),
(22, 'Quel jeu vidéo met en scène une civilisation futuriste attaquée par des créatures extraterrestres appelées les Zergs ?', 'Jeux vidéos', 'Difficile', '["StarCraft", "Mass Effect", "Halo", "Warframe"]', 1),
(23, 'Quel jeu vidéo met en scène des robots géants pilotés par des humains dans des combats intenses ?', 'Jeux vidéos', 'Moyen', '["Titanfall", "MechWarrior", "Gundam", "Armored Core"]', 1),
(24, 'Quel film a remporté l\'Oscar du meilleur film en 2020 ?', 'Films', 'Facile', '["Parasite", "1917", "Joker", "Once Upon a Time in Hollywood"]', 1),
(25, 'Qui a réalisé le film \"Inception\" sorti en 2010 ?', 'Films', 'Moyen', '["Christopher Nolan", "Steven Spielberg", "James Cameron", "Quentin Tarantino"]', 1),
(26, 'Dans quel film trouve-t-on le personnage de Jack Dawson ?', 'Films', 'Facile', '["Titanic", "Avatar", "Inception", "The Great Gatsby"]', 1),
(27, 'Quel est le premier film de la saga Star Wars sorti en 1977 ?', 'Films', 'Facile', '["Star Wars: Episode IV - A New Hope", "Star Wars: Episode V - The Empire Strikes Back", "Star Wars: Episode VI - Return of the Jedi", "Star Wars: Episode I - The Phantom Menace"]', 1),
(28, 'Quel film met en scène un T-Rex et un parc à thème préhistorique ?', 'Films', 'Facile', '["Jurassic Park", "King Kong", "Godzilla", "The Lost World"]', 1),
(29, 'Qui joue le rôle principal dans le film \"Forrest Gump\" ?', 'Films', 'Facile', '["Tom Hanks", "Brad Pitt", "Leonardo DiCaprio", "Johnny Depp"]', 1),
(30, 'Quel film d\'animation de Disney met en scène un lion nommé Simba ?', 'Films', 'Facile', '["Le Roi Lion", "Bambi", "Tarzan", "Hercules"]', 1),
(31, 'Quel film de Quentin Tarantino raconte l\'histoire de deux gangsters, un boxeur et un couple de braqueurs ?', 'Films', 'Moyen', '["Pulp Fiction", "Reservoir Dogs", "Kill Bill", "Inglourious Basterds"]', 1),
(32, 'Dans quel film trouve-t-on le personnage de Neo, interprété par Keanu Reeves ?', 'Films', 'Facile', '["The Matrix", "John Wick", "Speed", "Constantine"]', 1),
(33, 'Quel film est basé sur l\'histoire vraie du naufrage du Titanic ?', 'Films', 'Facile', '["Titanic", "Poseidon", "The Abyss", "The Perfect Storm"]', 1),
(34, 'Quel est le nom du héros principal de \"One Piece\" ?', 'Manga', 'Facile', '["Luffy", "Zoro", "Sanji", "Nami"]', 1),
(35, 'Dans \"Naruto\", quel est le démon renard à neuf queues scellé en Naruto ?', 'Manga', 'Moyen', '["Kurama", "Shukaku", "Matatabi", "Gyuki"]', 1),
(36, 'Quel manga met en scène des chasseurs de titans ?', 'Manga', 'Facile', '["L\'Attaque des Titans", "Bleach", "One Piece", "Fairy Tail"]', 1),
(37, 'Qui est le créateur du manga \"Dragon Ball\" ?', 'Manga', 'Facile', '["Akira Toriyama", "Eiichiro Oda", "Masashi Kishimoto", "Yoshihiro Togashi"]', 1),
(38, 'Dans \"Death Note\", quel est le nom du dieu de la mort qui accompagne Light Yagami ?', 'Manga', 'Moyen', '["Ryuk", "Rem", "Sidoh", "Gelus"]', 1),
(39, 'Quel manga suit les aventures d\'un groupe de lycéens piégés dans un jeu mortel appelé \"Gantz\" ?', 'Manga', 'Difficile', '["Gantz", "Sword Art Online", "Death Parade", "Btooom!"]', 1),
(40, 'Dans \"My Hero Academia\", quel est le véritable nom de l\'héroïne Uravity ?', 'Manga', 'Moyen', '["Ochaco Uraraka", "Momo Yaoyorozu", "Tsuyu Asui", "Kyoka Jiro"]', 1),
(41, 'Quel manga se déroule dans le monde des alchimistes et suit les frères Elric ?', 'Manga', 'Facile', '["Fullmetal Alchemist", "Blue Exorcist", "Soul Eater", "Black Clover"]', 1),
(42, 'Dans \"Hunter x Hunter\", quel est le nom du meilleur ami de Gon ?', 'Manga', 'Facile', '["Killua", "Kurapika", "Leorio", "Hisoka"]', 1),
(43, 'Quel manga met en scène un jeune homme nommé Eren Jaeger qui veut éliminer tous les titans ?', 'Manga', 'Facile', '["L\'Attaque des Titans", "Bleach", "One Piece", "Fairy Tail"]', 1),
(44, 'new', 'new', 'new', '["option1", "option2", "option3", "option4"]', 1);

-- --------------------------------------------------------

--
-- Structure de la table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `description`) VALUES
(5, 'Quiz Pokemon', 'Quiz sur les Pokémon'),
(6, 'Quiz Jeux vidéos', 'Quiz sur les jeux vidéos'),
(7, 'Quiz Films', 'Quiz sur les films'),
(8, 'Quiz Manga', 'Quiz sur les mangas');

-- --------------------------------------------------------

--
-- Structure de la table `quiz_questions`
--

DROP TABLE IF EXISTS `quiz_questions`;
CREATE TABLE IF NOT EXISTS `quiz_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`quiz_id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `question_id`) VALUES
(1, 5, 4),
(2, 5, 5),
(3, 5, 6),
(4, 5, 7),
(5, 5, 8),
(6, 5, 9),
(7, 5, 10),
(8, 5, 11),
(9, 5, 12),
(10, 5, 13),
(11, 6, 14),
(12, 6, 15),
(13, 6, 16),
(14, 6, 17),
(15, 6, 18),
(16, 6, 19),
(17, 6, 20),
(18, 6, 21),
(19, 6, 22),
(20, 6, 23),
(21, 7, 24),
(22, 7, 25),
(23, 7, 26),
(24, 7, 27),
(25, 7, 28),
(26, 7, 29),
(27, 7, 30),
(28, 7, 31),
(29, 7, 32),
(30, 7, 33),
(31, 8, 34),
(32, 8, 35),
(33, 8, 36),
(34, 8, 37),
(35, 8, 38),
(36, 8, 39),
(37, 8, 40),
(38, 8, 41),
(39, 8, 42),
(40, 8, 43);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
