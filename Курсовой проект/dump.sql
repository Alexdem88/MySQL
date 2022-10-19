-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (11,'alias'),(13,'aliquid'),(16,'at'),(2,'aut'),(17,'autem'),(5,'consequatur'),(3,'dolorum'),(7,'earum'),(12,'eos'),(9,'facere'),(6,'hic'),(1,'neque'),(14,'quia'),(20,'quo'),(8,'saepe'),(18,'sed'),(19,'sint'),(15,'sit'),(4,'ullam'),(10,'ut');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_service`
--

LOCK TABLES `customer_service` WRITE;
/*!40000 ALTER TABLE `customer_service` DISABLE KEYS */;
INSERT INTO `customer_service` VALUES (1,'Koby','Goodwin','fwilderman@example.com','1996-08-09 09:05:01','2011-08-22 10:58:01'),(2,'Heaven','Smith','howe.freddie@example.org','1995-10-04 09:31:23','2000-05-30 16:46:11'),(3,'Desmond','Dach','seamus.treutel@example.org','1990-02-09 01:01:59','1988-11-06 03:35:05'),(4,'Joanny','Von','lincoln.abshire@example.com','1978-06-11 22:59:30','2005-10-02 02:10:11'),(5,'Loma','Russel','reynolds.mollie@example.com','2016-12-04 18:22:05','1992-05-20 09:52:32'),(6,'Steve','Halvorson','lucius39@example.net','2020-12-22 07:55:19','1980-10-16 05:43:25'),(7,'Alexys','Cruickshank','d\'amore.karli@example.net','1971-03-04 08:39:52','2003-11-08 08:00:11'),(8,'Thurman','Labadie','hegmann.jalyn@example.com','1987-08-05 11:33:49','1972-05-07 08:32:20'),(9,'Jeanie','Bailey','lora.abshire@example.com','1980-06-01 21:12:34','2016-08-31 03:42:16'),(10,'Trinity','Koepp','kuphal.arely@example.com','1973-01-07 16:40:21','1977-02-09 18:20:59'),(11,'Dedrick','Beatty','mtillman@example.net','1987-06-19 04:14:39','2021-11-28 02:11:10'),(12,'Nina','Murphy','xkoelpin@example.net','1993-11-06 12:46:05','2006-03-04 20:57:26'),(13,'Mckenzie','Schinner','parker.cleo@example.org','1978-05-31 00:20:12','1996-12-30 23:52:12'),(14,'Arlo','Kiehn','cartwright.henry@example.org','1987-07-04 18:25:53','2007-09-21 08:07:19'),(15,'Keven','Koss','zcrooks@example.com','2011-12-31 22:17:29','2010-02-03 19:42:35'),(16,'Dannie','Bartoletti','ullrich.roscoe@example.org','1974-07-01 10:22:55','1971-07-30 00:16:25'),(17,'Isabella','Cronin','mrosenbaum@example.com','2006-01-24 15:21:59','1998-09-15 10:17:24'),(18,'Winnifred','Volkman','o\'kon.tavares@example.org','2015-01-28 05:08:35','1991-10-21 02:00:15'),(19,'Neil','Ziemann','dortha71@example.org','2003-07-29 15:32:26','2019-05-27 07:54:53'),(20,'Tod','Mills','kraig43@example.net','1993-12-16 14:41:28','1979-06-18 16:08:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Sheila','Hansen','ruth56@example.net','833.458.7753x7435','2003-12-13 03:46:50','1985-12-30 00:09:50'),(2,'Reyes','Waelchi','dewitt.reinger@example.com','1-844-776-4863x8516','2011-10-07 01:22:38','1978-08-26 20:48:20'),(3,'Howard','Konopelski','xbailey@example.com','041-004-1064x4556','2009-10-05 22:37:03','1988-01-16 23:57:54'),(4,'Johan','Simonis','wstiedemann@example.net','+29(6)6615139767','2000-08-30 04:40:36','2001-05-10 08:18:05'),(5,'Lera','Wolff','hackett.isai@example.com','08779948958','1979-07-19 17:08:53','2004-04-19 12:37:47'),(6,'Joanne','Haley','bartell.dave@example.com','349.231.0666x019','1976-05-07 10:14:53','2007-09-03 01:16:21'),(7,'Jan','Hauck','damaris.hagenes@example.net','113.617.9018x08982','1973-04-24 13:20:33','1996-08-13 20:10:28'),(8,'Aylin','O\'Hara','tswift@example.com','219.383.2860','2010-10-14 19:53:51','1970-01-29 15:14:31'),(9,'Devin','Kunde','philip.raynor@example.com','560.902.3789','1971-06-05 11:36:26','1998-08-26 07:44:09'),(10,'Kristina','Effertz','ptillman@example.com','+28(6)5641192338','1983-02-05 15:48:49','1986-10-28 15:16:35'),(11,'Evie','Kunze','loma61@example.com','(459)079-8736','2002-06-06 05:45:27','1970-05-12 21:29:01'),(12,'Brycen','Maggio','mhuel@example.net','264.138.1928','1972-08-23 15:36:43','1979-10-12 10:55:14'),(13,'Evalyn','Morissette','elvie19@example.net','325.338.9157','1991-11-28 20:13:52','1974-09-14 17:09:43'),(14,'Cierra','Greenfelder','claire78@example.net','02915136150','1984-04-24 06:03:28','1970-11-08 04:41:28'),(15,'Clarabelle','Brekke','schuyler.hane@example.com','761-149-2607x87946','2013-02-01 11:38:56','1987-08-04 15:12:56'),(16,'Abner','Huel','jayda42@example.com','1-410-977-4430','1990-04-05 15:39:39','2016-10-01 04:52:41'),(17,'Jerrod','Bailey','wdubuque@example.net','+05(6)7928547395','1982-05-20 02:53:16','1981-12-14 04:24:51'),(18,'Margie','Schulist','angeline08@example.net','04831398674','1984-10-12 05:34:38','2007-12-07 23:51:57'),(19,'Dax','Mueller','ferry.clinton@example.org','(964)055-5347','1982-11-11 23:28:02','2016-11-13 18:36:16'),(20,'Angelo','Durgan','caitlyn.boyer@example.com','386-544-6746','1994-04-05 19:32:31','2018-12-01 12:06:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (5,'autem'),(17,'blanditiis'),(6,'corrupti'),(3,'distinctio'),(16,'dolorem'),(19,'fuga'),(14,'in'),(15,'inventore'),(8,'laudantium'),(18,'magnam'),(20,'mollitia'),(2,'non'),(9,'possimus'),(13,'quas'),(1,'quia'),(10,'quibusdam'),(4,'quis'),(7,'quo'),(12,'reiciendis'),(11,'ut');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,'vitae',95781094,NULL,'2020-02-03 10:20:00','2017-12-03 02:12:38'),(2,2,'quo',2150,NULL,'2020-04-02 18:40:41','1992-11-24 15:04:20'),(3,3,'ipsa',9,NULL,'1974-11-23 06:36:25','1980-08-21 03:14:54'),(4,4,'impedit',0,NULL,'1985-09-08 09:21:51','1995-08-20 00:14:55'),(5,5,'in',250279360,NULL,'2006-02-05 21:49:01','1993-03-31 11:43:00'),(6,6,'modi',97337,NULL,'2016-12-25 18:49:37','2000-10-10 02:07:22'),(7,7,'vero',7,NULL,'1971-08-08 17:34:03','2020-08-13 08:13:07'),(8,8,'dolor',0,NULL,'2021-03-04 16:31:35','1972-02-20 18:00:10'),(9,9,'et',2217,NULL,'2019-12-31 00:04:39','1979-03-20 12:41:08'),(10,10,'ea',54484,NULL,'2004-05-07 10:09:55','1989-04-30 08:12:26'),(11,11,'corrupti',8,NULL,'2008-02-11 14:45:50','2014-02-08 06:21:03'),(12,12,'aperiam',0,NULL,'2019-10-16 14:01:47','2012-11-20 22:30:13'),(13,13,'quaerat',7,NULL,'2018-10-03 16:26:07','1994-11-20 19:07:18'),(14,14,'officiis',85898,NULL,'1994-02-03 07:14:12','1973-10-07 06:31:46'),(15,15,'nostrum',513395664,NULL,'1980-10-14 16:58:38','2005-05-04 08:27:42'),(16,16,'eveniet',51552623,NULL,'1975-07-20 01:44:41','2009-05-17 21:39:57'),(17,17,'consequuntur',9,NULL,'1998-01-04 23:14:43','1991-03-09 23:07:14'),(18,18,'quis',0,NULL,'1977-12-09 06:07:21','1983-10-12 21:47:36'),(19,19,'vitae',79866554,NULL,'1999-03-08 12:14:06','1973-03-23 11:47:43'),(20,20,'libero',97484,NULL,'2003-02-28 06:54:31','1993-09-01 08:00:54');
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
INSERT INTO `messages` VALUES (1,1,'Quae dolore corporis deleniti. Deleniti enim saepe laborum voluptatem quia omnis velit. Repudiandae repudiandae quaerat vel voluptates sed. Ut dolorem delectus impedit minus vel quia beatae.',NULL,NULL,'1999-12-02 00:47:23'),(2,2,'Nostrum perspiciatis iusto tenetur cum magni tenetur totam. Quo facilis beatae ratione explicabo. Aspernatur at ut qui consequatur molestiae reiciendis. Ex reiciendis aliquid est ad.',NULL,NULL,'1982-10-03 20:11:34'),(3,3,'Nihil amet alias at corporis maiores qui. Aut ipsum ut pariatur amet mollitia quaerat. Dolor molestias quis placeat delectus. Harum tempora rem doloribus velit optio.',NULL,NULL,'2010-10-25 23:27:17'),(4,4,'Quasi deserunt repellendus sit aut. Eius autem ducimus id quia et. Sed ipsum laboriosam officiis nihil.',NULL,NULL,'2012-05-22 18:51:36'),(5,5,'Velit eligendi porro rem rem. Totam ut pariatur vel et et. Quia neque quisquam nesciunt et accusantium. Voluptatem ducimus itaque enim harum eos quos blanditiis accusantium.',NULL,NULL,'1971-11-21 12:14:32'),(6,6,'Ullam molestiae dolores accusantium molestiae fugiat. Nesciunt ut rerum reprehenderit sunt odit dolorem. Eum corporis nam natus vitae. Fuga modi eos ducimus libero sit cumque in et. Sit hic maxime autem rem ut.',NULL,NULL,'1999-08-13 00:26:50'),(7,7,'Hic occaecati soluta quas officiis. Nam iusto eaque molestiae culpa. Voluptas nobis ad consectetur maiores quia enim.',NULL,NULL,'1993-09-18 03:57:33'),(8,8,'Et dolores alias non voluptatum tempore. Ratione vel minima fugit totam delectus omnis. In tempore qui dolor non vel nisi excepturi.',NULL,NULL,'1979-04-16 22:34:19'),(9,9,'Fuga velit delectus accusamus sint autem. Quidem optio laborum molestias non voluptate.',NULL,NULL,'1990-12-24 13:09:42'),(10,10,'Suscipit est vitae sit exercitationem eius dolore. Exercitationem eligendi tempora est omnis. Sed et est quia. Tempore eius laudantium enim voluptate id quae.',NULL,NULL,'1974-12-01 03:19:34'),(11,11,'Et velit cum reprehenderit est. Quis et error nihil neque aperiam. Illo sit dicta et omnis distinctio. Nam doloribus et laborum autem aut sit dolor. Id officia qui pariatur ducimus voluptas vitae omnis.',NULL,NULL,'2014-04-29 07:47:27'),(12,12,'Ut dolorem consectetur tenetur nam. Est non corrupti aperiam expedita cumque dolor. Perspiciatis accusantium nobis ut saepe et.',NULL,NULL,'1996-06-17 13:48:20'),(13,13,'Consequatur ea cupiditate dolore nostrum aspernatur nam soluta. Vero occaecati voluptates fugiat totam dicta ea consequuntur. Non explicabo qui odit error.',NULL,NULL,'2018-07-17 02:37:01'),(14,14,'Et sequi et natus illum sapiente quasi. Rerum dolorem qui vero in illum eos nulla. Ut inventore deleniti modi repellat. Aspernatur fuga quia facilis sequi et doloribus qui. Provident at est at corporis.',NULL,NULL,'2011-10-10 16:04:27'),(15,15,'Voluptatem similique possimus quo possimus. Iusto quis autem beatae tempore. Et rerum qui error harum aperiam eaque quaerat. Omnis est autem eos consectetur.',NULL,NULL,'2008-11-20 14:57:36'),(16,16,'Expedita quasi cumque ad deserunt modi error voluptas quis. Voluptate ut fugiat molestiae incidunt dolores tempora. Ipsam aut tenetur quia repudiandae sed.',NULL,NULL,'1986-08-25 22:53:20'),(17,17,'Dolorem quod culpa fuga nihil. Quod totam enim non ut omnis ipsam eveniet. Quos cumque cupiditate debitis animi aut distinctio odio.',NULL,NULL,'1981-10-21 16:44:45'),(18,18,'Eaque dolorum quod libero omnis. Nulla omnis praesentium voluptate qui. Quia consectetur excepturi repudiandae placeat repellendus ipsam.',NULL,NULL,'1973-12-02 14:05:53'),(19,19,'Quibusdam at est dolore reprehenderit. Quam fugiat suscipit ex ducimus. Accusamus nobis ad at.',NULL,NULL,'2020-11-22 20:11:55'),(20,20,'Aspernatur mollitia quam qui quo et quibusdam. Enim dolorem natus sit quia iste. Doloribus quo facere autem. Est fugiat veritatis velit. Aut beatae assumenda et voluptatem est corporis.',NULL,NULL,'2021-10-09 05:53:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,NULL,352785,NULL,'1980-07-13 03:13:50','1995-10-05 23:46:34'),(2,2,2,NULL,14,NULL,'2020-07-12 21:20:43','1989-07-26 11:28:24'),(3,3,3,NULL,27867,NULL,'2014-05-12 05:55:15','1999-02-02 02:52:07'),(4,4,4,NULL,521,NULL,'2001-08-30 20:37:31','1975-05-21 18:13:25'),(5,5,5,NULL,3588527,NULL,'1994-04-03 15:45:14','1980-10-05 01:05:11'),(6,6,6,NULL,0,NULL,'1985-07-14 22:17:19','1994-01-13 10:30:56'),(7,7,7,NULL,0,NULL,'2008-06-14 01:30:47','2014-03-30 02:44:14'),(8,8,8,NULL,0,NULL,'1989-01-18 23:10:14','1992-01-12 04:24:36'),(9,9,9,NULL,88568,NULL,'2019-09-03 09:53:22','2017-01-26 20:10:10'),(10,10,10,NULL,4732652,NULL,'2017-09-22 21:16:40','1984-03-26 23:24:38'),(11,11,11,NULL,232251,NULL,'2019-08-23 22:47:25','1977-05-05 18:18:14'),(12,12,12,NULL,474125870,NULL,'2020-02-24 22:39:13','1982-06-04 09:56:51'),(13,13,13,NULL,3578592,NULL,'2013-12-30 21:37:46','2011-02-27 14:05:39'),(14,14,14,NULL,0,NULL,'2014-11-23 08:47:31','1988-10-06 02:02:27'),(15,15,15,NULL,0,NULL,'1973-03-26 15:58:25','2000-01-09 21:26:40'),(16,16,16,NULL,1466,NULL,'1987-01-05 10:12:30','1997-05-07 14:45:44'),(17,17,17,NULL,243621521,NULL,'1988-10-26 04:28:32','1972-11-14 01:38:49'),(18,18,18,NULL,27874,NULL,'2009-03-07 17:09:13','1997-04-03 06:21:32'),(19,19,19,NULL,1770842,NULL,'2018-04-23 21:32:42','2005-11-13 07:37:57'),(20,20,20,NULL,62829317,NULL,'2015-04-17 02:08:15','1982-06-23 01:27:08');
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
  `date_of_manufacture` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'quod',44622,'1999-01-11','1997-05-18','Quidem minima architecto neque vero error quia dolorem. Id et eaque voluptatem possimus et. Perspiciatis sunt a commodi labore delectus. Consequatur autem doloremque ut sapiente veritatis est.',1,1,'1994-06-16 13:14:36','2018-10-05 17:24:31'),(2,'et',3826851,'2015-01-31','2014-12-20','Fugiat enim voluptatem sunt aut magnam temporibus nam. Et quae rerum voluptatem labore numquam explicabo amet. Eos cumque et quod sint velit voluptatum placeat nostrum. Aut consequatur suscipit voluptas aliquam.',2,2,'1991-02-01 19:44:39','1992-09-01 06:43:12'),(3,'labore',5331052,'1998-04-27','2005-09-09','Asperiores autem ipsa voluptatem voluptatem at. Repudiandae aut et omnis voluptatibus. Incidunt voluptatem quibusdam esse omnis ut.',3,3,'1996-05-05 17:08:56','2010-12-23 23:24:15'),(4,'quaerat',34283,'1989-03-19','2014-03-21','Eaque harum recusandae exercitationem ratione quasi rerum quis. Nobis voluptatum rem et perferendis sit assumenda. Vero veritatis voluptas repellat debitis iure et nobis.',4,4,'1982-12-18 01:54:08','1991-05-28 18:07:47'),(5,'voluptatem',84467,'1996-11-19','1981-11-22','Voluptas sed tenetur blanditiis earum. Sequi praesentium doloribus possimus non minima voluptatum quidem quos. Reprehenderit molestiae aliquam voluptas rem esse similique. Eos esse ex nam.',5,5,'1975-04-12 06:37:53','1975-10-13 06:14:58'),(6,'repellat',0,'2011-09-01','1991-07-02','Qui qui incidunt laborum autem doloremque nisi. Voluptatem eveniet provident sed omnis. Temporibus vel fugiat consequatur sapiente asperiores.',6,6,'2022-02-13 18:54:20','1993-04-21 06:09:26'),(7,'ea',22201,'2007-05-08','1988-05-12','Dolorum omnis quo perferendis voluptates non perspiciatis natus. Autem aut officiis excepturi et. Et omnis velit sunt blanditiis.',7,7,'2020-10-07 23:59:05','2001-07-08 13:48:39'),(8,'iure',332,'1992-10-29','2007-01-18','Nisi eum consequuntur omnis qui inventore. Et maiores dolorum perferendis.',8,8,'2010-03-08 09:44:25','1979-01-08 11:43:36'),(9,'ducimus',211,'2007-11-12','1975-11-17','Aperiam et adipisci beatae est animi labore ipsam culpa. Autem voluptate cumque et nihil. Nihil iste enim fuga in vel sed. Reprehenderit eos qui doloribus qui aspernatur ullam quod. Explicabo qui ut omnis dignissimos accusantium vel.',9,9,'1982-08-12 23:19:08','2010-05-25 10:04:42'),(10,'rerum',0,'1984-02-16','1984-06-04','Animi blanditiis porro beatae minus sed labore nam aspernatur. Dolorum quo sapiente est consequuntur.',10,10,'2005-01-30 22:40:55','2013-12-20 21:21:14'),(11,'enim',389458,'1998-07-29','1986-03-02','Sed sed placeat esse vel. Aliquam dolorem odio aspernatur deserunt.',11,11,'1970-02-11 01:52:29','1979-01-08 17:34:47'),(12,'eveniet',67,'1970-10-22','1989-08-04','Nulla cumque possimus pariatur incidunt. Aut aliquam nemo est voluptatibus. Voluptates laboriosam est officia. Reiciendis odio ipsa deleniti est qui dolores.',12,12,'1970-07-19 15:42:23','1977-12-20 09:17:39'),(13,'sit',986786,'2006-05-25','1989-06-19','Exercitationem maiores minus iusto. Aut enim reiciendis quia magnam illo quas. Non odit tenetur at libero earum facere quo. Occaecati harum cum accusantium in eius quia dolor placeat.',13,13,'1976-07-31 08:31:03','2010-09-14 07:39:17'),(14,'nulla',2865,'2001-06-22','2003-09-14','Nisi assumenda cupiditate sit dolores asperiores ea corporis. Autem consequatur qui fugit et. Vitae voluptas voluptas necessitatibus illo in explicabo et. Nam consequatur et rerum inventore rerum.',14,14,'1974-05-13 23:38:14','2004-02-26 16:26:27'),(15,'aliquid',2,'2014-03-22','2015-02-05','Voluptatem voluptatem harum velit nam corporis id. Expedita expedita quisquam consequatur eius omnis assumenda rem. Similique voluptas voluptatum quos velit id aut. Sint eius totam est officia beatae et et.',15,15,'2000-05-13 11:08:05','2011-08-17 01:48:59'),(16,'incidunt',805301,'1970-04-05','2011-08-06','Minus repellendus totam commodi earum quas. Et sed earum provident asperiores aut quos esse. Numquam quia ut qui rerum id a eligendi.',16,16,'2010-03-09 19:32:38','2010-03-30 09:14:57'),(17,'voluptate',32400,'1977-04-19','1974-02-23','Facilis culpa ad qui vel. Numquam repudiandae ea eum veniam. Debitis alias impedit libero.',17,17,'1978-05-19 11:04:30','1976-11-13 06:54:33'),(18,'minus',0,'2010-02-27','1971-04-23','In est non id minima quod iusto ut maxime. Qui dolorem est labore iusto.',18,18,'1985-11-27 14:50:38','1992-12-06 07:50:34'),(19,'qui',3018,'1996-12-28','2022-02-11','Dolor officia facere voluptas laborum ut incidunt. Ut ex corporis tempore atque sint id. Quis minus fuga odio assumenda quaerat ut quia.',19,19,'2004-09-13 13:09:52','1973-12-05 13:30:10'),(20,'corporis',320,'2019-05-25','1975-11-02','Est voluptatum libero ea. Eos eveniet perferendis eaque molestiae. Ut quos et incidunt rem. Dolores ad illum aut accusamus ea velit. Ipsum sed autem doloribus et officia sed.',20,20,'2006-10-14 22:40:22','2016-09-24 19:29:38');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_market`
