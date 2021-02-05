-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 05 fév. 2021 à 11:58
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
-- Base de données : `exchangehouse`
--

-- --------------------------------------------------------

--
-- Structure de la table `catalog`
--

CREATE TABLE `catalog` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `type` text DEFAULT NULL,
  `surface` mediumint(9) DEFAULT NULL,
  `price` mediumint(9) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `catalog`
--

INSERT INTO `catalog` (`id`, `type`, `surface`, `price`, `city`, `zipcode`) VALUES
(1, 'magna', 460, 105734, 'Attigliano', '52703'),
(2, 'diam', 237, 290658, 'Khandwa', '86110'),
(3, 'Suspendisse', 115, 446640, 'Akola', '35490'),
(4, 'diam', 77, 435133, 'Bonvicino', '44834'),
(5, 'felis', 435, 320265, 'Kilmalcolm', '67935'),
(6, 'elementum,', 378, 523283, 'Zignago', '93829'),
(7, 'vel,', 257, 240309, 'Maser', '33093'),
(8, 'consequat', 441, 393599, 'Carbonear', '56340'),
(9, 'nascetur', 24, 20510, 'Corby', '30965'),
(10, 'enim', 166, 376495, 'Fresno', '90767'),
(11, 'nunc', 23, 249201, 'Torrevecchia Teatina', '41854'),
(12, 'enim.', 347, 110311, 'Jodhpur', '46587'),
(13, 'ipsum', 61, 218564, 'Porirua', '46175'),
(14, 'a', 138, 286698, 'Stupino', '08164'),
(15, 'Integer', 457, 269381, 'Palanzano', '30513'),
(16, 'ligula.', 25, 411429, 'Soye', '88207'),
(17, 'Cras', 375, 430723, 'Sherbrooke', '43283'),
(18, 'sodales', 492, 349436, 'Doñihue', '99520'),
(19, 'scelerisque', 351, 206215, 'Essen', '70656'),
(20, 'ipsum.', 187, 303176, 'Smoky Lake', '54650'),
(21, 'Cras', 31, 276643, 'Andong', '00809'),
(22, 'feugiat.', 71, 476211, 'Saint-Vincent', '91180'),
(23, 'imperdiet,', 481, 127563, 'Massimino', '61233'),
(24, 'orci.', 359, 337620, 'Serralunga d\'Alba', '13223'),
(25, 'ante.', 165, 143248, 'Dedovsk', '05468'),
(26, 'nec', 39, 86622, 'Regina', '09853'),
(27, 'tincidunt', 30, 228152, 'Ledbury', '44710'),
(28, 'Phasellus', 257, 517246, 'Labro', '42861'),
(29, 'amet', 100, 360806, 'Siracusa', '84917'),
(30, 'cursus', 470, 118283, 'Lowell', '37213'),
(31, 'conubia', 16, 366766, 'Osnabrück', '71195'),
(32, 'elit,', 429, 131388, 'Ratlam', '86056'),
(33, 'felis,', 225, 235827, 'Beaumaris', '69279'),
(34, 'vestibulum.', 354, 497703, 'Lukhovitsy', '58124'),
(35, 'leo.', 268, 364648, 'Ceyhan', '28317'),
(36, 'mollis.', 151, 318507, 'Traun', '82941'),
(37, 'scelerisque', 74, 33004, 'Pozo Almonte', '60116'),
(38, 'risus', 302, 459225, 'Saint Paul', '56067'),
(39, 'venenatis', 475, 434439, 'Dawson Creek', '26057'),
(40, 'massa', 21, 207429, 'Husum', '36412'),
(41, 'Aenean', 366, 163535, 'Braunschweig', '49384'),
(42, 'lobortis', 63, 363600, 'Grimbergen', '09049'),
(43, 'dui', 473, 101844, 'LaSalle', '66508'),
(44, 'a,', 105, 376282, 'Abaetetuba', '50185'),
(45, 'mi', 455, 207863, 'Codó', '65953'),
(46, 'libero.', 447, 419530, 'Nyandoma', '75504'),
(47, 'arcu.', 397, 392239, 'Devon', '06700'),
(48, 'netus', 471, 526800, 'Saint Paul', '80283'),
(49, 'egestas.', 39, 25088, 'Lauterach', '75163'),
(50, 'lectus', 362, 357709, 'Castel Maggiore', '61300'),
(51, 'velit', 387, 190870, 'Ophain-Bois-Seigneur-Isaac', '01678'),
(52, 'lorem,', 252, 508752, 'Alken', '64314'),
(53, 'ante', 57, 283162, 'Alma', '70120'),
(54, 'lorem,', 403, 302270, 'Collipulli', '26287'),
(55, 'non,', 252, 252057, 'Rodengo/Rodeneck', '17927'),
(56, 'vehicula', 377, 596590, 'Orosei', '94871'),
(57, 'ultrices', 220, 313330, 'Bad Homburg v. d. Höhe', '71361'),
(58, 'aliquet,', 175, 521712, 'Fuenlabrada', '09667'),
(59, 'vitae,', 221, 377553, 'Lobnya', '12587'),
(60, 'orci', 341, 38557, 'Norrköping', '00850'),
(61, 'augue,', 200, 550821, 'Kilmarnock', '53523'),
(62, 'tellus', 409, 492912, 'Gagliato', '45955'),
(63, 'elit.', 157, 489162, 'Karnal', '64267'),
(64, 'non', 319, 419589, 'Chiniot', '25769'),
(65, 'fermentum', 283, 172178, 'Lüneburg', '42857'),
(66, 'tellus,', 82, 315559, 'Fortune', '37541'),
(67, 'aliquam', 420, 505003, 'Devizes', '38712'),
(68, 'dolor', 46, 118415, 'Colobraro', '33135'),
(69, 'euismod', 164, 159440, 'Tione di Trento', '80787'),
(70, 'litora', 18, 473562, 'Klagenfurt', '61031'),
(71, 'nunc,', 415, 183636, 'Baschi', '25814'),
(72, 'fermentum', 353, 564835, 'Padang Sidempuan', '16444'),
(73, 'tellus.', 448, 102784, 'Badajoz', '88486'),
(74, 'Sed', 447, 396275, 'Chelsea', '20196'),
(75, 'feugiat', 181, 504543, 'Sonipat', '46846'),
(76, 'Nunc', 224, 571841, 'Omsk', '71010'),
(77, 'eros', 189, 425002, 'Bakal', '31988'),
(78, 'Maecenas', 457, 268316, 'IJlst', '84962'),
(79, 'Cras', 265, 25928, 'Ussassai', '45064'),
(80, 'Cras', 398, 507149, 'Spijkenisse', '96759'),
(81, 'fermentum', 275, 306897, 'Redlands', '90373'),
(82, 'aliquam', 131, 148519, 'Mondolfo', '38489'),
(83, 'Nullam', 405, 92283, 'Roccasicura', '30717'),
(84, 'vitae', 168, 219750, 'Darwin', '42815'),
(85, 'ultrices', 324, 291501, 'Lossiemouth', '96731'),
(86, 'arcu.', 130, 517584, 'Beverley', '58686'),
(87, 'imperdiet', 256, 564598, 'Keith', '11239'),
(88, 'senectus', 245, 396207, 'San Fele', '24597'),
(89, 'justo', 220, 51613, 'Muzaffargarh', '57029'),
(90, 'turpis', 24, 282172, 'Chalon-sur-Saône', '46058'),
(91, 'a,', 233, 63709, 'Shivapuri', '14702'),
(92, 'Lorem', 116, 129432, 'Piancastagnaio', '07068'),
(93, 'sollicitudin', 354, 525830, 'Guwahati', '45485'),
(94, 'sagittis.', 62, 562267, 'Bionaz', '85131'),
(95, 'amet', 376, 21838, 'Hondelange', '69398'),
(96, 'elit,', 11, 480891, 'Senneville', '42990'),
(97, 'commodo', 52, 279720, 'Saint-Marc', '33755'),
(98, 'nonummy', 267, 421063, 'Brye', '17610'),
(99, 'odio.', 375, 272439, 'Canterbury', '55402'),
(100, 'sapien,', 495, 325921, 'Governador Valadares', '30305');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `uuid` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `secretquestion` varchar(255) NOT NULL,
  `secretanswer` varchar(255) NOT NULL,
  `isOwner` int(11) DEFAULT NULL,
  `isKeykeeper` int(11) DEFAULT NULL,
  `date_creation` varchar(10) NOT NULL,
  `date_last_login` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
