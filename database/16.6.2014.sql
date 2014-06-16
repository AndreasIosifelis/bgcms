-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for bgcms
CREATE DATABASE IF NOT EXISTS `bgcms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bgcms`;


-- Dumping structure for table bgcms.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(4) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL DEFAULT '0',
  `number` varchar(255) NOT NULL DEFAULT '0',
  `stateId` int(11) NOT NULL DEFAULT '0',
  `cityId` int(11) NOT NULL DEFAULT '0',
  `countryId` int(11) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;


-- Dumping structure for table bgcms.identities
CREATE TABLE IF NOT EXISTS `identities` (
  `identityId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) DEFAULT '0',
  `basic` tinyint(4) DEFAULT '0',
  `typeId` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`identityId`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.identities: ~0 rows (approximately)
/*!40000 ALTER TABLE `identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `identities` ENABLE KEYS */;


-- Dumping structure for table bgcms.lookups
CREATE TABLE IF NOT EXISTS `lookups` (
  `lookupId` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `subTypeId` int(11) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '0',
  `parentId` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`lookupId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.lookups: ~6 rows (approximately)
/*!40000 ALTER TABLE `lookups` DISABLE KEYS */;
INSERT INTO `lookups` (`lookupId`, `typeId`, `subTypeId`, `selectable`, `parentId`, `description`, `createdOn`, `createdBy`, `lastUpdatedOn`, `lastUpdatedBy`) VALUES
	(22, 2, 0, 1, 0, 'ADMIN', NULL, NULL, NULL, NULL),
	(23, 2, 0, 1, 0, 'EDITOR', NULL, NULL, NULL, NULL),
	(24, 2, 0, 1, 0, 'AUTHOR', NULL, NULL, NULL, NULL),
	(25, 2, 0, 1, 0, 'CUSTOMER', NULL, NULL, NULL, NULL),
	(26, 13, 0, 1, 0, 'PAGE', NULL, NULL, NULL, NULL),
	(27, 13, 0, 1, 0, 'ARTICLE', NULL, NULL, NULL, NULL),
	(31, 13, 0, 1, 0, 'HOME_PAGE', NULL, NULL, NULL, NULL),
	(32, 13, 0, 1, 0, 'CONTACT_PAGE', NULL, NULL, NULL, NULL),
	(33, 13, 0, 1, 0, 'PRODUCT_PAGE', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `lookups` ENABLE KEYS */;


-- Dumping structure for table bgcms.lookuptypes
CREATE TABLE IF NOT EXISTS `lookuptypes` (
  `lookupTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `editable` tinyint(4) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  `attribute` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lookupTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.lookuptypes: ~10 rows (approximately)
/*!40000 ALTER TABLE `lookuptypes` DISABLE KEYS */;
INSERT INTO `lookuptypes` (`lookupTypeId`, `editable`, `description`, `attribute`) VALUES
	(2, 0, 'USER_GROUPS', 'USER_GROUPS'),
	(3, 1, 'CITIES', 'CITIES'),
	(4, 1, 'STATES', 'STATES'),
	(5, 1, 'COUNTRIES', 'COUNTRIES'),
	(7, 1, 'ARTICLE_CATEGORIES', 'ARTICLE_CATEGORIES'),
	(8, 1, 'ADDRESS_TYPES', 'ADDRESS_TYPES'),
	(9, 1, 'TELEPHONE_TYPES', 'TELEPHONE_TYPES'),
	(11, 1, 'WEBPROFILE_TYPES', 'WEBPROFILE_TYPES'),
	(12, 1, 'IDENTITY_TYPES', 'IDENTITY_TYPES'),
	(13, 0, 'PAGE_TYPES', 'PAGE_TYPES');
/*!40000 ALTER TABLE `lookuptypes` ENABLE KEYS */;


-- Dumping structure for table bgcms.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.pages: 0 rows
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`pageId`, `categoryId`, `typeId`, `title`, `subtitle`, `body`, `price`, `quantity`, `createdOn`, `createdBy`, `lastUpdatedOn`, `lastUpdatedBy`) VALUES
	(1, 0, 31, 'Home Page', 'Home page subtitle', 'Home page content', 0, 0, NULL, 1, NULL, 1),
	(2, 0, 32, 'Contact Page', 'Contact page subtitle', 'Contact page content', 0, 0, NULL, 1, NULL, 1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table bgcms.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.sessions: ~2 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('3dfaf6b8117a5cc79b46e306cc4057ee', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 1402927039, ''),
	('bcb823d9d49db7c9ee8df5f245a3348a', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', 1402922973, '');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


-- Dumping structure for table bgcms.sitesettings
CREATE TABLE IF NOT EXISTS `sitesettings` (
  `settingId` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`settingId`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.sitesettings: ~0 rows (approximately)
/*!40000 ALTER TABLE `sitesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitesettings` ENABLE KEYS */;


-- Dumping structure for table bgcms.telephones
CREATE TABLE IF NOT EXISTS `telephones` (
  `telephoneId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(4) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `prefix` varchar(50) NOT NULL DEFAULT '0',
  `telephone` varchar(255) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`telephoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.telephones: ~0 rows (approximately)
/*!40000 ALTER TABLE `telephones` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephones` ENABLE KEYS */;


-- Dumping structure for table bgcms.users
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `usergroupId` int(11) NOT NULL DEFAULT '0',
  `langId` varchar(2) NOT NULL DEFAULT '0',
  `username` char(128) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `lastLogout` datetime DEFAULT NULL,
  `loginCount` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`userId`, `usergroupId`, `langId`, `username`, `password`, `salt`, `firstName`, `lastName`, `email`, `lastLogin`, `lastLogout`, `loginCount`, `createdOn`, `createdBy`, `lastUpdatedOn`, `lastUpdatedBy`) VALUES
	(1, 3, '0', '80e58b6aa13b7418908191f7587b47e01c12913cc190e2f9bcf07a828d1e1eb32497bd84fc3d510d344ba6a5aa52374029f0460735a16d4f9b71a8a98da7e358', '58b79ac643b4def24ad23dc95077078ecc86718280ef51d86c2d09f3c0920644d10dbdb45b364985291c150577f1f2b0e2579c75ea7cc66fd03531ba7bede5d1', '78505e22767e1baf598542d508fd51f5d7f38549e0ef2c301f03397b4e8584cbed0da9c2d84bc1f3795279c1ceaf9e3e4132efb41d1f03d2ffabf36009842c1d', 'Andreas', 'Iosifelis', 'drumforhim@gmail.com', NULL, NULL, NULL, '2014-05-07 16:42:53', 1, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table bgcms.webprofiles
CREATE TABLE IF NOT EXISTS `webprofiles` (
  `webProfileId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(4) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`webProfileId`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table bgcms.webprofiles: ~0 rows (approximately)
/*!40000 ALTER TABLE `webprofiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `webprofiles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