--

LOCK TABLES `products_market` WRITE;
/*!40000 ALTER TABLE `products_market` DISABLE KEYS */;
INSERT INTO `products_market` VALUES (1,1,1,28),(2,2,2,0),(3,3,3,45755),(4,4,4,36462717),(5,5,5,53),(6,6,6,3),(7,7,7,0),(8,8,8,574),(9,9,9,1887),(10,10,10,0),(11,11,11,6493683),(12,12,12,154),(13,13,13,0),(14,14,14,1),(15,15,15,66770),(16,16,16,506919),(17,17,17,1051),(18,18,18,0),(19,19,19,51034265),(20,20,20,0);
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
INSERT INTO `profiles` VALUES (1,'','2005-03-28','68221 Alf Squares Suite 513\nNew Johanna, IL 41463',2147483647),(2,'','2007-10-13','6164 Jaron Row\nEast Allisonhaven, NH 07943',2147483647),(3,'','2000-06-30','27951 Bernier Forest Apt. 067\nSouth Gunnerchester, AK 92395',2147483647),(4,'','1980-10-09','45676 Layne Fields Suite 695\nWest Major, ME 06351',2147483647),(5,'','2014-09-05','23035 Dietrich Junction Suite 457\nNobleborough, CA 35325-2020',2147483647),(6,'','2021-06-05','010 Wilmer Avenue\nKurtisfurt, OH 39485',2147483647),(7,'','2005-03-19','835 Pat Bypass Apt. 555\nBernierside, KS 43118-4941',2147483647),(8,'','1998-07-16','5673 Werner Heights\nTreutelstad, NY 09160',2147483647),(9,'','1977-10-09','59071 Lebsack Road Apt. 639\nSouth Howell, TX 81400',2147483647),(10,'','2019-08-05','057 Lemke Mountain\nProsaccoside, TX 03314',2147483647),(11,'','2016-02-28','0361 Koelpin Divide Apt. 562\nElmoside, MO 04102',2147483647),(12,'','2006-05-29','360 Farrell Mountains Suite 632\nPort Margieville, SD 40238-9017',2147483647),(13,'','2021-09-04','194 Shanny Mountains Apt. 078\nCandidafort, ME 91792',2147483647),(14,'','2017-06-15','2591 Greenholt Courts Apt. 696\nNorth Jaydonchester, VA 04364-9660',2147483647),(15,'','1982-01-07','32669 Emard Fords Suite 597\nRobynmouth, MT 55265',2147483647),(16,'','1991-08-22','2948 Kayley Glen\nDavisberg, LA 42319',2147483647),(17,'','1972-12-11','70183 Mortimer Camp Suite 646\nEast Maymouth, AK 60779-2751',2147483647),(18,'','1980-05-26','659 Harris Mount\nVonRuedenbury, CO 19190',2147483647),(19,'','1996-01-07','022 Cindy Spur\nWest Bret, OR 50757',2147483647),(20,'','2013-11-11','2322 Brycen Corners\nHauckbury, LA 10954',2147483647);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,'Veritatis omnis occaecati dolor omnis nobis possimus atque. Odit perspiciatis similique quo nemo doloribus. Veniam odio commodi facilis laudantium. Ut dicta ut exercitationem autem.',NULL,'1998-08-09 10:29:55','1999-02-19 23:06:28'),(2,2,2,'Eos deserunt quia sed. Alias rerum aut doloribus et veritatis minima. Vel et quisquam iste aut sapiente deserunt quas. Sed cumque aut molestiae non quos dolore.',NULL,'1980-04-25 04:41:23','1981-11-05 14:08:07'),(3,3,3,'Neque necessitatibus nulla et quaerat temporibus neque. Rerum et consectetur nihil porro molestias temporibus. Expedita ratione ea sed illum.',NULL,'2019-05-23 23:41:22','1988-01-18 14:27:52'),(4,4,4,'Aspernatur dicta nam quasi optio aliquid blanditiis ratione. Nesciunt repellendus modi asperiores. Voluptas quo delectus doloremque iusto aut id dignissimos magni. Minus nihil dolore architecto quibusdam incidunt molestiae.',NULL,'1984-07-07 20:51:54','1976-01-19 01:01:47'),(5,5,5,'Atque neque ut reiciendis in sunt hic est. Non sit minus aperiam ea sed tempore. Placeat vel vel sed at itaque optio. Provident illum est voluptas eos voluptas.',NULL,'2017-07-07 17:03:29','1994-03-22 07:13:02'),(6,6,6,'In deleniti aut laudantium voluptatem placeat nihil a. Accusantium ut facilis earum ut sunt.',NULL,'1973-02-25 15:03:30','2005-10-01 17:09:05'),(7,7,7,'Laudantium quis aut consequatur nostrum. Eius qui quod consequuntur fugit dolores doloribus.',NULL,'2009-08-28 05:08:39','1983-11-08 10:18:45'),(8,8,8,'Similique aut quis non voluptatem. Et molestias molestiae expedita voluptate est autem.',NULL,'2002-12-17 07:00:35','1983-01-09 21:48:13'),(9,9,9,'Cum autem aut tempora similique recusandae. Ipsa eum rerum enim maxime nemo.',NULL,'2021-02-26 04:46:22','2019-12-27 18:57:48'),(10,10,10,'Tempora animi dolores ut et natus. Commodi aut esse minus aut et quis libero. Adipisci reprehenderit omnis laboriosam at impedit quidem. Ratione nisi sunt corrupti dignissimos.',NULL,'1984-02-27 11:52:02','1987-12-29 08:13:45'),(11,11,11,'Doloribus non cupiditate corrupti dolorem excepturi aperiam deleniti. Deserunt rerum fuga qui enim perferendis. Reiciendis ea dicta expedita accusantium vero est dolorem iusto.',NULL,'1981-08-11 17:42:20','1999-08-03 20:29:53'),(12,12,12,'Consequatur quis aperiam corporis ut voluptas sapiente. Unde ut quo soluta aut. Ut unde esse error et. Repellat ea vero quae consequuntur similique sit.',NULL,'1993-10-16 06:43:27','2006-04-17 19:05:26'),(13,13,13,'Quod voluptates nam aperiam error. Eaque repudiandae aut et dicta vel consectetur. Maxime ut ratione accusantium odit quam.',NULL,'2014-05-07 23:35:00','2013-04-20 08:48:11'),(14,14,14,'Et ullam omnis et sit alias. Aut ut dolorum deleniti saepe voluptatum voluptate id. Et sit atque fugit odio praesentium quaerat vel ea. Eveniet ab fuga voluptas molestiae omnis fugiat culpa. Non explicabo sed nihil dicta labore molestiae.',NULL,'2003-04-11 00:40:44','2018-04-20 20:53:19'),(15,15,15,'Aut velit reiciendis ut et placeat. Et eveniet error unde natus quibusdam sit quae. Perferendis voluptas est ut a non animi eum. Laudantium harum alias id cupiditate vel.',NULL,'1993-11-03 22:50:52','1987-03-11 23:58:53'),(16,16,16,'Doloremque similique voluptatem culpa amet et nihil. Sint vero in quo quasi voluptas aliquid. Saepe cumque voluptatem velit sit. Porro ipsa sapiente delectus vel optio.',NULL,'1994-02-13 17:58:42','1996-08-26 10:17:36'),(17,17,17,'Et itaque fuga molestiae unde fugiat. Dolorem necessitatibus earum dolor iusto. Consequuntur architecto quidem aut nam sint rerum et.',NULL,'1996-11-14 14:21:42','1992-07-10 15:48:01'),(18,18,18,'Rerum aperiam qui rerum iusto. Ratione laboriosam dolores nostrum quas ipsa est. Excepturi eos dolores in soluta voluptates sapiente sit.',NULL,'2001-08-17 22:31:30','1995-06-01 21:15:09'),(19,19,19,'Nihil et neque molestiae dolorem. Est dolores inventore eos. Itaque consequatur nulla ad hic magni. Quia aperiam eveniet quibusdam at.',NULL,'2000-05-25 19:21:22','2011-09-18 03:44:24'),(20,20,20,'Possimus quia ut minus eligendi. Beatae deserunt voluptas laborum maxime qui vel consequatur. Dolore non dolor ipsam qui. Sequi est illo totam rerum.',NULL,'2021-11-07 07:34:55','2017-05-13 04:06:52');
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

-- Dump completed on 2022-06-10  6:45:40
