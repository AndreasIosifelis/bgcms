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

-- Dumping database structure for magazaki
CREATE DATABASE IF NOT EXISTS `magazaki` /*!40100 DEFAULT CHARACTER SET greek */;
USE `magazaki`;


-- Dumping structure for table magazaki.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;


-- Dumping structure for table magazaki.contents
CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`,`body`)
) ENGINE=MyISAM DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.contents: 0 rows
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;


-- Dumping structure for table magazaki.lookups
CREATE TABLE IF NOT EXISTS `lookups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '0',
  `parentId` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.lookups: ~6 rows (approximately)
/*!40000 ALTER TABLE `lookups` DISABLE KEYS */;
INSERT INTO `lookups` (`id`, `typeId`, `selectable`, `parentId`, `description`, `createdOn`, `createdBy`, `lastUpdatedOn`, `lastUpdatedBy`, `rowVersionField`) VALUES
	(3, 2, 1, 0, 'ADMINS', '2014-05-07 16:28:37', 1, NULL, NULL, NULL),
	(4, 13, 1, 0, 'PAGE', '2014-05-07 16:29:22', 1, NULL, NULL, NULL),
	(5, 13, 1, 0, 'ARTICLE', '2014-05-07 16:29:31', 1, NULL, NULL, NULL),
	(19, 2, 1, 0, 'CUSTOMERS', '2014-05-07 23:10:08', 1, NULL, NULL, NULL),
	(20, 2, 1, 0, 'USERS', '2014-05-07 23:10:28', 1, NULL, NULL, NULL),
	(21, 2, 1, 0, 'AUTHORS', '2014-05-07 23:10:39', 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `lookups` ENABLE KEYS */;


-- Dumping structure for table magazaki.lookuptypes
CREATE TABLE IF NOT EXISTS `lookuptypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `editable` tinyint(4) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  `attribute` varchar(255) NOT NULL DEFAULT '0',
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.lookuptypes: ~12 rows (approximately)
/*!40000 ALTER TABLE `lookuptypes` DISABLE KEYS */;
INSERT INTO `lookuptypes` (`id`, `editable`, `description`, `attribute`, `rowVersionField`) VALUES
	(2, 0, 'USER_GROUPS', 'USER_GROUPS', NULL),
	(3, 1, 'CITIES', 'CITIES', NULL),
	(4, 1, 'STATES', 'STATES', NULL),
	(5, 1, 'COUNTRIES', 'COUNTRIES', NULL),
	(6, 1, 'PRODUCT_TAGS', 'PRODUCT_TAGS', NULL),
	(7, 1, 'ARTICLE_CATEGORIES', 'ARTICLE_CATEGORIES', NULL),
	(8, 1, 'ADDRESS_TYPES', 'ADDRESS_TYPES', NULL),
	(9, 1, 'TELEPHONE_TYPES', 'TELEPHONE_TYPES', NULL),
	(10, 1, 'MANUFACTURERS', 'MANUFACTURERS', NULL),
	(11, 1, 'WEBPROFILE_TYPES', 'WEBPROFILE_TYPES', NULL),
	(12, 1, 'PERSONID_TYPES', 'PERSONID_TYPES', NULL),
	(13, 0, 'CONTENT_TYPES', 'CONTENT_TYPES', NULL);
/*!40000 ALTER TABLE `lookuptypes` ENABLE KEYS */;


-- Dumping structure for table magazaki.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentId` int(11) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.menu: ~0 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Dumping structure for table magazaki.ordereditems
CREATE TABLE IF NOT EXISTS `ordereditems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL DEFAULT '0',
  `productId` int(11) NOT NULL DEFAULT '0',
  `subtotal` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.ordereditems: ~0 rows (approximately)
/*!40000 ALTER TABLE `ordereditems` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordereditems` ENABLE KEYS */;


-- Dumping structure for table magazaki.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Dumping structure for table magazaki.personids
CREATE TABLE IF NOT EXISTS `personids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) DEFAULT '0',
  `basic` tinyint(4) DEFAULT '0',
  `typeId` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.personids: ~0 rows (approximately)
/*!40000 ALTER TABLE `personids` DISABLE KEYS */;
/*!40000 ALTER TABLE `personids` ENABLE KEYS */;


-- Dumping structure for table magazaki.persons
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.persons: ~1 rows (approximately)
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` (`id`, `usergroupId`, `langId`, `username`, `password`, `salt`, `firstName`, `lastName`, `email`, `lastLogin`, `lastLogout`, `loginCount`, `createdOn`, `createdBy`, `lastUpdatedOn`, `lastUpdatedBy`, `rowVersionField`) VALUES
	(1, 3, '0', '80e58b6aa13b7418908191f7587b47e01c12913cc190e2f9bcf07a828d1e1eb32497bd84fc3d510d344ba6a5aa52374029f0460735a16d4f9b71a8a98da7e358', '58b79ac643b4def24ad23dc95077078ecc86718280ef51d86c2d09f3c0920644d10dbdb45b364985291c150577f1f2b0e2579c75ea7cc66fd03531ba7bede5d1', '78505e22767e1baf598542d508fd51f5d7f38549e0ef2c301f03397b4e8584cbed0da9c2d84bc1f3795279c1ceaf9e3e4132efb41d1f03d2ffabf36009842c1d', 'Andreas', 'Iosifelis', 'drumforhim@gmail.com', NULL, NULL, NULL, '2014-05-07 16:42:53', 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;


-- Dumping structure for table magazaki.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `inOffer` tinyint(4) NOT NULL DEFAULT '0',
  `firstPage` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `sortDescription` text NOT NULL,
  `fullDescription` longtext NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `subtitle` (`subtitle`,`sortDescription`,`fullDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.products: 0 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


-- Dumping structure for table magazaki.products_tags
CREATE TABLE IF NOT EXISTS `products_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL DEFAULT '0',
  `tagId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.products_tags: ~0 rows (approximately)
/*!40000 ALTER TABLE `products_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_tags` ENABLE KEYS */;


-- Dumping structure for table magazaki.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.sessions: ~1 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
	('8c630a6e99600121820c1312aedec515', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', 1401805338, 'a:6:{s:9:"logged_in";b:1;s:8:"is_admin";b:1;s:9:"full_name";s:17:"Andreas Iosifelis";s:7:"user_id";s:1:"1";s:10:"user_token";s:128:"393cfea5f0ffce3b6261d1f21e46102f214782bc4f6015da36baf9fb5dc8af15cafcf101ec4117d7808fb6ea1342e010432e1e7724c3dd9cb77efdfbd7efc20c";s:7:"lang_id";s:1:"0";}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;


-- Dumping structure for table magazaki.sitesettings
CREATE TABLE IF NOT EXISTS `sitesettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.sitesettings: ~0 rows (approximately)
/*!40000 ALTER TABLE `sitesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitesettings` ENABLE KEYS */;


-- Dumping structure for table magazaki.telephones
CREATE TABLE IF NOT EXISTS `telephones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(4) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `prefix` varchar(50) NOT NULL DEFAULT '0',
  `telephone` varchar(255) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.telephones: ~0 rows (approximately)
/*!40000 ALTER TABLE `telephones` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephones` ENABLE KEYS */;


-- Dumping structure for table magazaki.webprofiles
CREATE TABLE IF NOT EXISTS `webprofiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `basic` tinyint(4) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `createdOn` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `lastUpdatedOn` datetime DEFAULT NULL,
  `lastUpdatedBy` int(11) DEFAULT NULL,
  `rowVersionField` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=greek;

-- Dumping data for table magazaki.webprofiles: ~0 rows (approximately)
/*!40000 ALTER TABLE `webprofiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `webprofiles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
