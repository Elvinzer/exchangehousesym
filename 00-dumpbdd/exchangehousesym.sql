-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 fév. 2021 à 21:16
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exchangehousesym`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210126195436', '2021-01-26 21:03:02', 228),
('DoctrineMigrations\\Version20210126200558', '2021-01-26 21:06:08', 43),
('DoctrineMigrations\\Version20210126213629', '2021-01-26 22:37:29', 773),
('DoctrineMigrations\\Version20210126214228', '2021-01-26 22:42:39', 136),
('DoctrineMigrations\\Version20210127091859', '2021-01-27 10:19:06', 107),
('DoctrineMigrations\\Version20210127101733', '2021-01-27 11:17:40', 45);

-- --------------------------------------------------------

--
-- Structure de la table `estate`
--

CREATE TABLE `estate` (
  `id` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `surface` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `availability_date` date DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `estate_images`
--

CREATE TABLE `estate_images` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `lastname`, `firstname`, `email`, `phone`, `subscription`, `role`, `picture`, `hash`) VALUES
(11, 'Le Gall', 'Audrey', 'marcelle54@mace.fr', '0640477052', NULL, 'standard', NULL, '$2y$13$9wBa5rJDr5/R0nNzGTXiXOdNH2re3pBtKy1MJgb5T91HWD4Zzsi2W'),
(12, 'Rocher', 'Isabelle', 'penelope.hamon@jacob.fr', '0640477052', NULL, 'standard', NULL, '$2y$13$Vz/8KY.MsWnORwFjwukKPuWo3rlu3AjESIWwNjkNLR2mVYYDBC8Uq'),
(13, 'Devaux', 'Bernard', 'ghenry@gmail.com', '0640477052', NULL, 'standard', NULL, '$2y$13$cKXTeNjDqt5fvNieMhzW2OnXfJOgcYz0OOPFQujHk6vPAx0OZsc6i'),
(14, 'Benoit', 'Roger', 'lesage.georges@meunier.fr', '0640477052', NULL, 'standard', NULL, '$2y$13$Vx1xGPh4kz8fJZV2x9J4cOii2MXEN/CTwM.G..w95RX5pKGBEqjfK'),
(15, 'Humbert', 'Laurent', 'david.denis@pires.com', '0640477052', NULL, 'standard', NULL, '$2y$13$0Qx2ekGPSvJJNUiU3FQnXOdZH/kfwQ3jbnLAbDXUNAlv5PeeWo9n.'),
(16, 'Leveque', 'Alexandrie', 'denis96@laroche.org', '0640477052', NULL, 'standard', NULL, '$2y$13$R1YkdLBIUAz1YG58gPn6x.WDb94T9kiwdCkHK1qr/A9LLygpXweRG'),
(17, 'Andre', 'Marthe', 'margot60@sfr.fr', '0640477052', NULL, 'standard', NULL, '$2y$13$QtLD4VcDP3eZSCeMESaGeuy1YjpnZnxj83ppLJfpjBkAnNVEpC5d.'),
(18, 'Chauvet', 'Arnaude', 'deschamps.charles@live.com', '0640477052', NULL, 'standard', NULL, '$2y$13$B6rvJ5mbyeGkWA0kYMg0uOwGDr3/X7DqJUOuYQRUJfCf3W8UZUKB.'),
(19, 'Blin', 'Valentine', 'isaac.hubert@lejeune.fr', '0640477052', NULL, 'standard', NULL, '$2y$13$3wDowfSe8ebJGnXKJkhWFe1.Z/SAbHGOUVvpQ4G7eoQEbj0uYk5He'),
(20, 'Pascal', 'Vincent', 'lucas44@guerin.fr', '0640477052', NULL, 'standard', NULL, '$2y$13$tiQoaHnl7LFi/EEi6VXhY.Zf9T.KFqYyMTQ.uSiSeCnHiOx5v.vRS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `estate`
--
ALTER TABLE `estate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8C4A1AACA76ED395` (`user_id`);

--
-- Index pour la table `estate_images`
--
ALTER TABLE `estate_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8EA68865900733ED` (`estate_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `estate`
--
ALTER TABLE `estate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `estate_images`
--
ALTER TABLE `estate_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `estate`
--
ALTER TABLE `estate`
  ADD CONSTRAINT `FK_8C4A1AACA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `estate_images`
--
ALTER TABLE `estate_images`
  ADD CONSTRAINT `FK_8EA68865900733ED` FOREIGN KEY (`estate_id`) REFERENCES `estate` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
