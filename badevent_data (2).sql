-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 26 jan. 2021 à 09:42
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
-- Base de données : `badevent_data`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

CREATE TABLE `acteurs` (
  `id` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `dateModification` datetime DEFAULT NULL,
  `dateAjout` datetime DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id`, `intitule`, `dateModification`, `dateAjout`, `idUtilisateur`) VALUES
(35, 'Groupe de personnes', '2020-08-18 15:57:53', '2020-08-18 15:57:53', 39),
(36, 'Femme', '2020-08-18 15:58:02', '2020-08-18 15:58:02', 39),
(37, 'Homme', '2020-08-18 15:58:07', '2020-08-18 15:58:07', 39),
(38, 'Pluie', '2020-08-18 16:12:49', '2020-08-18 16:11:57', 39),
(39, 'groupe de femmes', '2020-11-24 12:28:56', '2020-11-24 12:28:56', 2),
(40, 'Sois-mÃªme', '2020-11-24 14:22:23', '2020-11-24 14:22:23', 43),
(41, 'Jeune-fille', '2020-11-26 11:36:47', '2020-11-26 11:36:47', 41);

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id` int(11) NOT NULL,
  `intituleActivite` varchar(255) NOT NULL,
  `periode` datetime NOT NULL DEFAULT current_timestamp(),
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `activites`
--

INSERT INTO `activites` (`id`, `intituleActivite`, `periode`, `idUtilisateur`) VALUES
(87, 'Enregistrement de pays', '2020-08-07 02:16:25', 39),
(88, 'Enregistrement d\'acteur', '2020-08-07 02:35:22', 39),
(89, 'Mise Ã  jour d\'acteur', '2020-08-07 02:37:18', 39),
(90, 'Mise Ã  jour d\'acteur', '2020-08-07 02:39:01', 39),
(91, 'Mise Ã  jour d\'acteur', '2020-08-07 02:41:54', 39),
(92, 'Mise Ã  jour de villes', '2020-08-07 08:54:23', 39),
(93, 'Suppression de pays', '2020-08-07 09:04:36', 39),
(94, 'Modification dinfo personnel', '2020-08-17 17:41:52', 41),
(95, 'ModifiCATION MOT DE PASSE', '2020-08-17 17:42:33', 41),
(96, 'Modification dinfo personnel', '2020-08-17 17:45:07', 41),
(97, 'ModifiCATION MOT DE PASSE', '2020-08-17 17:45:34', 41),
(98, 'Modification dinfo personnel', '2020-08-17 17:53:23', 41),
(99, 'Mise Ã  jour de Pays', '2020-08-18 15:20:09', 39),
(100, 'Enregistrement de type de danger', '2020-08-18 15:53:16', 39),
(101, 'Enregistrement d\'acteur', '2020-08-18 15:57:53', 39),
(102, 'Enregistrement d\'acteur', '2020-08-18 15:58:02', 39),
(103, 'Enregistrement d\'acteur', '2020-08-18 15:58:07', 39),
(104, 'Enregistremeny de danger', '2020-08-18 16:04:47', 39),
(105, 'Enregistrement d\'acteur', '2020-08-18 16:11:57', 39),
(106, 'Enregistrement de type de danger', '2020-08-18 16:12:17', 39),
(107, 'Mise Ã  jour d\'acteur', '2020-08-18 16:12:49', 39),
(108, 'Enregistremeny de danger', '2020-08-18 16:13:59', 39),
(109, 'Enregistremeny de danger', '2020-08-28 10:48:42', 2),
(110, 'Suppression de danger', '2020-08-28 10:48:53', 2),
(111, 'Enregistrement de type de danger', '2020-08-31 22:49:16', 30),
(112, 'Enregistrement de type de danger', '2020-09-14 14:57:23', 30),
(113, 'Enregistremeny de danger', '2020-09-14 15:02:08', 30),
(114, 'Ajout de villes', '2020-09-21 19:18:59', 29),
(115, 'Enregistrement de type de danger', '2020-09-21 19:25:36', 29),
(116, 'Enregistremeny de danger', '2020-09-21 19:32:57', 29),
(117, 'Enregistremeny de danger', '2020-09-25 08:47:13', 29),
(118, 'Enregistremeny de danger', '2020-09-25 08:51:26', 29),
(119, 'Enregistremeny de danger', '2020-09-25 08:55:22', 29),
(120, 'Enregistremeny de danger', '2020-11-17 15:03:29', 2),
(121, 'Suppression de type de danger', '2020-11-24 11:57:42', 39),
(122, 'Enregistrement de type de danger', '2020-11-24 12:23:10', 39),
(123, 'Enregistremeny de danger', '2020-11-24 12:24:02', 43),
(124, 'Enregistrement d\'acteur', '2020-11-24 12:28:56', 2),
(125, 'Enregistrement de type de danger', '2020-11-24 14:12:27', 43),
(126, 'Enregistremeny de danger', '2020-11-24 14:14:36', 43),
(127, 'Enregistremeny de danger', '2020-11-24 14:18:10', 43),
(128, 'Enregistrement d\'acteur', '2020-11-24 14:22:23', 43),
(129, 'Enregistremeny de danger', '2020-11-24 14:25:33', 43),
(130, 'Enregistremeny de danger', '2020-11-24 14:48:09', 43),
(131, 'Enregistremeny de danger', '2020-11-24 14:57:19', 43),
(132, 'Enregistremeny de danger', '2020-11-24 15:10:20', 43),
(133, 'Enregistremeny de danger', '2020-11-24 15:11:26', 43),
(134, 'Enregistremeny de danger', '2020-11-24 15:22:26', 43),
(135, 'Enregistremeny de danger', '2020-11-24 15:26:00', 43),
(136, 'Enregistremeny de danger', '2020-11-24 16:51:42', 43),
(137, 'Enregistremeny de danger', '2020-11-25 09:05:14', 2),
(138, 'Enregistremeny de danger', '2020-11-25 09:19:32', 2),
(139, 'Enregistremeny de danger', '2020-11-25 09:30:05', 2),
(140, 'Enregistremeny de danger', '2020-11-25 10:15:33', 2),
(141, 'Enregistremeny de danger', '2020-11-25 11:58:27', 2),
(142, 'Mise Ã  jour de danger', '2020-11-25 12:04:52', 2),
(143, 'Enregistremeny de danger', '2020-11-25 12:38:12', 2),
(144, 'Enregistremeny de danger', '2020-11-25 13:14:10', 2),
(145, 'Enregistremeny de danger', '2020-11-25 14:44:45', 2),
(146, 'Enregistremeny de danger', '2020-11-25 16:34:32', 43),
(147, 'Enregistremeny de danger', '2020-11-26 09:58:33', 43),
(148, 'Enregistremeny de danger', '2020-11-26 10:24:35', 43),
(149, 'Enregistremeny de danger', '2020-11-26 10:33:08', 43),
(150, 'Enregistremeny de danger', '2020-11-26 11:09:14', 43),
(151, 'Enregistremeny de danger', '2020-11-26 11:16:15', 43),
(152, 'Enregistremeny de danger', '2020-11-26 11:23:28', 43),
(153, 'Mise Ã  jour de danger', '2020-11-26 11:32:05', 43),
(154, 'Enregistrement d\'acteur', '2020-11-26 11:36:47', 41),
(155, 'Mise Ã  jour de danger', '2020-11-26 11:37:46', 43),
(156, 'Enregistremeny de danger', '2020-11-26 11:40:24', 43),
(157, 'Enregistrement d\'acteur', '2020-11-26 11:57:18', 41),
(158, 'Mise Ã  jour d\'acteur', '2020-11-26 11:59:39', 41),
(159, 'Enregistrement de type de danger', '2020-11-26 11:59:56', 41),
(160, 'Enregistremeny de danger', '2020-11-26 12:01:28', 43),
(161, 'Enregistremeny de danger', '2020-11-26 12:05:12', 43),
(162, 'Enregistremeny de danger', '2020-11-26 12:06:35', 43),
(163, 'Enregistremeny de danger', '2020-11-26 16:03:23', 43),
(164, 'Enregistremeny de danger', '2020-12-01 08:10:06', 43),
(165, 'Enregistremeny de danger', '2020-12-01 08:18:30', 43),
(166, 'Enregistremeny de danger', '2020-12-01 08:44:49', 43),
(167, 'Enregistremeny de danger', '2020-12-01 08:49:23', 43),
(168, 'Enregistremeny de danger', '2020-12-01 12:02:15', 43),
(169, 'Enregistremeny de danger', '2020-12-01 12:36:32', 43),
(170, 'Enregistremeny de danger', '2020-12-01 12:54:44', 43),
(171, 'Enregistremeny de danger', '2020-12-01 13:00:44', 43),
(172, 'Enregistremeny de danger', '2020-12-01 13:09:01', 43),
(173, 'Enregistremeny de danger', '2020-12-01 15:46:13', 2),
(174, 'Enregistremeny de danger', '2020-12-01 15:50:34', 2),
(175, 'Enregistremeny de danger', '2020-12-01 15:56:16', 2),
(176, 'Enregistremeny de danger', '2020-12-01 15:59:56', 2),
(177, 'Enregistremeny de danger', '2020-12-01 16:06:05', 2),
(178, 'Enregistremeny de danger', '2020-12-01 16:15:27', 2),
(179, 'Enregistrement de type de danger', '2020-12-01 16:20:16', 2),
(180, 'Enregistrement de type de danger', '2020-12-01 16:20:49', 2),
(181, 'Enregistrement de type de danger', '2020-12-01 16:21:17', 2),
(182, 'Enregistrement de type de danger', '2020-12-01 16:21:41', 2),
(183, 'Enregistrement de type de danger', '2020-12-01 16:23:59', 2),
(184, 'Enregistrement de type de danger', '2020-12-01 16:24:21', 2),
(185, 'Enregistremeny de danger', '2020-12-21 15:48:11', 43),
(186, 'ModifiCATION MOT DE PASSE', '2021-01-07 15:54:55', 41),
(187, 'Modification dinfo personnel', '2021-01-07 15:55:50', 41);

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `dateEn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `dateEn`) VALUES
(1, 'testName', 'test@gmail.com', 'test', '2020-12-12 00:48:12');

-- --------------------------------------------------------

--
-- Structure de la table `avocatrapide`
--

CREATE TABLE `avocatrapide` (
  `id` int(11) NOT NULL,
  `preocupation` varchar(50) NOT NULL,
  `lois` text NOT NULL,
  `dateEn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `avocatrapide`
--

INSERT INTO `avocatrapide` (`id`, `preocupation`, `lois`, `dateEn`) VALUES
(1, 'INFRACTION', 'je suis la', '2020-12-14 16:19:48'),
(2, 'VIOLENCE CONJUGALE', 'je vais bien', '2020-12-14 16:19:48'),
(3, 'HARCELEMENT', 'no passing', '2020-12-14 16:19:48'),
(4, 'MARIAGE', 'state full', '2020-12-14 16:19:48'),
(5, 'separation de bien', 'widget', '2020-12-14 16:19:48'),
(8, 'mariage', 'Le mariage est un acte juridique qui a pour objet d organiser la vie commune des epoux', '2021-01-15 09:09:59');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_ar` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `raison` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `type_rdv` varchar(20) NOT NULL,
  `email_avocat_rdv` varchar(30) NOT NULL,
  `code_rdv` varchar(30) NOT NULL,
  `pres_code` varchar(30) NOT NULL,
  `specialite` text NOT NULL,
  `date_rdv` date DEFAULT NULL,
  `statut` varchar(2) NOT NULL,
  `fonction` varchar(10) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_ar`, `nom`, `tel`, `email`, `password`, `raison`, `description`, `type_rdv`, `email_avocat_rdv`, `code_rdv`, `pres_code`, `specialite`, `date_rdv`, `statut`, `fonction`, `pays`, `ville`) VALUES
