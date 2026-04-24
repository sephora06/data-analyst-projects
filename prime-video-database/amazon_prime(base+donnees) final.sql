-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : dim. 18 mai 2025 à 13:26
-- Version du serveur : 8.0.40
-- Version de PHP : 8.3.14

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `amazon_prime`
--
CREATE DATABASE IF NOT EXISTS `amazon_prime` DEFAULT CHARACTER SET utf8mb4 ;
USE `amazon_prime`;

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `abonnement`;
CREATE TABLE `abonnement` (
  `id_abonnement` int NOT NULL,
  `date_debut` date NOT NULL,
  `id_type_abonnement` int NOT NULL,
  `id_actif` int NOT NULL,
  `id_compte` int NOT NULL,
  `id_pays` int NOT NULL,
  `id_prix` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `abonnement`
--

INSERT INTO `abonnement` (`id_abonnement`, `date_debut`, `id_type_abonnement`, `id_actif`, `id_compte`, `id_prix`, `id_pays`) VALUES
(1,  '2019-01-14', 1, 2,  1,  1, 14),
  (2,  '2020-03-05', 2, 2,  1,  2, 14),
  (3,  '2023-08-10', 1, 1,  1,  1, 14),
  (4,  '2020-07-17', 2, 2,  2,  3,  3),
  (5,  '2022-10-21', 1, 2,  2,  3,  3),
  (6,  '2025-01-12', 1, 1,  2,  3,  3),
  (7,  '2023-04-04', 1, 2,  3,  5, 12),
  (8,  '2024-06-18', 2, 2,  3,  6, 12),
  (9,  '2024-09-30', 1, 1,  3,  5, 12),
  (10, '2019-07-01', 2, 2,  4, 11,  5),
  (11, '2020-09-15', 1, 2,  4, 12,  5),
  (12, '2025-02-26', 1, 2,  4, 11,  5),
  (13, '2025-03-11', 1, 2,  4, 12,  5),
  (14, '2025-04-20', 2, 1,  4, 11,  5),
  (15, '2019-06-14', 1, 2,  5,  1, 10),
  (16, '2020-09-28', 2, 2,  5,  2, 10),
  (17, '2024-11-30', 1, 1,  5,  1, 10),
  (18, '2025-01-09', 1, 2,  5,  2, 10),
  (19, '2021-07-19', 1, 2,  6,  2, 14),
  (20, '2023-10-03', 2, 2,  6,  1, 10),
  (21, '2023-12-17', 1, 2,  6,  6, 12),
  (22, '2025-02-04', 1, 2,  6,  2, 14),
  (23, '2025-04-13', 1, 1,  6,  1, 14),
  (24, '2020-01-25', 1, 2,  7, 15,  1),
  (25, '2022-05-05', 2, 2,  7, 16, 14),
  (26, '2024-07-30', 2, 2,  7, 15,  2),
  (27, '2024-09-16', 1, 2,  7, 13, 14),
  (28, '2024-11-23', 2, 1,  7, 14,  4),
  (29, '2019-01-08', 1, 2,  8, 25,  6),
  (30, '2021-04-01', 1, 2,  8, 26, 14),
  (31, '2023-07-14', 2, 2,  8, 12, 10),
  (32, '2023-10-06', 1, 2,  8, 25, 10),
  (33, '2025-02-02', 2, 1,  8, 26, 10),
  (34, '2025-03-22', 1, 2,  9, 16,  3),
  (35, '2025-05-07', 1, 2,  9, 15,  2),
  (36, '2025-06-18', 1, 1,  9, 29,  3),
  (37, '2021-01-03', 1, 2, 10, 30, 15),
  (38, '2022-07-27', 2, 2, 10,  1, 14),
  (39, '2023-08-19', 1, 2, 10,  2, 14),
  (40, '2024-10-30', 1, 2, 10,  1, 14),
  (41, '2024-12-13', 2, 1, 10, 30, 15),
  (42, '2019-05-11', 2, 2, 11, 21,  7),
  (43, '2020-08-09', 1, 2, 11, 22,  7),
  (44, '2025-03-03', 1, 2, 11, 19,  8),
  (45, '2025-04-20', 1, 2, 11, 21,  7),
  (46, '2025-06-07', 2, 1, 11, 22,  7),
  (47, '2019-07-25', 1, 2, 12,  9,  9),
  (48, '2023-01-01', 1, 2, 12, 10, 10),
  (49, '2024-02-14', 2, 2, 12,  9, 10),
  (50, '2025-04-10', 1, 2, 12,  7, 10),
  (51, '2025-04-17', 1, 1, 12,  8, 11),
  (52, '2020-01-28', 2, 2, 13,  5,  8),
  (53, '2023-03-30', 1, 2, 13, 23,  8),
  (54, '2024-06-16', 1, 2, 13, 24, 13),
  (55, '2024-08-05', 1, 2, 13,  3,  8),
  (56, '2024-09-19', 2, 1, 13,  4,  1),
  (57, '2020-03-21', 1, 2, 14, 27, 10),
  (58, '2021-12-04', 1, 2, 14, 28, 11),
  (59, '2023-10-12', 2, 2, 14,  6, 10),
  (60, '2025-01-15', 1, 1, 14, 26,  6),
  (61, '2025-02-21', 1, 2, 15, 25,  5),
  (62, '2023-02-24', 2, 2, 16, 27,  6),
  (63, '2024-03-20', 1, 2, 17, 18,  6),
  (64, '2024-07-22', 2, 1, 17, 13,  4),
  (65, '2024-10-30', 2, 1, 19, 17,  7),
  (66, '2024-12-22', 1, 2, 20, 11,  3),
  (67, '2024-03-30', 1, 2, 20, 11, 11);
--
-- Déclencheurs `abonnement`
--
DROP TRIGGER IF EXISTS `check_abonnement_condition`;
DELIMITER $$
CREATE TRIGGER `check_abonnement_condition` BEFORE INSERT ON `abonnement` FOR EACH ROW BEGIN
    DECLARE nb_abos_actifs INT;

    SELECT COUNT(*) INTO nb_abos_actifs
    FROM abonnement
    WHERE id_compte = NEW.id_compte
      AND id_actif = 1;

    IF nb_abos_actifs > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = '❌ Ce compte a déjà un abonnement actif.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `actif`
--

DROP TABLE IF EXISTS `actif`;
CREATE TABLE `actif` (
  `id_actif` int NOT NULL,
  `etat_activite` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `actif`
--

INSERT INTO `actif` (`id_actif`, `etat_activite`) VALUES
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE `compte` (
  `id_compte` int NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `prenom_utilisateur` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id_compte`, `nom_utilisateur`, `prenom_utilisateur`, `email`, `date_naissance`, `mot_de_passe`) VALUES
(1, 'Johnson', 'Daniel', 'daniel.johnson@email.com', '2001-07-14', '1234'),
(2, 'Müller', 'Silva', 'silva.mueller@email.com', '1999-03-22', 'ModDePasse'),
(3, 'Brown', 'Walter', 'walter.brown@email.com', '1998-11-09', 'Batman67'),
(4, 'Idrissi', 'Barbara', 'barbara.idrissi@email.com', '2002-04-17', 'BestNetflix12'),
(5, 'Dubois', 'Peter ', 'peter.dubois@email.com', '2000-12-01', 'IAmTheBest'),
(6, 'Smith', 'William', 'william.smith@email.com', '1997-08-26', 'JustinB39'),
(7, 'Schneider', 'Hans', 'hans.schneider@email.com', '2001-01-30', 'RihannaStar'),
(8, 'Labonne', 'Andréa', 'andrea.labonne@email.com', '2003-06-05', 'Lapiz13'),
(9, 'Slama', 'Inaya', 'inaya.slama@email.com', '2004-02-11', '90BestYear'),
(10, 'Camara', 'René', 'rene.camara@email.com', '2000-10-03', 'qwert'),
(11, 'Davis', 'Atem', 'atem.davis@email.com', '1996-05-18', 'azerty'),
(12, 'Laye', 'Opaline', 'opaline.laye@email.com', '1999-09-07', 'computer'),
(13, 'Brunner', 'Léo', 'leo.brunner@email.com', '2001-12-25', 'superman'),
(14, 'Martin', 'Sam', 'sam.martin@email.com', '2002-07-19', 'dearbook'),
(15, 'Kanté', 'Thérèse', 'therese.kante@email.com', '2003-03-08', 'pokemon'),
(16, 'Chen', 'Lin', 'lin.chen@email.com', '2004-10-22', '888888'),
(17, 'Liu', 'Xiu', 'xiu.liu@email.com', '2000-06-13', '123456789'),
(18, 'Carpentier', 'Élio', 'elio.carpentier@email.com', '1998-04-29', 'ILovePizza'),
(19, 'Vernier', 'Maëlys', 'maelys.vernier@email.com', '2005-01-16', 'qwerty'),
(20, ' Rousselin', 'Théandre', 'theandre.rousselin@email.com', '1997-11-03', '11223344');

-- --------------------------------------------------------

--
-- Structure de la table `exclusivite`
--

DROP TABLE IF EXISTS `exclusivite`;
CREATE TABLE `exclusivite` (
  `id_exclusivite` int NOT NULL,
  `exclusif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `exclusivite`
--

INSERT INTO `exclusivite` (`id_exclusivite`, `exclusif`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE `favoris` (
  `id_profil` int NOT NULL,
  `id_oeuvre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`id_profil`, `id_oeuvre`) VALUES
(1, 15),
(2, 15),
(3, 15),
(3, 53),
(4, 15),
(5, 15),
(6, 22),
(7, 22),
(8, 15),
(9, 22),
(10, 30),
(11, 30),
(12, 30),
(13, 30),
(14, 36),
(14, 60),
(15, 60),
(16, 36),
(16, 60),
(17, 60),
(18, 7),
(18, 36),
(19, 8),
(19, 36),
(20, 7),
(21, 8),
(21, 36),
(22, 4),
(22, 15),
(23, 4),
(23, 15),
(23, 55),
(23, 60),
(24, 15),
(25, 15),
(25, 60),
(26, 7),
(27, 8),
(28, 35),
(29, 4),
(30, 11),
(31, 35),
(32, 32),
(33, 23),
(33, 52),
(33, 54),
(34, 24),
(34, 51),
(35, 25),
(36, 60),
(37, 56),
(38, 56),
(39, 56),
(39, 57),
(40, 4);

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE `fonction` (
  `id_oeuvre` int NOT NULL,
  `id_intervenant` int NOT NULL,
  `nom_fonction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id_oeuvre`, `id_intervenant`, `nom_fonction`) VALUES
(0, 48, 'acteur'),
(0, 63, 'scenariste'),
(0, 74, 'acteur'),
(1, 2, 'compositeur'),
(1, 4, 'réalisateur'),
(1, 5, 'voix de personnage '),
(2, 72, 'acteur'),
(5, 6, 'realisateur'),
(5, 7, 'Directeur photo'),
(7, 1, 'compositeur'),
(7, 3, 'réalisateur'),
(7, 8, 'realisateur'),
(7, 9, 'acteur'),
(7, 10, 'acteur'),
(7, 47, 'acteur'),
(8, 42, 'createur'),
(8, 61, 'acteur'),
(10, 78, 'compositeur'),
(10, 81, 'réalisateur'),
(11, 29, 'realisateur'),
(11, 70, 'realisateur'),
(12, 68, 'voix de personnage '),
(13, 36, 'scenariste'),
(13, 57, 'acteur'),
(15, 46, 'createur'),
(16, 11, 'realisateur'),
(16, 12, 'acteur'),
(16, 88, 'acteur'),
(17, 13, 'realisateur'),
(17, 14, 'voix de personnage '),
(17, 15, 'voix de personnage '),
(18, 28, 'voix de personnage '),
(18, 51, 'compositeur'),
(20, 1, 'compositeur'),
(20, 2, 'compositeur'),
(20, 44, 'acteur'),
(22, 77, 'voix de personnage '),
(22, 90, 'scenariste'),
(23, 16, 'createur'),
(23, 17, 'acteur'),
(23, 18, 'acteur'),
(23, 31, 'Directeur photo'),
(24, 35, 'realisateur'),
(24, 52, 'compositeur'),
(24, 60, 'acteur'),
(24, 89, 'realisateur'),
(25, 25, 'compositeur'),
(25, 27, 'réalisateur'),
(25, 58, 'Directeur photo'),
(26, 76, 'createur'),
(27, 66, 'voix de personnage '),
(30, 39, 'voix de personnage '),
(32, 65, 'realisateur'),
(33, 53, 'réalisateur'),
(33, 69, 'createur'),
(34, 50, 'voix de personnage '),
(36, 26, 'réalisateur'),
(36, 49, 'createur'),
(37, 19, 'createur'),
(37, 20, 'acteur'),
(37, 21, 'acteur'),
(37, 82, 'voix de personnage '),
(38, 45, 'acteur'),
(40, 84, 'acteur'),
(41, 22, 'createur'),
(41, 23, 'voix de personnage '),
(41, 24, 'compositeur'),
(41, 75, 'acteur'),
(43, 34, 'acteur'),
(43, 37, 'acteur'),
(43, 41, 'voix de personnage '),
(43, 54, 'réalisateur'),
(44, 43, 'realisateur'),
(44, 64, 'acteur'),
(46, 86, 'realisateur'),
(49, 55, 'voix de personnage '),
(49, 67, 'voix de personnage '),
(49, 87, 'acteur'),
(50, 73, 'createur'),
(50, 79, 'compositeur'),
(51, 71, 'acteur'),
(52, 80, 'réalisateur'),
(52, 83, 'realisateur'),
(53, 32, 'realisateur'),
(53, 85, 'Directeur photo'),
(54, 38, 'realisateur'),
(54, 40, 'voix de personnage '),
(54, 62, 'realisateur'),
(55, 30, 'acteur'),
(56, 33, 'acteur'),
(56, 59, 'realisateur'),
(57, 56, 'realisateur');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE `genre` (
  `id_genre` int NOT NULL,
  `genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Anime'),
(4, 'Aventure'),
(5, 'Comedie'),
(6, 'Crime'),
(7, 'Documentaire '),
(8, 'Drame'),
(9, 'Famille'),
(10, 'Fantastique'),
(11, 'Horreur'),
(12, 'Romance'),
(13, 'Science-Fiction'),
(14, 'Thriller'),
(15, 'humour');

-- --------------------------------------------------------

--
-- Structure de la table `genre_oeuvre`
--

DROP TABLE IF EXISTS `genre_oeuvre`;
CREATE TABLE `genre_oeuvre` (
  `id_genre` int NOT NULL,
  `id_oeuvre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `genre_oeuvre`
--

INSERT INTO `genre_oeuvre` (`id_genre`, `id_oeuvre`) VALUES
(1, 2),
(2, 2),
(3, 14),
(4, 1),
(5, 8),
(6, 8),
(7, 1),
(8, 11),
(9, 1),
(10, 7),
(11, 12),
(12, 1),
(13, 1),
(14, 8),
(15, 12),
(16, 14),
(17, 2),
(18, 10),
(19, 8),
(20, 2),
(21, 6),
(22, 6),
(23, 14),
(24, 6),
(25, 10),
(26, 6),
(27, 6),
(28, 8),
(29, 10),
(30, 10),
(31, 10),
(32, 13),
(33, 6),
(34, 12),
(35, 5),
(36, 8),
(37, 6),
(38, 6),
(39, 13),
(40, 8),
(41, 3),
(41, 4),
(41, 8),
(42, 3),
(42, 4),
(43, 3),
(43, 4),
(44, 3),
(44, 11),
(45, 13),
(46, 3),
(46, 4),
(47, 3),
(47, 4),
(48, 3),
(48, 4),
(49, 3),
(49, 4),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 8),
(54, 12),
(55, 8),
(56, 3),
(56, 4),
(57, 3),
(57, 4),
(58, 3),
(58, 15),
(59, 3),
(59, 4),
(60, 3),
(60, 4);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE `historique` (
  `id_video` int NOT NULL,
  `id_profil` int NOT NULL,
  `date_vision` date NOT NULL,
  `temps_vision` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id_video`, `id_profil`, `date_vision`, `temps_vision`) VALUES
(1, 29, '2024-04-23', 55),
(2, 12, '2021-03-26', 109),
(2, 14, '2024-04-12', 36),
(2, 34, '2024-04-10', 36),
(2, 37, '2024-02-21', 84),
(3, 5, '2024-03-21', 69),
(3, 13, '2024-01-18', 164),
(3, 27, '2024-02-10', 94),
(3, 29, '2024-02-06', 147),
(3, 31, '2024-03-28', 165),
(3, 37, '2024-01-06', 172),
(4, 6, '2024-03-28', 65),
(4, 22, '2024-01-26', 98),
(4, 27, '2024-02-12', 115),
(4, 30, '2024-02-14', 92),
(5, 10, '2024-04-20', 60),
(5, 17, '2024-03-07', 95),
(5, 22, '2024-02-04', 140),
(5, 23, '2024-04-23', 124),
(6, 3, '2024-04-02', 67),
(6, 11, '2024-02-02', 98),
(6, 22, '2024-04-28', 106),
(7, 38, '2024-02-01', 110),
(8, 5, '2024-01-31', 89),
(8, 9, '2024-01-06', 101),
(8, 10, '2024-04-12', 125),
(8, 23, '2024-03-28', 75),
(8, 31, '2024-01-13', 170),
(8, 33, '2024-02-27', 70),
(8, 34, '2024-02-21', 176),
(8, 35, '2024-03-11', 54),
(8, 40, '2024-04-09', 105),
(9, 3, '2024-02-27', 33),
(9, 10, '2024-01-31', 83),
(10, 3, '2024-02-23', 167),
(10, 6, '2024-04-11', 141),
(10, 10, '2021-01-08', 145),
(10, 14, '2024-03-08', 164),
(10, 19, '2024-01-26', 86),
(10, 28, '2024-02-13', 137),
(10, 31, '2024-01-14', 32),
(10, 38, '2024-02-10', 37),
(11, 21, '2024-04-27', 137),
(12, 12, '2022-08-09', 102),
(12, 18, '2024-01-13', 103),
(12, 40, '2024-03-28', 128),
(13, 3, '2024-01-23', 33),
(13, 6, '2024-01-30', 83),
(13, 21, '2024-04-12', 178),
(13, 32, '2024-02-07', 35),
(13, 33, '2024-04-23', 32),
(14, 7, '2024-01-02', 121),
(14, 16, '2024-04-11', 37),
(14, 22, '2024-02-21', 39),
(14, 36, '2024-04-26', 116),
(14, 37, '2024-03-29', 70),
(15, 2, '2024-03-17', 70),
(15, 12, '2024-03-29', 126),
(15, 25, '2024-01-13', 116),
(15, 28, '2024-04-26', 102),
(15, 32, '2024-04-18', 90),
(15, 38, '2024-02-06', 172),
(16, 1, '2024-03-06', 79),
(16, 6, '2024-04-11', 136),
(16, 10, '2024-03-09', 100),
(16, 17, '2024-04-12', 91),
(16, 18, '2024-04-13', 79),
(16, 37, '2024-01-10', 173),
(17, 13, '2024-04-01', 148),
(17, 21, '2024-01-27', 31),
(17, 23, '2024-01-14', 52),
(17, 33, '2024-01-30', 179),
(17, 34, '2024-02-02', 154),
(17, 39, '2024-01-15', 35),
(18, 7, '2024-04-22', 66),
(18, 12, '2021-03-31', 25),
(18, 13, '2024-01-12', 74),
(18, 16, '2024-01-29', 98),
(18, 26, '2024-04-29', 75),
(18, 30, '2024-02-01', 68),
(18, 31, '2024-02-04', 108),
(18, 39, '2024-04-04', 122),
(19, 1, '2024-04-29', 46),
(19, 7, '2024-02-11', 149),
(19, 12, '2022-05-25', 123),
(19, 30, '2024-03-08', 116),
(20, 2, '2024-01-03', 62),
(20, 4, '2024-01-31', 66),
(20, 5, '2024-03-05', 96),
(20, 9, '2024-01-31', 176),
(20, 12, '2021-01-15', 120),
(20, 18, '2024-04-19', 64),
(20, 20, '2024-02-14', 52),
(21, 2, '2024-01-25', 71),
(21, 6, '2024-03-28', 82),
(21, 8, '2024-03-28', 134),
(21, 11, '2024-03-13', 177),
(21, 14, '2024-03-12', 31),
(21, 15, '2024-02-04', 84),
(21, 16, '2024-01-01', 37),
(21, 30, '2024-03-07', 116),
(22, 12, '2024-04-10', 66),
(22, 24, '2024-01-19', 110),
(23, 4, '2024-02-13', 131),
(23, 28, '2024-02-16', 102),
(23, 39, '2024-01-29', 96),
(24, 38, '2024-04-02', 66),
(25, 25, '2024-03-14', 144),
(26, 9, '2024-03-04', 111),
(26, 15, '2024-02-22', 48),
(26, 40, '2024-03-31', 96),
(27, 20, '2024-03-14', 127),
(28, 16, '2024-03-10', 153),
(28, 25, '2024-04-22', 163),
(28, 29, '2024-01-04', 78),
(28, 32, '2024-01-09', 102),
(28, 33, '2024-02-23', 122),
(29, 6, '2022-07-01', 72),
(29, 7, '2024-01-05', 40),
(29, 26, '2024-02-27', 111),
(30, 6, '2023-02-19', 126),
(30, 15, '2024-01-28', 37),
(30, 19, '2024-01-31', 35),
(30, 25, '2024-02-04', 124),
(31, 5, '2024-03-14', 80),
(31, 20, '2024-04-28', 172),
(32, 10, '2021-01-03', 32),
(32, 24, '2024-02-13', 143),
(32, 36, '2024-01-30', 88),
(32, 37, '2024-03-20', 84),
(33, 3, '2024-02-17', 127),
(33, 27, '2024-02-27', 92),
(33, 35, '2024-03-12', 35),
(34, 2, '2024-02-17', 167),
(34, 6, '2023-09-22', 82),
(34, 10, '2020-06-01', 29),
(35, 6, '2024-03-19', 63),
(35, 10, '2020-07-25', 36),
(36, 6, '2024-04-13', 121),
(36, 15, '2024-03-22', 118),
(36, 16, '2024-02-17', 54),
(36, 26, '2024-04-14', 127),
(37, 4, '2024-02-09', 113),
(37, 5, '2024-04-06', 140),
(37, 36, '2024-03-16', 148),
(37, 39, '2024-03-04', 159),
(38, 4, '2024-03-16', 176),
(38, 21, '2024-02-19', 125),
(38, 24, '2024-03-18', 143),
(38, 30, '2024-03-29', 63),
(39, 11, '2024-02-16', 125),
(39, 13, '2024-01-07', 53),
(39, 19, '2024-04-25', 33),
(39, 24, '2024-04-28', 77),
(39, 34, '2024-03-21', 169),
(39, 40, '2024-01-21', 74),
(40, 29, '2024-04-08', 118),
(40, 34, '2024-03-10', 153),
(41, 1, '2024-01-26', 76),
(41, 11, '2024-04-26', 128),
(41, 35, '2024-03-10', 35),
(42, 14, '2024-01-23', 68),
(42, 15, '2024-03-27', 106),
(42, 18, '2024-01-16', 88),
(42, 31, '2024-01-15', 40),
(43, 8, '2024-02-26', 105),
(43, 17, '2024-03-31', 33),
(43, 29, '2024-02-19', 105),
(44, 14, '2024-03-30', 117),
(45, 1, '2024-03-31', 82),
(45, 7, '2024-04-04', 49),
(45, 11, '2024-03-06', 131),
(45, 17, '2024-03-23', 179),
(45, 19, '2024-04-27', 65),
(45, 21, '2024-04-16', 169),
(46, 1, '2024-01-12', 71),
(46, 2, '2024-02-08', 157),
(46, 4, '2024-01-26', 110),
(46, 9, '2024-02-12', 61),
(46, 35, '2024-03-12', 107),
(47, 12, '2024-02-07', 125),
(48, 8, '2024-02-17', 159),
(48, 23, '2024-01-21', 117),
(48, 32, '2024-01-20', 128),
(50, 19, '2024-04-13', 171),
(50, 26, '2024-03-27', 88),
(50, 36, '2024-03-09', 76),
(51, 12, '2024-02-26', 123),
(52, 27, '2024-01-20', 53),
(53, 9, '2024-01-31', 57),
(53, 13, '2024-02-15', 165),
(53, 22, '2024-03-16', 41),
(53, 39, '2024-02-11', 119),
(54, 28, '2024-01-30', 92),
(54, 36, '2024-04-12', 115),
(55, 20, '2024-04-20', 74),
(55, 26, '2024-02-09', 32),
(56, 12, '2024-01-02', 171),
(56, 18, '2024-04-16', 64),
(56, 23, '2024-02-09', 160),
(56, 24, '2024-01-06', 90),
(56, 28, '2024-03-27', 129),
(56, 33, '2024-02-14', 105),
(56, 35, '2024-02-22', 115),
(57, 8, '2024-01-25', 108),
(57, 25, '2024-01-14', 95),
(57, 40, '2024-03-31', 70),
(58, 1, '2024-06-30', 45),
(58, 8, '2024-01-11', 165),
(58, 17, '2024-01-09', 115),
(58, 27, '2024-01-28', 30),
(59, 32, '2024-02-05', 43),
(59, 38, '2024-03-30', 166),
(60, 10, '2024-04-11', 103),
(60, 20, '2024-02-04', 110),
(63, 2, '2022-03-26', 47),
(64, 2, '2023-04-19', 53),
(70, 1, '2024-09-08', 22),
(73, 39, '2024-01-16', 16),
(74, 39, '2024-01-17', 21),
(75, 39, '2024-02-08', 23),
(76, 2, '2020-03-02', 25),
(77, 2, '2020-04-07', 24),
(78, 12, '2022-06-18', 31),
(78, 41, '2020-03-10', 17),
(79, 41, '2020-07-02', 19),
(80, 41, '2020-08-15', 20),
(81, 41, '2020-11-19', 23),
(82, 41, '2021-03-05', 22),
(83, 18, '2023-03-11', 23),
(83, 41, '2021-03-24', 23),
(84, 18, '2023-04-14', 21),
(85, 18, '2023-09-10', 19),
(86, 19, '2023-10-10', 18),
(87, 19, '2023-12-07', 21),
(88, 19, '2024-03-08', 23),
(89, 19, '2024-07-31', 25),
(89, 41, '2021-05-18', 20),
(90, 19, '2024-10-03', 24),
(90, 41, '2021-06-24', 21),
(91, 41, '2021-10-24', 16),
(92, 41, '2021-11-10', 18),
(93, 41, '2022-03-18', 19),
(94, 41, '2022-03-26', 18),
(95, 41, '2022-04-13', 20),
(96, 19, '2024-11-20', 24),
(97, 40, '2024-01-30', 19),
(98, 40, '2024-02-14', 19),
(99, 40, '2024-03-21', 19),
(100, 40, '2024-03-26', 20);

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

DROP TABLE IF EXISTS `intervenant`;
CREATE TABLE `intervenant` (
  `id_intervenant` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `intervenant`
--

INSERT INTO `intervenant` (`id_intervenant`, `nom`, `prenom`) VALUES
(1, 'Hans', 'Zimmer'),
(2, 'Alan', 'Menken'),
(3, 'Christopher', 'Nolen'),
(4, 'Ron', 'Clements'),
(5, 'Jodi', 'Benson'),
(6, 'Orson', 'Welles'),
(7, 'Greg', 'Toland'),
(8, 'Christopher', 'Nolan'),
(9, 'Heath', 'Ledger'),
(10, 'Christian', 'Bale'),
(11, 'Bong', 'Joon-ho'),
(12, 'Song', 'Kang-ho'),
(13, 'Pierre', 'Coffin'),
(14, 'Steve', 'Carell'),
(15, 'Miranda', 'Cosgrove'),
(16, 'Hwang', 'Dong-hyuk'),
(17, 'Lee', 'Jung-jae'),
(18, 'Jung', 'Ho-yeon'),
(19, 'Vince', 'Gilligan'),
(20, 'Bryan', 'Cranston'),
(21, 'Aaron', 'Paul'),
(22, 'Eiichiro', 'Oda'),
(23, 'Mayumi', 'Tanaka'),
(24, 'Kosei', 'Tanaka'),
(25, 'Ben ', 'Stiller'),
(26, 'Chris', 'Rock'),
(27, 'Emilio', 'Estevez'),
(28, 'Alan', 'Silvestri '),
(29, 'Gene', 'Levy'),
(30, 'Kian', 'How Yoa'),
(31, 'Bernard', 'Herrmann'),
(32, 'George ', 'Schaefer '),
(33, 'Russel ', 'Crowe'),
(34, 'Leonardo ', 'DiCaprio'),
(35, 'Tom', 'Hanks'),
(36, 'Robert', 'Zemeckis'),
(37, 'Don', 'Davis '),
(38, 'Lilly', 'Wachowski'),
(39, 'Quentin', 'Tarantino'),
(40, 'John ', 'Travolta'),
(41, 'Peter', 'Jackson'),
(42, 'Frank', 'Darabont'),
(43, 'Tim', 'Robbins'),
(44, 'Nino', 'Rota'),
(45, 'John ', 'Williams'),
(46, 'David', 'Fincher '),
(47, 'Brad', 'Pitt'),
(48, 'Anthony', 'Hopkins'),
(49, 'Steven', 'Spielberg'),
(50, 'Don', 'Davis '),
(51, 'Peter', 'Jackson'),
(52, 'Howard', 'Shore'),
(53, 'Tim', 'Robbins'),
(54, ' Francis Ford', 'Coppola'),
(55, 'Jonathan', 'Demme'),
(56, 'Howard', 'Shore'),
(57, 'Thomas', 'Newman'),
(58, 'Quentin', 'Tarantino'),
(59, 'Jodi', 'Benson'),
(60, 'Wu', 'Jing'),
(61, 'Orson', 'Welles'),
(62, 'Gary', 'Oldman'),
(63, 'Nassim', 'Lyes'),
(64, 'Josh ', 'Brolin'),
(65, 'Vin', 'Diesel'),
(66, 'Michael B.', 'Jordan'),
(67, 'Dev', 'Patel'),
(68, 'Steve', 'Carell'),
(69, 'Viggo', 'Mortensen'),
(70, 'Jeremy', 'Irons'),
(71, 'Ron ', 'Clements '),
(72, 'Kate', 'Winslet'),
(73, 'Noemie', 'Merlant'),
(74, 'Omar', 'Sy'),
(75, 'Nina', 'Dobrev'),
(76, 'Ian', 'Somerhalder'),
(77, 'Akari ', 'Kito'),
(78, 'Yuki', 'Kaji'),
(79, 'Gakuto', 'Kajiwara'),
(80, 'Junko', 'Takeuchi'),
(81, 'Eliza', 'Taylor'),
(82, 'Bob', 'Morley'),
(83, 'Choi', 'Woo-shik'),
(84, 'Berenice', 'Bejo'),
(85, 'Nicole', 'Kidman'),
(86, 'James', 'Earl Jones'),
(87, 'Alvora', 'Morte'),
(88, 'Ursula', 'Corbero'),
(89, 'Colin', 'Morgan'),
(90, 'George ', 'Blagden');

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

DROP TABLE IF EXISTS `langue`;
CREATE TABLE `langue` (
  `id_langue` int NOT NULL,
  `nom_langue` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id_langue`, `nom_langue`) VALUES
(1, 'anglais'),
(2, 'francais'),
(3, 'espagnol'),
(4, 'allemand'),
(5, 'italien'),
(6, 'japonais'),
(7, 'coréen'),
(8, 'mandarin'),
(9, 'portugais'),
(10, 'russe'),
(11, 'turc '),
(12, 'suedois'),
(13, 'arabe'),
(14, 'francais canadien'),
(15, 'indien'),
(16, 'britannique');

-- --------------------------------------------------------

--
-- Structure de la table `langue_doublee`
--

DROP TABLE IF EXISTS `langue_doublee`;
CREATE TABLE `langue_doublee` (
  `id_video` int NOT NULL,
  `id_langue` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `langue_doublee`
--

INSERT INTO `langue_doublee` (`id_video`, `id_langue`) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 2),
(5, 4),
(6, 2),
(6, 5),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 1),
(14, 2),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 8),
(15, 16),
(16, 2),
(17, 2),
(18, 2),
(19, 1),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 2),
(32, 16),
(33, 1),
(34, 2),
(35, 2),
(36, 2),
(37, 1),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(41, 3),
(42, 2),
(42, 3),
(43, 2),
(43, 3),
(44, 2),
(44, 3),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(51, 5),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(56, 8),
(56, 10),
(57, 2),
(57, 8),
(57, 10),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(69, 16),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(100, 13);

-- --------------------------------------------------------

--
-- Structure de la table `oeuvre`
--

DROP TABLE IF EXISTS `oeuvre`;
CREATE TABLE `oeuvre` (
  `id_oeuvre` int NOT NULL,
  `nom_oeuvre` varchar(50) NOT NULL,
  `id_langue` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `oeuvre`
--

INSERT INTO `oeuvre` (`id_oeuvre`, `nom_oeuvre`, `id_langue`) VALUES
(1, 'Ariel', 1),
(2, 'Madagascar', 1),
(3, 'Judgment Night', 1),
(4, 'Wolf Warrior', 8),
(5, 'Citizen Kane', 1),
(6, 'Dancer in the Dark', 1),
(7, 'The Dark  Knight', 1),
(8, 'Sous la Seine', 2),
(9, 'Avengers: Infinity War', 1),
(10, 'The Endless Summer', 1),
(11, 'Culpa Mia', 3),
(12, 'Fast and Furious', 1),
(13, 'Black Panther', 1),
(14, 'Lion', 15),
(15, 'Titanic', 1),
(16, 'Parasite', 7),
(17, 'Moi moche et méchant  ', 14),
(18, 'Le Seigneur des anneaux ', 1),
(19, 'Portrait de la jeune fille en fe', 2),
(20, 'The Lion King', 1),
(21, 'Blacklist', 1),
(22, 'La Casa de Papel', 3),
(23, 'Squid Game', 7),
(24, 'Lupin', 2),
(25, 'Aile', 11),
(26, 'Snowflow', 1),
(27, 'Snowflow', 1),
(28, 'Under the Queen\'s Umbrella ', 7),
(29, 'Supernatural', 1),
(30, 'Vampire Diaries', 1),
(31, 'Merlin', 1),
(32, 'Black Mirror', 1),
(33, 'Vincenzo', 7),
(34, 'One Day', 16),
(35, 'Love is blind', 1),
(36, 'Penthouse', 7),
(37, 'Breaking bad', 1),
(38, 'Dogs of Berlin', 4),
(39, 'The 100', 1),
(40, 'Versailles ', 2),
(41, 'One piece ', 6),
(42, 'Seven deadly Sins', 6),
(43, 'Demon Slayer', 6),
(44, 'Tokyo Ghoul ', 6),
(45, 'Super cube', 8),
(46, 'Solo Levening', 7),
(47, 'Black Clover', 6),
(48, 'Les cheveliers des Zodiak ', 6),
(49, 'Dragon ball Z', 6),
(50, 'Tokyo Revengers', 6),
(51, 'Wind Breaker', 6),
(52, 'Jujutsu Kaisen', 6),
(53, 'A sign of silent ', 6),
(54, 'My happy Mariage', 6),
(55, 'Les carnets de l\'apothicaire', 6),
(56, 'Attack on titans', 6),
(57, 'Fire Force', 6),
(58, 'Sakamoto Days ', 6),
(59, 'Bleach', 6),
(60, 'Naruto', 6);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays` (
  `id_pays` int NOT NULL,
  `nom_pays` varchar(50) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id_pays`, `nom_pays`, `longitude`, `latitude`) VALUES
(1, 'Allemagne', 10.4528, 51.1657),
(2, 'Australie', 133.275, -26.8534),
(3, 'Belgique', 4.4754, 50.4995),
(4, 'Cameroun', 12.3434, 7.3653),
(5, 'Canada', -96.8181, 62.3933),
(6, 'Chine', 104.166, 34.6681),
(7, 'Congo', 14.9274, -0.662071),
(8, 'Egypte', 30.2465, 26.6964),
(9, 'Etat-Unies', 2.28759, 48.8627),
(10, 'France', 2.20967, 46.2322),
(11, 'Japon', 134.38, 34.8863),
(12, 'Maroc', -7.08017, 31.7923),
(13, 'Mexique', -102.579, 23.6248),
(14, 'Suisse', 8.22447, 46.8155),
(15, 'Inde', 82.795, 21.1257);

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

DROP TABLE IF EXISTS `prix`;
CREATE TABLE `prix` (
  `id_prix` int NOT NULL,
  `montant_chf` float NOT NULL,
  `id_type_abonnement` int NOT NULL,
  `id_pays` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `prix`
--

INSERT INTO `prix` (`id_prix`, `montant_chf`, `id_type_abonnement`, `id_pays`) VALUES
(1, 6.99, 1, 10),
(2, 69.99, 2, 10),
(3, 5.8, 1, 1),
(4, 89.9, 2, 1),
(5, 6.6, 1, 12),
(6, 31.99, 2, 12),
(7, 6.9, 1, 11),
(8, 66.9, 2, 11),
(9, 6.7, 1, 9),
(10, 84.9, 2, 9),
(11, 4.57, 1, 5),
(12, 69.9, 2, 5),
(13, 5.8, 1, 4),
(14, 48.5, 2, 4),
(15, 5.78, 1, 2),
(16, 90, 2, 2),
(17, 7.8, 1, 3),
(18, 80, 2, 3),
(19, 5.7, 1, 8),
(20, 59.9, 2, 8),
(21, 6.9, 1, 7),
(22, 39.9, 2, 7),
(23, 6.9, 1, 13),
(24, 59, 2, 13),
(25, 6.99, 1, 6),
(26, 53.9, 2, 6),
(27, 6.98, 1, 11),
(28, 60.5, 2, 11),
(29, 5.78, 1, 15),
(30, 22.8, 2, 15);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil` (
  `id_profil` int NOT NULL,
  `id_compte` int NOT NULL,
  `image_profil` varchar(100) NOT NULL,
  `nom_profil` varchar(50) NOT NULL,
  `id_pays` int NOT NULL,
  `id_langue` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id_profil`, `id_compte`, `image_profil`, `nom_profil`, `id_pays`, `id_langue`) VALUES
(1, 1, 'https://cdn.pixhost.org/2024/05/14/img12345.jpg', 'PixelNomad', 14, 2),
(2, 1, 'https://images.unsplashcdn.com/photo-2023-07-21-mountain-view.jpg', 'LunaCraze', 14, 4),
(3, 2, 'https://media.gettyimagepics.com/photos/urban-nightscape.jpg', 'EchoDrift', 3, 2),
(4, 3, 'https://static.flickr.com/photos/4521348/forest-road-1.jpg', 'VelvetWolf', 12, 13),
(5, 3, 'https://i.redd.it/randomdoggo45.png', 'NebulaRider', 12, 13),
(6, 4, 'https://imgur.com/gallery/beach_sunset_2022.jpg', 'ZenoQuest', 5, 14),
(7, 5, 'https://s3.amazonaws.com/pics-bucket/vacation/family_trip_2023.jpg', 'FrostyMuse', 10, 2),
(8, 6, 'https://media.tumblr.com/landscape_hdr_edit.jpg', 'WiredLynx', 10, 2),
(9, 7, 'https://usercontent.sitephotos.net/media/photo23212.jpg', 'SolarKoi', 14, 4),
(10, 7, 'https://files.photoblog.io/uploads/2022/winter-cabin.jpg', 'IndigoPulse', 1, 1),
(11, 7, 'https://assets.imgs.net/pictures/2023/lake-side-view.jpg', 'GlitchWhale', 14, 2),
(12, 8, 'https://cdn1.pexelimages.com/img/pic_83294.jpeg', 'ShadowMint', 10, 2),
(13, 8, 'https://data.mycdn.org/images/nature/river_walk.jpg', 'NovaWanderer', 9, 1),
(14, 9, 'https://imgbb.fakecdn.com/uploads/sea_cliffs_afternoon.png', 'QuantumRaccoon', 9, 1),
(15, 10, 'https://cloudstorage.xyzcdn.com/images/dog_in_snow.jpg', 'DracoFable', 3, 2),
(16, 10, 'https://farm8.staticflickr.com/4231/green-fields_720.jpg', 'TwistCactus', 14, 4),
(17, 10, 'https://images.fakeimagehub.org/2023/01/14/desert_dunes.jpg', 'ChromaGale', 1, 4),
(18, 11, 'https://i.pinimg.com/originals/23/4d/78/city-street-view.jpg', 'SilentCinder', 12, 13),
(19, 11, 'https://img.static-pix.com/portfolio/night_sky_startrail.png', 'OrbitSwan', 12, 13),
(20, 12, 'https://fake-images-api.com/content/imgs/portrait_girl_2019.jpg', 'BlazeThorn', 10, 2),
(21, 13, 'https://s3.cdnimgsource.org/photo/old-bridge-earlymorning.jpg', 'CipherNomie', 8, 13),
(22, 13, 'https://download.nowimages.org/2022/06/beach_party.jpg', 'IcyFennec', 8, 13),
(23, 13, 'https://static-img.travelshot.com/places/rome-sunset.jpg', 'NocturneLoom', 8, 13),
(24, 14, 'https://usercontent.imagekit.io/blog/boat-on-lake.jpg', 'CrimsonTidee', 10, 2),
(25, 15, 'https://media.picsnap.org/gallery/2021/waves_crashing.jpg', 'ZenithOtter', 5, 14),
(26, 15, 'https://cdn.travelgram.io/photo/asia-temple-evening.jpg', 'SparkVanta', 5, 14),
(27, 15, 'https://images.socialcdn.app/photo_uploads/mountain_cabin.jpg', 'MechaEchoes', 13, 3),
(28, 15, 'https://static.backupcdn.net/imgs/nature/bird_flying.jpg', 'DreamCoyote', 5, 14),
(29, 16, 'https://pictures.newimgdb.com/uploads/forest_mist_morning.jpg', 'AstralMoth', 6, 8),
(30, 17, 'https://cdn.memespace.org/random/astronaut-dog.jpg', 'VelcroVibes', 6, 8),
(31, 17, 'https://assets.cdn-fakehost.net/2024/03/clouds_over_mountains.jpg', 'NekoVoltage', 4, 4),
(32, 17, 'https://i.4cdn.org/wallpapers/98732-tropical-skyline.jpg', 'PhantomRye', 10, 2),
(33, 17, 'https://photos.datanode.org/images/urban-night-reflection.jpg', 'DuskZebra', 4, 2),
(34, 17, 'https://img-fakecdn.io/user_uploads/2022/street-art-wall.jpg', 'CloudyNeko', 7, 2),
(35, 18, 'https://storage.webcdn.xyz/artwork/galaxy_nebula.jpg', 'MazeRipple', 7, 2),
(36, 18, 'https://static.assets-photos.org/uploads/ancient_city.jpg', 'KarmaThistle', 11, 6),
(37, 19, 'https://content.loremcdn.io/2023/11/ski-resort-alps.jpg', 'RadiantPang', 7, 2),
(38, 20, 'https://cdn2.fakeimagebox.net/photos/butterfly_flower.png', 'WhisperCrow', 2, 1),
(39, 20, 'https://assets.surrealshots.org/abstract_colored_smoke.jpg', 'BlurTamarin', 2, 1),
(40, 20, 'https://gallery.imagestack.ai/uploads/2021/village_pathway.jpg', 'HexaNova', 11, 6),
(41, 20, 'https://i.pinimg.com/originals/23/4d/78/jungle-view.jpg', 'Zoro7', 15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `restriction`
--

DROP TABLE IF EXISTS `restriction`;
CREATE TABLE `restriction` (
  `id_restriction` int NOT NULL,
  `age_restriction` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `restriction`
--

INSERT INTO `restriction` (`id_restriction`, `age_restriction`) VALUES
(1, '6'),
(2, '10'),
(3, '12'),
(4, '14'),
(5, '16');

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

DROP TABLE IF EXISTS `saison`;
CREATE TABLE `saison` (
  `id_saison` int NOT NULL,
  `id_oeuvre` int NOT NULL,
  `nom_saison` varchar(50) NOT NULL,
  `date_debut_disponibilite` date NOT NULL,
  `date_fin_disponibilite` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`id_saison`, `id_oeuvre`, `nom_saison`, `date_debut_disponibilite`, `date_fin_disponibilite`) VALUES
(1, 1, 'saison 0', '2023-01-14', '2028-01-14'),
(2, 2, 'saison 0', '2022-10-08', '2027-10-08'),
(3, 3, 'saison 0', '2022-08-01', '2027-08-01'),
(4, 4, 'saison 0', '2023-02-16', '2028-02-16'),
(5, 5, 'saison 0', '2023-02-23', '2028-02-23'),
(6, 6, 'saison 0', '2023-05-03', '2028-05-03'),
(7, 7, 'saison 0', '2022-07-13', '2027-07-13'),
(8, 8, 'saison 0', '2022-12-15', '2027-12-15'),
(9, 9, 'saison 0', '2022-12-21', '2027-12-21'),
(10, 10, 'saison 0', '2023-02-16', '2028-02-16'),
(11, 11, 'saison 0', '2023-01-24', '2028-01-24'),
(12, 12, 'saison 0', '2022-10-15', '2027-10-15'),
(13, 13, 'saison 0', '2022-06-14', '2027-06-14'),
(14, 14, 'saison 0', '2023-05-30', '2028-05-30'),
(15, 15, 'saison 0', '2022-10-04', '2027-10-04'),
(16, 16, 'saison 0', '2023-05-13', '2028-05-13'),
(17, 17, 'saison 0', '2023-02-18', '2028-02-18'),
(18, 18, 'saison 0', '2022-11-10', '2027-11-10'),
(19, 19, 'saison 0', '2023-04-14', '2028-04-14'),
(20, 20, 'saison 0', '2023-03-11', '2028-03-11'),
(21, 21, 'saison 8', '2022-01-03', '2027-01-03'),
(22, 22, 'saison 2', '2023-02-11', '2028-02-11'),
(23, 23, 'saison 1', '2023-01-26', '2028-01-26'),
(24, 24, 'saison 1', '2023-03-12', '2028-03-12'),
(25, 25, 'saison 1', '2023-04-14', '2028-04-14'),
(26, 26, 'saison 2', '2022-06-30', '2027-06-30'),
(27, 26, 'saison 3', '2023-02-12', '2028-02-12'),
(28, 28, 'saison 1', '2023-01-09', '2028-01-09'),
(29, 29, 'saison 3', '2022-08-27', '2027-08-27'),
(30, 30, 'saison 4', '2022-06-15', '2027-06-15'),
(31, 31, 'saison 1', '2023-01-14', '2028-01-14'),
(32, 32, 'saison 5', '2022-08-06', '2027-08-06'),
(33, 33, 'saison 1', '2023-05-26', '2028-05-26'),
(34, 34, 'saison 1', '2022-09-20', '2027-09-20'),
(35, 35, 'saison 3', '2023-02-09', '2028-02-09'),
(36, 36, 'saison 2', '2023-04-03', '2028-04-03'),
(37, 37, 'saison 4', '2022-08-30', '2027-08-30'),
(38, 38, 'saison 1', '2023-04-04', '2028-04-04'),
(39, 39, 'saison 2', '2023-05-11', '2028-05-11'),
(40, 40, 'saison 1', '2022-12-26', '2027-12-26'),
(41, 41, 'saison 0', '2022-06-19', '2027-06-19'),
(42, 42, 'saison 1', '2022-06-22', '2027-06-22'),
(43, 43, 'saison 2', '2022-10-16', '2027-10-16'),
(44, 44, 'saison 1', '2022-09-12', '2027-09-12'),
(45, 45, 'saison 1', '2022-06-18', '2027-06-18'),
(46, 46, 'saison 1', '2022-07-23', '2027-07-23'),
(47, 47, 'saison 3', '2023-05-17', '2028-05-17'),
(48, 48, 'saison 2', '2022-09-20', '2027-09-20'),
(49, 49, 'saison 5', '2023-04-14', '2028-04-14'),
(50, 50, 'saison 1', '2022-07-17', '2027-07-17'),
(51, 51, 'saison 1', '2022-09-14', '2027-09-14'),
(52, 52, 'saison 2', '2022-06-02', '2027-06-02'),
(53, 53, 'saison 1', '2022-08-06', '2027-08-06'),
(54, 54, 'saison 1', '2023-02-28', '2028-02-28'),
(55, 55, 'saison 1', '2023-04-29', '2028-04-29'),
(56, 56, 'saison 4', '2023-04-18', '2028-04-18'),
(57, 57, 'saison 2', '2023-02-11', '2028-02-11'),
(58, 58, 'saison 1', '2022-09-30', '2027-09-30'),
(59, 59, 'saison 1', '2022-09-22', '2027-09-22'),
(60, 60, 'saison 2', '2023-01-01', '2028-01-01'),
(61, 21, 'saison 1', '2022-02-08', '2027-02-08'),
(62, 21, 'saison 2', '2022-03-03', '2027-03-03'),
(63, 21, 'saison 3', '2022-04-04', '2027-04-04'),
(64, 21, 'saison 4', '2022-05-05', '2027-05-05'),
(65, 21, 'saison 5', '2022-06-06', '2027-06-06'),
(66, 21, 'saison 6', '2022-07-07', '2027-07-07'),
(67, 21, 'saison 7', '2022-08-08', '2027-08-08'),
(68, 22, 'saison 1', '2023-01-11', '2028-01-11'),
(69, 26, 'saison 1', '2022-05-30', '2027-05-30'),
(70, 59, 'saison 2', '2023-01-12', '2028-01-12'),
(71, 29, 'saison 1', '2022-06-27', '2027-06-27'),
(72, 29, 'saison 2', '2022-07-27', '2027-07-27'),
(73, 30, 'saison 1', '2022-02-15', '2027-02-15'),
(74, 30, 'saison 2', '2022-03-15', '2027-03-15'),
(75, 30, 'saison 3', '2022-05-15', '2027-05-15'),
(76, 32, 'saison 1', '2022-08-06', '2027-08-06'),
(77, 32, 'saison 2', '2022-03-06', '2027-03-06'),
(78, 32, 'saison 3', '2022-05-06', '2027-05-06'),
(79, 32, 'saison 4', '2022-06-06', '2027-06-06'),
(80, 35, 'saison 1', '2022-12-09', '2027-12-09'),
(81, 35, 'saison 2', '2023-01-09', '2028-01-09'),
(82, 36, 'saison 1', '2023-02-03', '2028-02-03'),
(83, 37, 'saison 1', '2022-01-30', '2027-01-30'),
(84, 37, 'saison 2', '2022-03-30', '2027-03-30'),
(85, 37, 'saison 3', '2022-06-30', '2027-06-30'),
(86, 39, 'saison 1', '2022-03-11', '2027-03-11'),
(87, 43, 'saison 1', '2022-05-16', '2027-05-16'),
(88, 47, 'saison 1', '2023-04-17', '2028-04-17'),
(89, 47, 'saison 2', '2023-05-17', '2028-05-17'),
(90, 48, 'saison 1', '2022-01-20', '2027-01-20'),
(91, 49, 'saison 1', '2022-04-11', '2027-04-11'),
(92, 49, 'saison 2', '2022-10-12', '2027-10-12'),
(93, 49, 'saison 3', '2023-01-14', '2028-01-14'),
(94, 49, 'saison 4', '2023-02-14', '2028-02-14'),
(95, 52, 'saison 1', '2022-03-02', '2027-03-02'),
(96, 56, 'saison 1', '2023-03-18', '2028-03-18'),
(97, 56, 'saison 2', '2023-02-18', '2028-02-18'),
(98, 56, 'saison 3', '2023-01-18', '2028-01-18'),
(99, 57, 'saison 1', '2022-02-11', '2027-02-11'),
(100, 60, 'saison 1', '2023-01-01', '2028-01-01');

-- --------------------------------------------------------

--
-- Structure de la table `sous_titres`
--

DROP TABLE IF EXISTS `sous_titres`;
CREATE TABLE `sous_titres` (
  `id_video` int NOT NULL,
  `id_langue` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `sous_titres`
--

INSERT INTO `sous_titres` (`id_video`, `id_langue`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 3),
(12, 1),
(13, 1),
(14, 15),
(15, 1),
(16, 7),
(17, 14),
(18, 1),
(19, 2),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 3),
(30, 3),
(31, 7),
(32, 2),
(33, 11),
(34, 1),
(35, 1),
(36, 1),
(37, 7),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 7),
(52, 16),
(53, 1),
(54, 1),
(55, 1),
(56, 7),
(57, 7),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 8),
(72, 7),
(73, 6),
(74, 6),
(75, 6),
(76, 6),
(77, 6),
(78, 6),
(79, 6),
(80, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 6);

-- --------------------------------------------------------

--
-- Structure de la table `type_abonnement`
--

DROP TABLE IF EXISTS `type_abonnement`;
CREATE TABLE `type_abonnement` (
  `id_type_abonnement` int NOT NULL,
  `categorie_abonnement` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `type_abonnement`
--

INSERT INTO `type_abonnement` (`id_type_abonnement`, `categorie_abonnement`) VALUES
(1, 'mensuel'),
(2, 'annuel');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id_video` int NOT NULL,
  `id_saison` int NOT NULL,
  `nom_video` varchar(50) NOT NULL,
  `duree` int NOT NULL,
  `descriptif` varchar(200) NOT NULL,
  `lien_video` varchar(100) DEFAULT NULL,
  `id_langue` int NOT NULL,
  `id_restriction` int NOT NULL,
  `id_exclusivite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video`
  (`id_video`, `id_saison`, `nom_video`, `duree`, `descriptif`, `lien_video`, `id_langue`, `id_restriction`, `id_exclusivite`)
VALUES
  (1,   1,  "Ariel : saison0, \"La légende sous-marine\"",          141, "Une aventure pleine de mystères",                         "http://streaming.com/ariel",                         1, 1, 1),
  (2,   2,  "Madagascar : saison0, \"Un zoo en cavale\"",           92,  "Un combat pour la justice",                                "http://streaming.com/madagascar",                    1, 1, 1),
  (3,   3,  "Judgment Night : saison0, \"La nuit fatale\"",         110, "Une romance interdite",                                    "http://streaming.com/judgment_night",                1, 4, 1),
  (4,   4,  "Wolf Warrior : saison0, \"Le guerrier solitaire\"",    108, "Un monde où tout peut basculer",                            "http://streaming.com/wolf_warrior",                  1, 4, 1),
  (5,   5,  "Citizen Kane : saison0, \"Un chef-d'œuvre intemporel\"",129, "Des secrets enfouis refont surface",                       "http://streaming.com/citizen_kane",                  1, 2, 1),
  (6,   6,  "Dancer in the Dark : saison0, \"Une voix dans l'ombre\"",141,"Une guerre qui dépasse l'entendement",                     "http://streaming.com/dancer_in_the_dark",            1, 5, 1),
  (7,   7,  "The Dark Knight : saison0, \"Le héros de Gotham\"",      101, "Un pouvoir ancien se réveille",                             "http://streaming.com/the_dark_knight",               1, 3, 1),
  (8,   8,  "Sous la Seine : saison0, \"Terreur aquatique à Paris\"",125, "Une séquence pleine de dangers",                           "http://streaming.com/sous_la_seine",                 2, 3, 2),
  (9,   9,  "Avengers: Infinity War : saison0, \"Le combat de l'infini\"",138,"Un affrontement qui tourne mal",                         "http://streaming.com/avengers_infinity_war",         1, 3, 1),
  (10,  10, "The Endless Summer : saison0, \"L'été sans fin\"",      146, "Des liens familiaux mis à l'épreuve",                      "http://streaming.com/the_endless_summer",            1, 2, 1),
  (11,  11, "Culpa Mia : saison0, \"La faute d'aimer\"",             118, "Un voyage entre rêve et réalité",                          "http://streaming.com/culpa_mia",                     3, 4, 1),
  (12,  12, "Fast and Furious : saison0, \"Toujours plus vite\"",    126, "Un passé qui ressurgit brutalement",                       "http://streaming.com/fast_and_furious",              1, 3, 1),
  (13,  13, "Black Panther : saison0, \"L'esprit de Wakanda\"",     139, "Une société divisée par la peur",                          "http://streaming.com/black_panther",                 1, 3, 1),
  (14,  14, "Lion : saison0, \"Un destin en Inde\"",                93,  "Un héros naît du chaos",                                   "http://streaming.com/lion",                          15,2, 1),
  (15,  15, "Titanic : saison0, \"L'amour coule à pic\"",           123, "Un message venu du futur",                                 "http://streaming.com/titanic",                       1, 3, 1),
  (16,  16, "Parasite : saison0, \"L'envers de la société\"",       114, "Une menace invisible approche",                            "http://streaming.com/parasite",                      7, 5, 1),
  (17,  17, "Moi moche et méchant : saison0, \"La tendresse du vilain\"",98, "Un voyage qui change une vie",                        "http://streaming.com/moi_moche_et_mechant",          14,1, 1),
  (18,  18, "Le Seigneur des anneaux : saison0, \"La quête de l'anneau\"",210,"Une épopée pour rétablir l'ordre établi",             "http://streaming.com/le_seigneur_des_anneaux",       1, 3, 1),
  (19,  19, "Portrait de la jeune fille en feu : saison0, \"L'éclat d'un regard\"",97,"Une histoire hors du temps",                         "http://streaming.com/portrait_de_la_jeune_fille_en_feu",2,4, 2),
  (20,  20, "The Lion King : saison0, \"Le rugissement royal\"",     147, "Des souvenirs perdus à retrouver",                         "http://streaming.com/the_lion_king",                 1, 1, 1),
  (21,  61, "Blacklist : saison1, \"La liste\"",                    42,  "Liz aime Tom",                                              "http://streaming.com/blacklist_s1",                  1, 3, 1),
  (22,  62, "Blacklist : saison2, \"La faction\"",                  45,  "Une brillante criminelle se rend au FBI",                  "http://streaming.com/blacklist_s2",                  1, 3, 1),
  (23,  63, "Blacklist : saison3, \"Le Djinn\"",                    45,  "L'équipe traque un militant écologiste",                  "http://streaming.com/blacklist_s3",                  1, 3, 1),
  (24,  64, "Blacklist : saison4, \"Mato\"",                       43,  "Red essaie de trouver un criminel",                        "http://streaming.com/blacklist_s4",                  1, 3, 1),
  (25,  65, "Blacklist : saison5, \"Capitaine Patricia Sue Edwards\"",45, "Rencontre avec un chasseur de primes",               "http://streaming.com/blacklist_s5",                  1, 3, 1),
  (26,  66, "Blacklist : saison6, \"Le Corse\"",                   40,  "Liz aide à arrêter une attaque",                           "http://streaming.com/blacklist_s6",                  1, 3, 1),
  (27,  67, "Blacklist : saison7, \"Koweït\"",                     40,  "Liz pourchasse un tueur à gage",                           "http://streaming.com/blacklist_s7",                  1, 3, 1),
  (28,  21, "Blacklist : saison8, \"La mort de Liz\"",             43,  "Une enquête qui dévoile l'impensable",                    "http://streaming.com/blacklist_s8",                  1, 3, 1),
  (29,  68, "La Casa de Papel : saison1, \"La mort de Nairobi\"",   42,  "Un sacrifice pour le bien commun",                        "http://streaming.com/la_casa_de_papel_s1",           3, 4, 1),
  (30,  22, "La Casa de Papel : saison2, \"La mort de Rio\"",       43,  "Une lutte entre lumière et ténèbres",                     "http://streaming.com/la_casa_de_papel_s2",           3, 4, 1),
  (31,  23, "Squid Game : saison1, \"La fin des haricots\"",        46,  "Une légende renaît de ses cendres",                        "http://streaming.com/squid_game",                    7, 5, 1),
  (32,  24, "Lupin : saison1, \"Lupin\"",                         49,  "Une civilisation oubliée refait surface",                 "http://streaming.com/lupin",                         2, 3, 2),
  (33,  25, "Aile : saison1, \"Devin ma chère\"",                   38,  "Un affrontement entre deux mondes",                        "http://streaming.com/aile",                          11,4, 2),
  (34,  69, "Snowflow : saison1, \"Build that shit 1\"",            50,  "Un affrontement entre trois mondes",                      "http://streaming.com/snowflow_s1",                   1, 4, 1),
  (35,  26, "Snowflow : saison2, \"Build that shit 2\"",            50,  "Un amour plus fort que le destin",                        "http://streaming.com/snowflow_s2",                   1, 4, 1),
  (36,  27, "Snowflow : saison3, \"Build that shit 3\"",            51,  "Un territoire inconnu à explorer",                        "http://streaming.com/snowflow_s3",                   1, 4, 1),
  (37,  28, "Under the Queen's Umbrella : saison1, \"My son is gay\"",59,"Un royaume inconnu à explorer",                     "http://streaming.com/umbrella",                      7, 4, 2),
  (38,  71, "Supernatural : saison1, \"Dean tu ne mourras pas 1\"", 33,  "Un territoire inconnu à inspecter",                       "http://streaming.com/supernatural_s1",               1, 4, 1),
  (39,  72, "Supernatural : saison2, \"Dean tu ne mourras pas 2\"", 33,  "Un héritage lourd à porter",                              "http://streaming.com/supernatural_s2",               1, 4, 1),
  (40,  29, "Supernatural : saison3, \"Dean tu ne mourras pas 3\"", 33,  "Un héritage lourd à vendre",                              "http://streaming.com/supernatural_s3",               1, 4, 1),
  (41,  73, "Vampire Diaries : saison1, \"Le Sang des Anciens 1\"",43, "Un héritage lourd à soutenir",                            "http://streaming.com/vampire_diaries_s1",            1, 4, 1),
  (42,  74, "Vampire Diaries : saison2, \"Le Sang des Anciens 2\"",43, "Un héritage lourd à prendre",                             "http://streaming.com/vampire_diaries_s2",            1, 4, 1),
  (43,  75, "Vampire Diaries : saison3, \"Le Sang des Anciens 3\"",43, "Une aventure pleine de mystérieuses choses",              "http://streaming.com/vampire_diaries_s3",            1, 4, 1),
  (44,  30, "Vampire Diaries : saison4, \"Le Sang des Anciens 4\"",43, "Un combat pour la justice",                               "http://streaming.com/vampire_diaries_s4",            1, 4, 1),
  (45,  31, "Merlin : saison1, \"L'épée du Destin\"",              25,  "Un combat avec Camelot",                                  "http://streaming.com/merlin",                        1, 2, 1),
  (46,  76, "Black Mirror : saison1, \"Connexion Perdue 1\"",       29,  "Un combat pour la société",                              "http://streaming.com/black_mirror_s1",               1, 5, 1),
  (47,  77, "Black Mirror : saison2, \"Connexion Perdue 2\"",       29,  "Un combat pour la société #2",                           "http://streaming.com/black_mirror_s2",               1, 5, 1),
  (48,  78, "Black Mirror : saison3, \"Connexion Perdue 3\"",       29,  "Un combat pour la société #3",                           "http://streaming.com/black_mirror_s3",               1, 5, 1),
  (49,  79, "Black Mirror : saison4, \"Connexion Perdue 4\"",       29,  "Une romance interdite",                                  "http://streaming.com/black_mirror_s4",               1, 5, 1),
  (50,  32, "Black Mirror : saison5, \"Connexion Perdue 5\"",       29,  "Un monde où tout peut basculer",                         "http://streaming.com/black_mirror_s5",               1, 5, 1),
  (51,  33, "Vincenzo : saison1, \"La Justice du Consigliere\"",    53,  "Des secrets enfouis refont surface",                     "http://streaming.com/vincenzo",                     7, 4, 2),
  (52,  34, "One Day : saison1, \"Une Date Inoubliable\"",          41,  "Des secrets enfouis refont surface eh oui",              "http://streaming.com/one_day",                       16,3, 1),
  (53,  80, "Love is Blind : saison1, \"Révélations et masques tombés 1\"",52,"Premières révélations et échauffements",        "http://streaming.com/love_is_blind_s1",              1, 4, 2),
  (54,  81, "Love is Blind : saison2, \"Révélations et masques tombés 2\"",53,"Les tensions montent et l'entendement vacille", "http://streaming.com/love_is_blind_s2",              1, 4, 2),
  (55,  35, "Love is Blind : saison3, \"Révélations et masques tombés 3\"",54,"Tout se joue dans l'attention portée",             "http://streaming.com/love_is_blind_s3",              1, 4, 2),
  (56,  82, "Penthouse : saison1, \"Secrets de l'élite 1\"",        36,  "Un pouvoir ancien se réveille",                         "http://streaming.com/penthouse_s1",                  7, 5, 2),
  (57,  36, "Penthouse : saison2, \"Secrets de l'élite 2\"",        36,  "Un pouvoir ancien se lève",                            "http://streaming.com/penthouse_s2",                  7, 5, 2),
  (58,  83, "Breaking Bad : saison1, \"Le Choix de Walter 1\"",     48,  "Un pouvoir ancien se dandine",                         "http://streaming.com/breaking_bad_s1",               1, 5, 1),
  (59,  84, "Breaking Bad : saison2, \"Le Choix de Walter 2\"",     48,  "Un pouvoir ancien se regarde vivre",                   "http://streaming.com/breaking_bad_s2",               1, 5, 1),
  (60,  85, "Breaking Bad : saison3, \"Le Choix de Walter 3\"",     48,  "Une quête initiatique pleine de dangers",               "http://streaming.com/breaking_bad_s3",               1, 5, 1),
  (61,  37, "Breaking Bad : saison4, \"Le Choix de Walter 4\"",     48,  "Une mission qui tourne mal",                           "http://streaming.com/breaking_bad_s4",               1, 5, 1),
  (62,  38, "Dogs of Berlin : saison1, \"Rivalités de Berlin-Est\"",44,  "Une enquête qui tourne mal",                          "http://streaming.com/dogs_of_berlin",                1, 5, 2),
  (63,  86, "The 100 : saison1, \"L’Alliance des Cendres 1\"",       58,  "Des liens familiaux mis à l'épreuve",                  "http://streaming.com/the_100_s1",                    1, 4, 1),
  (64,  39, "The 100 : saison2, \"L’Alliance des Cendres 2\"",       58,  "Un voyage entre rêve et réalité",                     "http://streaming.com/the_100_s2",                    1, 4, 1),
  (65,  40, "Versailles : saison1, \"Le Roi Soleil et les ombres\"", 32,  "Un complot qui ressurgit brutalement",                  "http://streaming.com/versailles",                    1, 4, 2),
  (66,  41, "One Piece : saison0, \"À la Rêverie ! Princesses !\"",  40,  "Une société divisée par la peur",                       "http://streaming.com/one_piece",                     6, 2, 1),
  (67,  42, "Seven Deadly Sins : saison1, \"Les légendes dans la tourmente\"",24,"Un destin scellé par la terreur",       "http://streaming.com/seven_deadly_sins",              6, 2, 1),
  (68,  87, "Demon Slayer : saison1, \"À chaque réincarnation 1\"",  27,  "Un héros naît du chaos",                                "http://streaming.com/demon_slayer_s1",                6, 4, 1),
  (69,  43, "Demon Slayer : saison2, \"À chaque réincarnation 2\"",  27,  "Un message venu du futur",                              "http://streaming.com/demon_slayer_s2",                6, 4, 1),
  (70,  44, "Tokyo Ghoul : saison1, \"Naissance d’une goule\"",      26,  "Une menace invisible approche",                         "http://streaming.com/tokyo_ghoul",                   6, 4, 1),
  (71,  45, "Super Cube : saison1, \"Les portails apparaissent\"",   46,  "Un pacte qui change une vie",                           "http://streaming.com/super_cube",                    8, 4, 2),
  (72,  46, "Solo Leveling : saison1, \"Chasseur sans rang\"",      50,  "Un pacte qui change une vie #3",                        "http://streaming.com/solo_leveling",                 7, 4, 2),
  (73,  88, "Black Clover : saison1, \"La promesse des compagnons 1\"",33, "Un pacte qui change un mage",                         "http://streaming.com/black_clover_s1",               6, 4, 1),
  (74,  89, "Black Clover : saison2, \"La promesse des compagnons 2\"",33, "Une rébellion contre l'ordre établi",                "http://streaming.com/black_clover_s2",               6, 4, 1),
  (75,  47, "Black Clover : saison3, \"La promesse des compagnons 3\"",33, "Un esprit rebelle",                                    "http://streaming.com/black_clover_s3",               6, 4, 1),
  (76,  90, "Chevaliers du Zodiaque : saison1, \"Le retour d'Athéna 1\"",28,"Une ascension spectaculaire",                         "http://streaming.com/chevaliers_zodiaque_s1",        6, 2, 1),
  (77,  48, "Chevaliers du Zodiaque : saison2, \"Le retour d'Athéna 2\"",28,"Une renaissance miraculeuse",                        "http://streaming.com/chevaliers_zodiaque_s2",        6, 2, 1),
  (78,  91, "Dragon Ball Z : saison1, \"L’arrivée des Cyborgs 1\"",  38,  "Une ascension exceptionnelle",                         "http://streaming.com/dragon_ball_z_s1",               6, 3, 1),
  (79,  92, "Dragon Ball Z : saison2, \"L’arrivée des Cyborgs 2\"",  38,  "Une ascension hors du commun",                         "http://streaming.com/dragon_ball_z_s2",               6, 3, 1),
  (80,  93, "Dragon Ball Z : saison3, \"L’arrivée des Cyborgs 3\"",  38,  "Une ascension grave",                                  "http://streaming.com/dragon_ball_z_s3",               6, 3, 1),
  (81,  94, "Dragon Ball Z : saison4, \"L’arrivée des Cyborgs 4\"",  38,  "Des souvenirs perdus à retrouver",                     "http://streaming.com/dragon_ball_z_s4",               6, 3, 1),
  (82,  49, "Dragon Ball Z : saison5, \"L’arrivée des Cyborgs 5\"",  38,  "Une enquête qui dévoile l'impensable",                 "http://streaming.com/dragon_ball_z_s5",               6, 3, 1),
  (83,  50, "Tokyo Revengers : saison1, \"Changer le passé\"",       55,  "Un sacrifice pour le bien commun",                     "http://streaming.com/tokyo_revengers",                6, 4, 2),
  (84,  51, "Wind Breaker : saison1, \"La colline des rebelles\"",  45,  "Un sacrifice pour le bien de tous",                     "http://streaming.com/wind_breaker",                   6, 4, 2),
  (85,  95, "Jujutsu Kaisen : saison1, \"Le passé de Gojo 1\"",     22,  "Une lutte entre lumière et ténèbres",                   "http://streaming.com/jujutsu_kaisen_s1",              6, 4, 1),
  (86,  52, "Jujutsu Kaisen : saison2, \"Le passé de Gojo 2\"",     22,  "Une légende renaît de ses cendres",                     "http://streaming.com/jujutsu_kaisen_s2",              6, 4, 1),
  (87,  53, "A Sign of Affection : saison1, \"La voix du silence\"",37, "Quand un geste refait surface",                        "http://streaming.com/a_sign_of_affection",            6, 2, 2),
  (88,  54, "My Happy Marriage : saison1, \"Mariage arrangé\"",      57,  "Un affrontement entre deux dieux",                      "http://streaming.com/my_happy_marriage",              6, 3, 2),
  (89,  55, "Carnets de l'apothicaire : saison1, \"Mystères au palais\"",29,"Voyage entre deux terres",                            "http://streaming.com/carnets_apothicaire",            6, 2, 2),
  (90,  96, "Attack on Titan : saison1, \"Le rugissement de l'espoir 1\"",46,"Un écho sur deux sables",                          "http://streaming.com/attack_on_titans_s1",            6, 5, 1),
  (91,  97, "Attack on Titan : saison2, \"Le rugissement de l'espoir 2\"",46,"Un cri vers deux aliens",                           "http://streaming.com/attack_on_titans_s2",            6, 5, 1),
  (92,  98, "Attack on Titan : saison3, \"Le rugissement de l'espoir 3\"",46,"Quand la machine en marche",                       "http://streaming.com/attack_on_titans_s3",            6, 5, 1),
  (93,  56, "Attack on Titan : saison4, \"Le rugissement de l'espoir 4\"",30,"Un ultime prophète",                               "http://streaming.com/attack_on_titans_s4",            6, 5, 1),
  (94,  99, "Fire Force : saison1, \"Les flammes de la vérité 1\"",  53,  "Un amour plus fort que le destin",                     "http://streaming.com/fire_force_s1",                  6, 4, 1),
  (95,  57, "Fire Force : saison2, \"Les flammes de la vérité 2\"",  53,  "Un territoire inconnu à explorer",                     "http://streaming.com/fire_force_s2",                  6, 4, 1),
  (96,  58, "Sakamoto Days : saison1, \"L’assassin rangé\"",       29,  "Un territoire inconnu à visiter",                      "http://streaming.com/sakamoto_days",                  6, 3, 2),
  (97,  59, "Bleach : saison1, \"Le Hueco Mundo 1\"",               34,  "Un héritage lourd à porter",                           "http://streaming.com/bleach_s1",                      6, 4, 1),
  (98,  70, "Bleach : saison2, \"Le Hueco Mundo 2\"",               34,  "Lourd à vénérer",                                      "http://streaming.com/bleach_s2",                      6, 4, 1),
  (99, 100, "Naruto : saison1, \"L’examen Chūnin 1\"",             39,  "Kyūbi le roi des démons",                              "http://streaming.com/naruto_s1",                     6, 3, 1),
  (100, 60, "Naruto : saison2, \"L’examen Chūnin 2\"",            39,  "Je t’aime Hinata",                                     "http://streaming.com/naruto_s2",                     6, 3, 1)
;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`id_abonnement`),
  ADD KEY `fk_abonnement_pays` (`id_pays`),
  ADD KEY `fk_abonnement_compte` (`id_compte`),
  ADD KEY `fk_abonnement_actif` (`id_actif`),
  ADD KEY `fk_abonnement_prix` (`id_prix`),
  ADD KEY `fk_abonnement_type_abonnement` (`id_type_abonnement`);

--
-- Index pour la table `actif`
--
ALTER TABLE `actif`
  ADD PRIMARY KEY (`id_actif`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id_compte`);

--
-- Index pour la table `exclusivite`
--
ALTER TABLE `exclusivite`
  ADD PRIMARY KEY (`id_exclusivite`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id_oeuvre`,`id_profil`),
  ADD KEY `fk_favoris_profil` (`id_profil`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`id_oeuvre`,`id_intervenant`),
  ADD KEY `fk_fonction_intervenant` (`id_intervenant`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Index pour la table `genre_oeuvre`
--
ALTER TABLE `genre_oeuvre`
  ADD PRIMARY KEY (`id_oeuvre`,`id_genre`),
  ADD KEY `fk_genre_oeuvre_genre` (`id_genre`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id_video`,`id_profil`),
  ADD KEY `fk_historique_profil` (`id_profil`);

--
-- Index pour la table `intervenant`
--
ALTER TABLE `intervenant`
  ADD PRIMARY KEY (`id_intervenant`);

--
-- Index pour la table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`id_langue`);

--
-- Index pour la table `langue_doublee`
--
ALTER TABLE `langue_doublee`
  ADD PRIMARY KEY (`id_langue`,`id_video`),
  ADD KEY `fk_langue_doublee_video` (`id_video`);

--
-- Index pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD PRIMARY KEY (`id_oeuvre`),
  ADD KEY `fk_oeuvre_langue` (`id_langue`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `prix`
--
ALTER TABLE `prix`
  ADD PRIMARY KEY (`id_prix`),
  ADD KEY `fk_prix_type_abonnement` (`id_type_abonnement`),
  ADD KEY `fk_prix_pays` (`id_pays`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`,`id_compte`),
  ADD KEY `fk_profil_langue` (`id_langue`),
  ADD KEY `fk_profil_compte` (`id_compte`),
  ADD KEY `fk_profil_pays` (`id_pays`);

--
-- Index pour la table `restriction`
--
ALTER TABLE `restriction`
  ADD PRIMARY KEY (`id_restriction`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`id_saison`,`id_oeuvre`),
  ADD KEY `fk_saison_oeuvre` (`id_oeuvre`);

--
-- Index pour la table `sous_titres`
--
ALTER TABLE `sous_titres`
  ADD PRIMARY KEY (`id_langue`,`id_video`),
  ADD KEY `fk_sous_titres_video` (`id_video`);

--
-- Index pour la table `type_abonnement`
--
ALTER TABLE `type_abonnement`
  ADD PRIMARY KEY (`id_type_abonnement`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`,`id_saison`),
  ADD KEY `fk_video_saison` (`id_saison`),
  ADD KEY `fk_video_langue` (`id_langue`),
  ADD KEY `fk_video_exclusivite` (`id_exclusivite`),
  ADD KEY `fk_video_restriction` (`id_restriction`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD CONSTRAINT `fk_abonnement_actif` FOREIGN KEY (`id_actif`) REFERENCES `actif` (`id_actif`),
  ADD CONSTRAINT `fk_abonnement_compte` FOREIGN KEY (`id_compte`) REFERENCES `compte` (`id_compte`),
  ADD CONSTRAINT `fk_abonnement_pays` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id_pays`),
  ADD CONSTRAINT `fk_abonnement_prix` FOREIGN KEY (`id_prix`) REFERENCES `prix` (`id_prix`),
  ADD CONSTRAINT `fk_abonnement_type_abonnement` FOREIGN KEY (`id_type_abonnement`) REFERENCES `type_abonnement` (`id_type_abonnement`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `fk_favoris_oeuvre` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`),
  ADD CONSTRAINT `fk_favoris_profil` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id_profil`);

--
-- Contraintes pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD CONSTRAINT `fk_fonction_intervenant` FOREIGN KEY (`id_intervenant`) REFERENCES `intervenant` (`id_intervenant`),
  ADD CONSTRAINT `fk_fonction_oeuvre` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`);

--
-- Contraintes pour la table `genre_oeuvre`
--
ALTER TABLE `genre_oeuvre`
  ADD CONSTRAINT `fk_genre_oeuvre_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `fk_genre_oeuvre_oeuvre` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`);

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `fk_historique_profil` FOREIGN KEY (`id_profil`) REFERENCES `profil` (`id_profil`),
  ADD CONSTRAINT `fk_historique_video` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`);

--
-- Contraintes pour la table `langue_doublee`
--
ALTER TABLE `langue_doublee`
  ADD CONSTRAINT `fk_langue_doublee_langue` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `fk_langue_doublee_video` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`);

--
-- Contraintes pour la table `oeuvre`
--
ALTER TABLE `oeuvre`
  ADD CONSTRAINT `fk_oeuvre_langue` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`);

--
-- Contraintes pour la table `prix`
--
ALTER TABLE `prix`
  ADD CONSTRAINT `fk_prix_pays` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id_pays`),
  ADD CONSTRAINT `fk_prix_type_abonnement` FOREIGN KEY (`id_type_abonnement`) REFERENCES `type_abonnement` (`id_type_abonnement`);

--
-- Contraintes pour la table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `fk_profil_compte` FOREIGN KEY (`id_compte`) REFERENCES `compte` (`id_compte`),
  ADD CONSTRAINT `fk_profil_langue` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `fk_profil_pays` FOREIGN KEY (`id_pays`) REFERENCES `pays` (`id_pays`);

--
-- Contraintes pour la table `saison`
--
ALTER TABLE `saison`
  ADD CONSTRAINT `fk_saison_oeuvre` FOREIGN KEY (`id_oeuvre`) REFERENCES `oeuvre` (`id_oeuvre`);

--
-- Contraintes pour la table `sous_titres`
--
ALTER TABLE `sous_titres`
  ADD CONSTRAINT `fk_sous_titres_langue` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `fk_sous_titres_video` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk_video_exclusivite` FOREIGN KEY (`id_exclusivite`) REFERENCES `exclusivite` (`id_exclusivite`),
  ADD CONSTRAINT `fk_video_langue` FOREIGN KEY (`id_langue`) REFERENCES `langue` (`id_langue`),
  ADD CONSTRAINT `fk_video_restriction` FOREIGN KEY (`id_restriction`) REFERENCES `restriction` (`id_restriction`),
  ADD CONSTRAINT `fk_video_saison` FOREIGN KEY (`id_saison`) REFERENCES `saison` (`id_saison`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
