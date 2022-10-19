-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_22
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'ad'),(6,'debitis'),(7,'dicta'),(5,'eum'),(3,'facilis'),(8,'magni'),(4,'non'),(9,'omnis'),(10,'quidem'),(2,'voluptas');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_service`
--

DROP TABLE IF EXISTS `customer_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_service` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_service`
--

LOCK TABLES `customer_service` WRITE;
/*!40000 ALTER TABLE `customer_service` DISABLE KEYS */;
INSERT INTO `customer_service` VALUES (1,'Vivianne','West','xpowlowski@example.com','1979-08-22 02:15:51','1980-07-05 09:10:02'),(2,'Kristofer','Christiansen','fmitchell@example.net','1995-09-27 20:20:06','2005-09-11 13:11:07'),(3,'Hillary','Goodwin','wava53@example.com','2008-04-28 06:04:43','1972-07-26 10:22:08'),(4,'Emery','Ledner','osinski.karli@example.org','2018-08-25 06:26:07','2011-02-13 19:38:42'),(5,'Lenna','Crist','karelle.shanahan@example.net','1977-04-25 17:30:31','2001-07-15 22:10:53'),(6,'Duncan','Mraz','jewel40@example.org','1988-03-24 18:57:31','2001-01-16 21:58:21'),(7,'Geraldine','Bauch','little.erich@example.org','2009-01-31 12:12:09','1970-05-27 15:07:42'),(8,'Monica','Kassulke','crooks.gust@example.org','1996-03-02 06:42:43','1996-06-10 14:44:39'),(9,'Weldon','Kutch','karelle87@example.net','2011-09-17 04:36:30','2012-12-16 02:00:24'),(10,'Talia','Kris','crau@example.org','2000-08-02 09:37:56','1988-09-26 04:35:48');
/*!40000 ALTER TABLE `customer_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Hallie','Mills','lionel.bradtke@example.com','436-033-8793','1980-06-24 08:14:07','2004-06-09 22:09:27'),(2,'Stuart','Fisher','bradford96@example.com','201-109-2248x44663','1998-07-21 02:28:30','1983-08-27 13:01:48'),(3,'Marianne','Haag','vernie63@example.com','00042357183','1978-08-10 22:25:44','1982-09-18 09:17:33'),(4,'Magdalena','Fay','anais.connelly@example.net','(198)835-8499','1980-01-13 20:02:42','1997-04-21 23:10:01'),(5,'Diego','Schultz','petra94@example.net','01120517565','1993-08-19 23:46:39','1978-01-31 03:18:21'),(6,'Jerrod','Feest','willms.loyce@example.org','(578)900-1789','1993-03-12 21:41:32','2022-02-17 13:59:01'),(7,'Kristopher','Howe','waylon68@example.net','981-855-7312x0856','1995-12-24 10:28:11','2003-01-09 12:04:17'),(8,'Euna','Stehr','fisher.name@example.org','(829)631-0090x2105','1972-01-25 16:31:06','1989-10-30 14:23:48'),(9,'Hassan','Tillman','xswift@example.com','833-088-0729','1984-07-15 15:28:36','2017-06-22 10:12:07'),(10,'Emmalee','Reichert','rogahn.randi@example.com','1-653-741-1951','2003-01-03 22:12:35','2019-09-26 10:05:40');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (10,'dignissimos'),(5,'dolor'),(7,'ea'),(2,'et'),(1,'nam'),(9,'recusandae'),(4,'repellendus'),(8,'rerum'),(3,'sit'),(6,'voluptas');
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'aut',181844,NULL,'2011-03-25 16:05:51','1986-06-09 19:23:24'),(2,2,'ipsa',69,NULL,'2021-02-18 14:26:11','2015-04-29 19:24:18'),(3,3,'non',0,NULL,'2017-11-27 17:34:52','2001-04-26 03:44:41'),(4,4,'porro',55034680,NULL,'1996-11-12 18:58:56','1991-09-27 01:40:23'),(5,5,'iste',13198,NULL,'1999-06-26 10:03:56','1977-08-16 15:55:35'),(6,6,'iste',59,NULL,'1974-07-21 09:59:59','1974-10-24 17:12:54'),(7,7,'necessitatibus',228,NULL,'2003-10-05 10:36:03','1984-07-22 21:35:16'),(8,8,'architecto',9610274,NULL,'1997-11-25 19:02:38','1988-09-30 11:45:05'),(9,9,'earum',4162616,NULL,'2015-11-03 12:16:04','2014-07-21 14:37:11'),(10,10,'eos',3,NULL,'1995-03-19 12:21:22','2002-08-03 13:35:19');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `customer_id` bigint(20) unsigned NOT NULL,
  `customer_service_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `important` tinyint(1) DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customer_id`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,'Dolores deserunt et reprehenderit autem dicta quas dolorem minus. Facere amet accusamus eligendi. Sunt porro facilis expedita. Animi et id dicta. Laborum ea est provident tenetur non cupiditate.',NULL,NULL,'2018-10-06 22:32:58'),(2,2,'Sint occaecati placeat laborum tempora et qui expedita nihil. Quam sequi quibusdam molestiae reiciendis. Dolorum quam asperiores officiis nisi. Aliquid accusamus ad quis quas in non et occaecati.',NULL,NULL,'1985-01-28 05:34:17'),(3,3,'Et voluptatem est quisquam modi. Sit ut molestiae distinctio delectus. Quia enim esse expedita aliquid.',NULL,NULL,'1998-01-21 20:12:26'),(4,4,'Tempora ut voluptatem omnis unde. Vero quisquam qui rerum soluta earum recusandae porro et. Mollitia aut eveniet doloribus deleniti incidunt et. Repellendus et dolorem exercitationem dicta et et.',NULL,NULL,'2003-09-24 18:54:17'),(5,5,'Mollitia dicta quibusdam molestiae dolor et. Autem quibusdam eos nemo blanditiis vel. Nam maxime pariatur autem.',NULL,NULL,'2010-04-10 04:49:44'),(6,6,'Ut omnis voluptas quisquam suscipit consequatur sint facilis. Autem impedit et eos odit. Voluptates dolor sapiente sit sequi perferendis repudiandae ad ipsa. Similique et nisi nobis ducimus quam rerum.',NULL,NULL,'2008-04-23 12:56:20'),(7,7,'Est totam qui soluta non non. In cum laboriosam occaecati et doloribus sequi id quis. Quas voluptas consequuntur itaque nemo.',NULL,NULL,'1978-09-17 19:17:58'),(8,8,'Qui ut consequatur atque ipsum sint. Magnam eum voluptatem eum repellat. Illum voluptatum autem vitae ratione aut itaque quis.',NULL,NULL,'1998-07-05 11:50:46'),(9,9,'Repellat aut laborum ut. Voluptatem ut molestiae consequatur aut perferendis illum molestias. Optio omnis nulla vitae repudiandae maxime cupiditate. Voluptate rerum sit quam magni neque itaque facere.',NULL,NULL,'2012-06-16 03:46:23'),(10,10,'Commodi neque unde cumque non a illum. Ipsam qui officiis sunt eum cum sit esse. Aliquid molestiae hic quia explicabo hic laudantium. Totam placeat omnis dicta.',NULL,NULL,'1993-11-01 22:51:32');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `amount` int(10) unsigned NOT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,NULL,0,NULL,'2011-12-15 05:59:22','2005-08-13 13:06:52'),(2,2,2,NULL,1181617,NULL,'1984-02-02 22:34:38','2007-08-25 02:11:30'),(3,3,3,NULL,171,NULL,'2010-07-03 21:10:55','1985-12-01 12:43:10'),(4,4,4,NULL,20,NULL,'1993-05-19 06:52:54','1979-07-31 14:30:55'),(5,5,5,NULL,196756453,NULL,'1976-05-06 23:26:48','1985-12-18 17:12:39'),(6,6,6,NULL,0,NULL,'2013-11-21 10:51:43','2008-09-14 07:16:19'),(7,7,7,NULL,32,NULL,'1993-11-01 19:44:11','1991-12-28 23:38:29'),(8,8,8,NULL,35997479,NULL,'1977-04-22 13:57:31','1997-04-11 22:22:01'),(9,9,9,NULL,0,NULL,'2012-10-07 03:33:58','1981-06-23 22:52:46'),(10,10,10,NULL,32914056,NULL,'1995-10-05 00:35:29','1979-12-25 15:23:06');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'itaque',1,'Consequatur porro quae sit sed. Error numquam consectetur fugiat omnis ut voluptatem. Id perspiciatis amet assumenda qui cum qui.',1,1,'1973-12-07 01:02:37','2009-05-16 02:59:39'),(2,'repellat',45786858,'Inventore beatae dolores non velit accusantium. Magnam ipsam veniam quam reprehenderit. Molestiae deleniti facere aut quas consequatur iste dolores.',2,2,'1993-03-28 01:08:48','1972-07-10 15:37:29'),(3,'necessitatibus',46957061,'Similique est quia quod quo. Inventore voluptatum quia iusto. Molestias quam excepturi autem laudantium. Ducimus numquam et perspiciatis et eligendi.',3,3,'2017-10-27 12:00:03','2020-05-13 02:52:07'),(4,'assumenda',4,'Ratione ipsum dicta esse et. Dolor quas voluptas tempore sit. Ea itaque magnam nam voluptate sequi ut. Quod voluptatibus eum et quo.',4,4,'1979-07-26 12:42:27','2012-10-01 21:01:30'),(5,'in',26,'Quia facere dolor exercitationem velit. Dolor est ullam aut saepe corrupti. Harum ut possimus aut quia corporis doloremque maxime.',5,5,'2007-11-11 16:10:53','1997-01-24 05:49:29'),(6,'repudiandae',328,'Accusantium consequuntur corporis unde expedita ut. Facilis qui iste at necessitatibus.',6,6,'2015-11-05 16:04:15','1979-10-13 08:15:58'),(7,'sed',2735654,'Ipsum unde quasi quod odio. Vero hic saepe harum nihil. Eos eaque nihil incidunt ad corrupti.',7,7,'1996-12-28 12:58:46','2020-07-20 20:37:59'),(8,'sint',7146073,'Alias debitis qui molestiae quae at quas ut consequuntur. Repellendus quas voluptates nobis debitis dolorem recusandae dolorem. Voluptatem perferendis sequi ut voluptatem et molestias.',8,8,'1985-10-20 03:59:57','1972-06-08 12:14:02'),(9,'perferendis',57859,'Neque assumenda consequatur eum quia. Saepe quam dolores corporis. Sint ratione possimus soluta error. Aut rem mollitia velit vero eos aut aut.',9,9,'1999-03-20 03:20:46','1997-11-15 09:37:27'),(10,'molestiae',55,'Dolorem soluta sit enim quidem dolores. Quis ut veniam nemo alias perspiciatis et. Unde qui in et adipisci. Enim quam non asperiores debitis laborum.',10,10,'2006-04-28 03:03:41','1990-05-31 17:53:25');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_market`
--

DROP TABLE IF EXISTS `products_market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_market` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `market_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `amount` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_market`
--

LOCK TABLES `products_market` WRITE;
/*!40000 ALTER TABLE `products_market` DISABLE KEYS */;
INSERT INTO `products_market` VALUES (1,1,1,581),(2,2,2,7293),(3,3,3,113418),(4,4,4,2003),(5,5,5,110),(6,6,6,0),(7,7,7,0),(8,8,8,0),(9,9,9,6136),(10,10,10,2997);
/*!40000 ALTER TABLE `products_market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `customer_id` bigint(20) unsigned NOT NULL,
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankcard` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'','1988-07-20','28680 Wiza Stream\nErdmanborough, AL 91112',2147483647),(2,'','2022-02-06','548 Quincy Hill Suite 813\nSouth Jaydenview, KS 57269-9355',2147483647),(3,'','2007-12-26','35808 Zemlak Manor\nEast Ashleybury, HI 37544',2147483647),(4,'','2016-06-05','60051 Jones Stravenue\nNew Ellen, IA 97226',2147483647),(5,'','1994-12-15','168 Mitchel Island Suite 894\nWildermanton, TN 08556',2147483647),(6,'','1974-02-23','2699 Al Camp\nKianamouth, IN 98433',2147483647),(7,'','2018-09-08','8352 Rigoberto Village Apt. 939\nAaliyahchester, AR 75297-1073',2147483647),(8,'','2019-06-23','59269 Jaskolski Hollow\nDickensbury, MD 10222-4190',2147483647),(9,'','1999-07-20','298 Laverne Trail Suite 350\nPort Kurt, AR 28055',2147483647),(10,'','1976-08-02','0256 Elijah Prairie\nLake Dorthy, CO 90564-1009',2147483647);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranking` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,'Consequatur delectus nam itaque. Cupiditate non voluptas provident omnis. Ut ut unde id nesciunt sed et possimus eaque.',NULL,'1980-12-31 14:32:03','1974-07-27 17:33:26'),(2,2,2,'Quaerat voluptatem vel architecto aut dolores unde pariatur. Quidem omnis eos aut error aut quis est. Nisi quisquam dolores beatae nihil qui debitis temporibus quos. Nihil consequatur tempora excepturi alias pariatur nulla ut sapiente.',NULL,'1973-05-18 11:33:58','1979-02-17 06:45:46'),(3,3,3,'Delectus autem sequi omnis quis at eius repellat. Commodi dolorum ex et sunt ullam sint quis. Rerum incidunt est officiis rerum enim unde et. Quaerat vitae architecto quas doloremque.',NULL,'1977-04-13 13:39:37','1982-12-13 12:48:27'),(4,4,4,'Quos nisi nulla architecto omnis aspernatur molestias iste. In qui vero temporibus quia illo. Ad voluptatum voluptas voluptas perspiciatis tempore omnis error. Necessitatibus est nam hic laudantium error eius.',NULL,'1980-01-09 12:25:46','1998-11-29 12:06:01'),(5,5,5,'Et in est excepturi asperiores in. Soluta eos totam doloribus sed ipsum atque pariatur. Cumque sint id placeat voluptates est.',NULL,'1991-07-12 12:20:30','1988-10-24 23:40:28'),(6,6,6,'Animi nobis debitis et praesentium. Accusamus qui ea maxime omnis fuga quibusdam. Delectus ipsam quis id alias.',NULL,'1992-11-06 19:17:21','2018-03-18 18:13:50'),(7,7,7,'Ut id qui reprehenderit ratione corrupti aut omnis. Cumque ex ex quam ut. Odit esse ea dolorem illo.',NULL,'1988-10-29 11:38:37','1972-11-16 10:55:02'),(8,8,8,'Laboriosam repellendus natus qui rerum et. Omnis autem veniam ex corrupti nemo molestiae voluptas. Facere facilis et molestiae architecto doloremque dolor et. Autem magnam ut non perspiciatis maiores optio nobis.',NULL,'2021-04-07 10:30:53','2012-11-20 00:48:09'),(9,9,9,'Omnis dolor mollitia adipisci beatae veniam. Ut quia et consequatur similique. Quia ipsum ipsum quis quas rerum a. Inventore dolorum iure quos minus quia molestiae praesentium optio.',NULL,'1994-06-29 01:59:59','1990-02-28 05:08:02'),(10,10,10,'Voluptas dolores ex impedit. Nesciunt ut maxime et. Aut ipsa molestiae omnis consequatur voluptas incidunt ullam.',NULL,'1982-04-23 02:20:05','2012-11-13 00:56:02');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09  7:57:38