(1, 'kira', '53136858', 'kira@gmail.com', '', 'titre foncier', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores aspernatur consectetur consequuntur dolores\r\n    ducimus eligendi eveniet expedita facere incidunt natus quam quibusdam quidem, repellat sed sunt tempore voluptatem?\r\n    Eligendi, ipsa!', 'en ligne (10.000Fr)', 'morelle@gmail.com', 'AR_45480', '', '', '2020-11-11', 'P', 'users', 'Ghana', ''),
(2, 'mark Lewis', '35667788', 'mark@gmail.com', '', 'divorce', 'Aperiam autem beatae consequuntur cum dicta eligendi eum ex fugiat laboriosam molestiae neque numquam quaerat\r\n    quidem similique sint, sunt, vitae voluptatem! Assumenda earum est eveniet exercitationem facilis iusto recusandae\r\n    voluptas?', 'en ligne (10.000Fr)', 'morelle@gmail.com', 'AR_50378', '', '', '2020-11-11', 'P', 'users', 'Ivory Coast', 'bonoa'),
(3, 'morelle', '', 'morelle@gmail.com', '', '', '', '', '', 'avocat@2932', '', 'divorce,titre foncier,loyer', NULL, '', 'avocat', 'Ivory Coast', 'abidjan'),
(4, 'soro ', '', 'soro@gmail.com', '', '', '', '', '', 'avocat@4045', '', 'divorce,loyer', NULL, '', 'avocat', 'Ivory Coast', 'daloa'),
(5, 'ines', '34053194', 'kira@gmail.com', '', 'un conseil sur le choix  de regime de mariage', 'Aliquam, architecto aspernatur at cum delectus distinctio doloremque doloribus earum exercitationem facilis fugiat\r\n    ipsa ipsam labore maiores molestias nulla odio porro praesentium reprehenderit repudiandae rerum sunt temporibus\r\n    tenetur, totam ut.', 'presentiel (50.000)', 'igwe@gmail.com', '', 'ines-AR_6415', '', '2020-11-11', 'P', 'users', 'Ghana', 'kumassi'),
(6, 'ada', '', 'ada@gmail.com', '', '', '', '', '', 'avocat@8099', '', 'sante,marriage', NULL, '', 'avocat', 'Ghana', 'accra'),
(7, 'igwe', '', 'igwe@gmail.com', '', '', '', '', '', 'avocat@3748', '', 'divorce,titre foncier,loyer', NULL, '', 'avocat', 'Ghana', 'kumassi'),
(8, 'gloria', '3487654', 'gloria@gmail.com', '', 'conseil', 'sdfghjklmù', 'en ligne (10.000Fr)', 'morelle@gmail.com', 'AR_85711', '', '', '2020-11-11', 'P', 'users', 'Benin', 'accra'),
(9, 'amani', '020202010', 'ama@gmail.com', '', 'divorce', 'je veux divorcer', 'presentiel (50.000)', 'soro@gmail.com', '', 'amani-AR_4638', '', '2020-12-10', 'P', 'users', 'Ivory Coast', 'ABIDJAN'),
(10, 'microsotf', '+22587403030', 'ohjsamuel@live.fr', '', 'test', 'test', 'en ligne (10.000Fr)', 'soro@gmail.com', 'AR_93938', '', '', '2020-12-04', 'P', 'users', 'Ghana', 'ABIDJAN'),
(11, 'amani', '', 'narcisse@gmail.com', '', '', '', '', '', 'avocat@6227', '', 'assurance', NULL, '', 'avocat', 'Benin', 'lomé'),
(12, 'simplon', '', 'ouattara-hamed@hotmail.fr', '', '', '', '', '', 'avocat@4229', '', 'assurance', NULL, '', 'avocat', 'Ivory Coast', 'Abidjan'),
(13, 'test002', '87403030', 'ouattara-hamed@hotmail.fr', '', 'test002', 'te002', 'presentiel (50.000)', 'soro@gmail.com', '', 'test002-AR_8858', '', '2020-12-12', 'P', 'users', 'Ivory Coast', 'ABIDJAN'),
(14, 'microsotf', '87403030', 'ohjsamuel@live.fr', '', 'mariage', 'test', 'en ligne (10.000Fr)', 'ada@gmail.com', 'AR_52151', '', '', '2020-12-14', 'P', 'users', 'Ivory Coast', 'ABIDJAN'),
(15, 'Ahmed Ouattara', '', 'ouattara-hamed225@hotmail.fr', '', '', '', '', '', 'avocat@4271', '', 'test job', NULL, '', 'avocat', 'togo', 'ABIDJAN'),
(16, 'simplon', '08080808', 'ouattara-hamed@hotmail.fr', '', 'test00202', 'test  ioio', 'en ligne (10.000Fr)', '', 'AR_27560', '', '', NULL, 'N', 'users', 'Ivory Coast', 'Abidjan'),
(17, 'ada', '45485756', 'ada@gmail.com', '', 'divorce', 'divorce', 'en ligne (10.000Fr)', 'soro@gmail.com', 'AR_73016', '', '', '2020-12-14', 'P', 'users', 'Ivory Coast', 'abidjan'),
(18, 'soro@gmail.com', '45485756', 'ada@gmail.com', '', 'divorce', 'tres', 'en ligne (10.000Fr)', 'igwe@gmail.com', 'AR_12612', '', '', '2020-12-15', 'P', 'users', 'Ghana', 'abidjan'),
(19, 'test', '87403030', 'ouattara-hamed@hotmail.fr', '', 'mariage', 'testysth', 'en ligne (10.000Fr)', '', 'AR_71008', '', '', NULL, 'N', 'users', 'Ivory Coast', 'ABIDJAN'),
(20, 'go lang', '45454545', 'go@gmail.com', '', 'divorce', 'test', 'en ligne (10.000Fr)', 'soro@gmail.com', 'AR_49608', '', '', '2020-12-15', 'P', 'users', 'Ivory Coast', 'ABIDJAN'),
(21, 'koffi amani', '05020102', 'amany@gmail.com', '', 'divorce', 'TEST', 'en ligne (10.000Fr)', 'igwe@gmail.com', 'AR_89482', '', '', '2020-12-15', 'P', 'users', 'Ivory Coast', 'Abidjan');

-- --------------------------------------------------------

--
-- Structure de la table `danger`
--

CREATE TABLE `danger` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `idDangerType` int(11) NOT NULL,
  `idPays` int(11) NOT NULL,
  `preciLong` int(50) NOT NULL,
  `preciLat` int(50) NOT NULL,
  `source` varchar(255) NOT NULL,
  `idVille` int(11) NOT NULL,
  `sexeVictime` int(11) NOT NULL,
  `sexeResponsable` int(11) NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModification` datetime NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `danger`
--

INSERT INTO `danger` (`id`, `description`, `date`, `idDangerType`, `idPays`, `preciLong`, `preciLat`, `source`, `idVille`, `sexeVictime`, `sexeResponsable`, `dateAjout`, `dateModification`, `idUtilisateur`) VALUES
(20, 'Les hommes du commissaire GnialÃ© DeaholuÃ© du 22Ã¨me arrondissement ont fait oeuvre utile dans la nuit du mardi Ã  ce mercredi. Ils ont dÃ©jouÃ© une tentative de cambriolage dâ€™un domicile par cinq (5) individus dans la commune de Cocody.', '2020-04-15', 31, 1, 0, 0, 'https://www.7info.ci/5-individus-interpelles-pour-tentative-de-cambriolage-de-domicile/', 12, 35, 35, '2020-08-18 16:04:47', '2020-08-18 16:04:47', 39),
(21, 'Des pluies diluviennes ont causÃ© des pertes en vies humaines et d\'importants dÃ©gÃ¢ts matÃ©riels dans la capitale ivoirienne, Abidjan.\r\n\r\nSur les rÃ©seaux sociaux il y a eu des appels Ã  l\'aide qui ont Ã©tÃ© lancÃ©s notamment dans une zone rÃ©sidentielle ou des passagers Ã©taient bloquÃ©s dans leur voiture avec de l\'eau Ã  hauteur de vitre.\r\n\r\nIls ont finalement pu Ãªtre sortis du vÃ©hicule grÃ¢ce Ã  l\'intervention d\'un riverain.\r\n\r\nDes voix principales d\'Abidjan ont Ã©galement Ã©tÃ© bloquÃ©es par des torrents d\'eau mÃªlÃ©s a de la boue.', '2020-02-06', 32, 1, 0, 0, 'https://www.bbc.com/afrique/53188409', 12, 35, 38, '2020-08-18 16:13:59', '2020-08-18 16:13:59', 39),
(23, 'Un jeune homme de 21 ans condamnÃ© Ã  10 ans de prison pour viol dâ€™une septuagÃ©naire', '2017-07-16', 34, 1, -6, 9, 'https://aip.ci/cote-divoire-un-jeune-homme-de-21-ans-condamne-a-10-ans-de-prison-pour-viol-dune-septuagenaire/', 53, 36, 37, '2020-09-14 15:02:08', '2020-09-14 15:02:08', 30),
(24, 'Un accident de circulation sâ€™est produit ce matin sur la voie express dâ€™Abobo. Ce mardi 10 avril 2018, le Groupent des sapeurs-pompiers militaires (Gspm) a Ã©tÃ© alertÃ© Ã  06H56 pour un accident de circulation Ã  Abobo voie express aprÃ¨s universitÃ© Nangui Abrogoua, indique une note officielle des Pompiers.', '2018-04-10', 35, 1, -4, 5, 'https://www.fratmat.info/article/83013/64/abobo-accident-de-circulation-sur-la-voie-express-plusieurs-victimes-dont-des-cas-graves', 90, 35, 37, '2020-09-21 19:32:57', '2020-09-21 19:32:57', 29),
(25, 'Ce Jeudi 13 septembre 2018 un accident de circulation entre motocycliste et un piÃ©ton sâ€™est encore produit dans la commune d â€˜Abobo au marchÃ© de nuit en face de la boulangerie du chÃ¢teau. Selon M. Ladji un tÃ©moin, câ€™est lors de la traversÃ©e du piÃ©ton quâ€™il sâ€™est fait ramassÃ© par le motocycliste qui lui transportait une femme. Bilan : 3 blessÃ©es dont un griÃ¨vement touchÃ© ( le conducteur de lâ€™engin). Ils ont bÃ©nÃ©ficiÃ© du secours des Ã©lÃ©ments  du  groupement des sapeurs-pompiers.', '2018-09-13', 35, 1, -4, 5, 'https://woroba-ci.com/cote-divoire-abobo-marche-de-nuit-un-accident-de-la-circulation-fait-des-blesses/', 90, 37, 35, '2020-09-25 08:47:13', '2020-09-25 08:47:13', 29),
(26, 'La vitesse a encore endeuillÃ© des familles le dimanche 03 mars 2013 dans la commune d\'Abobo. Deux motocyclistes qui roulaient Ã  vive allure, rapporte le site acturoutes qui cite une source proche des sapeurs pompiers, se sont accrochÃ©s faisant deux (02) morts sur le champ.', '2013-03-03', 35, 1, -4, 5, 'https://www.ladepechedabidjan.info/Accident-de-la-circulation-2-morts-dans-la-collision-de-deux-motos-a-Abobo_a12989.html', 90, 35, 35, '2020-09-25 08:51:26', '2020-09-25 08:51:26', 29),
(27, 'Un grave accident de la circulation impliquant un autobus de la Sotra et un mini car de transport sâ€™est produit, Ã  Abobo Avocatier, Ã  hauteur du glacier. Selon le Groupements des sapeurs-pompiers militaires (GSMP) qui livre cette information, la collision a eu lieu Ã  12h08.\r\nHÃ©las ! Cet accident a fait 12 blessÃ©s graves.', '2020-02-03', 35, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/54796-abobo-avocatier-la-collision-entre-un-autobus-de-la-sotra-et-un-mini-car-de-transport-fait-plusieurs-blesses-graves', 90, 35, 35, '2020-09-25 08:55:22', '2020-09-25 08:55:22', 29),
(29, 'Le samedi 31 octobre 2020, un convoi de trois vÃ©hicules Ã  bord desquels se trouvaient trois chauffeurs et trois agents des forces de lâ€™ordre affectÃ©s Ã  la sÃ©curitÃ© du Ministre du Budget et du Portefeuille de lâ€™Ã‰tat, avait Ã©tÃ© pris Ã  partie dans le village de Zatta, sur lâ€™axe BouaflÃ©-Yamoussoukro, aux environs de 16 heures.', '2020-10-31', 33, 1, -5, 7, 'https://www.lexpressionci.com/meurtre-de-ladjudant-sanogo-98-personnes-interpellees-le-corps-calcine-dirige-sur-abidjan-pour-une-autopsie', 70, 37, 35, '2020-11-24 12:24:02', '2020-11-24 12:24:02', 43),
(30, 'Un autre drame secoue la ville dâ€™Ebilassokro, aprÃ¨s lâ€™assassinat odieux de la couturiÃ¨re de Zaranou qui a Ã©tÃ© dÃ©capitÃ©e et dont la tÃªte a Ã©tÃ© emportÃ©e par son meurtrier. Cette fois-ci, câ€™est au tour dâ€™un chasseur de trouver la mort dans des conditions tragiques. Les populations dâ€™Ebilassokro, sous prÃ©fecture distante de 45 km dâ€™Abengourou, sont depuis lors sous le choc, aprÃ¨s la dÃ©couverte du corps sans vie dâ€™Eboh Atta Akou, connu pour Ãªtre un grand chasseur. En cette qualitÃ©, au dire de sources villageoises, ce dernier dans la nuit du mercredi 13 juin dernier, manifeste le besoin dâ€™aller Ã  la chasse. Le moment choisi qui correspondait Ã  la tombÃ©e de la nuit ne trouve pas lâ€™assentiment de son Ã©pouse. Elle lui oppose un refus catÃ©gorique, comme si elle prÃ©sentait quâ€™un drame allait avoir lieu, alors que ce sont des centaines de fois que son homme a pratiquÃ© son activitÃ© Ã  ces heures tardives. Mais voila, Eboh Atta parvient Ã  sâ€™Ã©chapper des griffes de la cellule familiale avec son fusil de chasse et prend la direction de son campement. Son retour est prÃ©vu pour le vendredi 15 juin 2012.', '2012-11-13', 36, 1, -4, 7, 'https://news.abidjan.net/h/435784.html', 19, 35, 35, '2020-11-24 14:14:36', '2020-11-24 14:14:36', 43),
(31, 'Dans la nuit du vendredi 18 octobre 2019, le MDL Yves Odilon Kayo s\'est donnÃ© la mort Ã  l\'escadron d\'Aboisso. Un gendarme se suicide Ã  Aboisso.', '2020-10-18', 37, 1, -3, 5, 'http://www.ivoirtv.net/actualites/presse-nationale/societe/13709-drame-cote-ivoire-gendarme-se.html', 20, 37, 37, '2020-11-24 14:18:10', '2020-11-24 14:18:10', 43),
(32, 'BouakÃ©, 21 sept un homme a Ã©tÃ© retrouvÃ© mort pendu dans sa chambre par des proches, au quartier Nimbo de BouakÃ©', '2018-09-21', 37, 1, 8, -5, 'http://www.atoo.ci/2018/09/22/un-homme-trouve-mort-pendu-dans-sa-chambre-a-bouake/', 79, 37, 40, '2020-11-24 14:25:33', '2020-11-24 14:25:33', 43),
(33, 'La communautÃ© catholique et lâ€™opinion en gÃ©nÃ©rale ont Ã©tÃ© secouÃ©es, dans la journÃ©e mercredi 24 avril 2019, par le suicide par pendaison du PÃ¨re Richard BilÃ©, vicaire de la paroisse Saint-FranÃ§ois dâ€™Assise dâ€™AffiÃ©nou (Aboisso) dans le diocÃ¨se de Grand-Bassam.', '2019-04-24', 37, 1, -3, 5, 'https://afriquematin.net/suicide-dun-pretre-a-aboisso-voici-la-lettre-quil-a-laissee-avant-de-se-donner-la-mort/', 20, 37, 40, '2020-11-24 14:48:09', '2020-11-24 14:48:09', 43),
(34, 'Un Ã©lÃ¨ve du lycÃ©e moderne dâ€™Abengourou sâ€™est suicidÃ©, le mardi 14 janvier dernier, en dÃ©but de soirÃ©e dans la â€˜â€™CitÃ© royaleâ€™â€™. Semant le dÃ©sarroi assorti dâ€™interrogation au sein de lâ€™Ã©tablissement en question.\r\n\r\nSelon les informations recueillies sur place, ce jour-lÃ  aux environs de 17h, la prÃ©sence dâ€™un Ã©lÃ¨ve agonisant est signalÃ©e non loin du lycÃ©e moderne dans une maison inachevÃ©e.', '2020-01-14', 37, 1, -4, 7, 'https://www.fratmat.info/article/63050/64/%C3%A9ducation-nationale-un-lyc%C3%A9en-se-donne-la-mort-%C3%A0-abengourou', 19, 37, 40, '2020-11-24 14:57:19', '2020-11-24 14:57:19', 43),
(35, 'Le Colonel KOUAME ComoÃ©, Directeur RÃ©gional des Douanes dâ€™Abengourou nâ€™est plus. Il sâ€™est suicidÃ© le matin du 27 octobre dans sa chambre sis au quartier Plateau dâ€™Abengourou.\r\n\r\nLâ€™homme sâ€™est tirÃ© une balle dans la tÃªte pour des raisons non encore Ã©lucidÃ©es.  Selon les informations recueillies auprÃ¨s  de personnes proches du dÃ©funt, le Colonel KouamÃ© ComoÃ© souffrait dâ€™un mal incurable pour lequel il a sÃ©journÃ© Ã  Abidjan.', '2010-11-27', 37, 1, -4, 7, 'https://avenue225.com/abengourou-le-dr-des-douanes-se-suicide', 19, 37, 40, '2020-11-24 15:10:20', '2020-11-24 15:10:20', 43),
(36, 'Une fille de 13 ans se suicide avec l\'arme Ã  feu de son pÃ¨re policier', '2012-02-03', 37, 1, 5, -4, 'https://news.abidjan.net/h/425234.html', 12, 36, 40, '2020-11-24 15:11:26', '2020-11-24 15:11:26', 43),
(37, 'Un prÃ©sident de COGES se suicide Ã  Arrah', '2020-03-25', 37, 1, -3, 5, 'https://aip.ci/cote-divoire-aip-un-president-de-coges-se-suicide-a-arrah/', 20, 37, 40, '2020-11-24 15:22:26', '2020-11-24 15:22:26', 43),
(38, 'Un drame a Ã©tÃ© enregistrÃ© dans la matinÃ©e du vendredi 22 Novembre 2019 dans la localitÃ© du DÃ©partement d\'Abengourou.\r\nUne jeune Femme Ã¢gÃ©e de 27 ans d\'annÃ©e et mÃ¨re de trois enfants, a Ã©tÃ© retrouvÃ©e pendue dans sa chambre.', '2019-11-22', 37, 1, -4, 7, 'https://www.linfodrome.com/faits-et-mefaits/52991-abengourou-une-jeune-femme-retrouvee-pendue-dans-sa-chambre', 19, 36, 40, '2020-11-24 15:26:00', '2020-11-24 15:26:00', 43),
(39, 'Il s\'agit de Kouassi Kouadio Franck, 18 ans, Ã©lÃ¨ve en classe de Terminale au collÃ¨ge Gandhi. Ce dernier s\'est suicidÃ© en se jetant dans les eaux du lac situÃ© juste en face de l\'hÃ´tel Â« Fanon Â».\r\n\r\nLes faits dramatiques se sont produits le mardi 13 janvier 2015. Selon nos sources, tout commence aux alentours de 2h du matin, lorsque le pauvre Ã©lÃ¨ve, domiciliÃ© au quartier Assabou, pique subitement une crise visiblement de dÃ©pression mentale. En dÃ©pit de tous les efforts pour le neutraliser, il se dÃ©shabille entiÃ¨rement et rÃ©ussit Ã  s\'Ã©jecter de la maison.', '2015-01-13', 37, 1, -5, 7, 'http://news.educarriere.ci/news-12287-yamoussoukro-un-eleve-de-terminale-se-suicide-en-se-jetant-dans-le-lac.html', 70, 37, 40, '2020-11-24 16:51:42', '2020-11-24 16:51:42', 43),
(40, 'Un accident de la circulation impliquant un vÃ©hicule de transport en commun communÃ©ment appelÃ© \'\'Massa\'\' et un autre dit Â« 504 Â» a fait 28 victimes dont 5 dÃ©cÃ¨s Ã  Yamoussoukro', '2020-08-03', 35, 1, -5, 7, 'https://www.fratmat.info/article/207065/R%C3%A9gions/Yamoussoukro/yamoussoukro--28-victimes-dont-5-morts-dans-un-accident-ce-lundi', 70, 35, 35, '2020-11-25 09:05:14', '2020-11-25 09:05:14', 2),
(41, 'un accident  de la circulation impliquant un camion de transport de gaz butane, un taxi et un vÃ©hicule de particulier s\'est produit cet samedi 14 novembre a Yamoussoukro sur le boulevard mamie Adjoua , faisant plusieurs morts, 9 victimes au total', '2020-11-14', 35, 1, -5, 7, 'https://www.linfodrome.com/faits-et-mefaits/62874-yamoussoukro-plusieurs-victimes-enregistrees-dans-un-carambolage-entre-un-camion-de-transport-de-bouteilles-de-gaz-et-deux-autres-vehicules', 70, 35, 37, '2020-11-25 09:19:32', '2020-11-25 09:19:32', 2),
(42, 'De nombreuses familles viennent dâ€™Ãªtre endeuillÃ©es encore par la route. Un grave accident a fait 4 morts dont le chauffeur et son apprenti et plusieurs blessÃ©s, En effet, le camion de type Massa immatriculÃ© 6071 ET 01 qui Ã©tait en provenance de Vavoua pour Abidjan est arrivÃ© dans la capitale politique aux environs de 14 heures. AprÃ¨s une courte pause, il a repris la route pour sa destination. Câ€™est ainsi quâ€™allant Ã  vive allure, il tombe dans un nid de poule quâ€™on pourrait qualifier de puits. Le chauffeur perd le contrÃ´le aprÃ¨s avoir cassÃ© un pneu arriÃ¨re. Il sâ€™en est suivi plusieurs tonneaux, laissant le vÃ©hicule dans un piteux Ã©tat Câ€™Ã©tait au niveau du village de Nanan, village situÃ© Ã  quelques encablures du groupement des sapeurs-pompiers militaires de Yamoussoukro.', '2012-08-30', 35, 1, -5, 7, 'https://news.abidjan.net/h/439895.html', 70, 35, 37, '2020-11-25 09:30:05', '2020-11-25 09:30:05', 2),
(43, 'ScÃ¨ne insoutenable hier aux environs de 16h Ã  Yamoussoukro, au quartier24 ampoules Ã  MorfofÃª. AprÃ¨s la Garde RÃ©publicaine et le LycÃ©e professionnel, sur la route menant Ã  BouaflÃ©, un accident de la circulation a fait 1 mort et de nombreux blessÃ©s dans un Ã©tat comateux. Un officier de police (dÃ©cÃ©dÃ©),', '2012-02-03', 35, 1, -5, 7, 'https://news.abidjan.net/h/425212.html', 70, 37, 35, '2020-11-25 10:15:33', '2020-11-25 10:15:33', 2),
(44, 'Le jeudi 22 mars, un grave accident de la circulation s\'est produit sur l\'axe routier Abidjan-Bassam. Un vÃ©hicule de transport en commun, une Peugeot, de type 504, immatriculÃ© 586 FG 01 et une Wolsvagen, de type Polo, immatriculÃ©s 4443 TK 01, sont rentrÃ©s en collision. Bilan: les deux engins ont explosÃ©. On dÃ©plore Ã©galement des blessÃ©s dont deux cas jugÃ©s graves. Selon les informations reÃ§ues de ce drame, le vÃ©hicule de transport, conduit par ZongmorÃ© Mamadi, qui a fait son plein Ã  Abidjan, avait pour destination la ville de Bassam. Le voyage se passe apparemment bien. Du moins, jusqu\'Ã  dans les environs du village de Modeste, oÃ¹ la 504 est parvenue, aux environs de 13h.', '2012-03-22', 35, 1, -4, 5, 'https://news.abidjan.net/h/429796.html', 46, 35, 37, '2020-11-25 11:58:27', '2020-11-25 12:04:52', 2),
(45, 'Mercredi 24 avril, le diocÃ¨se de Grand-Bassam, dans le sud-est de la CÃ´te dâ€™Ivoire a annoncÃ© le dÃ©cÃ¨s, vraisemblablement par suicide, du pÃ¨re Richard BilÃ©, Ã¢gÃ© de 51 ans.\r\nUne semaine avant le drame, lâ€™Ã©vÃªque, Mgr Raymond Ahoua, avait Ã©tÃ© saisi dâ€™une accusation de pÃ©dophilie impliquant le dÃ©funt prÃªtre.', '2019-04-24', 37, 1, -4, 5, 'https://www.la-croix.com/Religion/Catholicisme/Monde/En-Cote-dIvoire-diocese-Grand-Bassam-annonce-suicide-dun-pretres-2019-04-25-1201017855', 46, 37, 40, '2020-11-25 12:38:12', '2020-11-25 12:38:12', 2),
(46, 'Un accident de la circulation extrÃªmement meurtrier a eu lieu hier lundi 12 octobre 2015 sur lâ€™autoroute de Grand-Bassam, qui a Ã©tÃ© rÃ©cemment mise Ã  la disposition des usagers par le PrÃ©sident de la RÃ©publique. Pour lâ€™heure lâ€™on dÃ©nombre une demi-douzaine de morts et de nombreux blessÃ©s, dont des cas jugÃ©s critiques. Ce bilan encore difficile Ã  Ã©tablir, Ã  cause des dÃ©gÃ¢ts et du cafouillage qui rÃ¨gnaient sur les lieux', '2015-10-12', 35, 1, -4, 5, 'https://www.ladepechedabidjan.info/Autoroute-de-Grand-Bassam-un-grave-accident-provoque-plus-d-une-dizaine-de-morts_a21922.html', 46, 35, 37, '2020-11-25 13:14:08', '2020-11-25 13:14:08', 2),
(47, 'Pluies diluviennes: Trois quartiers de lâ€™axe Abidjan-Grand-Bassam sous les eaux', '2020-03-25', 32, 1, -4, 5, 'https://www.fratmat.info/article/206101/Soci%C3%A9t%C3%A9/pluies-diluviennes-trois-quartiers-de-laxe-abidjan-grand-bassam-sous-les-eaux', 46, 35, 36, '2020-11-25 14:44:45', '2020-11-25 14:44:45', 2),
(48, 'Le corps de la Gendarmerie nationale, a enregistrÃ© un drame dans ses rangs. Un de ses jeunes Ã©lÃ©ments, en la personne du Mdl Ouattara Kinapohogo Arthur, Ã¢gÃ© de 28 ans, s\'est donnÃ© la mort.', '2013-09-02', 37, 1, -4, 5, 'https://www.ladepechedabidjan.info/Drame-Riviera-Un-gendarme-se-suicide-a-la-residence-d-un-ministre_a15455.html', 12, 37, 40, '2020-11-25 16:34:32', '2020-11-25 16:34:32', 43),
(49, 'Le sergent K. C. A, en service Ã  la Direction de la police criminelle ( Ex Pj), est en ce moment inconsolable. Il a perdu, dans des conditions tragiques, sa fille aÃ®nÃ©e rÃ©pondant au nom de K. Amoin Marie Sylvie.', '2012-01-31', 37, 1, -4, 5, 'https://www.ladepechedabidjan.info/Cocody-Une-fille-de-13-ans-se-suicide-avec-larme-a-feu-de-son-pere-policier_a5954.html', 12, 36, 40, '2020-11-26 09:58:33', '2020-11-26 09:58:33', 43),
(50, 'Ne supportant pas leur rupture, il se suicide en s\'eventrant au domicile de son ex-petite amie.', '2018-09-30', 37, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/42455-abobo-ne-supportant-pas-leur-rupture-il-se-suicide-en-s-eventrant-au-domicile-de-son-ex-petite-amie', 90, 40, 40, '2020-11-26 10:24:35', '2020-11-26 10:24:35', 43),
(51, 'un jeune homme demande a tous de prier et se suicide en se jetant d\'un immeuble. sous pretexte que Dieu n\'est pas content de tout ce qu\'on fait comme mal et qu\'il va frapper bientot.', '2019-04-25', 37, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/48600-un-jeune-homme-demande-a-tous-de-prier-et-se-suicide-en-se-jetant-d-un-immeuble', 90, 37, 40, '2020-11-26 10:33:08', '2020-11-26 10:33:08', 43),
(52, 'un agent de sÃ©curitÃ© se suicide en plein service, en se jetant d\'un immeuble', '2020-03-10', 37, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/55956-yopougon-un-agent-de-securite-se-suicide-en-plein-service-en-se-jetant-d-un-immeuble', 18, 37, 40, '2020-11-26 11:09:14', '2020-11-26 11:09:14', 43),
(53, 'Une Ã©lÃ¨ve de 6Ã¨me retrouvÃ©e pendue dimanche nuit, au domicile familial', '2019-05-12', 37, 1, -4, 5, 'https://www.fratmat.info/article/90186/64/yopougon-une-eleve-de-6eme-retrouvee-pendue-dimanche-nuit-au-domicile-familial', 18, 41, 40, '2020-11-26 11:16:15', '2020-11-26 11:37:46', 43),
(54, 'Atteinte de la tuberculose, une jeune fille se fÃ¢che et se suicide dans un puits', '2016-01-27', 37, 1, -4, 5, 'https://netafrique.net/cote-divoire-atteinte-de-la-tuberculose-une-jeune-fille-se-fache-et-se-suicide-dans-un-puits/', 16, 36, 40, '2020-11-26 11:23:28', '2020-11-26 11:23:28', 43),
(55, 'Le drame qui sâ€™est produit en matinÃ©e dans la commune dâ€™Abobo a profondÃ©ment surpris les populations. AgÃ© de 26 ans, un jeune sâ€™est donnÃ© la mort Ã  lâ€™aide dâ€™une corde quâ€™il a passÃ© autour de son cou avant de se suspendre', '2016-05-27', 37, 1, -4, 5, 'https://www.afrikmag.com/cote-divoire-un-jeune-homme-de-26-ans-se-suicide-a-abobo/', 90, 37, 40, '2020-11-26 11:40:24', '2020-11-26 11:40:24', 43),
(56, 'En garde Ã  vue, un homme se suicide dans un commissariat', '2020-10-28', 37, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/62460-adjame-en-garde-a-vue-un-homme-se-suicide-dans-un-commissariat', 10, 37, 40, '2020-11-26 12:01:28', '2020-11-26 12:01:28', 43),
(57, 'un element des faci se suicide en s\'egorgeant dans son salon. apres avoir suivi un match de foot avec son frere cadet au kiosque ou ils ont mange, les deux se rendent a la maison la ou il s\'egorge avec le couteau du kiosqman avec le quel il s\'est empare', '2020-02-26', 37, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/55805-abobo-un-element-des-faci-se-suicide-en-s-egorgeant-dans-son-salon', 90, 37, 40, '2020-11-26 12:05:12', '2020-11-26 12:05:12', 43),
(58, 'Une nourrice se suicide en se jetant dans le vide', '2012-09-25', 37, 1, -4, 5, 'https://www.ladepechedabidjan.info/Adjame-Drame-Une-nourrice-se-suicide-en-se-jetant-dans-le-vide_a10017.html', 10, 36, 40, '2020-11-26 12:06:35', '2020-11-26 12:06:35', 43),
(59, 'Une scÃ¨ne trÃ¨s peu ordinaire a eu pour thÃ©Ã¢tre, la cour de l\'hÃ´pital psychiatrique de Bingerville. Il s\'agit du suicide de l\'un des pensionnaires.', '2015-01-04', 37, 1, -4, 5, 'https://news.educarriere.ci/news-12119-bingerville-drame-a-l-hopital-psychiatrique-un-des-patients-se-suicide-en-se-pendant.html', 27, 37, 40, '2020-11-26 16:03:23', '2020-11-26 16:03:23', 43),
(60, 'Le suicide dâ€™un Ã©lÃ¨ve de 16 ans en classe de 2e  suscite encore une vive Ã©motion et lâ€™incomprÃ©hension la plus totale au quartier Abobo-BaoulÃ©  de la commune dâ€™Abobo.\r\n\r\nDÃ©couvert au domicile familial vendredi midi, le mÃ´me sâ€™est pendu dans lâ€™allÃ©e principale de la maison. Il Ã©tait revenu de lâ€™Ã©cole, au lycÃ©e classique dâ€™Abidjan, quand il a pris le soin de refermer dâ€™abord la porte sur lui, pour accomplir son plan funeste.', '2018-04-29', 37, 1, -4, 5, 'https://woroba-ci.com/cote-divoire-un-eleve-en-classe-de-seconde-sest-suicide-a-abobo/', 90, 37, 40, '2020-12-01 08:10:06', '2020-12-01 08:10:06', 43),
(61, 'Lâ€™histoire est triste. Il sâ€™agit dâ€™un jeune qui avait une dÃ©pendance extrÃªme pour la consommation des stupÃ©fiants tels-que le shit,la cocaÃ¯ne. Dâ€™aprÃ¨s les tÃ©moignages recueillis sur place, le jeune homme a Ã©tÃ© rongÃ© par ces diffÃ©rentes drogues, avant de sombrer dans la dÃ©mence', '2016-05-27', 37, 1, -4, 5, 'https://www.afrikmag.com/cote-divoire-un-jeune-homme-de-26-ans-se-suicide-a-abobo/', 90, 37, 40, '2020-12-01 08:18:30', '2020-12-01 08:18:30', 43),
(62, 'koaci.com - Jeudi 2 Mai 2019 - Macabre dÃ©couverte dans la nuit du mardi 30 avril au mercredi 1er mai Ã   Abobo. Un jeune homme de 30ans s\'est donnÃ© la mort Ã   son domicile familial du quartier Avocatier.', '2019-05-02', 37, 1, -4, 5, 'https://www.koaci.com/article/2019/05/02/cote-divoire/societe/cote-divoire-un-jeune-homme-se-pend-a-abobo_130429.html', 90, 37, 40, '2020-12-01 08:44:49', '2020-12-01 08:44:49', 43),
(63, 'Dimanche dernier, une jeune fille de 18ans sâ€™est donnÃ©e la mort par pendaison dans la commune dâ€™Anyama Ã  ProximitÃ© dâ€™Abidjan.', '2019-04-17', 37, 1, -4, 5, 'https://netafrique.net/cote-divoire-suicide-dune-jeune-fille-de-18-ans-a-anyama/', 24, 41, 40, '2020-12-01 08:49:23', '2020-12-01 08:49:23', 43),
(64, 'Un gendarme, JaurÃ¨s Rivarol (certainement un pseudonyme quâ€™il utilise sur sa page Facebook), sâ€™est donnÃ© la mort, ce lundi, Ã  Daloa. Ã€ lâ€™aide dâ€™une arme, une kalachnichkov, il sâ€™est tirÃ© une balle, crÃ©ant la consternation au sein des Ã©lÃ©ments de la gendarmerie nationale de la capitale de la rÃ©gion du Haut-Sassandra, mais Ã©galement parmi ses amis et connaissances de la citÃ© policiÃ¨re du Plateau oÃ¹ il a fait une bonne partie de sa vie.\r\n\"Ce gendarme de la 17e promotion de Toroguhe vient de se suicider au poste 2 de Toroguhe avec une kalach il y a quelques instants. Rip mono\", peut-on lire dans une publication de ShaQuille magasine.', '2019-04-01', 37, 1, -6, 7, 'http://pressecotedivoire.ci/article/1507-cote-divoire-daloa-un-gendarme-se-donne-la-mort-avec-une-kalachnichkov', 35, 37, 40, '2020-12-01 12:02:15', '2020-12-01 12:02:15', 43),
(65, 'Cote-divoire â€“ Daloa, Triste destin pour un gendarme de la brigade routiÃ¨re qui sâ€™est tirÃ© une balle dans la tÃªte.\r\n\r\nLa nouvelle du suicide de Coulibaly SotiguÃ© est sur toutes les lÃ¨vres dans la citÃ© des antilopes. Selon des tÃ©moins, le samedi dernier au environ de 17 heures le MDL SotiguÃ© sâ€™est mis Ã  boire dans un maquis en face de la lÃ©gion de gendarmerie de Daloa. Contre toute attente il sort sont arme et se tire une balle dans la tÃªte Ã  la surprise gÃ©nÃ©rale.', '2018-12-31', 37, 1, -6, 7, 'https://cotedivoirenews.info/cote-divoire-un-gendarme-cocufie-se-donne-la-mort-la-veille-du-31-daloa/#:~:text=R%C3%A9gions%20News-,Daloa%3A%20Un%20gendarme%20cocufi%C3%A9%20se%20tire%20une%20balle%20dans%20la,%C3%A0%20la%20veille%20du%2031&text=Cote%2Ddiv', 35, 37, 40, '2020-12-01 12:36:32', '2020-12-01 12:36:32', 43),
(66, 'Le marÃ©chal des logis Jean JaurÃ¨s Modi sâ€™est donnÃ© la mort en se tirant une balle avec son arme, un fusil mitrailleur de type AK47, sous le menton, qui a traversÃ© la boite crÃ¢nienne, aux alentours de 15 HTU.', '2019-04-01', 37, 1, -6, 7, 'https://woroba-ci.com/cote-divoire-daloa-un-jeune-gendarme-se-suicide-en-se-tirant-une-balle-dans-la-tete-avec-son-arme/', 35, 37, 40, '2020-12-01 12:54:44', '2020-12-01 12:54:44', 43),
(67, 'Un photographe de nationalitÃ© bÃ©ninoise, Ã¢gÃ© de 62 ans, Dohongo Victor sâ€™est pendu dans la nuit du mardi au mercredi Ã  lâ€™aide dâ€™une corde dans sa rÃ©sidence au quartier BaoulÃ©kro Ã  Daloa pour des raisons Â« amoureuses Â».', '2018-01-04', 37, 1, -6, 7, 'ALeKk00NYSRlcPpzAfONFAAN4rXr1GouVw', 35, 37, 40, '2020-12-01 13:00:44', '2020-12-01 13:00:44', 43),
(68, 'Un ex-agent de la Ci-Telcom Ã  la retraite, Ã¢gÃ© de 52 ans s\'est donnÃ© au quartier Kennedy 1 de Daloa , la mort en se fusillant Ã  bout portant avec un calibre douze , dans sa douche.', '2020-02-16', 37, 1, -6, 7, 'https://www.akody.com/cote-divoire/news/societe-daloa-un-ex-agent-de-la-ci-telcom-se-suicide-325493', 35, 37, 40, '2020-12-01 13:09:01', '2020-12-01 13:09:01', 43),
(69, 'Dans le courant de novembre 2016, Gnandou Koudou William, 26 ans, rÃ©sident Ã  Ono-sassi (un village de Bonoua) sâ€™est rendu coupable de viol suivi de mort sur la personne dâ€™une folle. Cette derniÃ¨re a succombÃ©, le lendemain des suites de ses blessures dues Ã  lâ€™acte de lâ€™ignoble individu.', '2016-12-01', 34, 1, -4, 5, 'https://www.fratmat.info/article/75109/64/grand-bassam-il-prend-5-ans-de-prison-ferme-apres-la-mort-de-la-folle-qu-il-a-violee', 31, 36, 37, '2020-12-01 15:46:13', '2020-12-01 15:46:13', 2),
(70, 'Un ex-brouteur reconverti en agent immobilier, Akouati Franck Anicet alias â€œPapa Mouleâ€, 27 ans, a Ã©tÃ© dÃ©fÃ©rÃ©, vendredi, au tribunal de Grand-Bassam pour viol prÃ©sumÃ© dâ€™une fille de 14 ans. Selon les faits, Akouati Franck Anicet, nâ€™avait de cesse de faire des avances discrÃ¨tes Ã  la fille, Ã©lÃ¨ve en 5Ã¨me dans une Ã©cole secondaire publique Ã  Abidjan. Elle rÃ©sidait chez sa soeur aÃ®nÃ©e Ã  Bonoua pour des soins de santÃ©. Il lui a donnÃ© rendez-vous, jeudi, dans un hÃ´tel au quartier Bilbao Ã  Bonoua. Une fois et en ces lieux, il rÃ©ussit Ã  abuser dâ€™elle malgrÃ© les supplications de lâ€™adolescente, rapporte-t-on. Suite Ã  la plainte enregistrÃ©e par leur service les agents de police de Bonoua, ont conduit Akouati Franck Anicet au...', '2018-10-22', 34, 1, -4, 5, 'https://aip.ci/cote-divoire-un-presume-violeur-defere-au-tribunal-de-grand-bassam/', 31, 36, 37, '2020-12-01 15:50:34', '2020-12-01 15:50:34', 2),
(71, 'Grand-Bassam : Une Ã©lÃ¨ve de 3Ã¨me torturÃ©e, violÃ©e et assassinÃ©e', '2017-03-28', 34, 1, -4, 5, 'https://news.educarriere.ci/news-20900-grand-bassam-une-eleve-de-3eme-torturee-violee-et-assassinee.html', 46, 41, 37, '2020-12-01 15:56:16', '2020-12-01 15:56:16', 2),
(72, 'Yopougon : Un chauffeur de taxi tue sa copine et la prÃ©sente comme une inconnue aux mÃ©decins', '2020-11-11', 33, 1, -4, 5, 'https://news.educarriere.ci/news-33438-yopougon-un-chauffeur-de-taxi-tue-sa-copine-et-la-presente-comme-une-inconnue-aux-medecins.html', 18, 36, 37, '2020-12-01 15:59:56', '2020-12-01 15:59:56', 2),
(73, 'Dame Monique commerÃ§ante au sous-quartier Dinacas, Ã  Koumassi Grand Campement ou quartier HouphouÃ«t Boigny, portÃ©e disparue depuis le mardi 5 octobre a Ã©tÃ© retrouvÃ©e sans vie, le jeudi 7 octobre 2020, dans un casier de la morgue de l\'hÃ´pital gÃ©nÃ©ral de Port Bouet. Son corps a Ã©tÃ© mutilÃ©.', '2020-10-07', 33, 1, -4, 5, 'https://news.educarriere.ci/news-33225-koumassi-une-commercante-disparue-retrouvee-mutilee-dans-un-casier-de-la-morgue-de-port-bouet.html', 13, 36, 37, '2020-12-01 16:06:05', '2020-12-01 16:06:05', 2),
(74, 'AgÃ© de 38 ans, K.K. Jean, le fils, a dÃ©coupÃ© avec une nouvelle machette aiguisÃ©e son pÃ¨re, Kouakou Kan, 62 ans, ex agent de la marine marchande Ã  la retraite. Il l\'a fait au salon du domicile familial Ã  Abobo Sogefhia en face de l\'Ã©cole primaire Â« Pingouins Â», dans la soirÃ©e du dimanche 04 octobre 2020.', '2020-10-04', 36, 1, -4, 5, 'https://news.educarriere.ci/news-33169-drame-a-abobo-sogefhia-age-de-38-ans-il-decoupe-son-pere-a-la-machette-dans-son-salon-devant-sa-mere.html', 90, 37, 37, '2020-12-01 16:15:27', '2020-12-01 16:15:27', 2),
(75, 'Manda Yannick, un jeune homme de 20 ans s\'est rendu responsable d\'un acte atroce avant de lui-mÃªme se donner la mort, le lundi 21 janvier 2019, a jean-folly, un quartier prÃ©caire de la commune de port-bouet', '2019-01-21', 37, 1, -4, 5, 'https://www.linfodrome.com/faits-et-mefaits/45193-tragedie-a-port-bouet-jean-folly-il-tranche-la-gorge-a-sa-grand-mere-et-se-donne-la-mort', 16, 37, 40, '2020-12-21 15:48:11', '2020-12-21 15:48:11', 43);

-- --------------------------------------------------------

--
-- Structure de la table `dangertype`
--

CREATE TABLE `dangertype` (
  `id` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModification` datetime NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `dangertype`
--

INSERT INTO `dangertype` (`id`, `intitule`, `dateAjout`, `dateModification`, `idUtilisateur`) VALUES
(31, 'Cambriolage', '2020-08-18 15:53:16', '2020-08-18 15:53:16', 39),
(32, 'Innondation', '2020-08-18 16:12:17', '2020-08-18 16:12:17', 39),
(33, 'meutre', '2020-08-31 22:49:16', '2020-08-31 22:49:16', 30),
(34, 'viole', '2020-09-14 14:57:23', '2020-09-14 14:57:23', 30),
(35, 'accident', '2020-09-21 19:25:36', '2020-09-21 19:25:36', 29),
(36, ' dÃ©capitation', '2020-11-24 12:23:09', '2020-11-24 12:23:09', 39),
(37, 'Suicide', '2020-11-24 14:12:27', '2020-11-24 14:12:27', 43),
(38, 'Sorcellerie', '2020-11-26 11:59:56', '2020-11-26 11:59:56', 41),
(39, 'Attaques Ã  mains armÃ©es', '2020-12-01 16:20:16', '2020-12-01 16:20:16', 2),
(40, 'Consommation de drogue', '2020-12-01 16:20:49', '2020-12-01 16:20:49', 2),
(41, 'Coups et blessures volontaires', '2020-12-01 16:21:16', '2020-12-01 16:21:16', 2),
(42, 'Abus de confiance', '2020-12-01 16:21:41', '2020-12-01 16:21:41', 2),
(43, 'Escroquerie', '2020-12-01 16:23:59', '2020-12-01 16:23:59', 2),
(44, 'Trafic de faux billets', '2020-12-01 16:24:20', '2020-12-01 16:24:20', 2);

-- --------------------------------------------------------

--
-- Structure de la table `gsm`
--

CREATE TABLE `gsm` (
  `id` int(11) NOT NULL,
  `num` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `datepost` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gsm`
--

INSERT INTO `gsm` (`id`, `num`, `message`, `datepost`) VALUES
(10, 'MOOVQUIZ', 'Participe au nouveau jeu MOOVQUIZ et tente de gagner 150.000F/Semaine. Envoie OUI au 7002 (100F/Jour). DÃ©sabonnement: STOP au 7002', '2020-12-14'),
(9, '+22575081139', 'Salut', '2020-12-14'),
(11, '+22575081139', 'Hello', '2020-12-14'),
(12, '+22546558133', 'Abobolais', '2020-12-14'),
(13, '+22575081139', 'CoolðŸ˜‡', '2020-12-14'),
(14, '+22577435491', 'ðŸ¤”', '2020-12-14'),
(15, '+22574053194', 'Salut', '2020-12-14'),
(16, '+22551423265', 'Bonjour ðŸŒž', '2020-12-14'),
(17, '+22574053194', 'Simplon AUF ðŸ˜Ž', '2020-12-14'),
(18, '+22544235909', 'La Maggie', '2020-12-14'),
(19, '+22565451345', 'Cc', '2020-12-14'),
(20, '+22568986345', 'ðŸ˜Š', '2020-12-14'),
(21, '+22575081139', 'Coucou', '2020-12-14'),
(22, '+22544235909', 'Encore de la Maggie', '2020-12-14');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `pass`) VALUES
(1, 'name', 'email@gmail.com', '123'),
(2, 'aissa', 'assatou@gmail.com', '123'),
(3, 'Inocent ', 'inocent@gmail.com', '123'),
(4, 'sow', 'sow@gmail.com', '456'),
(5, 'josco', 'josco@gmail.com', '123'),
(6, 'sow', 'sow@gmail.com', '123'),
(7, 'dialo', 'dialo@gmail.com', '123'),
(8, 'ib', 'ib@gmail.com', '123'),
(9, 'Assatou Sow ', 'assatousow@gmail.com ', '12345');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `contenuMsg` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `nom`, `contenuMsg`, `email`, `subject`, `date`) VALUES
(0, 'Kouakou', 'qpzlegfkdsnfgdfg', 'tean.koya@gmail.com', 'fgdgd', '2020-09-14 18:27:13'),
(0, 'Innocent', 'Juste un test', 'konankoffiinnocent@gmail.com', 'Test', '2020-09-15 11:41:06'),
(0, 'Sheila Melissa', 'Qui a changÃ© le design ?', 'shellyaka998@gmail.com', 'remarque', '2020-12-02 18:36:43'),
(0, 'Aka Anoa', 'testestestestest', 'shellyaka998@gmail.com', 'test', '2021-01-07 15:52:59');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`, `date`) VALUES
(1, 'mireille@gmail.com', 'davila@gmail.com', 'salut mimi', '2020-10-23 22:26:33'),
(2, 'davila@gmail.com', 'mireille@gmail.com', 'ouai on dit quoi ?', '2020-10-23 22:27:04'),
(3, 'momo@momo', 'assatou@gmail.com', 'salut', '2020-10-24 09:50:04'),
(4, 'amed@amed', 'momo@momo', 'chui laa monsieur l\'avocat', '2020-10-24 10:04:13'),
(5, 'momo@momo', 'amed@amed', 'comment allez vous', '2020-10-24 10:04:53'),
(6, 'amed@amed', 'momo@momo', 'bonjour morelle, tla?', '2020-10-24 14:31:55'),
(7, 'ariane@gmail.com', 'dfghjkl@cvn', 'dre', '2020-10-24 22:48:58'),
(8, 'ariane@gmail.com', 'dfghjkl@cvn', 'salut andre', '2020-10-24 22:49:09'),
(9, 'dfghjkl@cvn', 'ariane@gmail.com', 'oui comment tu vas un bay hai', '2020-10-24 22:49:30'),
(10, 'eve@eve', 'eli@eli', 'bonjour', '2020-10-25 22:21:26'),
(11, 'eli@eli', 'eve@eve', 'comment allez vous?', '2020-10-25 22:21:51'),
(12, 'valerie@gmail.com', 'ami@ami', 'Bonjour mademoiselle comment allez vous', '2020-10-26 16:31:11'),
(13, 'valerie@gmail.com', 'ami@ami', 'Bonjour monsieur ami', '2020-10-26 16:32:49'),
(14, 'ami@ami', 'sahra@gmail.com', 'bonjour ami', '2020-10-26 16:36:11'),
(15, 'sahra@gmail.com', 'ami@ami', 'bonjour cc comment tu vas', '2020-10-26 16:36:32'),
(16, 'ami@ami', 'samuel', 'bonjour samuel', '2020-10-26 16:54:27'),
(17, 'samuel@gmail.com', 'ami@ami', 'cc', '2020-10-26 16:57:54'),
(18, 'samuel@gmail.com', 'ami@ami', 'bonjour, monsieur vous recevez mon message?', '2020-10-26 17:29:24'),
(19, 'samuel@gmail.com', 'ami@ami', 'Monsieur samuel', '2020-10-26 17:29:42'),
(20, 'samuel@gmail.com', 'ami@ami', 'plutot mon sieur ami desolé', '2020-10-26 17:30:06'),
(21, 'ami@ami', 'samuel@gmail.com', 'oui oui je te recoit samuel, explique moi mueux ta preocupation', '2020-10-26 17:31:49'),
(22, 'ami@ami', 'sahra@gmail.com', 'connecte toi dans deux je suis un peu occupé', '2020-10-26 17:33:13'),
(23, 'samuel@gmail.com', 'ami@ami', 'c\'est a proppos de mon divorce', '2020-10-26 17:33:52'),
(24, 'elodie@gmail.com', 'ami@ami', 'Bonjour monsieur ami, c\'est elodie', '2020-10-26 17:38:15'),
(25, 'ami@ami', 'samuel@gmail.com', 'ok , je t\'ecoute', '2020-10-26 17:38:33'),
(26, 'eve@eve', 'eli@eli', 'je vai bien et toi,', '2020-10-26 17:41:51'),
(27, 'eve@eve', 'eli@eli', 'JE suis de retour monsieur', '2020-10-26 17:46:24'),
(28, 'eli@eli', 'eve@gmail.com', 'gros probleme', '2020-10-26 18:21:18'),
(29, '4', '2', 'Bonjour', '2020-10-27 19:50:03'),
(30, '4', '14', 'le proleme est regler maitenant, youpi', '2020-10-27 19:50:37'),
(31, '14', '4', 'superbe', '2020-10-27 19:52:59'),
(32, '2', '4', 'bonjour monsieur amani', '2020-10-27 21:13:32'),
(33, '3', '11', 'BONJOUR', '2020-10-27 21:22:07'),
(34, '15', '4', 'salut c\'est samuel', '2020-10-27 21:24:05'),
(35, '3', '13', 'bonjour valerie', '2020-10-28 17:01:24'),
(36, '13', '3', 'onjour comment allez vous', '2020-10-28 17:02:19'),
(37, '4', '16', 'salut elodie', '2020-10-28 17:06:35'),
(38, '16', '4', 'bonjour monsieur, comment allez vous', '2020-10-28 17:09:20'),
(39, '4', '16', 'rien de grave c\'etait quoi le soucis?', '2020-10-28 17:09:54'),
(40, '19', '21', 'bonjour moise', '2020-10-29 03:49:48'),
(41, '21', '19', 'bonjour madame morelle, comment allez vous', '2020-10-29 03:53:20'),
(42, '19', '21', 'je vais tres ien merci', '2020-10-29 03:53:48'),
(43, '19', '20', 'mark etes vous connecté?', '2020-10-29 03:54:32'),
(44, '19', '21', 'Votre probleme etait lequel?', '2020-10-29 03:55:41'),
(45, '20', '19', 'oui oui je suis la', '2020-10-29 03:57:46'),
(46, '26', '3', 'bonsoir monsieur eli', '2020-11-04 23:22:00'),
(47, '24', '25', 'bonsoir syntia', '2020-11-05 19:11:57'),
(48, '25', '24', 'bonsoir madame', '2020-11-05 19:38:21'),
(49, '19', '51', 'bonjour rachelle', '2020-11-08 16:56:16'),
(50, '51', '19', 'bonjour madame morelle, comment allez vous?', '2020-11-08 17:01:41'),
(51, '19', '51', 'Je vais tres bien, j\'ai besoin de votre aide', '2020-11-08 17:02:40'),
(52, '2', '3', 'bonjour monsieur', '2020-11-11 15:59:39'),
(53, '3', '2', 'bbonjour comment allez vous', '2020-11-11 15:59:54'),
(54, '2', '3', 'je vais tres bien', '2020-11-11 16:00:08'),
(55, '4', '17', 'salut monsieur', '2020-12-14 17:59:48'),
(56, '21', '7', 'salut maitre', '2020-12-15 11:59:56'),
(57, '7', '21', 'salut', '2020-12-15 12:00:10');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `descriptionPays` text NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `img` text NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModification` datetime NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`, `descriptionPays`, `lat`, `lng`, `img`, `dateAjout`, `dateModification`, `idUtilisateur`) VALUES
(1, 'CÃ´te d\'Ivoire', 'La CÃ´te d\'Ivoire est un pays d\'Afrique de l\'Ouest dotÃ© de stations balnÃ©aires, de forÃªts tropicales et d\'un patrimoine colonial franÃ§ais. Abidjan, sur la cÃ´te Atlantique, est le principal centre urbain du pays. Ses sites modernes regroupent la Pyramide, un Ã©difice en bÃ©ton faisant penser Ã  une ziggourat. La cathÃ©drale Saint-Paul est une structure inclinÃ©e rattachÃ©e Ã  une immense croix. Au nord du quartier central des affaires, le parc national du Banco est une rÃ©serve de forÃªt tropicale au sein de laquelle serpentent des chemins de randonnÃ©e.', -5.347744, 6.855122, 'cover.jpeg', '0000-00-00 00:00:00', '2020-07-08 11:33:50', 39),
(2, 'Ghana', '', 0, 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `jourGarde` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `lati` varchar(100) DEFAULT NULL,
  `longi` varchar(100) DEFAULT NULL,
  `idVille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `nom`, `responsable`, `tel`, `jourGarde`, `image`, `lati`, `longi`, `idVille`) VALUES
(753, 'Pharmacie BEL AIR', 'Dr DOUKOURE MARIE DOMINIQUE', '+225 23 45 42 76', NULL, 'http://bad-event.com/pharma/pharmImg/PharmBelair.jpg', '5.3468074', '-4.0635541', 1),
(754, 'Pharmacie 7EME TRANCHE', 'Dr DAYATO AZIAN C PASCALE', '+225 22 52 56 83', NULL, NULL, '5.3911537', '-3.9907123', 1),
(755, 'Pharmacie OLYMPIQUE', 'Dr COULIBALY KAFANA DANIEL', '+225 02 27 56 13 / +225 07 89 99 44', NULL, NULL, '5.4389983', '-4.0704751', 1),
(756, 'Pharmacie PHENIX', 'Dr KONAN NGUESSAN MATTHIEU', '+225 23 45 22 00', NULL, NULL, '5.3477346', '-4.0813946', 1),
(757, 'Pharmacie PROVIDENCE', 'Dr DOH JOCELYNE', '+225 24 49 39 62', NULL, NULL, '5.3507216', '-4.0496474', 1),
(758, 'Pharmacie DE BIANOUAN', 'Dr BROU KOMENAN MARTIN', '+225 07 79 40 06 / 09 25 81 46', NULL, NULL, '6.0082236', '-3.1891955', 3),
(759, 'Pharmacie 2 PLATEAUX AGBAN ', 'Dr TIA ANNICK ', '+225 57 49 08 68 / +225 01 45 67 49', NULL, NULL, '5.3683893', '-4.0067738', 1),
(760, 'Pharmacie 7 LYS ', 'Dr FADIGA SOUMAH YAHKA', '+225 22 42 63 25 / +225 07 83 66 61', NULL, NULL, '5.384194', '-3.9899871', 1),
(761, 'Pharmacie An Nasr', 'Dr OUATTARA ADDIDIATA YAH', ' 23 55 98 22', NULL, NULL, '5.4666236', '-4.0845462', 5),
(762, 'Pharmacie 8eme TRANCHE', 'Dr TCHEMELE LINDA', '+225 22 52 34 90 / +225 07 69 54 32', NULL, NULL, '5.4010374', '-3.9802003', 1),
(763, 'Pharmacie ACTUELLE', 'Dr KONE LASSINA', '+225 01 22 20 32 / +225 08 91 85 83', NULL, NULL, '5.4134001', '-3.9969312', 1),
(765, 'Pharmacie ADJAME BRACODI ', 'Dr BLEDOU DOMINIQUE R.', '+225 20 37 54 33', NULL, NULL, '5.3604219', '-4.0296382', 1),
(766, 'Pharmacie DE LA BIA', 'Dr DINDJI JULES', '+225 21 30 42 16', NULL, NULL, '5.4674099', '-3.209138', 3),
(769, 'Pharmacie DU CARREFOUR', 'Dr KANTE MARIAM', '+225 35 91 35 03', NULL, NULL, '6.738489', '-3.4884274', 2),
(771, 'Pharmacie PROVIDENCE', 'Dr ADJIMI LEDJOU JEAN LUC', '+225 35 90 09 00', NULL, NULL, '6.7348025', '-3.5137019', 2),
(772, 'Pharmacie MOYA', 'Dr WASSA AUGUSTE', '+225 35 91 25 04', NULL, NULL, '6.7286586', '-3.5104376', 2),
(774, 'Pharmacie DE LA RIVE GAUCHE', 'Dr LOUKOU DONANTCHAT DURAND ARISTIDE', '+225 07 61 42 29 / +225 09 79 51 09', NULL, NULL, '5.4718861', '-3.1998264', 3),
(775, 'Pharmacie ST CHARBEL ', 'Dr KOUAKOU K. MATHIE', '+225 35 91 27 37 / +225 01 80 80 02', NULL, NULL, '6.724354', '-3.4973055', 2),
(776, 'Pharmacie AN-NASR', 'Dr OUATTARA ADDIDIATA YAH', '+225 23 55 98 22', NULL, NULL, '5.503305', '-4.0524003,17', 5),
(777, 'Pharmacie DU MARCHE', 'Dr DIALLO OUSMAN', '+225 21 30 40 63', NULL, NULL, '5.4668689', '-3.2066597', 3),
(778, 'Pharmacie D\'ANYAMA', 'Dr KEBE SEREBA', '+225 23 55 94 18', NULL, NULL, '5.4976503', '-4.0599562', 5),
(779, 'Pharmacie DU SANWI', 'Dr AKA BILE JOSEPH', '+225 21 30 43 82', NULL, NULL, '5.4694952', '-3.2073192', 3),
(780, 'Pharmacie ELIEL', 'Dr TOURE WANGOYO ANGE', '+225 23 55 98 30 / +225 23 55 62 80', NULL, NULL, '5.4801249', '-4.0613731', 5),
(781, 'Pharmacie SOKORA D\'ABOISSO', 'Dr VAMI BI NENE JOSEPH', '+225 21 30 41 97 / +225 01 78 00 00', NULL, NULL, '5.4718194', '-3.2049742', 3),
(782, 'Pharmacie D\'ATTOBROU (NOUVELLE)', 'Dr GBEULI SIMON PIERRE', '+225 23 54 23 58', NULL, NULL, '5.9089003', '-4.4917466,9', 4),
(783, 'Pharmacie DE L\'AGNEBY (GRANDE)', 'Dr SEUMEUN GONLEGBE ATHANASE', '+225 23 51 71 47', NULL, NULL, '5.9309395', '-4.2229567', 4),
(784, 'Pharmacie DU CHATEAU', 'Dr DJAMA ALBERT', '+225 23 54 87 21', NULL, NULL, '5.4135273', '-3.9887831', 4),
(785, 'Pharmacie K. BOILOT', 'Dr KOUASSI DIAHOU JEAN CLAUDE', '+225 35 90 25 74 / +225 04 30 15 15', NULL, NULL, '7.1342897', '-3.2046229', 4),
(786, 'Pharmacie DU COMMERCE ', 'Dr KOFFI KAUNAN AMEDEE', '+225 23 54 75 05', NULL, NULL, '5.3176556', '-4.0231818', 4),
(787, 'Pharmacie MAI', 'Dr KOUASSI EUGENE', '+225 35 91 00 30', NULL, NULL, '7.1281934', '-3.1999671', 4),
(788, 'Pharmacie SINI-KENEYA', 'Dr ALLOUE SIMON PIERRE', '+225 23 54 74 00', NULL, NULL, '5.9323111', '-4.2300867', 4),
(789, 'Pharmacie Bethel', 'Pharmacien', '+225 21 27 62 56 / +225 07 54 47 90', NULL, NULL, '5.2777706', '-3.9570484', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pharmusers`
--

CREATE TABLE `pharmusers` (
  `id` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `repScrete` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  `accountType` varchar(100) NOT NULL,
  `periode` varchar(100) DEFAULT NULL,
  `dateEnrg` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pharmusers`
--

INSERT INTO `pharmusers` (`id`, `userName`, `repScrete`, `passWord`, `accountType`, `periode`, `dateEnrg`) VALUES
(1, 'Josco93', 'Diesel', 'JOSCOJOSCO', 'Premium', NULL, '0000-00-00 00:00:00'),
(4, 'Micodem', 'michou', 'JOSCOJOSCO', 'Premium', NULL, '0000-00-00 00:00:00'),
(12, 'Maxim', 'maxim', '123456', 'Premium', NULL, '2020-11-20 10:51:03'),
(13, 'ismael', 'IsmaÃ«l2020', '12345678', 'Premium', NULL, '2020-11-20 13:17:27'),
(14, 'momo', 'momo2020', '12345678', 'Premium', NULL, '2020-11-20 13:28:24'),
(15, 'Ella99', 'Josco', 'JOSCOJOSCO', 'Premium', NULL, '2020-11-20 13:52:28'),
(16, '...........', '...........', '...........', 'Premium', NULL, '2020-11-20 14:13:02'),
(17, 'amani2020', 'jaune', '12345', 'Premium', NULL, '2020-11-20 14:56:08'),
(18, 'Kilos', 'Balobalo', 'JOSCOJOSCO', 'Premium', NULL, '2020-11-22 22:44:19'),
(19, 'Josh99', 'Josco', 'JOSCOJOSCO', 'Premium', NULL, '2020-11-23 20:54:53'),
(20, 'Jojos', 'Testeur', 'JOSCOJOSCO', 'Premium', NULL, '2020-11-23 21:01:00'),
(21, 'Iznogood', 'okokok', 'johnly1985*', 'Premium', NULL, '2020-11-30 12:10:36'),
(22, 'rene', 'Rene bio', 'rebe1234', 'Premium', NULL, '2020-12-18 13:47:21'),
(23, 'assita', 'assita', 'assita123456789', 'Premium', NULL, '2020-12-18 13:49:01'),
(24, 'ahmed', 'ahmed202', 'ahmed', 'Premium', NULL, '2021-01-04 05:23:32');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `idqrcode` int(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `quantite` int(255) NOT NULL,
  `prix` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `intituleRole` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `intituleRole`, `description`) VALUES
(1, 'ROLE_ADMIN', 'Super admin'),
(2, 'ROLE_OPERATEUR', 'opÃ©rateur'),
(3, 'ROLE_SUPERVISEUR', 'Superviseur');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tbl_registration`
--

INSERT INTO `tbl_registration` (`id`, `first_name`, `last_name`, `email_id`, `contact_number`, `password`, `update_date`) VALUES
(1, 'test', 'test', 'test@gmail.com', '44235909', 'c6f057b86584942e415435ffb1fa93d4', '2020-10-18 12:40:41'),
(2, 'ouattara', 'hamed', 'ouattara-hamed@hotmail.fr', '44235909', 'c6f057b86584942e415435ffb1fa93d4', '2020-10-18 22:50:00');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `motDePasse` varchar(255) NOT NULL,
  `dateInscription` datetime NOT NULL DEFAULT current_timestamp(),
  `idRole` int(11) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `autorisationApays` text NOT NULL,
  `autorisationAtypeevent` text NOT NULL,
  `autorisationAville` text NOT NULL,
  `dateModification` datetime NOT NULL,
  `idparent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `genre`, `contact`, `adresse`, `email`, `motDePasse`, `dateInscription`, `idRole`, `image`, `autorisationApays`, `autorisationAtypeevent`, `autorisationAville`, `dateModification`, `idparent`) VALUES
(2, 'Aka', 'Anoa Sheila Melissa', 'feminin', '+22549060536', 'Abobo belleville', 'salma@gmail.com', '$2y$10$OiyuPkF5DY4/QWNq0cs7b.LqTEFIeU/2p5gT1s0rLLkTkj6Tli8ma', '2020-06-06 13:32:35', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(29, 'Abie', 'Rebecca', 'Feminin', '87147883', 'Niangon, Yopougon', 'rebecca@gmail.com', '$2y$10$a03ymUPoeoHxE27rp.aR8OiScz8TsVe0UpLie/ituPsUZdQNhU83G', '2020-06-20 15:12:56', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(30, 'Aka', 'Stephanie', 'Feminin', '87147883', 'Niangon, Yopougon', 'stephanie@gmail.com', '123456', '2020-06-20 15:36:37', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(32, 'Meli', 'Anoa Melissa', 'Feminin', '43009312', 'Niangon, Yopougon', 'melissa@gmail.com', '$2y$10/Njilo5aJ09d7CXCEqjxgbsCYCe', '2020-06-20 15:45:32', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(33, 'test2', 'Loriane', 'Feminin', '85154865', 'Niangon, Yopougon', 'teste0@gmail.com', '$2y$10$3Ax1NMsGTUIR33V.ONTLI.oAXhXrbbggFX2KOPJ6Onkv0um/JI7cO', '2020-06-20 15:58:07', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(35, 'OpÃ©rateu', 'konÃ©', 'Masculin', '05285478', 'BouaflÃ©, CI', 'kouame@gmail.com', '$2y$10/jJ6kyt8SnmXLT3P8e/GHpn05Au6ivK/v5BdySHU5Ucio/Emu', '2020-06-21 09:03:44', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(36, 'Meli', 'Anoa Melissa', 'Feminin', '43009312', 'Niangon, Yopougon', 'melissa@gmail.com', '$2y$10/Njilo5aJ09d7CXCEqjxgbsCYCe', '2020-06-20 15:45:32', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(37, 'test2', 'Loriane', 'Feminin', '85154865', 'Niangon, Yopougon', 'teste0@gmail.com', '$2y$10$3Ax1NMsGTUIR33V.ONTLI.oAXhXrbbggFX2KOPJ6Onkv0um/JI7cO', '2020-06-20 15:58:07', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(38, 'OpÃ©rateu', 'konÃ©', 'Masculin', '05285478', 'BouaflÃ©, CI', 'kouame@gmail.com', '$2y$10/jJ6kyt8SnmXLT3P8e/GHpn05Au6ivK/v5BdySHU5Ucio/Emu', '2020-06-21 09:03:44', 2, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(39, 'KOYA', 'TÃ©an benoit', 'Masculin', '08880004', 'Abobo', 'tean.koya@gmail.com', '$2y$10$8VIa4CZ8dOZFeW7QIStJyeuTacQu9QhQ5DJ8K0vioV118NNH5iYOG', '2020-06-27 08:08:50', 2, 'simplon.png', '', '', '', '0000-00-00 00:00:00', 0),
(40, 'Konan', 'Koffi Innocent', 'Masculin', '49566561', 'Port-Bouet', 'konankoffiinnocent@gmail.com', '123456', '2020-06-27 08:08:50', 2, 'simplon.png', '', '', '', '0000-00-00 00:00:00', 0),
(41, 'Super', 'Superviseur s', 'Feminin', '49566561', 'Cocody', 'sup@gmail.com', '$2y$10$iaTiS.nDWzT87QM3h/YCneC8MTHMNUh/yA01Uzg7vC1NvZ/641/MS', '2020-06-27 08:08:50', 3, 'simplon.png', '', '', '', '2021-01-07 15:55:49', 0),
(42, 'Kouakou', 'Stephanie', 'femme', '78443295', 'Yopougon', 'steph@gmail.com', '123456', '2020-11-17 14:13:06', 3, NULL, '', '', '', '0000-00-00 00:00:00', 0),
(43, 'Super', 'Superviseur', 'homme', '49566561', 'Cocody', 'op@gmail.com', '$2y$10$qQagCq5JDEX5872vhU0K..X2bc1x3ai9T3iTN4Y/yF46dVPegJfdG', '2020-06-27 08:08:50', 2, 'simplon.png', '', '', '', '2020-08-17 17:53:22', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `ville` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `descriptionVille` text COLLATE utf8_estonian_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `img` text COLLATE utf8_estonian_ci NOT NULL,
  `pays` int(11) NOT NULL,
  `dateAjout` date NOT NULL,
  `dateModification` date NOT NULL,
  `idUtilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `ville`, `descriptionVille`, `lat`, `lng`, `img`, `pays`, `dateAjout`, `dateModification`, `idUtilisateur`) VALUES
(10, 'adjame', '', 5.36507, -4.02357, '', 1, '0000-00-00', '0000-00-00', 39),
(11, 'attecoube', '', 5.33625, -4.04145, '', 1, '0000-00-00', '0000-00-00', 39),
(12, 'cocody', '', 5.36022, -3.96744, '', 1, '0000-00-00', '0000-00-00', 39),
(13, 'koumassi', '', 5.30298, -3.94194, '', 1, '0000-00-00', '0000-00-00', 0),
(14, 'marcory', '', 5.30271, -3.98274, '', 1, '0000-00-00', '0000-00-00', 0),
(15, 'plateau', '', 5.32332, -4.02357, '', 1, '0000-00-00', '0000-00-00', 0),
(16, 'portbouet', '', 5.27725, -3.8859, '', 1, '0000-00-00', '0000-00-00', 0),
(17, 'treichville', '', 5.29209, -4.01336, '', 1, '0000-00-00', '0000-00-00', 0),
(18, 'yopougon', '', 5.31767, -4.08999, '', 1, '0000-00-00', '0000-00-00', 0),
(19, 'abengourou', '', 6.7157, -3.48013, '', 1, '0000-00-00', '0000-00-00', 0),
(20, 'aboisso', '', 5.47451, -3.20308, '', 1, '0000-00-00', '0000-00-00', 0),
(21, 'adzope', '', 6.10715, -3.85535, '', 1, '0000-00-00', '0000-00-00', 0),
(22, 'agboville', '', 5.9355, -4.22308, '', 1, '0000-00-00', '0000-00-00', 0),
(23, 'agnibilekrou', '', 7.13028, -3.20308, '', 1, '0000-00-00', '0000-00-00', 0),
(24, 'anyama', '', 5.48771, -4.05166, '', 1, '0000-00-00', '0000-00-00', 0),
(26, 'beoumi', '', 7.67309, -5.57223, '', 1, '0000-00-00', '0000-00-00', 0),
(27, 'bingerville', '', 5.35036, -3.87571, '', 1, '0000-00-00', '0000-00-00', 0),
(28, 'bocanda', '', 7.06591, -4.49543, '', 1, '0000-00-00', '0000-00-00', 0),
(29, 'bondoukou', '', 8.04788, -2.80786, '', 1, '0000-00-00', '0000-00-00', 0),
(30, 'bongouanou', '', 6.6487, -4.20515, '', 1, '0000-00-00', '0000-00-00', 0),
(31, 'bonoua', '', 5.27118, -3.59393, '', 1, '0000-00-00', '0000-00-00', 0),
(33, 'boundiali', '', 9.51836, -6.48232, '', 1, '0000-00-00', '0000-00-00', 0),
(34, 'dabou', '', 5.32621, -4.36679, '', 1, '0000-00-00', '0000-00-00', 0),
(35, 'daloa', '', 6.88833, -6.43969, '', 1, '0000-00-00', '0000-00-00', 0),
(36, 'bouaflÃ©', '', 6.98274, -5.74051, '', 1, '0000-00-00', '0000-00-00', 0),
(37, 'dananÃ©', '', 7.2676, -8.14478, '', 1, '0000-00-00', '0000-00-00', 0),
(38, 'daoukro', '', 7.0654, -3.95724, '', 1, '0000-00-00', '0000-00-00', 0),
(39, 'dimbokro', '', 6.65747, -4.71223, '', 1, '0000-00-00', '0000-00-00', 0),
(40, 'divo', '', 5.84154, -5.36255, '', 1, '0000-00-00', '0000-00-00', 0),
(41, 'douekoue', '', 6.74738, -7.36246, '', 1, '0000-00-00', '0000-00-00', 0),
(42, 'ferkessedougou', '', 9.5842, -5.19536, '', 1, '0000-00-00', '0000-00-00', 0),
(43, 'gagnoa', '', 6.15144, -5.95154, '', 1, '0000-00-00', '0000-00-00', 0),
(44, 'gohitafla', '', 7.48828, -5.88024, '', 1, '0000-00-00', '0000-00-00', 0),
(45, 'grandlahou', '', 5.13652, -5.02605, '', 1, '0000-00-00', '0000-00-00', 0),
(46, 'grandbassam', '', 5.22594, -3.75367, '', 1, '0000-00-00', '0000-00-00', 0),
(47, 'Grand-Bereby', '', 4.65137, -6.92205, '', 1, '0000-00-00', '0000-00-00', 0),
(48, 'guiglo', '', 6.54906, -7.49765, '', 1, '0000-00-00', '0000-00-00', 0),
(49, 'issia', '', 6.48761, -6.58368, '', 1, '0000-00-00', '0000-00-00', 0),
(50, 'jacqueville', '', 5.20598, -4.42335, '', 1, '0000-00-00', '0000-00-00', 0),
(52, 'katiola', '', 8.14023, -5.09631, '', 1, '0000-00-00', '0000-00-00', 0),
(53, 'korhogo', '', 9.46693, -5.61426, '', 1, '0000-00-00', '0000-00-00', 0),
(55, 'mbahiakro', '', 7.4548, -4.3411, '', 1, '0000-00-00', '0000-00-00', 0),
(58, 'mankono', '', 8.05991, -6.18983, '', 1, '0000-00-00', '0000-00-00', 0),
(59, 'odienne', '', 9.51888, -7.55722, '', 1, '0000-00-00', '0000-00-00', 0),
(60, 'oumÃ©', '', 6.37413, -5.40966, '', 1, '0000-00-00', '0000-00-00', 0),
(61, 'sassandra', '', 4.95128, -6.09175, '', 1, '0000-00-00', '0000-00-00', 0),
(62, 'seguela', '', 7.96018, -6.6745, '', 1, '0000-00-00', '0000-00-00', 0),
(63, 'sinfra', '', 6.62334, -5.91456, '', 1, '0000-00-00', '0000-00-00', 0),
(64, 'soubrÃ©', '', 5.78662, -6.58902, '', 1, '0000-00-00', '0000-00-00', 0),
(65, 'tengrela', '', 10.482, -6.41306, '', 1, '0000-00-00', '0000-00-00', 0),
(66, 'tiassale', '', 5.90426, -4.82614, '', 1, '0000-00-00', '0000-00-00', 0),
(67, 'Toulepleu', '', 6.57956, -8.4102, '', 1, '0000-00-00', '0000-00-00', 0),
(68, 'toumodi', '', 6.55603, -5.01565, '', 1, '0000-00-00', '0000-00-00', 0),
(69, 'vavoua', '', 7.37506, -6.47699, '', 1, '0000-00-00', '0000-00-00', 0),
(70, 'yamoussoukro', '', 6.82762, -5.28934, '', 1, '0000-00-00', '0000-00-00', 0),
(71, 'zuenoula', '', 7.42404, -6.05204, '', 1, '0000-00-00', '0000-00-00', 0),
(72, 'Bouna', '', 9.27166, -2.99256, '', 1, '0000-00-00', '0000-00-00', 0),
(73, 'lakota', '', 5.85947, -5.67735, '', 1, '0000-00-00', '0000-00-00', 0),
(74, 'kani', '', 8.47784, -6.60504, '', 1, '0000-00-00', '0000-00-00', 0),
(75, 'man', '', 7.40643, -7.55722, '', 1, '0000-00-00', '0000-00-00', 0),
(76, 'dabakala', '', 8.36626, -4.43364, '', 1, '0000-00-00', '0000-00-00', 0),
(77, 'kong', '', 9.15102, -4.61018, '', 1, '0000-00-00', '0000-00-00', 0),
(78, 'Touba', '', 8.28417, -7.68194, '', 1, '0000-00-00', '0000-00-00', 0),
(79, 'bouake', '', 7.69047, -5.03905, '', 1, '0000-00-00', '0000-00-00', 0),
(80, 'Accra', '', 5.5600141, -0.2057437, '', 2, '0000-00-00', '0000-00-00', 0),
(81, 'Kumasi', '', 6.698081, -1.6230404, '', 2, '0000-00-00', '0000-00-00', 0),
(82, 'Tamale', '', 9.4051992, -0.8423986, '', 2, '0000-00-00', '0000-00-00', 0),
(83, 'Sekondi-Takoradi', '', 4.927456, -1.7490216, '', 2, '0000-00-00', '0000-00-00', 0),
(84, 'Ashaiman', '', 5.694385, -0.029529, '', 2, '0000-00-00', '0000-00-00', 0),
(85, 'Sunyani', '', 7.3384389, -2.3309226, '', 2, '0000-00-00', '0000-00-00', 0),
(86, 'belelou sqdfsdfsdf', 'sdgdfgsdgsdg', 453.32, 20434, 'valise_vacances.jpg', 4, '2020-08-05', '2020-08-05', 39),
(87, ' abobo kouala dez', 'bim bim bim bim bim', 951091501, 5519109, 'valise_vacances.jpg', 5, '2020-08-06', '2020-08-07', 39),
(90, 'abobo', 'Abobo, qui fait partie du nord d\'Abidjan, est la banlieue la plus au nord de la ville et est limitrophe des arrondissements d\'AttÃ©coubÃ© , d\'AdjamÃ© et de Cocody. Elle est Ã©galement limitrophe de la ville d\'Anyama, situÃ©e Ã  quelques kilomÃ¨tres au nord.\r\n\r\n', 5.416667, -4.016667, 'mairie d\'abobo.jpg', 1, '2020-09-21', '2020-09-21', 29);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `lati` varchar(100) DEFAULT NULL,
  `longi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `lati`, `longi`) VALUES
(1, 'abidjan', NULL, NULL),
(2, 'abengourou', NULL, NULL),
(3, 'aboisso', NULL, NULL),
(4, 'agnibilekro', NULL, NULL),
(5, 'anyama', NULL, NULL),
(6, 'agboville', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `visiteurs`
--

CREATE TABLE `visiteurs` (
  `adresseIp` varchar(30) NOT NULL,
  `dateVisite` date NOT NULL,
  `pagesVues` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteurs`
--
ALTER TABLE `acteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avocatrapide`
--
ALTER TABLE `avocatrapide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_ar`);

--
-- Index pour la table `danger`
--
ALTER TABLE `danger`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dangertype`
--
ALTER TABLE `dangertype`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gsm`
--
ALTER TABLE `gsm`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pharmusers`
--
ALTER TABLE `pharmusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idRole` (`idRole`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteurs`
--
ALTER TABLE `visiteurs`
  ADD PRIMARY KEY (`adresseIp`,`dateVisite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteurs`
--
ALTER TABLE `acteurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `avocatrapide`
--
ALTER TABLE `avocatrapide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_ar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `danger`
--
ALTER TABLE `danger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `dangertype`
--
ALTER TABLE `dangertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `gsm`
--
ALTER TABLE `gsm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;

--
-- AUTO_INCREMENT pour la table `pharmusers`
--
ALTER TABLE `pharmusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
