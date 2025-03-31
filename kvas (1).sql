-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 31 mars 2025 à 10:38
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kvas`
--

-- --------------------------------------------------------

--
-- Structure de la table `appointment_list`
--

DROP TABLE IF EXISTS `appointment_list`;
CREATE TABLE IF NOT EXISTS `appointment_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `schedule` date NOT NULL,
  `owner_name` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `category_id` int NOT NULL,
  `breed` text NOT NULL,
  `age` varchar(50) NOT NULL,
  `Color` varchar(100) NOT NULL,
  `service_ids` text,
  `status` tinyint NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `appointment_list`
--

INSERT INTO `appointment_list` (`id`, `code`, `schedule`, `owner_name`, `contact`, `email`, `address`, `category_id`, `breed`, `age`, `Color`, `service_ids`, `status`, `date_created`, `date_updated`) VALUES
(1, 'KVAS-2022010001', '2025-01-04', 'John D Smith', '0912345789', 'jsmith@sample.com', 'Sun City', 1, 'German Shepherd', '5 mos. old', '', '3,1', 0, '2025-01-04 15:55:21', NULL),
(2, 'KVAS-2022010002', '2025-01-05', 'Deoel M', '09123456897', 'mdeoel@sample.com', 'Lshi City', 1, 'Pug', '6 mos. old', '', '3,1', 0, '2025-01-04 15:56:55', NULL),
(3, 'KVAS-2022010003', '2025-01-05', 'Akash B.', '094567894152', 'bakash@gmail.com', 'Kzi', 2, 'Persian Cat', '1 yr. old', '', '5,3', 0, '2025-01-04 15:58:23', NULL),
(4, 'KVAS-2022010004', '2025-01-05', 'Wonder Tshi', '0995564887', 'twonder@sample.com', 'Leopold City', 2, 'Maine Coon', '7 mos.', '', '5,1', 0, '2025-01-04 15:59:51', NULL),
(6, 'KVAS-2022010006', '2025-01-06', 'Golden Jax', '09888754466', 'jgolden@gmail.com', 'Jado City', 2, 'Ragdoll', '8 mos', '', '5,1', 1, '2025-01-04 16:27:54', '2025-01-04 17:17:55'),
(8, 'KVAS-2025030001', '2025-03-31', 'benoit', '0990794163', 'benbeyamalumbi@gmail.com', 'brasimba', 1, 'berger allemand', '2', '', '2', 1, '2025-03-31 09:13:00', '2025-03-31 09:14:47'),
(9, 'KVAS-2025030002', '2025-04-01', 'jeslone', '0987645432', 'jeslonelukisa@gmail.com', 'dispensaire', 2, 'chat noir', '2', '', '2', 1, '2025-03-31 10:05:42', '2025-03-31 10:07:47'),
(10, 'KVAS-2025030003', '2025-04-01', 'jeslone', '0987645432', 'jeslonelukisa@gmail.com', 'vermoise', 2, 'chat noir', '2', 'jaune', '3', 0, '2025-03-31 10:26:43', NULL),
(11, 'KVAS-2025030004', '2025-04-01', 'jeslone', '0987645432', 'jeslonelukisa@gmail.com', 'vermoise', 2, 'chat noir', '2', 'jaune', '2', 0, '2025-03-31 10:55:54', NULL),
(12, 'KVAS-2025030005', '2025-04-01', 'jeslone', '0987645432', 'jeslonelukisa@gmail.com', '', 2, 'chat noir', '2', 'rouge', '3', 0, '2025-03-31 11:03:17', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category_list`
--

DROP TABLE IF EXISTS `category_list`;
CREATE TABLE IF NOT EXISTS `category_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Active, 1 = Delete',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Dogs', 0, '2025-01-04 10:31:11', NULL),
(2, 'Cats', 0, '2025-01-04 10:31:38', NULL),
(3, 'Hamsters', 0, '2025-01-04 10:32:02', NULL),
(4, 'Rabbits', 0, '2025-01-04 10:32:13', NULL),
(5, 'Birds', 0, '2025-01-04 10:32:47', NULL),
(6, 'test', 1, '2025-01-04 10:33:02', NULL),
(7, 'Oiseaux', 0, '2025-03-31 09:20:51', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `message_list`
--

DROP TABLE IF EXISTS `message_list`;
CREATE TABLE IF NOT EXISTS `message_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `message_list`
--

INSERT INTO `message_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `date_created`) VALUES
(1, 'test', '09123456897', 'jsmith@sample.com', 'test', 1, '2025-01-04 17:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `service_list`
--

DROP TABLE IF EXISTS `service_list`;
CREATE TABLE IF NOT EXISTS `service_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_ids` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `fee` float NOT NULL DEFAULT '0',
  `delete_flag` tinyint NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `service_list`
--

INSERT INTO `service_list` (`id`, `category_ids`, `name`, `description`, `fee`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '2,1', 'Immunization', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris quis quam tellus. Nam elit lectus, lobortis vitae eros a, condimentum pretium eros. Sed mauris nulla, aliquam vel hendrerit ac, aliquam quis mi. In non purus ac metus luctus aliquam. Praesent porta turpis eget molestie pellentesque. In fringilla est vitae sem imperdiet eleifend. Praesent lacinia arcu elit, quis venenatis nisl sollicitudin nec. Pellentesque tempor est nec porta mattis. In hendrerit eleifend felis, quis fermentum dolor eleifend quis. Maecenas dolor magna, luctus id blandit sit amet, bibendum id lacus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Nunc pellentesque nibh vel sapien lobortis tempus. In pretium nulla felis, cursus bibendum augue pretium at. Integer eget dignissim libero. Praesent laoreet, purus eu vehicula hendrerit, felis leo lobortis mi, at aliquet nisl est a dolor. Duis eleifend pharetra augue ut finibus. Curabitur id lorem lobortis, tempus mauris quis, fermentum nunc. Vestibulum eu euismod diam, fermentum vulputate elit. Aenean eu odio tincidunt, semper nulla eget, pretium eros. In ullamcorper fringilla faucibus. Curabitur aliquam leo ex, in cursus arcu commodo eu. Vivamus in nulla id massa efficitur rhoncus. Ut sagittis arcu ipsum, at posuere eros pretium nec. Nam neque mauris, molestie eu euismod a, vulputate at diam. Nullam mattis purus tortor, rutrum fringilla lorem eleifend nec. Vestibulum vitae purus sit amet leo imperdiet tristique at ac orci.</p>', 1500, 0, '2022-01-04 10:59:49', '2022-01-04 11:09:22'),
(2, '2,1', 'Vaccination', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Curabitur facilisis consequat lacinia. Curabitur luctus nunc ac libero mattis, id bibendum mauris pretium. Donec vulputate ac velit ac laoreet. Aliquam cursus feugiat turpis, id posuere nisl ornare sit amet. Duis pharetra quam vel risus semper vestibulum. Aliquam lacinia sit amet dolor a viverra. Ut sit amet turpis laoreet, euismod dui at, accumsan lacus. Fusce est nunc, consectetur ac neque at, commodo faucibus ipsum. Nullam rutrum dapibus pulvinar. Mauris eget magna id nisl consequat mollis vitae id purus. Cras eros tellus, fringilla et dictum quis, vulputate id erat. Aliquam erat volutpat.</span><br></p>', 1700, 0, '2022-01-04 11:14:24', NULL),
(3, '5,2,1,3,4', 'Check-up', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Ut fringilla velit quis condimentum mattis. Sed egestas ligula imperdiet orci elementum, eu aliquet sem cursus. Vestibulum maximus ex ut mi lobortis ultricies. Ut id congue ipsum. Donec porttitor a nunc a egestas. Ut non urna eget erat vestibulum eleifend. Phasellus blandit dui non neque cursus, id viverra turpis aliquet. Sed tempor nisl a ipsum porta, eget iaculis sem venenatis. Sed ac dolor sagittis, interdum leo ut, sagittis risus. Etiam suscipit, orci eget hendrerit malesuada, nisl mauris semper dolor, non accumsan nisl nibh ac augue. Integer vel lectus quis quam suscipit pharetra quis in lectus. Nulla bibendum ex sed accumsan laoreet. Cras et elit vitae sapien faucibus luctus. Morbi leo nibh, viverra vitae elit ac, luctus elementum urna.</span><br></p>', 500, 0, '2022-01-04 11:15:09', NULL),
(4, '1', 'Anti-Rabies', '<p><span style=\"color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Ut fringilla velit quis condimentum mattis. Sed egestas ligula imperdiet orci elementum, eu aliquet sem cursus. Vestibulum maximus ex ut mi lobortis ultricies. Ut id congue ipsum. Donec porttitor a nunc a egestas. Ut non urna eget erat vestibulum eleifend. Phasellus blandit dui non neque cursus, id viverra turpis aliquet. Sed tempor nisl a ipsum porta, eget iaculis sem venenatis. Sed ac dolor sagittis, interdum leo ut, sagittis risus. Etiam suscipit, orci eget hendrerit malesuada, nisl mauris semper dolor, non accumsan nisl nibh ac augue. Integer vel lectus quis quam suscipit pharetra quis in lectus. Nulla bibendum ex sed accumsan laoreet. Cras et elit vitae sapien faucibus luctus. Morbi leo nibh, viverra vitae elit ac, luctus elementum urna.</span><br></p>', 500, 0, '2022-01-04 11:16:24', '2022-01-04 11:17:00'),
(5, '2', 'Anti-Rabies', '<p>Ut fringilla velit quis condimentum mattis. Sed egestas ligula imperdiet orci elementum, eu aliquet sem cursus. Vestibulum maximus ex ut mi lobortis ultricies. Ut id congue ipsum. Donec porttitor a nunc a egestas. Ut non urna eget erat vestibulum eleifend. Phasellus blandit dui non neque cursus, id viverra turpis aliquet. Sed tempor nisl a ipsum porta, eget iaculis sem venenatis. Sed ac dolor sagittis, interdum leo ut, sagittis risus. Etiam suscipit, orci eget hendrerit malesuada, nisl mauris semper dolor, non accumsan nisl nibh ac augue. Integer vel lectus quis quam suscipit pharetra quis in lectus. Nulla bibendum ex sed accumsan laoreet. Cras et elit vitae sapien faucibus luctus. Morbi leo nibh, viverra vitae elit ac, luctus elementum urna.<br></p>', 250, 0, '2022-01-04 11:16:38', '2022-01-04 11:17:08'),
(6, '4', 'deleted', '<p>test</p>', 123, 1, '2022-01-04 11:17:34', '2022-01-04 11:17:46');

-- --------------------------------------------------------

--
-- Structure de la table `system_info`
--

DROP TABLE IF EXISTS `system_info`;
CREATE TABLE IF NOT EXISTS `system_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'KALYX Veterinary Appointment System'),
(6, 'short_name', 'KVAS'),
(11, 'logo', 'uploads/logo-1743330453.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1743330453.png'),
(15, 'content', 'Array'),
(16, 'email', 'info@vetclinic.com'),
(17, 'contact', '0979822267 / 0842929457'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'XYZ Street, There City, Here, 2306'),
(23, 'max_appointment', '30'),
(24, 'clinic_schedule', '9:00 AM - 5:00 PM');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `middlename` text,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1' COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'BENOIT', NULL, 'BEYA', 'admin', 'd352dfee2f93b810dfe713208b776d16', 'uploads/avatar-1.png?v=1639468007', NULL, 1, 1, '2021-01-20 14:02:37', '2025-03-30 12:01:40'),
(3, 'dina', NULL, 'kisuba', 'dkisuba', '827ccb0eea8a706c4c34a16891f84e7b', 'uploads/avatar-3.png?v=1639467985', NULL, 2, 1, '2021-12-14 15:46:25', '2025-03-31 09:18:13');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appointment_list`
--
ALTER TABLE `appointment_list`
  ADD CONSTRAINT `appointment_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
