-- -------------------------------------------------------------
-- TablePlus 5.8.6(534)
--
-- https://tableplus.com/
--
-- Database: node_js
-- Generation Time: 2024-02-11 01:16:10.7350
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(70) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_exp` text COLLATE utf8mb4_general_ci,
  `area` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` int NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `username`, `gender`, `phone_number`, `nationality`, `role_exp`, `area`, `role`, `company_name`, `registration_number`) VALUES
(1, 'ashish', 'admin@gamil.com', '$2b$10$UdnwQvDhUKcnkIfbZc9Fceq1KPqTkQ7V60Q/W.9QLqWpOH0WYbaZu', '2024-02-07 22:43:37', '2024-02-07 22:43:37', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 'ashish', 'ashish@gamil.com', '$2b$10$LpNn5jJa415b9PRA7NuQGeAu9dIN/jj1TAdILSy750Qm39lS.hdfG', '2024-02-07 23:30:53', '2024-02-07 23:30:53', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 'ashish', 'ashish1@gamil.com', '$2b$10$jbY8CSOE8ozFcAX./Js99ekGc6irWOGxeWWNHQ.ovlp81hCNBGNr6', '2024-02-08 23:10:54', '2024-02-08 23:10:54', 'vava', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, NULL, NULL, '$2b$10$MhEiDXj03Q0zmmgspxCcfu6kg.DFgOj0k5PIW5K34w4ZJALNI6V8q', '2024-02-11 01:13:26', '2024-02-11 01:13:26', 'abc', NULL, '1111111', NULL, NULL, NULL, 2, 'abc', '123456789');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;