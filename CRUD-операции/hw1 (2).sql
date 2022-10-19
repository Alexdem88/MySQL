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
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_user_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `communities_name_idx` (`name`),
  KEY `admin_user_id` (`admin_user_id`),
  CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`admin_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,'molestiae',1),(2,'autem',2),(3,'odit',3),(4,'animi',4),(5,'cupiditate',5),(6,'dolor',6),(7,'nihil',7),(8,'numquam',8),(9,'recusandae',9),(10,'aut',10),(11,'a',11),(12,'dignissimos',12),(13,'necessitatibus',13),(14,'quis',14),(15,'laudantium',15),(16,'itaque',1),(17,'suscipit',2),(18,'et',3),(19,'amet',4),(20,'iste',5);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (1,1,'requested','1990-08-24 09:43:39','2007-04-22 13:52:01'),(2,2,'approved','1988-09-23 21:26:54','1980-05-25 23:18:33'),(3,3,'declined','2018-09-03 17:00:21','1987-12-14 14:08:27'),(4,4,'declined','2008-08-21 04:04:52','2002-12-17 17:38:09'),(5,5,'unfriended','1997-03-08 10:59:29','2016-02-07 09:46:02'),(6,6,'declined','1991-08-09 02:34:38','1978-05-29 15:20:35'),(7,7,'declined','1992-12-28 15:01:51','2014-07-30 16:43:14'),(8,8,'unfriended','2005-09-12 04:04:13','1990-05-26 20:54:31'),(9,9,'unfriended','1972-10-04 00:15:57','2001-05-26 04:43:14'),(10,10,'approved','2007-04-09 09:52:45','1983-03-17 06:19:31'),(11,11,'declined','1975-09-10 07:35:01','2004-11-17 21:21:51'),(12,12,'requested','1974-09-08 05:49:13','2011-10-17 07:54:02'),(13,13,'approved','2017-07-15 06:10:22','1989-01-13 05:41:10'),(14,14,'requested','2011-10-29 05:08:51','1987-07-03 12:57:47'),(15,15,'unfriended','2020-03-31 16:26:27','2008-08-04 16:40:48');
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,1,'1996-08-25 14:18:06'),(2,2,2,'1981-01-12 09:23:37'),(3,3,3,'2005-12-24 03:39:02'),(4,4,4,'2016-12-06 20:34:00'),(5,5,5,'1973-05-24 04:13:19'),(6,6,6,'2018-03-21 15:24:20'),(7,7,7,'1991-06-02 03:43:30'),(8,8,8,'1973-12-11 23:12:35'),(9,9,9,'2015-09-22 16:26:41'),(10,10,10,'2010-12-22 18:54:52'),(11,11,11,'2014-05-02 14:14:42'),(12,12,12,'1992-01-09 15:03:32'),(13,13,13,'1995-11-17 04:37:23'),(14,14,14,'1984-08-18 04:53:15'),(15,15,15,'2011-07-03 15:14:40');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (21,1,1,'Itaque vero magni enim recusandae repellat sit dolorum. Aliquid eius aspernatur illo explicabo. Quos mollitia et libero aut voluptatum. Molestiae sed quos esse ut repudiandae.','necessitatibus',19,NULL,'1985-04-17 10:51:24','1978-02-19 05:12:47'),(22,2,2,'Sint fuga maiores commodi. Qui consequatur nobis cum qui consequatur aperiam et deserunt. Tempore accusantium nesciunt aut facere itaque.','illum',98813,NULL,'2011-07-30 11:53:23','1998-05-02 17:51:48'),(23,3,3,'Eum asperiores eos ut iusto alias. Velit est explicabo ea quibusdam rem enim. Minus ut dolor rerum omnis quod alias nihil. Ipsum quidem quo aut assumenda nobis dolorem.','fugiat',5060,NULL,'2006-04-16 04:44:39','2002-10-16 13:48:23'),(24,4,4,'Aliquid repellat molestiae aut distinctio delectus cum. Quo voluptatem ad eos possimus qui doloremque. Tempora asperiores voluptate recusandae maiores ipsa sint.','temporibus',83808,NULL,'2003-11-08 11:08:25','1989-08-11 11:50:29'),(36,1,1,'Doloribus libero explicabo aut veritatis esse. Itaque hic eaque provident labore id voluptatum. Saepe magni quam cum deleniti exercitationem.','sequi',7,NULL,'2016-02-29 09:59:45','1982-01-01 11:33:08'),(37,2,2,'Magnam ea unde esse. Et optio qui sint praesentium consequatur inventore. Eaque itaque incidunt corporis nobis non hic quis.','cum',75,NULL,'1974-05-31 08:30:36','2008-05-02 17:13:39'),(38,3,3,'Nesciunt molestias velit provident consequatur ullam quidem nisi. Aut cupiditate blanditiis at eos sunt eos voluptatibus corrupti. Eum voluptas ut atque et.','mollitia',59,NULL,'1989-08-16 15:25:12','1975-04-16 17:57:08'),(39,4,4,'Rerum eveniet numquam iste temporibus ex est. Temporibus vitae voluptatibus ratione sed dolor est. Laudantium quis doloremque consequatur aut rerum. Voluptatem eos delectus provident.','voluptatibus',0,NULL,'2003-12-24 22:23:25','1991-06-24 11:44:32');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_types`
--

