-- -------------------------------------------------------------
-- TablePlus 5.8.6(534)
--
-- https://tableplus.com/
--
-- Database: node_js
-- Generation Time: 2024-02-12 08:38:28.1080
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `pay` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `weekly` varchar(255) DEFAULT NULL,
  `additional_details` text,
  `created_by` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_created_by` (`created_by`),
  CONSTRAINT `fk_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `job` (`id`, `company_name`, `role`, `start_date`, `end_date`, `location`, `pay`, `duration`, `weekly`, `additional_details`, `created_by`, `created_at`, `updated_at`) VALUES
(6, 'ashish', 'technology', '2024-02-01', '2024-02-11', 'ahmedabad', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:20:18', '2024-02-11 03:20:18'),
(7, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:11', '2024-02-11 03:51:11'),
(8, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:11', '2024-02-11 03:51:11'),
(9, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:13', '2024-02-11 03:51:13'),
(10, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:14', '2024-02-11 03:51:14'),
(11, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:15', '2024-02-11 03:51:15'),
(12, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:15', '2024-02-11 03:51:15'),
(13, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 4, '2024-02-11 03:51:16', '2024-02-11 03:51:16'),
(14, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:16', '2024-02-11 03:51:16'),
(15, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:17', '2024-02-11 03:51:17'),
(16, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:17', '2024-02-11 03:51:17'),
(17, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:18', '2024-02-11 03:51:18'),
(18, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:18', '2024-02-11 03:51:18'),
(19, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:18', '2024-02-11 03:51:18'),
(20, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 5, '2024-02-11 03:51:19', '2024-02-11 03:51:19'),
(21, 'abc', 'tech', '2024-02-11', '2024-02-11', 'ahmd', '400,000', '10 days', 'sunday off', 'firday movide day', 4, '2024-02-11 03:51:19', '2024-02-11 03:51:19');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;