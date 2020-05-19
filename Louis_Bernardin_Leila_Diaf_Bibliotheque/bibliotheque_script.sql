-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 12 fév. 2020 à 10:37
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bibliotheque_script`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `idPersonne` int(11) NOT NULL,
  `idLivre` varchar(15) NOT NULL,
  `idRole` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`idPersonne`, `idLivre`, `idRole`) VALUES
(1, '2264069112', 1),
(3, '2264069112', 2),
(4, '2264069112', 3),
(1, '2264056002', 1),
(1, '2264056169', 1),
(6, '203585573X', 1),
(5, '208127857X', 1),
(5, '2253163503', 1),
(6, '2253041475', 1),
(8, '2253160466', 1),
(8, '2253038741', 1),
(8, '2253037923', 1),
(2, '2035867916', 1),
(9, '2070373096', 1),
(10, '2081219972', 1),
(11, '2266152182', 1),
(12, '2266152182', 3),
(13, '2809710562', 1),
(14, '2809710562', 3),
(15, '2809710562', 3),
(16, '2266203533', 4),
(17, '096573840X', 1);

-- --------------------------------------------------------

--
-- Structure de la table `editeur`
--

DROP TABLE IF EXISTS `editeur`;
CREATE TABLE IF NOT EXISTS `editeur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomediteur` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `editeur`
--

INSERT INTO `editeur` (`id`, `nomediteur`) VALUES
(1, 'Belfond'),
(2, 'Flammarion'),
(3, 'Librio'),
(4, 'Pocket'),
(5, 'Larousse'),
(6, 'Le livre de poche'),
(7, 'Folio Théâtre'),
(8, 'Philippe Picquier'),
(9, 'Guardian');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomgenre` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nomgenre` (`nomgenre`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `nomgenre`) VALUES
(1, 'Théâtre'),
(2, 'Roman'),
(3, 'Nouvelle'),
(4, 'Essai'),
(5, 'Poésie');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` varchar(15) NOT NULL,
  `nom_fichier` varchar(255) NOT NULL,
  PRIMARY KEY (`nom_fichier`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `nom_fichier`) VALUES
('2253160466', '2253160466.jpg'),
('2253041475', '2253041475.jpg'),
('2253038741', '2253038741.jpg'),
('2253037923', '2253037923.jpg'),
('2035867916', '2035867916.jpg'),
('2070373096', '2070373096.jpg'),
('2081219972', '2081219972.jpg'),
('2266152182', '2266152182.jpg'),
('2809710562', '2809710562.jpg'),
('2266203533', '2266203533.jpg'),
('2253040156', '2253040156.jpg'),
('096573840X', '096573840X.jpg'),
('2264056002', '2264056002.jpg'),
('2264056169', '2264056169.jpg'),
('2264069112', '2264069112.jpg'),
('2266152181', '2266152181.jpg'),
('203585573X', '203585573X.jpg'),
('208127857X', '208127857X.jpg'),
('2253163503', '2253163503.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

DROP TABLE IF EXISTS `langue`;
CREATE TABLE IF NOT EXISTS `langue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomlangue` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `langue`
--

INSERT INTO `langue` (`id`, `nomlangue`) VALUES
(1, 'Anglais'),
(2, 'Français'),
(3, 'Japonais'),
(4, 'Espagnol'),
(5, 'Italien');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `isbn` varchar(15) NOT NULL,
  `titre` varchar(500) NOT NULL,
  `editeur` int(11) NOT NULL,
  `annee` int(11) DEFAULT NULL,
  `genre` int(11) DEFAULT NULL,
  `langue` int(11) DEFAULT NULL,
  `nbpages` int(11) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `editeur`, `annee`, `genre`, `langue`, `nbpages`) VALUES
('2264056002', 'La ballade de l\'impossible', 1, 2002, 2, 2, 456),
('2264056169', 'Kafka sur le rivage', 1, 2002, 2, 2, 648),
('2264069112', 'L\'étrange bibliothèque', 1, 2015, 3, 2, 80),
('2266152181', 'Le cid', 2, 1637, 1, 2, 208),
('203585573X', 'Ruy Blas', 2, 1838, 1, 2, 270),
('208127857X', 'Un fil à la patte', 7, 1894, 1, 2, 208),
('2253163503', 'Le Dindon', 6, 1989, 1, 2, 107),
('2253041475', 'Hernani', 6, 1830, 1, 2, NULL),
('2253160466', 'Les précieuses ridicules', 6, 1660, 1, 2, NULL),
('2253038741', 'Les femmes savantes', 6, 1672, 1, 2, NULL),
('2253037923', 'Le misanthrope', 6, 1666, 1, 2, NULL),
('2035867916', 'L\'illusion comique', 6, 1639, 1, 2, NULL),
('2070373096', 'Les Paravents', 7, 1961, 1, 2, NULL),
('2081219972', 'Le Comédien désincarné', 2, 2009, 2, 2, 390),
('2266152182', 'L\'art de la guerre', 2, 1963, 4, 2, NULL),
('2809710562', 'La tombe des lucioles', 8, 1967, 2, 2, 143),
('2266203533', 'Les Contemplations', 4, 1856, 5, 2, 672),
('2253040156', 'Poètes français des XIXe et XXe sciècles', 6, 2009, 5, 2, NULL),
('096573840X', 'A short history of Nearly Everything', 9, 2003, 4, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`) VALUES
(1, 'Murakami', 'Haruki'),
(2, 'Corneille', 'Pierre'),
(3, 'Menschik', 'Kat'),
(4, 'Morita', 'Helene'),
(5, 'Feydeau', 'Georges'),
(6, 'Hugo', 'Victor'),
(7, 'Chedeville', 'Elise'),
(8, 'Molière', NULL),
(9, 'Genet', 'Jean'),
(10, 'Jouvet', 'Louis'),
(11, 'Tzu', 'Sun'),
(12, 'Amiot', 'Joseph-Marie'),
(13, 'Nosaka', 'Akiyuki'),
(14, 'De Vos', 'Patrick'),
(15, 'Gossot', 'Anne'),
(16, 'Chamarat-Malandain', 'Gabrielle'),
(17, 'Bryson', 'Bill');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomrole` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `nomrole`) VALUES
(1, 'Ecrivain'),
(2, 'Illustrateur'),
(3, 'Traducteur'),
(4, 'Préface');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
