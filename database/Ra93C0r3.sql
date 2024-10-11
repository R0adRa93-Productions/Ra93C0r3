-- --------------------------------------------------------
-- Host:                         192.168.1.125
-- Server version:               10.10.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ra93c0r3
DROP DATABASE IF EXISTS `ra93c0r3`;
CREATE DATABASE IF NOT EXISTS `ra93c0r3` /*!40100 DEFAULT CHARACTER SET utf32 COLLATE utf32_unicode_ci */;
USE `ra93c0r3`;

-- Dumping structure for table ra93c0r3.players
DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `citizenid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `license` varchar(50) NOT NULL,
  `playerData` mediumtext NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`citizenid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Dumping data for table ra93c0r3.players: ~0 rows (approximately)
DELETE FROM `players`;

-- Dumping structure for table ra93c0r3.resources
DROP TABLE IF EXISTS `resources`;
CREATE TABLE IF NOT EXISTS `resources` (
  `resourceID` smallint(5) unsigned NOT NULL,
  `resource` varchar(128) NOT NULL,
  `enabled` enum('true','false') NOT NULL DEFAULT 'true',
  PRIMARY KEY (`resourceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Dumping data for table ra93c0r3.resources: ~0 rows (approximately)
DELETE FROM `resources`;

-- Dumping structure for table ra93c0r3.serverconfig
DROP TABLE IF EXISTS `serverconfig`;
CREATE TABLE IF NOT EXISTS `serverconfig` (
  `serverConfigID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sv_hostname` varchar(50) NOT NULL,
  `sv_projectName` varchar(50) NOT NULL,
  `sv_projectDesc` tinytext NOT NULL,
  `sv_licensekey` varchar(50) NOT NULL,
  `IPv4` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `IPv6` varchar(45) NOT NULL,
  `port` smallint(5) unsigned NOT NULL DEFAULT 30120,
  `sv_maxclients` tinyint(3) unsigned NOT NULL DEFAULT 48,
  `tags` tinytext NOT NULL,
  `steamWebApiKey` varchar(50) NOT NULL DEFAULT 'none',
  `gameBuild` smallint(5) unsigned NOT NULL DEFAULT 3095,
  `useSystemChat` enum('true','false') NOT NULL DEFAULT 'true',
  PRIMARY KEY (`serverConfigID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

-- Dumping data for table ra93c0r3.serverconfig: ~0 rows (approximately)
DELETE FROM `serverconfig`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
