-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 12 fév. 2018 à 15:26
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestiontickets`
--

-- --------------------------------------------------------

--
-- Structure de la table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ar565it4vl5t6neu9pe0jfpjgbig1fqa', '::1', 1504369062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343336383939363b6c6f67696e7c733a323a226162223b6d64707c733a323a226162223b),
('9jilk6blh60sc39u1g6r8823a0kjj0je', '::1', 1506884364, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838343336343b6c6f67696e7c733a323a226162223b6d64707c733a323a226162223b),
('clii1175l1er0vt6ef4lt5q419t5eeqf', '::1', 1506886600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838363630303b),
('l9psu981kfm801o08e1ddj6k8i4e845i', '::1', 1506886607, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838363630373b6c6f67696e7c733a323a226d67223b6d64707c733a323a226d67223b),
('931gmrfvjggamc29ph0nvjj6j9qo6dba', '::1', 1506886613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838363630303b),
('p9q1l175urrf0lck2qsqqtigd69tj81m', '::1', 1506886800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838363630373b6c6f67696e7c733a323a226162223b6d64707c733a323a226162223b7374617475747c733a343a2275736572223b),
('c9vgceqr6dendc94qglnn54a0pj95r00', '::1', 1506887201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838373230313b6c6f67696e7c733a323a226d67223b6d64707c733a323a226d67223b7374617475747c733a353a2261646d696e223b),
('0cn5abb8g552nh7q2a4m3muo3n73ctqr', '::1', 1506887274, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363838373230313b6c6f67696e7c733a323a226d67223b6d64707c733a323a226d67223b7374617475747c733a353a2261646d696e223b),
('21r703tusv56812ocra3514mb9m9l8uc', '::1', 1506926455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363932363435353b6c6f67696e7c733a323a226d67223b6d64707c733a323a226d67223b7374617475747c733a353a2261646d696e223b),
('6pm67aoko64lv6hfcmkbc575dnbus1vj', '::1', 1506926572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530363932363435353b6c6f67696e7c733a323a22676c223b6d64707c733a323a22676c223b7374617475747c733a343a2275736572223b),
('kv4sk13ts3oiu98vuglk45qkls98g5se', '::1', 1516980038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363938303033383b6c6f67696e7c733a323a226d67223b6d64707c733a323a226d67223b7374617475747c733a353a2261646d696e223b),
('po9d9mn7snohk3qevh7dp1p695tgp2ra', '::1', 1516980042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363938303033383b6c6f67696e7c733a323a226d67223b6d64707c733a323a226d67223b7374617475747c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `idTicket` int(11) NOT NULL,
  `nomTicket` varchar(250) NOT NULL,
  `dateTicket` date NOT NULL,
  `idUser` int(11) NOT NULL,
  `niveauTicket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`idTicket`, `nomTicket`, `dateTicket`, `idUser`, `niveauTicket`) VALUES
(1, 'Corriger bug JavaScript', '2018-02-15', 1, 'Mineur'),
(2, 'Corriger balises HTML sur la page TICKET', '2018-02-13', 2, 'Bloquant'),
(3, 'Améliorer bootstrap', '2018-02-06', 4, 'Bloquant'),
(4, 'Modifier la table client', '2015-08-13', 3, 'Bloquant');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `nomUser` varchar(20) NOT NULL,
  `prenomUser` varchar(20) NOT NULL,
  `loginUser` varchar(20) NOT NULL,
  `pwdUser` varchar(20) NOT NULL,
  `statutUser` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUser`, `nomUser`, `prenomUser`, `loginUser`, `pwdUser`, `statutUser`) VALUES
(1, 'Girard', 'Michel', 'mg', 'mg', 'admin'),
(2, 'Alison', 'Benjamin', 'ab', 'ab', 'user'),
(3, 'Gand', 'Lucile', 'gl', 'gl', 'user'),
(4, 'Frebaud', 'Alexandra', 'fa', 'fa', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`idTicket`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `idTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