DROP TABLE IF EXISTS `media_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_types`
--

LOCK TABLES `media_types` WRITE;
/*!40000 ALTER TABLE `media_types` DISABLE KEYS */;
INSERT INTO `media_types` VALUES (1,'aut','2014-09-26 10:19:27','1991-10-09 14:03:49'),(2,'nesciunt','1983-01-22 16:11:37','1984-05-30 06:44:35'),(3,'nobis','1987-12-20 09:20:00','1991-08-24 21:46:53'),(4,'aut','2006-11-22 17:06:19','1980-10-22 12:57:09');
/*!40000 ALTER TABLE `media_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,1,1,'Blanditiis saepe harum illo fuga temporibus. Autem rerum eius ipsa sapiente dolor.','1973-02-25 01:20:27'),(2,2,2,'Consequatur velit dolor qui ea error. Omnis harum illo cumque fugiat cum. Labore dolores quis ab.','2021-02-26 00:05:47'),(3,3,3,'Earum impedit id laudantium perferendis et. Iure consequatur numquam voluptatem quia labore commodi atque. Et voluptatem qui rem deserunt perferendis.','1993-06-11 21:40:35'),(4,4,4,'Et cum voluptatem praesentium vel in aut. Temporibus rerum quasi dolores eaque maxime ea et. Assumenda doloremque quaerat consequatur similique eos. Quia deserunt porro accusantium doloremque iusto.','1995-10-05 19:02:00'),(5,5,5,'Voluptas fugiat est omnis tempora dolores quis deleniti. Enim ipsam est commodi animi. Est repudiandae vitae mollitia. Cum dolorum expedita id cumque et.','1970-08-26 15:25:20'),(6,6,6,'Quas mollitia rerum aut cum aut. Molestiae cumque et hic fugiat. Alias ab ea est molestiae vero eum quae voluptas.','2016-07-26 08:23:30'),(7,7,7,'Beatae non dicta consequatur rem est. Libero ut possimus sunt voluptatem. Culpa laborum mollitia ducimus totam dicta. Aut dolor fuga dolores possimus quia.','2006-11-29 19:20:55'),(8,8,8,'Dolor dolor ea qui inventore magni nesciunt. Tenetur velit non placeat. Repellat repellendus amet dolor.','1971-11-27 23:06:19'),(9,9,9,'A soluta quia dolorem aut sunt. Dolore explicabo et error odio dolorem. Quaerat debitis numquam temporibus quas id provident doloremque.','1979-05-30 21:40:02'),(10,10,10,'Minima eum iste velit quam et. Est nisi velit quo unde repellendus atque voluptas. Quam doloremque voluptas quos quaerat.','1990-06-28 16:12:01'),(11,11,11,'Tenetur voluptate sunt labore ea rerum itaque. Deleniti aliquam voluptatibus necessitatibus. Deserunt aspernatur nostrum quod non eaque id. Nostrum dolores tenetur velit natus.','1994-02-14 15:19:12'),(12,12,12,'Fugiat tenetur cupiditate iure ipsa. Accusamus consequatur vel id culpa perferendis laudantium eius cupiditate. Quidem et repellendus praesentium rerum in beatae assumenda.','2009-05-04 18:31:41'),(13,13,13,'Id est deserunt et in et. Consequatur excepturi occaecati totam et aperiam aut sit. Velit odit eaque quidem eligendi vel.','2001-06-07 16:14:54'),(14,14,14,'Sunt sapiente est ea sed provident. Commodi asperiores perspiciatis et repellendus deleniti mollitia ut quisquam. Sunt eligendi error consequatur ex incidunt enim voluptates quia. Vel enim et nesciunt. Voluptas officia consequatur ipsa et a ipsum animi.','1979-06-02 23:10:21'),(15,15,15,'Deserunt natus blanditiis odio eum est quas. Impedit vel voluptatum eaque dignissimos.','1981-06-12 23:19:44'),(16,1,1,'Dolorem quis quos esse ducimus sint doloribus. Possimus id mollitia vero. Doloribus harum sint quae. Quia optio et adipisci quod atque fugit.','2013-10-10 21:18:23'),(17,2,2,'Reiciendis repellat ex nobis eius consequatur. Quam in nihil rerum aut magnam quisquam. Sit aperiam voluptas beatae et.','1995-09-26 01:54:53'),(18,3,3,'Et ea soluta ut. Atque quas unde modi atque. Veniam voluptas sit et provident.','2010-03-02 03:19:55'),(19,4,4,'Quia magni rerum qui. Maxime incidunt dolores accusantium eveniet. Nam eum vel voluptatem ut fugit quo.','2015-05-04 22:51:54'),(20,5,5,'Sapiente modi pariatur voluptatem enim quam odio. Ipsum aut necessitatibus eligendi delectus molestiae. Est quia consectetur veniam dolores a.','1987-12-23 22:36:21');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_albums`
--

DROP TABLE IF EXISTS `photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_albums`
--

LOCK TABLES `photo_albums` WRITE;
/*!40000 ALTER TABLE `photo_albums` DISABLE KEYS */;
INSERT INTO `photo_albums` VALUES (1,'ipsam',1),(2,'hic',2),(3,'temporibus',3),(4,'quibusdam',4),(5,'aperiam',5),(6,'est',6),(7,'reiciendis',7),(8,'quia',8),(9,'inventore',9),(10,'illo',10),(11,'molestias',11),(12,'qui',12),(13,'molestias',13),(14,'inventore',14),(15,'facilis',15);
/*!40000 ALTER TABLE `photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned DEFAULT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`),
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,21),(2,2,22),(3,3,23),(4,4,24),(5,5,36),(6,6,37),(7,7,38),(8,8,39),(9,9,21),(10,10,22),(11,11,23),(12,12,24),(13,13,36),(14,14,37),(15,15,38),(16,1,39),(17,2,21),(18,3,22),(19,4,23),(20,5,24);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,NULL,'1982-04-01',1,'1990-10-22 09:26:04',NULL),(2,NULL,'2005-05-04',2,'1984-03-03 18:28:28',NULL),(3,NULL,'1994-10-12',3,'1975-09-29 06:39:17',NULL),(4,NULL,'1981-10-07',4,'2006-03-22 00:54:13',NULL),(5,NULL,'1986-04-09',5,'1991-04-17 17:18:51',NULL),(6,NULL,'1998-05-09',6,'2002-11-21 20:22:19',NULL),(7,NULL,'2004-03-27',7,'2007-01-20 09:06:11',NULL),(8,NULL,'1979-05-08',8,'2000-03-09 14:35:05',NULL),(9,NULL,'1979-01-28',9,'2021-02-25 03:35:17',NULL),(10,NULL,'1977-09-27',10,'1988-03-11 03:26:31',NULL),(11,NULL,'2020-02-19',11,'1998-10-03 23:45:06',NULL),(12,NULL,'1998-10-01',12,'2011-09-27 15:05:35',NULL),(13,NULL,'1982-10-19',13,'2011-09-04 17:52:15',NULL),(14,NULL,'1982-02-24',14,'2017-04-17 18:16:32',NULL),(15,NULL,'1972-11-18',15,'1997-07-11 16:53:57',NULL);
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамиль',
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='юзеры';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Icie','Monahan','juanita96@example.com','724a94f92a1396c906717423a63f78627191d028',79260008904),(2,'Avis','Wehner','kathryn.willms@example.com','5a373a4aa7d79c7ccda74d599d417130a0cf7698',79260005058),(3,'Kadin','Little','christiansen.jana@example.org','01f419f4b50544a89ecb6bb3a5fbf54c4abc8388',79260009608),(4,'Creola','Metz','joesph90@example.org','4f88f73a39f64f81d55610d3539aa04c4ea62665',79260000198),(5,'Carmen','Hirthe','aubree.gutmann@example.com','7ec9e6ea811f0fb464cc75d058299015a0ad057e',79260002056),(6,'Noemi','Barrows','stroman.celestine@example.org','ffec258d611568f53651acbac6860809313a3bbf',79260003685),(7,'Ethyl','Baumbach','stamm.trevor@example.org','be9c142973f87bc465a6d1a89119b4c104ec7c1d',79260009738),(8,'Rico','Lubowitz','lenora48@example.net','26f21e3af99b9349fe3b1ef6ab9365dcb0880582',79260000721),(9,'Albina','Cole','block.brandt@example.com','77f0158e59479537e684713b83b83e4d2ba43d67',79260009355),(10,'Ruben','Tromp','waino.leannon@example.net','77b1afda1b6f71c38f7dbb072fed477788db4e15',79260002980),(11,'Carolina','Wyman','wade.dickens@example.com','ffafbd870f57bef9bd21ebf96637f1cd820a476c',79260001866),(12,'Spencer','Cruickshank','alessandra.champlin@example.com','51caff0050143ab8ba0baa8eaaa605e692c180cd',79260003088),(13,'Newton','Wunsch','vbailey@example.com','e626455d5838c3a53c71fc15a830e9cdd4b5c442',79260008194),(14,'Ines','Stoltenberg','roob.meagan@example.org','8b642ec66d663de736c0912e8c78c9ee14175379',79260005268),(15,'Chyna','Hartmann','hschumm@example.com','90d87c92305590c5bf34ce5ee681147d2b155707',79260001597);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_communities`
--

DROP TABLE IF EXISTS `users_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_communities` (
  `user_id` bigint(20) unsigned NOT NULL,
  `community_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`community_id`),
  KEY `community_id` (`community_id`),
  CONSTRAINT `users_communities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_communities_ibfk_2` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_communities`
--

LOCK TABLES `users_communities` WRITE;
/*!40000 ALTER TABLE `users_communities` DISABLE KEYS */;
INSERT INTO `users_communities` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `users_communities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14  7:15:51
