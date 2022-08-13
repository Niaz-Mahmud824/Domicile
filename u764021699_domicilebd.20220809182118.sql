-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u764021699_domicilebd
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
-- Table structure for table `addproperties`
--

DROP TABLE IF EXISTS `addproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addproperties` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `rate_per_sft` varchar(255) DEFAULT NULL,
  `garage` int(10) DEFAULT NULL,
  `balcony` int(10) DEFAULT NULL,
  `bedroom` int(10) DEFAULT NULL,
  `bathrooms` int(10) DEFAULT NULL,
  `facing` varchar(255) DEFAULT NULL,
  `available_floor` int(10) DEFAULT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addproperties`
--

/*!40000 ALTER TABLE `addproperties` DISABLE KEYS */;
/*!40000 ALTER TABLE `addproperties` ENABLE KEYS */;

--
-- Table structure for table `blogcategories`
--

DROP TABLE IF EXISTS `blogcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogcategories`
--

/*!40000 ALTER TABLE `blogcategories` DISABLE KEYS */;
INSERT INTO `blogcategories` VALUES (13,'Roof Top Interior','roof-top-interior','2022-06-03 13:38:36','2022-06-03 13:38:36'),(14,'Building  Interior','building-interior','2022-06-03 13:39:04','2022-06-03 13:39:04'),(15,'Commercial Interior','commercial-interior','2022-06-03 13:39:20','2022-06-03 13:39:20'),(16,'Apartment Interior','apartment-interior','2022-06-03 13:39:44','2022-06-03 13:39:44');
/*!40000 ALTER TABLE `blogcategories` ENABLE KEYS */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogcategory_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (49,1,'Living Room Decoration','<p>The living room is where we come to think, to slow down the world for a second.</p>','living-room-decoration','public/upload/blogs/1654246688maxresdefault.jpg','16',1,'2022-06-03 14:58:08','2022-06-03 14:58:13','Kazi Manzur Ahmed','CEO Floorfly Realtor Ltd','public/site_assets/img/kazi-manzur.jpg',1);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

--
-- Table structure for table `client_requests`
--

DROP TABLE IF EXISTS `client_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_requests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(190) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` int(11) NOT NULL,
  `requirement` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_requests`
--

/*!40000 ALTER TABLE `client_requests` DISABLE KEYS */;
INSERT INTO `client_requests` VALUES (4,'Imran Hasan','ih7kania123@gmail.com','Satkania','5',1860936539,NULL,'2020-09-15 01:44:31','2020-09-15 01:44:31'),(5,'Imran Hasan','ih7kania123@gmail.com','Satkania','5',1860936539,NULL,'2020-09-15 01:44:31','2020-09-15 01:44:31');
/*!40000 ALTER TABLE `client_requests` ENABLE KEYS */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,20,'Winbiz Digital',NULL,NULL,'Officer','Admin',NULL,NULL),(2,22,'Winbiz',NULL,NULL,'Executive','Marketing',NULL,NULL),(3,30,'Winbiz',NULL,NULL,'4','3',NULL,NULL),(4,31,'com1',NULL,NULL,'1','2',NULL,NULL),(5,32,'com1',NULL,NULL,'2','2',NULL,NULL),(6,35,'vrthtesrh',NULL,NULL,'2','1',NULL,NULL),(7,36,'com1',NULL,NULL,'2','2',NULL,NULL),(8,38,'advance',NULL,NULL,'1','1',NULL,NULL),(9,51,'com1',NULL,NULL,'2','2',NULL,NULL),(10,52,'com1',NULL,NULL,'1','1',NULL,NULL),(11,53,'com1',NULL,NULL,'3','1',NULL,NULL),(12,54,'Rupayan Housing Estate Limited',NULL,NULL,'1','1',NULL,NULL),(13,55,'com1','2020-09-15','2020-09-22','1','2',NULL,NULL),(14,56,'com1','2020-09-15','2020-09-22','1','2',NULL,NULL),(15,57,'Rupayan group','2018-09-13','2020-05-30','1','1',NULL,NULL),(16,60,'Rosoborn Technologies','2020-09-01','2020-09-01','9','4',NULL,NULL),(17,61,'com1','2020-09-08','2020-09-22','2','2',NULL,NULL),(18,62,'com1','2020-09-08','2020-09-22','2','2',NULL,NULL),(19,63,'com1','2020-09-01','2020-09-30','2','2',NULL,NULL),(20,64,'com1','2020-09-08','2020-09-28','2','1',NULL,NULL),(21,65,'NENEMART LTD','2020-09-02','2020-09-01','9','4',NULL,NULL),(22,66,'com. name','2020-09-23','2020-09-22','2','2',NULL,NULL),(23,67,'abc group','2020-01-01','2020-08-30','10','2',NULL,NULL),(24,68,'abc group','2020-09-07','2020-09-21','2','2',NULL,NULL),(25,69,'NENEMART LTD','2020-09-01','2020-09-01','6','4',NULL,NULL),(26,70,'NENEMART LTD','2020-09-01','2020-09-01','9','4',NULL,NULL),(27,71,'A Company','2019-01-01','2020-09-30','11','2',NULL,NULL),(28,74,'ttt company','2020-09-01','2020-09-30','1','4',NULL,NULL),(29,75,'com1','2020-09-08','2020-09-22','3','2',NULL,NULL),(30,76,'A Company','2018-02-03','2020-09-30','2','2',NULL,NULL),(31,77,'raubsbha','2010-03-03','2020-09-16','3','1',NULL,NULL),(32,84,'A Company Ltd','2020-09-01','2020-09-30','3','2',NULL,NULL),(33,87,'A Company','2020-08-31','2020-09-15','1','2',NULL,NULL),(34,88,'com1','2020-09-08','2020-09-07','2','3',NULL,NULL),(35,89,'A Company','2020-07-15','2020-08-31','1','1',NULL,NULL),(36,90,'Winbiz','2017-01-01','2020-09-02','2','2',NULL,NULL),(37,91,'Winbiz','2020-06-15','2020-09-09','4','3',NULL,NULL),(38,92,'com1','2024-06-11','2020-09-15','1','1',NULL,NULL),(39,92,NULL,'2024-06-11','2020-09-15','1','1',NULL,NULL),(40,93,'abc group','2020-09-02','2020-09-15','2','2',NULL,NULL),(41,93,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,94,'com1','2020-09-01','2020-09-14','1','1',NULL,NULL),(43,94,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,95,'Smart Assets BD','2018-07-03','2020-09-19','11','1',NULL,NULL),(45,96,'com1','2020-09-08','2020-09-15','2','2',NULL,NULL),(46,96,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,105,'NENEMART LTD','2009-08-05','2020-10-06','9','4',NULL,NULL),(48,105,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,106,'Building Technology & Ideas Lt','2010-01-01','2020-09-01','9','1',NULL,NULL),(50,106,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,107,'DITM','2018-01-15','2020-09-26','9','4',NULL,NULL),(52,107,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,108,'Winbiz','2020-09-15','2020-09-10','3','2',NULL,NULL),(54,108,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,111,'com1','02-2020','01-2020','CCO - Chief Customer Officer','Business Development',NULL,NULL),(56,111,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,119,'com1','02-2020','02-2020','CCO - Chief Commercial Officer','Public Relations',NULL,NULL),(64,119,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,122,'ROSOBORN Technologies Ltd.','07-2019','04-2020','Sight Engineer','Business Development',NULL,NULL),(66,122,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,124,'ROSOBORN Technologies Ltd.','01-2020','08-2020','Scrum Master','Legal',NULL,NULL),(68,124,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,128,'ROSOBORN Technologies Ltd.','01-2020','05-2021','Benefits Manager','Media',NULL,NULL),(70,128,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,129,'ROSOBORN Technologies Ltd.','01-2020','12-2020','CPO - Chief Product Officer','Legal',NULL,NULL),(72,129,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,36,'ROSOBORN Technologies Ltd.','01-2019','03-2020','Chairman','Accounts & Finance',NULL,NULL),(74,36,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,37,'Floorfly.com','10-2020','11-2020','CMO - Chief Marketing Officer','Marketing',NULL,NULL),(76,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,41,'Floorfly','02-2020',NULL,'Managing Director','Marketing',NULL,NULL),(78,41,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,46,'Floorfly.com','02-2019','02-2020','Managing Director','Accounts & Finance',NULL,NULL),(80,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,49,'CDL','01-2018','01-2020','Chairman','Marketing',NULL,NULL),(82,49,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,50,'CDL','01-2018','01-2020','Chairman','Accounts & Finance',NULL,NULL),(84,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,56,'Rimjhim land developer & housing Ltd','07-2017','Still continuing this job','Sales Manager','Sales & Marketing',NULL,NULL),(86,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,61,'Building technology & ideas ltd','05-2010','02-2019','Sales Manager','Sales & Marketing',NULL,NULL),(88,61,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,62,'Bti','02-2019','12-2020','Sales Manager','Sales & Marketing',NULL,NULL),(90,62,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,63,'Floorfly.com','01-2018','01-2020','Managing Director','Accounts & Finance',NULL,NULL),(92,63,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,64,'SOHEL FOOD CORNER','02-2005','12-2020','Customer Care Associate','Sales',NULL,NULL),(94,64,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,69,'Floorlfy.com','01-2019','01-2021','Managing Director','Marketing',NULL,NULL),(96,69,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,70,'Floorfly.com','01-2019','01-2021','Managing Director','Marketing',NULL,NULL),(98,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,71,'Floorfly.com','01-2019','01-2021','Managing Director','Marketing',NULL,NULL),(100,71,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,72,'Floorfly.com','01-2019','02-2021','Managing Director','Marketing',NULL,NULL),(102,72,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Accounts & Finance',1,NULL,NULL),(2,'Marketing',1,NULL,NULL),(3,'Human Resource',1,NULL,NULL),(4,'Admin',1,NULL,NULL),(5,'Sales',1,'2020-09-23 00:14:12','2020-09-23 00:14:12'),(6,'Sales & Marketing',1,NULL,NULL),(7,'Media',1,NULL,NULL),(8,'Construction',1,NULL,NULL),(9,'Administration',1,NULL,NULL),(10,'Customer Service',1,NULL,NULL),(11,'Legal',1,NULL,NULL),(12,'Business Development',1,NULL,NULL),(13,'Public Relations',1,NULL,NULL),(14,'',1,'2020-10-10 05:07:31','2020-10-10 05:07:31');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) DEFAULT NULL,
  `institue` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent_result` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent_degree` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,20,'UITS','3.5','Bachelor',NULL,NULL),(2,20,NULL,NULL,NULL,NULL,NULL),(3,22,'University o information technology','3.5','Bachelor',NULL,NULL),(4,22,NULL,NULL,NULL,NULL,NULL),(5,30,'University o information techn','3.5','MBA',NULL,NULL),(6,30,NULL,NULL,NULL,NULL,NULL),(7,31,'instation','55','HSC',NULL,NULL),(8,31,NULL,NULL,NULL,NULL,NULL),(9,32,'instation','55','SSC',NULL,NULL),(10,32,NULL,NULL,NULL,NULL,NULL),(11,35,'dgrsrhgesrh','3.20','Masters',NULL,NULL),(12,35,NULL,NULL,NULL,NULL,NULL),(13,36,'ftyhtrhrt yr tyh55','55','SSC',NULL,NULL),(14,36,NULL,NULL,NULL,NULL,NULL),(15,38,'titumir college','3.20','Masters',NULL,NULL),(16,38,NULL,NULL,NULL,NULL,NULL),(17,51,'onw','55','HSC',NULL,NULL),(18,51,NULL,NULL,NULL,NULL,NULL),(19,52,'instation','55','HSC',NULL,NULL),(20,52,NULL,NULL,NULL,NULL,NULL),(21,53,'instation','55','HSC',NULL,NULL),(22,53,NULL,NULL,NULL,NULL,NULL),(23,54,'Asian University Bangladesh','3.34','MBA',NULL,NULL),(24,54,NULL,NULL,NULL,NULL,NULL),(25,55,'instation','55','HSC',NULL,NULL),(26,55,NULL,NULL,NULL,NULL,NULL),(27,56,'instation','55','HSC',NULL,NULL),(28,56,NULL,NULL,NULL,NULL,NULL),(29,57,'AUST','3.51','MBA',NULL,NULL),(30,57,NULL,NULL,NULL,NULL,NULL),(31,60,'ULAB','B+','MBA',NULL,NULL),(32,60,NULL,NULL,NULL,NULL,NULL),(33,61,'instation','55','HSC',NULL,NULL),(34,61,NULL,NULL,NULL,NULL,NULL),(35,62,'instation','55','HSC',NULL,NULL),(36,62,NULL,NULL,NULL,NULL,NULL),(37,63,'instation','55','SSC',NULL,NULL),(38,63,NULL,NULL,NULL,NULL,NULL),(39,64,'instation','3.3','SSC',NULL,NULL),(40,64,NULL,NULL,NULL,NULL,NULL),(41,65,'ULAB','B+','MBA',NULL,NULL),(42,65,NULL,NULL,NULL,NULL,NULL),(43,66,'instation','5.5','HSC',NULL,NULL),(44,66,NULL,NULL,NULL,NULL,NULL),(45,67,'Govt. Titumir College','3.16','MBA',NULL,NULL),(46,67,NULL,NULL,NULL,NULL,NULL),(47,68,'Govt. Titumir College','3.16','SSC',NULL,NULL),(48,68,NULL,NULL,NULL,NULL,NULL),(49,69,'ULAB','B+','MBA',NULL,NULL),(50,69,NULL,NULL,NULL,NULL,NULL),(51,70,'ULAB','B+','MBA',NULL,NULL),(52,70,NULL,NULL,NULL,NULL,NULL),(53,71,'A School','5.00','SSC',NULL,NULL),(54,71,NULL,NULL,NULL,NULL,NULL),(55,71,'B College','5.00','HSC',NULL,NULL),(56,71,'C University','3.32','Bachelor',NULL,NULL),(57,74,'a school','5.00','SSC',NULL,NULL),(58,74,NULL,NULL,NULL,NULL,NULL),(59,75,'instation','55','HSC',NULL,NULL),(60,75,NULL,NULL,NULL,NULL,NULL),(61,76,'A School','3','SSC',NULL,NULL),(62,76,NULL,NULL,NULL,NULL,NULL),(63,76,'B College','4','HSC',NULL,NULL),(64,76,'C University','1','Bachelor',NULL,NULL),(65,77,'nsu','3.5','Masters',NULL,NULL),(66,77,NULL,NULL,NULL,NULL,NULL),(67,84,'A School','5.00','SSC',NULL,NULL),(68,84,NULL,NULL,NULL,NULL,NULL),(69,87,'A School','3','Bachelor',NULL,NULL),(70,87,NULL,NULL,NULL,NULL,NULL),(71,88,'instation','55','SSC',NULL,NULL),(72,88,NULL,NULL,NULL,NULL,NULL),(73,89,'A School','3','Bachelor',NULL,NULL),(74,89,NULL,NULL,NULL,NULL,NULL),(75,90,'University o information techn','3.5','HSC',NULL,NULL),(76,90,NULL,NULL,NULL,NULL,NULL),(77,91,'University o information techn','3.5','Bachelor',NULL,NULL),(78,91,NULL,NULL,NULL,NULL,NULL),(79,92,'instation','5.5','SSC',NULL,NULL),(80,92,NULL,NULL,NULL,NULL,NULL),(81,93,'instation','55','HSC',NULL,NULL),(82,93,NULL,NULL,NULL,NULL,NULL),(83,94,'instation','55','HSC',NULL,NULL),(84,94,NULL,NULL,NULL,NULL,NULL),(85,95,'shiddswarie degree colllage','2nd division','Masters',NULL,NULL),(86,95,NULL,NULL,NULL,NULL,NULL),(87,96,'instation','55','HSC',NULL,NULL),(88,96,NULL,NULL,NULL,NULL,NULL),(89,105,'ULAB','A+','MBA',NULL,NULL),(90,105,NULL,NULL,NULL,NULL,NULL),(91,106,'University of Liberal Arts','3.34','MBA',NULL,NULL),(92,106,NULL,NULL,NULL,NULL,NULL),(93,107,'Govt Azizul Haque College','Second Class','Masters',NULL,NULL),(94,107,NULL,NULL,NULL,NULL,NULL),(95,108,'University o information techn','3.5','HSC',NULL,NULL),(96,108,NULL,NULL,NULL,NULL,NULL),(97,111,'Govt. Titumir College','55','SSC',NULL,NULL),(98,111,NULL,NULL,NULL,NULL,NULL),(105,119,'instation','55','SSC',NULL,NULL),(106,119,NULL,NULL,NULL,NULL,NULL),(107,122,'Milestone College','5.00','HSC',NULL,NULL),(108,122,NULL,NULL,NULL,NULL,NULL),(109,124,'Milestone College','5.00','HSC',NULL,NULL),(110,124,NULL,NULL,NULL,NULL,NULL),(111,128,'Milestone College','5.00','HSC',NULL,NULL),(112,128,NULL,NULL,NULL,NULL,NULL),(113,129,'Milestone College','5.00','HSC',NULL,NULL),(114,129,NULL,NULL,NULL,NULL,NULL),(115,36,'Milestone College','5.00','HSC',NULL,NULL),(116,36,NULL,NULL,NULL,NULL,NULL),(117,37,'BSMRSTU','3.01','Bachelor',NULL,NULL),(118,37,NULL,NULL,NULL,NULL,NULL),(119,41,'Bsmrstu','3.5','Bachelor',NULL,NULL),(120,41,NULL,NULL,NULL,NULL,NULL),(121,46,'BSMRSTU','3.01','Bachelor',NULL,NULL),(122,46,NULL,NULL,NULL,NULL,NULL),(123,49,'BSMRSTU','3.01','Bachelor',NULL,NULL),(124,49,NULL,NULL,NULL,NULL,NULL),(125,50,'BSMRSTU','3.01','Bachelor',NULL,NULL),(126,50,NULL,NULL,NULL,NULL,NULL),(127,56,'Stamford University','3.04','Bachelor',NULL,NULL),(128,56,NULL,NULL,NULL,NULL,NULL),(129,61,'BUBT','3.30 out of 4','MBA',NULL,NULL),(130,61,NULL,NULL,NULL,NULL,NULL),(131,62,'Independent University','3','MBA',NULL,NULL),(132,62,NULL,NULL,NULL,NULL,NULL),(133,63,'BSMRSTU','3.01','Bachelor',NULL,NULL),(134,63,NULL,NULL,NULL,NULL,NULL),(135,64,'ALLIANCE FRANCAISE DHAKA','62%','Bachelor',NULL,NULL),(136,64,NULL,NULL,NULL,NULL,NULL),(137,69,'BSMRSTU','3.01','Bachelor',NULL,NULL),(138,69,NULL,NULL,NULL,NULL,NULL),(139,69,'GNC','5','HSC',NULL,NULL),(140,69,'CMHS','5','SSC',NULL,NULL),(141,70,'BSMRSTU','3.01','Bachelor',NULL,NULL),(142,70,NULL,NULL,NULL,NULL,NULL),(143,70,'GNC','5','HSC',NULL,NULL),(144,71,'BSMRSTU','3.01','Bachelor',NULL,NULL),(145,71,NULL,NULL,NULL,NULL,NULL),(146,71,'GNC','5','HSC',NULL,NULL),(147,72,'BSMRSTU','3.01','Bachelor',NULL,NULL),(148,72,NULL,NULL,NULL,NULL,NULL),(149,72,'GNC','5','HSC',NULL,NULL);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;

--
-- Table structure for table `enquire`
--

DROP TABLE IF EXISTS `enquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquire` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `enquiry_property` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `verify_user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_size_form` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_size_to` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_location` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_status` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facing` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `floor_position` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `verify_date` timestamp NULL DEFAULT NULL,
  `reffered_by` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_person_name` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_person_phone` int(11) DEFAULT NULL,
  `refer_person_address` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquire`
--

/*!40000 ALTER TABLE `enquire` DISABLE KEYS */;
INSERT INTO `enquire` VALUES (63,232,'Apartment for sale',NULL,NULL,'Samiur Rahman','Samiur.ba@gmail.com','01931484141','I would like to inquire about Property ID DR0007 . Please contact me at your earliest convenience.',NULL,NULL,'30',NULL,NULL,NULL,NULL,'Website',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-08-04 11:22:43','2022-08-04 11:22:43');
/*!40000 ALTER TABLE `enquire` ENABLE KEYS */;

--
-- Table structure for table `front_designs`
--

DROP TABLE IF EXISTS `front_designs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `front_designs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(190) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(190) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `front_designs`
--

/*!40000 ALTER TABLE `front_designs` DISABLE KEYS */;
/*!40000 ALTER TABLE `front_designs` ENABLE KEYS */;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (33,'Visit Shah Marine Resort.','public/upload/gallery/1651990246IMG_0707.JPG',NULL,1,'2022-05-08 12:10:46','2022-05-08 12:10:50'),(34,'Meeting with Rupayan Housing Estate Ltd.','public/upload/gallery/1658244809WhatsApp Image 2022-07-19 at 9.20.42 PM.jpeg','Date 18.07.2022',1,'2022-07-19 21:33:29','2022-07-19 21:34:22');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;

--
-- Table structure for table `hires`
--

DROP TABLE IF EXISTS `hires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hires` (
  `id` int(90) NOT NULL AUTO_INCREMENT,
  `sellertype` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seller_id` int(10) NOT NULL,
  `seller_name` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `seller_phone` int(11) DEFAULT NULL,
  `seller_email` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent_id` int(10) NOT NULL,
  `agent_name` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `agent_phone` int(11) DEFAULT NULL,
  `agent_email` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hiretype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hires`
--

/*!40000 ALTER TABLE `hires` DISABLE KEYS */;
/*!40000 ALTER TABLE `hires` ENABLE KEYS */;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_id` int(10) NOT NULL,
  `agent_name` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `agent_phone` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `property_id` int(10) NOT NULL,
  `property_name` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2015_12_10_065428_create_settings_table',1),('2015_12_25_133843_create_enquire_table',1),('2015_12_25_134328_create_partners_table',1),('2015_12_25_134629_create_properties_table',1),('2015_12_25_142242_create_slider_table',1),('2015_12_25_142436_create_subscriber_table',1),('2015_12_25_142619_create_testimonials_table',1),('2016_04_04_164203_create_cities_table',1),('2016_04_04_164227_create_property_types_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(500) NOT NULL,
  `page_slug` varchar(500) NOT NULL,
  `page_content` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'About Us','about-us','<p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 14px; text-align: left; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-family: &quot;Comic Sans MS&quot;;\\\">Dimicile Realtor is a complete property management company in Bangladesh.</span><br></p>',1),(2,'Terms of Use','terms-of-use','<p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-family: &quot;Comic Sans MS&quot;; font-size: 18.6667px; font-weight: 700;\\\">Coming Soon........</span></p>',1),(3,'Privacy Policy','privacy-policy','<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;; font-size: 12pt;\\\">We are committed to\r\nprotecting the privacy of all visitors and subscribers to our Website or any\r\napplication we make available via an app store (the “Application”, together\r\nwith the Site, the “Platform”), and the corresponding services available\r\nthrough the Platform (“Services”).</span><br></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">This privacy policy will\r\ngovern the way in which we process any personal information that you provide to\r\nus. Any changes in information policies will be updated and communicated here\r\nimmediately.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Please read this privacy\r\npolicy in its entirety as it contains important information on who we are and\r\nhow we collect, store, use, and share your information. By accessing the Platform\r\nor using our Services or otherwise indicating your consent, you agree to, and\r\nwhere required, consent to, the collection, use, and transfer of your\r\ninformation as set out in this policy. If you do not accept the terms of this\r\npolicy, you may not use the Platform and/or the Services and later seek\r\nrecompense of any nature due to incomplete cohesion. This privacy policy\r\nsupplements other notices and privacy policies and is not intended to override\r\nthem.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">This privacy policy: (i)\r\napplies only to the aforementioned Platform, and associated concerns such as\r\nRackspace, our server provider, and not to websites or applications of any\r\nother companies or organizations; and (ii) specifically addresses our\r\nobligations pursuant to the laws of Bangladesh.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">The data we collect about\r\nyou</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">When you visit the\r\nWebsite or the Application, or become a member to access certain Services, you\r\nmay be asked to provide information about yourself. This may include: (i) your\r\nname and contact details, including email address and telephone number; (ii)\r\ninformation to enable us to check and verify your identity; (iii) information\r\nregarding location data; (iv) information for billing, transaction, and payment\r\nand relevant history; and (v) such other information as we may from time to\r\ntime require to provide certain Services in a complete fashion within the\r\nconfines of applicable law. You agree and, where required, consent to, the\r\ncollection of information about your usage of the Platform and the Services and\r\ninformation from messages and communications you send to us.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">This information is\r\nrequired to provide the Services to you. If you do not provide such\r\ninformation, it may delay or prevent us from providing the Services in a\r\ncomplete fashion.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">This privacy policy will\r\nalso apply when accessing the Platform and/or the Services from mobile\r\ntechnology (such as mobile phones, tablets, or other devices). Unless you have\r\nchosen to remain anonymous through your device and/or platform settings, this\r\ninformation may be collected and used by us automatically if you use the\r\nServices and access the Platform from mobile technology.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Calls between you and Domicile,\r\nor between you and third parties made through Domicile (such as real estate\r\nagents you contact about a property through a form or link on our website, or\r\nusing contact information found on our website), may be recorded or monitored\r\nfor quality assurance and customer service purposes. Domicile uses a\r\nthird-party service provider to track phone calls and text messages between you\r\nand real estate professionals so that we and the real estate professional can\r\naccess certain details about the contact. As part of this process, Domicile and\r\nits service provider will receive in real time and store data about your call\r\nor text message, including the date and time of the call or text message, your\r\nphone number, and the content of the text message.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-weight: bold;\\\">Who we share your\r\npersonal information with?</span><br class=\\\"Apple-interchange-newline\\\"></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Your personal information\r\n(which includes your name, address and any other detail you provide to us which\r\nconcerns you as an individual) may be processed both by us and by other\r\nentities within our group. Each of the companies in our group authorized to process\r\nyour information will do so in accordance with this privacy policy.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We may also share your\r\ninformation with: (i) third parties we use to help deliver our products and\r\nservices to you (for example, payment service providers); (ii) other third\r\nparties we use to help us run our business (for example, marketing agencies or\r\nwebsite hosts); and (iii) third parties approved by you (for example, social\r\nmedia sites you choose to link your account to or third-party payment\r\nproviders).<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We require all third\r\nparties to respect the security of your personal data and to treat it in\r\naccordance with the law. We do not allow our third-party service providers to\r\nuse your personal data for their own purposes and only permit them to process\r\nyour personal data for specified purposes and in accordance with our\r\ninstructions.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We may use or share the\r\ninformation you provide to us if we are under duty to disclose or share your\r\ninformation in order to comply with any legal obligation or in order to enforce\r\nany obligation against you or to protect the rights of us and our affiliates.\r\nThis may include the exchange of information with other companies and\r\norganizations for the purposes of fraud protection and prevention.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We may also need to share\r\nsome personal information with our affiliates, subsidiaries and third parties\r\n(such as real estate agents that use the Website) or during a re-structuring of\r\nour business. Usually, personal information will be left anonymous but this may\r\nnot always be possible. The recipient of such personal information will be\r\nbound by confidentiality obligations.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Purpose of processing</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Your information will\r\nallow us to provide you with access to the particular parts of the Platform\r\nrelevant to you and allow us to supply the Services you require.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We will use your\r\ninformation for the purpose of fulfilling service orders placed by you,\r\nprocessing any other transactions authorized or made by you with us, informing\r\nyou of special offers and providing other marketing information to you which we\r\nthink you may find of interest, undertaking services or customer\r\nresearch/development.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Your information may be\r\nused by us to contact you for your opinions on the Platform, the Services and\r\nour business, and to notify you of changes or developments to the Platform, the\r\nServices, and our business.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-weight: bold; font-family: &quot;Times New Roman&quot;;\\\">Disclosure of information<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">In the unlikely event\r\nthat a liquidator, administrator, or receiver is appointed over us or all or\r\nany part of our assets that insolvency practitioner may transfer your\r\ninformation to a third party purchaser of the business provided that purchaser\r\nundertakes to use your information for the same purposes as set out in this\r\npolicy. We undertake not to provide your personal information to third parties\r\nin accordance with this policy.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Your information will not\r\nbe disclosed to government or local authorities or other government\r\ninstitutions save as required by law or other binding regulations.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Cookies</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We may send a small file\r\nto your computer or device when you visit our website (a “cookie”). This will\r\nenable us to identify your computer, track your behavior on our website and to\r\nidentify your particular areas of interest so as to personalize and enhance\r\nyour experience on this website. We may use cookies to collect and store\r\npersonal data and we link information stored by cookies with personal data you\r\nsupply to us. You can set your browser to reject cookies but this may preclude\r\nyour use of certain parts of the Platform.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">If you participate in or\r\ninquire about any lead, referral or similar service we may offer, we may use\r\nthe information you submit, as well as other data we might have or obtain\r\nourselves or from other sources, to determine which of our participating\r\nProfessional(s) may be willing, able and/or compatible to serve your needs or\r\npossible interests and to assist them or others in doing so. We may forward or\r\nshare information relating to you, which may include such information as well\r\nas personal information obtained through our sign-up form or otherwise, to\r\ncertain Professional(s). Those Professionals or their affiliates, contractors,\r\nadvertisers, agents or other designees may use such information and contact you\r\nregarding your needs or possible interests, as may we ourselves.\r\n“Professional(s)” means individuals, companies and other organizations or\r\npersons acting as real estate professionals or otherwise engaged in a business\r\nrelevant to the Website.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Third party vendors,\r\nincluding Google and Facebook, use cookies to serve ads based on a user’s prior\r\nvisits to the Website. Google and Facebook’s use of cookies (in Google’s case,\r\nthe DART cookie) enables them and their partners to serve ads to users based on\r\ntheir visits to the Website and/or other sites on the Internet. Users may opt\r\nout of (i) the use of the DART cookie by visiting the&nbsp;<a href=\\\"http://www.google.com/policies/privacy/ads/\\\" target=\\\"_blank\\\" title=\\\"advertising opt-out page;\\\">advertising opt-out page;</a>&nbsp;and (ii)\r\nFacebook’s cookies by visiting Facebook’s advertising preferences page.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">YouTube API Usage</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Video links used on the\r\nwebsite’s result pages are in accordance with the API rules and regulations set\r\nby YouTube, and use YouTube API Services.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">a. No user data or\r\ninformation is collected or stored by Domicile through the use of the API\r\nClient for use in any way.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">b. The API Client uses\r\nyour search criteria on the main website to generate the content most\r\nappropriate for you.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">c. The API Client does\r\nnot allow third parties to serve you additional content.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">d. The API Client does\r\nnot store, access or collect information directly or indirectly on or from\r\nusers’ devices, including by placing, accessing or recognizing cookies or\r\nsimilar technology on users` devices or browsers.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">e. Additional information\r\nfor the Google Privacy Policy can be found at&nbsp;<a href=\\\"http://www.google.com/policies/privacy\\\" target=\\\"_blank\\\" title=\\\"http://www.google.com/policies/privacy\\\">http://www.google.com/policies/privacy</a>&nbsp;.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Copyright</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">All website design, text,\r\ngraphics, the selection and arrangement thereof are Copyright © 2016, Domicilebd.com,\r\nALL RIGHTS RESERVED.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Trademarks</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Domicile is a trademark\r\nof Domicile.com Limited or its subsidiaries and may be registered in certain\r\nparts of the world.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Disclaimer of Warranty\r\nand Liability</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">The following provisions\r\nmay be curtailed or disallowed by the laws of certain jurisdictions. In such\r\ncases, the terms hereof are to be read as excluding or limiting such terms so\r\nas to satisfy such law.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We do not represent or\r\nwarrant that the information accessible via this website is accurate, complete\r\nor current. We have no liability whatsoever in respect of any use which you\r\nmake of such information.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">The information provided\r\non this website has not been written to meet your individual requirements and\r\nit is your sole responsibility to satisfy yourself prior to ordering any\r\nproducts or services from us that they are suitable for your purposes.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Whilst we make all\r\nreasonable attempts to exclude viruses from the website, we cannot ensure such\r\nexclusion and no liability is accepted for viruses. Thus, you are recommended\r\nto take all appropriate safeguards before downloading information or images\r\nfrom this website.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">All warranties, express\r\nor implied, statutory or otherwise are hereby excluded.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">Neither we nor any of our\r\nemployees or affiliated entities will be liable for any kind of damages and\r\nhowsoever arising including, without limitation, loss of profits, compensatory,\r\nconsequential, direct, exemplary, incidental, indirect, punitive or special,\r\ndamages or any liability which you may have to a third party, even if we have\r\nbeen advised of the possibility of such loss.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We are not responsible\r\nfor the direct or indirect consequences of you linking to any other website\r\nfrom this website.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Security measures</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We have implemented\r\nsecurity policies, rules and technical measures to protect the personal data\r\nthat we have under our control from unauthorized access, improper use and\r\ndisclosure, unauthorized destruction, or accidental loss.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We also have procedures\r\nin place to deal with any suspected data breach. We will notify you and any\r\napplicable regulator or authority of a suspected data security breach where we\r\nare legally required to do so.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">You are solely\r\nresponsible for keeping your password and other account details confidential.\r\nIf you have concerns about your password, account details, or are suspicious\r\nabout any unauthorized use of your account, you should contact us immediately.\r\nWe can deactivate or suspend your account at any time.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Access to information</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">You may ask us whether we\r\nare storing personal information about you by emailing our admin department via\r\nthe Contact page and, if you wish and upon payment of a fee of $10, we will\r\nprovide you with a copy of the personal data we hold about you by email.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We may ask for proof of\r\nyour identity before providing any information and reserve the right to refuse\r\nto provide information requested if identity is not established.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Inquiries</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-family: &quot;Times New Roman&quot;;\\\"><i><span style=\\\"font-size: 12pt; line-height: 107%;\\\">If you have any enquiry\r\nor concern about our privacy policy or the way in which we are handling\r\npersonal data please contact our admin department via the Contact page. If at\r\nany time you wish us to cease processing your information please send a message\r\nto our admin department and insert “unsubscribe” as the subject heading.</span></i><span style=\\\"font-size: 12pt; line-height: 107%;\\\"><o:p></o:p></span></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\"><span style=\\\"font-weight: bold;\\\">Updates to policy</span><o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">We reserve the right to\r\nmake changes to our policies at any given time. Our updated policy will be displayed\r\non the Website, and by continuing to use and access the Platform, following\r\nsuch changes, you agree to be bound by any variation made by us. It is your\r\nresponsibility to check this policy from time to time to verify your needs.<o:p></o:p></span></p><p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; vertical-align: baseline;\\\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\\\"MsoNormal\\\" style=\\\"text-align:justify\\\"><span style=\\\"font-size: 12pt; line-height: 107%; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;</span></p>',1),(4,'FAQ','faq','<p class=\\\"MsoNormal\\\"><span style=\\\"font-weight: 700;\\\">Coming Soon !...</span></p>',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `partner_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('r.raufur2000@gmail.com','$2y$10$Hn8fOkpWP/EekH3eLZRODuV5JBGSqqwJf2MYjgYkQwL/AxtmY3Yy6','2020-09-26 12:05:18'),('smaliashraf69@gmail.com','$2y$10$bSBxwD640dYCFUTmA6tjX.ncyV8fFnPh3B0dXCD5QoMBzB3dYEBn2','2020-10-10 15:09:08'),('ranashohel0805@gmail.com','$2y$10$jkMpWtWUbdAt2eRYdiQSfer29fCE21ttQH0PoRVXYcpSFX8OVhn3i','2020-10-14 10:42:40'),('admin@floorfly.com','$2y$10$UcqU4mUJwDbYLBodD9BRVOgVF7lOoyv88D0cB6J1Ln4fYQGlHOsru','2020-10-22 11:15:49'),('rafsanjami490@gmail.com','$2y$10$YH7Ju1qoM1ycVZ1rYilb0OIoN0GRr7nWoRZVway1nJgsoNWy51APq','2021-01-20 14:10:30'),('masfi111210@gmail.com','$2y$10$xWga34TmmotV2ozP.z4EEehS1P/4rf35jswoItufa3NGHxjqb.IeO','2021-02-28 13:49:11'),('eradmn1@gmail.com','$2y$10$uenkmMnXDwFW01eyIPlH/eZggw60W85Ekahqvrf8qkUZeqfarqbiy','2022-04-30 01:37:23');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Chairman',1,NULL,NULL),(2,'Managing Director',1,NULL,NULL),(3,'CEO - Chief Executive Officer',1,NULL,NULL),(4,'COO - Chief Operating Officer',1,NULL,NULL),(5,'CFO - Chief Financial Officer',1,NULL,NULL),(6,'CIO - Chief Information Officer',1,NULL,NULL),(7,'CTO - Chief Technology Officer',1,NULL,NULL),(8,'CMO - Chief Marketing Officer',1,NULL,NULL),(9,'CHRO - Chief Human Resources Officer',1,NULL,NULL),(10,'CDO - Chief Data Officer',1,NULL,NULL),(11,'CPO - Chief Product Officer',1,NULL,NULL),(12,'CCO - Chief Customer Officer',1,NULL,NULL),(13,'CCO - Chief Commercial Officer',1,NULL,NULL),(14,'Sight Engineer',1,NULL,NULL),(15,'Sight Supervisor',1,NULL,NULL),(16,'Procurement Manager',1,NULL,NULL),(17,'Customer Service Officer',1,NULL,NULL),(18,'Customer Support Officer',1,NULL,NULL),(19,'Help Desk Executive',1,NULL,NULL),(20,'Customer Service Manager',1,NULL,NULL),(21,'Technical Support Specialist',1,NULL,NULL),(22,'Account Representative',1,NULL,NULL),(23,'Client Service Specialist',1,NULL,NULL),(24,'Customer Care Associate',1,NULL,NULL),(25,'Operations Manager',1,NULL,NULL),(26,'Operations Assistant',1,NULL,NULL),(27,'Operations Coordinator',1,NULL,NULL),(28,'Operations Analyst',1,NULL,NULL),(29,'Operations Director',1,NULL,NULL),(30,'Vice President of Operations',1,NULL,NULL),(31,'Operations Professional',1,NULL,NULL),(32,'Scrum Master',1,NULL,NULL),(33,'Continuous Improvement Lead',1,NULL,NULL),(34,'Continuous Improvement Consultant',1,NULL,NULL),(35,'Credit Authorizer',1,NULL,NULL),(36,'Benefits Manager',1,NULL,NULL),(37,'Credit Counselor',1,NULL,NULL),(38,'Accountant',1,NULL,NULL),(39,'Bookkeeper',1,NULL,NULL),(40,'Accounting Analyst',1,NULL,NULL),(41,'Accounting Director',1,NULL,NULL),(42,'Accounts Payable or Receivable Clerk',1,NULL,NULL),(43,'Auditor',1,NULL,NULL),(44,'Budget Analyst',1,NULL,NULL),(45,'Controller',1,NULL,NULL),(46,'Financial Analyst',1,NULL,NULL),(47,'Finance Manager',1,NULL,NULL),(48,'Economist',1,NULL,NULL),(49,'Payroll Manager',1,NULL,NULL),(50,'Payroll Clerk',1,NULL,NULL),(51,'Financial Planner',1,NULL,NULL),(52,'Financial Services Representative',1,NULL,NULL),(53,'Finance Director',1,NULL,NULL),(54,'Commercial Loan Officer',1,NULL,NULL),(55,'Sales Associate',1,NULL,NULL),(56,'Sales Representative',1,NULL,NULL),(57,'Sales Manager',1,NULL,NULL),(58,'Retail Worker',1,NULL,NULL),(59,'Store Manager',1,NULL,NULL),(60,'Sales Representative',1,NULL,NULL),(61,'Sales Manager',1,NULL,NULL),(62,'Real Estate Broker',1,NULL,NULL),(63,'Sales Associate',1,NULL,NULL),(64,'Cashier',1,NULL,NULL),(65,'Store Manager',1,NULL,NULL),(67,'Account Executive',1,NULL,NULL),(68,'Account Manager',1,NULL,NULL),(69,'Area Sales Manager',1,NULL,NULL),(70,'Direct Salesperson',1,NULL,NULL),(71,'Director of Inside Sales',1,NULL,NULL),(72,'Outside Sales Manager',1,NULL,NULL),(73,'Sales Analyst',1,NULL,NULL),(74,'Market Development Manager',1,NULL,NULL),(75,'B2B Sales Specialist',1,NULL,NULL),(76,'Sales Engineer',1,NULL,NULL),(77,'Merchandising Associate',1,NULL,NULL),(78,'Construction Worker',1,NULL,NULL),(79,'Taper',1,NULL,NULL),(80,'Plumber',1,NULL,NULL),(81,'Heavy Equipment Operator',1,NULL,NULL),(82,'Vehicle or Equipment Cleaner',1,NULL,NULL),(83,'Carpenter',1,NULL,NULL),(84,'Electrician',1,NULL,NULL),(85,'Painter',1,NULL,NULL),(86,'Welder',1,NULL,NULL),(87,'Handyman',1,NULL,NULL),(88,'Boilermaker',1,NULL,NULL),(89,'Boilermaker',1,NULL,NULL),(90,'Crane Operator',1,NULL,NULL),(91,'Building Inspector',1,NULL,NULL),(92,'Pipefitter',1,NULL,NULL),(93,'Sheet Metal Worker',1,NULL,NULL),(94,'Iron Worker',1,NULL,NULL),(95,'Mason',1,NULL,NULL),(96,'Roofer',1,NULL,NULL),(97,'Solar Photovoltaic Installer',1,NULL,NULL),(98,'Well Driller',1,NULL,NULL),(99,'Marketing Specialist',1,NULL,NULL),(100,'Marketing Manager',1,NULL,NULL),(101,'Marketing Director',1,NULL,NULL),(102,'Graphic Designer',1,NULL,NULL),(103,'Marketing Research Analyst',1,NULL,NULL),(104,'Marketing Communications Manager',1,NULL,NULL),(105,'Marketing Consultant',1,NULL,NULL),(106,'Product Manager',1,NULL,NULL),(107,'Public Relations',1,NULL,NULL),(108,'Social Media Assistant',1,NULL,NULL),(109,'Brand Manager',1,NULL,NULL),(110,'SEO Manager',1,NULL,NULL),(111,'Content Marketing Manager',1,NULL,NULL),(112,'Copywriter',1,NULL,NULL),(113,'Media Buyer',1,NULL,NULL),(114,'Digital Marketing Manager',1,NULL,NULL),(115,'eCommerce Marketing Specialist',1,NULL,NULL),(116,'Brand Strategist',1,NULL,NULL),(117,'Vice President of Marketing',1,NULL,NULL),(118,'Media Relations Coordinator',1,NULL,NULL),(119,'Vice President',1,NULL,NULL),(120,'General Manager',1,NULL,NULL),(121,'Director',1,NULL,NULL),(122,'Manager',1,NULL,NULL),(123,'Supervisor',1,NULL,NULL),(124,'Assistant Manager',1,NULL,NULL),(125,'Associate',1,NULL,NULL),(126,'Executive',1,NULL,NULL),(127,'Sr. Executive',1,NULL,NULL),(128,'Deputy Manager',1,NULL,NULL),(129,'Sr. Manager',1,NULL,NULL),(130,'AGM - Asst. General Manager',1,NULL,NULL),(131,'DGM - Dep. General Manager',1,NULL,NULL),(132,'Sr. GM - Sr. General Manager',1,NULL,NULL),(133,'EVP - Executive Vice President',1,NULL,NULL),(134,'SEVP - Sr. Executive Vice President',1,NULL,NULL),(135,'FAVP - First Asst. Vice President',1,NULL,NULL),(136,'',1,'2020-10-10 05:00:21','2020-10-10 05:00:21');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;

--
-- Table structure for table `promotion_slider`
--

DROP TABLE IF EXISTS `promotion_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(91) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_slider`
--

/*!40000 ALTER TABLE `promotion_slider` DISABLE KEYS */;
INSERT INTO `promotion_slider` VALUES (9,'Interior Design',NULL,'/upload/promotion-slides/1659961692real-estate-6688945_1920.jpg',1,'2022-08-08 18:28:12','2022-08-08 18:28:12');
/*!40000 ALTER TABLE `promotion_slider` ENABLE KEYS */;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `product_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `featured_property` int(11) NOT NULL DEFAULT 0,
  `property_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `search_price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate_per_sft` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `po` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(190) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `garage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `land_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `build_area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_build_area` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balcony` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_floor` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facing` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available_floor` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `floor` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_facility` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nearest_school_km` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_hospital_km` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_bus_stand_km` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_railway_km` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_airport_km` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_mall_km` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_park_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_mosque_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_playground_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_departmental_store_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_restaurant_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_fire_service_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_police_station_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_pharmacy_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_grocery_bazar_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nearest_govt_office_km` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_features` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_servent_bed` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_servent_bath` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_gym` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_front_yard` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_splash_pool` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_roof_deck` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_reception` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_rooftop_garden` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_generator` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_substation` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_lift` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_kitchen_veranda` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_kitchen_cabinet` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_corner_plot` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_guest_lobby` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_cctv` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_swimming_pool` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_guest_parking` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_laundry_room` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_bbq` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_terrace` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amenities_sauna` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `floor_plan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_plan_id` int(11) NOT NULL DEFAULT 0,
  `property_exp_date` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `soldout` int(10) NOT NULL DEFAULT 0,
  `position_id` int(11) NOT NULL DEFAULT 99,
  `position_exp_date` int(11) NOT NULL DEFAULT 0,
  `position_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES ('inv002',222,1,1,'Apartment for sale','apartment-for-sale','2','Sale','3,800,000','3800000',NULL,'Mohammadpur , Nobodoy Housing','1207','30',NULL,NULL,'2','2',NULL,'3','930','930','2','G+7','South','2nd','2nd','B','Available','<p>Apartment for sale at Mohammadpur , Nobodoy Housing Society,</p>\r\n\r\n<p>2 bed, 2 bath, 2 balcony, South Facing .</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-5a562b1ecd3433001cad71b66be9bb6d','apartment-for-sale-6f392dd8dc4cea0bd4253d5721284bcf','https://www.youtube.com/watch?v=RCo5sDEiB8k',1,1688666400,1,0,99,0,0,'2022-06-15 19:45:43','2022-07-24 23:08:45'),('inv004',224,1,0,'Apartment for sale','apartment-for-sale','2','Sale','12,000,000','12000000','4,700','Rakeen city, Mirpur',NULL,'29',NULL,NULL,'3','3','1','5','1,760','1760','2','G+12','North','2nd','2nd','B','NA','<p>luxury Apartment at Rakin city , gg</p>\r\n\r\n<p>Mirpur is up for sale .</p>\r\n\r\n<p>3 bed , 3 bath , 2 Balcony ready to move in .&nbsp;</p>\r\n\r\n<p>contact: Domicile Realtors LTD</p>\r\n\r\n<p>contact us at 01953533003</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Servant Bed','Servant Bath',NULL,NULL,NULL,NULL,'Reception',NULL,'Generator',NULL,'Lift','Kitchen Veranda','Kichen Cabinet',NULL,NULL,NULL,NULL,'Guest Parking',NULL,NULL,'Terrace',NULL,'apartment-for-sale-2b84b9d6a3906ff69f183df730bb067b','apartment-for-sale-cef4abbb1a22ebc0982da5fd5e6d6f76','https://www.youtube.com/watch?v=ddEA3t4uP9Q',1,1687456800,1,0,99,0,0,'2022-06-16 01:05:43','2022-07-24 23:08:32'),('DR005',230,1,0,'Apartment for sale','apartment-for-sale','2','Sale','6,000,000','6000000','5,136','Mohammadpur , Nobodoy Housing Society','1207','30',NULL,NULL,'2','3',NULL,NULL,'1,168','1168','2','G+6','North','3rd','3rd','A','NA','<p>3 Bed, 2 Bath, 2 Balcony, North facing , 3rd floor, Apartment at Nobodoy Housing soceity, Mohammadpur, Dhaka is up for sale. Call Domicile Realtors at 01953533003 for visit.&nbsp;</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-410564a312d0dcbba98e9548b89ad690',NULL,'https://www.youtube.com/watch?v=e1u1maWK2jw',1,1690826400,1,0,99,0,0,'2022-07-27 00:38:48','2022-07-27 00:39:39'),('DR0007',232,1,0,'Apartment for sale','apartment-for-sale','2','Sale','11,000,000','11000000',NULL,'adabor','1207','30',NULL,NULL,'4','3','1','5','1,472','1472','3','G+5','South','2nd','2nd','B','NA','<p>3 bed 4 bath 3 balcony Monsurabad , Mohammadpur apartment is up for sale . Call us at Domicile Realtors at 01953533003.&nbsp;</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Servant Bath',NULL,NULL,NULL,NULL,'Reception',NULL,NULL,NULL,'Lift',NULL,'Kichen Cabinet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-cf62eec428d1d35f4764af371be7f23b','apartment-for-sale-cce119502b39f2cd9f69219bb6dbd241','https://www.youtube.com/watch?v=8VxGN_FccEo',1,1693504800,1,0,99,0,0,'2022-08-04 00:52:00','2022-08-07 16:18:00'),('DR0008',233,1,0,'Apartment for sale','apartment-for-sale','2','Sale','13,000,000','13000000',NULL,'PALLABY','1216','29',NULL,NULL,'4','3','2','3','1,963','1963','2','G+6','East','6','6th',NULL,'NA','<p>3 bed , 4 bath , 3 balcony apartment at pallaby, Mirpur is up for sale. This Beautiful apartment comes with titas GAS and 2 parking garage. East facing apartment building is standing on 30 feet street in a quiet neighbourhood. Please contact Domicile Realtors at 01953533003.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Servant Bath',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-64f9b0cfaa9edf06b7acf81405583cb6','apartment-for-sale-df343f6b84a0ed60c40db9e2cede73c1','',1,1693504800,1,0,99,0,0,'2022-08-07 17:34:38','2022-08-07 17:36:20'),('DR0009',234,1,0,'Apartment for sale','apartment-for-sale','2','Sale','9,000,000','9000000',NULL,'Baitul Aman Housing , Mohammadpur','1207','30',NULL,NULL,'3','3','1',NULL,'1,438','1438','2','G+9',NULL,'1st','1st',NULL,NULL,'<p>3 bed 3 bath 2 balcony apartment for sale at Baitul Aman Housing , Mohammadpur . Please Contact Domicile Realtors at 01953533003.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-abeb4ad40415769d2f4ac850e15e1273',NULL,'',1,1693504800,1,0,99,0,0,'2022-08-08 09:36:43','2022-08-08 09:37:20'),('DR0010',235,1,0,'Apartment for sale','apartment-for-sale','2','Sale','9,900,000','9900000',NULL,'Baitul Aman Housing , Mohammadpur','1207','30',NULL,NULL,'3','4','1',NULL,'1,645','1645','2','G+9',NULL,'9th','9th',NULL,NULL,'<p>4 bed 3 bath 2 balcony apartment at Baitul Aman Housing , Mohammarpur for sale. Please Contact Domicile at 019535330003</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-6a6f9a57fc234a51e1d194deff9cf510',NULL,'',1,1698775200,1,0,99,0,0,'2022-08-08 10:07:56','2022-08-09 13:06:33'),('DR011',236,1,0,'SHOP FOR SALE','shop-for-sale','8','Sale','4,000,000','4000000',NULL,'Ring road , Mohammadpur','1207','30',NULL,NULL,NULL,NULL,NULL,NULL,'120,124','120124',NULL,NULL,NULL,'1st','1st',NULL,'NA','<p>120 sqft and 124 sqft shop for sale at prime location , Rng Road . Please Contact Domicile Realtors 01953533003.&nbsp;</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Generator',NULL,'Lift',NULL,NULL,NULL,'Guest Lobby','CCTV',NULL,'Guest Parking',NULL,NULL,NULL,NULL,'shop-for-sale-c06685da3174c8e5562202dea93d48ee','shop-for-sale-4f20f7f5d2e7a1b640ebc8244428558c','',1,1693504800,1,0,99,0,0,'2022-08-09 12:56:21','2022-08-09 12:57:01'),('DR0012',237,1,0,'Apartment for sale','apartment-for-sale','2','Sale','9,000,000','9000000',NULL,'MIRPUR 14','1206','29',NULL,NULL,'3','3','1',NULL,NULL,'','4','G+7',NULL,'1ST,3RD,5TH','1st',NULL,'Available','<p>3 bed 3 bath 4 balcony apartment for sale at mirpur 14. This apartment building is under construstion and will be handed over soon. Please call Domicile Realtors at 91953533003 for booking.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'apartment-for-sale-9e4b5b9b2461c934626eaf0b86d90c81','apartment-for-sale-b37245bd5e22836dea166c9bf1ce3715','',1,1693504800,1,0,99,0,0,'2022-08-09 21:44:56','2022-08-09 21:45:19');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

--
-- Table structure for table `property_gallery`
--

DROP TABLE IF EXISTS `property_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=468 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_gallery`
--

/*!40000 ALTER TABLE `property_gallery` DISABLE KEYS */;
INSERT INTO `property_gallery` VALUES (447,233,'apartment-for-sale_6856-b.jpg'),(448,233,'apartment-for-sale_5528-b.jpg'),(445,233,'apartment-for-sale_8405-b.jpg'),(446,233,'apartment-for-sale_5450-b.jpg'),(443,233,'apartment-for-sale_9203-b.jpg'),(444,233,'apartment-for-sale_6107-b.jpg'),(441,233,'apartment-for-sale_16-b.jpg'),(442,233,'apartment-for-sale_7913-b.jpg'),(439,233,'apartment-for-sale_4128-b.jpg'),(440,233,'apartment-for-sale_3785-b.jpg'),(438,233,'apartment-for-sale_9550-b.jpg'),(437,233,'apartment-for-sale_7678-b.jpg'),(436,232,'apartment-for-sale_2339-b.jpg'),(435,232,'apartment-for-sale_3459-b.jpg'),(434,232,'apartment-for-sale_7291-b.jpg'),(433,232,'apartment-for-sale_6524-b.jpg'),(431,224,'apartment-for-sale_7018-b.jpg'),(430,224,'apartment-for-sale_3078-b.jpg'),(429,224,'apartment-for-sale_39-b.jpg'),(427,222,'apartment-for-sale_1807-b.jpg'),(432,232,'apartment-for-sale_3555-b.jpg'),(449,234,'apartment-for-sale_827-b.jpg'),(450,234,'apartment-for-sale_1039-b.jpg'),(451,234,'apartment-for-sale_2409-b.jpg'),(452,234,'apartment-for-sale_8888-b.jpg'),(453,234,'apartment-for-sale_5680-b.jpg'),(454,234,'apartment-for-sale_4313-b.jpg'),(455,235,'apartment-for-sale_7781-b.jpg'),(456,235,'apartment-for-sale_6206-b.jpg'),(457,235,'apartment-for-sale_6325-b.jpg'),(458,235,'apartment-for-sale_2410-b.jpg'),(459,236,'shop-for-sale_947-b.jpg'),(460,236,'shop-for-sale_1569-b.jpg'),(461,236,'shop-for-sale_6520-b.jpg'),(462,236,'shop-for-sale_4413-b.jpg'),(463,236,'shop-for-sale_6493-b.jpg'),(464,237,'apartment-for-sale_7929-b.jpg'),(465,237,'apartment-for-sale_4785-b.jpg'),(466,237,'apartment-for-sale_3212-b.jpg'),(467,237,'apartment-for-sale_8738-b.jpg');
/*!40000 ALTER TABLE `property_gallery` ENABLE KEYS */;

--
-- Table structure for table `property_purposes`
--

DROP TABLE IF EXISTS `property_purposes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_purposes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_purposes`
--

/*!40000 ALTER TABLE `property_purposes` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_purposes` ENABLE KEYS */;

--
-- Table structure for table `property_types`
--

DROP TABLE IF EXISTS `property_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `types` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_types`
--

/*!40000 ALTER TABLE `property_types` DISABLE KEYS */;
INSERT INTO `property_types` VALUES (2,'Apartments/Flats','apartments'),(8,'Commercial Projects','commercial-projects'),(9,'Land','land');
/*!40000 ALTER TABLE `property_types` ENABLE KEYS */;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (2,'Thank You and stay with us.',2,'2021-01-24 13:57:25','2021-01-24 13:57:25'),(3,'Thank You Mr. Niaz. Stay with us',1,'2021-01-25 12:39:28','2021-01-25 12:39:28'),(4,'Thank you. Stay with us',5,'2021-01-25 12:42:18','2021-01-25 12:42:18'),(5,'Thank You Mr. Anik. Stay with us',6,'2021-01-27 17:14:45','2021-01-27 17:14:45'),(6,'Thank You',7,'2021-06-25 15:49:07','2021-06-25 15:49:07'),(7,'Thank you',9,'2021-11-05 01:10:31','2021-11-05 01:10:31'),(8,'per sft 2500',10,'2022-06-03 13:49:06','2022-06-03 13:49:06'),(9,'sadas',11,'2022-06-03 13:52:56','2022-06-03 13:52:56');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;

--
-- Table structure for table `service_categories`
--

DROP TABLE IF EXISTS `service_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_categories`
--

/*!40000 ALTER TABLE `service_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_categories` ENABLE KEYS */;

--
-- Table structure for table `service_childcategories`
--

DROP TABLE IF EXISTS `service_childcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_childcategories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_subcategory_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_childcategories`
--

/*!40000 ALTER TABLE `service_childcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_childcategories` ENABLE KEYS */;

--
-- Table structure for table `service_subcategories`
--

DROP TABLE IF EXISTS `service_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_subcategories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_category_id` int(90) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_subcategories`
--

/*!40000 ALTER TABLE `service_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_subcategories` ENABLE KEYS */;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_phone` int(11) DEFAULT NULL,
  `category_id` int(10) NOT NULL,
  `subcategory_id` int(10) DEFAULT NULL,
  `childcategory_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_cost` int(10) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `user_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_zone` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'UTC',
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_map_key` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recaptcha` int(1) NOT NULL DEFAULT 0,
  `recaptcha_secret_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recaptcha_site_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_header_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_footer_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_widget1_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_widget1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_widget2_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_widget2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_widget3_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_widget3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_bg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `all_properties_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_properties_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_properties_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_properties_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rent_properties_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagination_limit` int(3) NOT NULL DEFAULT 12,
  `addthis_share_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `disqus_comment_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_long` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_us_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_conditions_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `privacy_policy_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '$',
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_percentage` float(11,2) NOT NULL,
  `paypal_payment_on_off` int(1) NOT NULL DEFAULT 1,
  `paypal_mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'sandbox',
  `paypal_client_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_secret` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_payment_on_off` int(1) NOT NULL DEFAULT 1,
  `stripe_secret_key` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured_property_price` float(11,2) DEFAULT NULL,
  `bank_payment_details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Company Name',
  `invoice_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Suite 1C1, 25-33 Allen St',
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_encryption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gdpr_cookie_title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gdpr_cookie_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gdpr_cookie_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Asia/Almaty','Domicile Realtors','info@domicilebd.com','logo.png','favicon.png',NULL,0,'6LdSOrAZAAAAAJCgAcYFsnxJ8ujTWEf-S4bjS1E-','6LdSOrAZAAAAAMeZZjwIFU57GiF19m6e9XTgCTBj',NULL,'Dimicile_Realtor','','','Copyright © 2022 Domicile Realtors Ltd.  All rights reserved.','About Us','Domicile Realtors is the only real estate consultancy firm with a mission to provide trustworthy, quality & satisfying service to property buyers and sellers. Domicile Realtors provides highly expert agents for securing the investment of our honourable clients.','Follow Us','','Get In Touch','<ul class=\\\"contact-info\\\">\r\n            <li><i class=\\\"fa fa-map-marker\\\"></i>Building #07, Road No #02, Block #B, Nobodoy Housing, Mohammadpur, Dhaka-1207</li>\r\n            <li class=\\\"phone\\\"><i class=\\\"fa fa-phone\\\"></i>+8801953533003</li>\r\n            <li><i class=\\\"fa fa-envelope\\\"></i>info@domicilebd.com</li>\r\n </ul>','title_bg.jpg','grid_side','23.7414913','90.4115724','slider','grid_side','grid','grid_side',9,'<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5f4e3dd87c01705e\"></script>','<div id=\"disqus_thread\"></div>\r\n<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://divine-home-pro.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>\r\n<noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n<script id=\"dsq-count-scr\" src=\"//divine-home-pro.disqus.com/count.js\" async></script>','https://www.facebook.com/domicilerealtorsbd/','https://www.youtube.com/channel/UCFxOrJlusagsTxXqvymdfww',NULL,NULL,'38.493744','-122.456286','Contact Us','info@domicilebd.com','+8801953533003','Building #07, Road No #02, Block #B, Nobodoy Housing, Mohammadpur, Dhaka-1207','','','','','৳','BDT',0.00,1,'sandbox',NULL,NULL,1,NULL,9.99,'<div><span style=\\\"font-weight: bold;\\\">Bank payment details</span></div><div><br></div><div>ICICI:&nbsp;</div><div>SWIFT:&nbsp;</div><div><br></div><div>Featured property details</div><div><br></div>','Domicile Realtor','Building #07, Road No #02, Nobodoy Housing, Mohammadpur, Dhaka-1207','smtp.gmail.com','587','domicile1971@gmail.com','Domicile#1971','TLS','This website is using cookies','We use technical and analytics cookies to ensure that we give you the best experience on our website.','#');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) DEFAULT NULL,
  `skill` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,20,'Developer',NULL,NULL),(2,22,'Developer',NULL,NULL),(3,22,'Designer',NULL,NULL),(4,30,'Developer',NULL,NULL),(5,31,'skill',NULL,NULL),(6,32,'skill',NULL,NULL),(7,35,'saaa',NULL,NULL),(8,36,'skill',NULL,NULL),(9,38,'sales',NULL,NULL),(10,51,'skill',NULL,NULL),(11,52,'skill',NULL,NULL),(12,53,'skill',NULL,NULL),(13,54,'MS Office',NULL,NULL),(14,55,'skill',NULL,NULL),(15,56,'skill',NULL,NULL),(16,57,'Sales & Marketing',NULL,NULL),(17,61,'skill',NULL,NULL),(18,62,'skill',NULL,NULL),(19,63,'skill',NULL,NULL),(20,64,'skill',NULL,NULL),(21,64,'skill2',NULL,NULL),(22,66,'skill',NULL,NULL),(23,67,'Computer',NULL,NULL),(24,71,'Communication',NULL,NULL),(25,75,'skill',NULL,NULL),(26,76,'Balda',NULL,NULL),(27,77,'sdfds',NULL,NULL),(28,84,'nil',NULL,NULL),(29,87,'alla',NULL,NULL),(30,88,'skill',NULL,NULL),(31,89,'alla',NULL,NULL),(32,90,'Developer',NULL,NULL),(33,91,'Developer',NULL,NULL),(34,92,'skill',NULL,NULL),(35,93,'skill',NULL,NULL),(36,94,'skill',NULL,NULL),(37,95,'Good',NULL,NULL),(38,96,'skill',NULL,NULL),(39,96,'skill2',NULL,NULL),(40,107,'Digital Marketing',NULL,NULL),(41,108,'Developer',NULL,NULL),(42,111,'skill',NULL,NULL),(43,111,NULL,NULL,NULL),(50,119,'skill',NULL,NULL),(51,119,NULL,NULL,NULL),(52,122,'Software',NULL,NULL),(53,122,NULL,NULL,NULL),(54,124,'Software',NULL,NULL),(55,124,NULL,NULL,NULL),(56,128,'Software',NULL,NULL),(57,128,NULL,NULL,NULL),(58,129,'Software',NULL,NULL),(59,129,NULL,NULL,NULL),(60,36,'Software',NULL,NULL),(61,36,NULL,NULL,NULL),(62,37,'sdsdsd',NULL,NULL),(63,37,NULL,NULL,NULL),(64,41,'Debate',NULL,NULL),(65,41,NULL,NULL,NULL),(66,46,NULL,NULL,NULL),(67,46,NULL,NULL,NULL),(68,49,NULL,NULL,NULL),(69,49,NULL,NULL,NULL),(70,50,NULL,NULL,NULL),(71,50,NULL,NULL,NULL),(72,56,'Fast learner',NULL,NULL),(73,56,NULL,NULL,NULL),(74,61,'12 years sales experience of Real estate sector',NULL,NULL),(75,61,NULL,NULL,NULL),(76,62,'Real Estate property marketing Manager',NULL,NULL),(77,62,NULL,NULL,NULL),(78,63,'sdsdsd',NULL,NULL),(79,63,NULL,NULL,NULL),(80,64,'SALES',NULL,NULL),(81,64,NULL,NULL,NULL),(82,69,NULL,NULL,NULL),(83,69,NULL,NULL,NULL),(84,70,NULL,NULL,NULL),(85,70,NULL,NULL,NULL),(86,71,NULL,NULL,NULL),(87,71,NULL,NULL,NULL),(88,72,NULL,NULL,NULL),(89,72,NULL,NULL,NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_text1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_text2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (15,'Test','BUY . SELL','your property........','test-a3a11afb3ad5873b8faa5c6637f23926'),(22,'Property Management.','Hire Us','for your property management.......','property-management-8ac078d7b7fc3301ae29f35810510c1b');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber`
--

/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` VALUES (1,'admin@gmail.com','::1'),(2,'admin@gmail.com','::1'),(4,'cartermitchell.27620113@dyplesher.info','193.142.59.139');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;

--
-- Table structure for table `subscription_plan`
--

DROP TABLE IF EXISTS `subscription_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) NOT NULL,
  `plan_days` int(11) NOT NULL,
  `plan_duration` varchar(255) NOT NULL,
  `plan_duration_type` varchar(255) NOT NULL,
  `plan_price` decimal(11,2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_plan`
--

/*!40000 ALTER TABLE `subscription_plan` DISABLE KEYS */;
INSERT INTO `subscription_plan` VALUES (1,'Basic Plan',7,'7','1',5.00,1),(2,'Premium Plan',30,'1','30',10.00,1),(3,'Platinum Plan',365,'1','365',49.00,1),(4,'free',365,'1','365',0.00,1);
/*!40000 ALTER TABLE `subscription_plan` ENABLE KEYS */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkdn` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (8,'Hosne Maria Bipasha','public/upload/teams/1652685076rsz_eb2a26cd893733389340c0a1667a1005.jpg','Chairman','chairman@domicilebd.com','https://www.linkedin.com/in/hosne-maria-b-48976a1ab','From the day we entered the Real Estate Business in 2021, Domicile Realtors has succeeded by placing our clients\' needs first. Their success has been our success and our commitment to their needs, now and in the future.\r\n\r\nI was working for a Private Commercial Bank for long 10 years in the Financial Control Division. Working all these years with FCD I have managed to earn some qualities such as Communication Skills, Integrity, Engaging Personality , Understand the Local Housing Market and so on. My ability to negotiate deals will always help our clients to meet their Goals.',0,NULL,NULL),(9,'Samiur Rahman','/public/upload/teams/1658723238rsz_whatsapp_image_2022-07-25_at_102255_am.jpg','Managing Director','md@dimicilebd.com','https://www.linkedin.com/in/samiur-rahman-712754172','Samiur Rahman moved back to Dhaka, Bangladesh from Dallas, Texas, USA. He studied Bachelors of Accounting in Australia and later moved to the USA to join Goldman Sachs bank as an Account Specialist. Samiur worked in a fast upscale environment, assuring client delight on an American multinational investment bank. As Samiur was always passionate about his own country, moving to Bangladesh was a natural fit. \r\n\r\nWith the encouragement of his friends and family,  Samiur started the Domicile Realtors company in 2022. His hard work, charisma and true passion for his business has helped his reputation as a qualified realtor in Bangladesh.  Samiur specializes in all facets of the real estate business, whether it be navigating the way for first timers, trying to score that perfect property or providing help in the luxury market, he knows and experienced it all.',1,NULL,NULL),(10,'Abeer Hassan','public/upload/teams/16587221911640337991IMG-20211126-WA0000.jpg','Chief Executive Officer- CEO','abeer@domicilebd.com',NULL,NULL,1,NULL,NULL),(11,'Asadul Haque','/public/upload/teams/1658723327rsz_1271813314_667212354297198_4019069667309319593_n.jpg','Chairman','asad@domicilebd.com','https://www.linkedin.com/in/mdasadulhaque/','Asadul Haque is a property lawyer, who provide all types of legal support required from the clients side. Mr. Haque previously worked for SiKi Realtor, Building Technology & Ideas Limited, FloorFly Realtor.',1,NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `testimonial` text COLLATE utf8_unicode_ci NOT NULL,
  `t_user_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'John Doe','Lawyer','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto dolor, earum eum illo nostrum possimus quae, quasi quod ratione recusandae repudiandae soluta vero? Dicta dolor est et exercitationem illo! Deleniti dolorem est facere neque pariatur, quaerat recusandae ut? Alias atque cum dicta hic ipsum laboriosam, modi numquam sed vero?','john-doe-2606fbaedca2a141aadec6dd0f9f160a'),(2,'Chris Brown','Accountant','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto dolor, earum eum illo nostrum possimus quae, quasi quod ratione recusandae repudiandae soluta vero? Dicta dolor est et exercitationem illo! Deleniti dolorem est facere neque pariatur, quaerat recusandae ut? Alias atque cum dicta hic ipsum laboriosam, modi numquam sed vero?','chris-brown-9db2c9687965bb31c1d03c79e99aa2fc'),(3,'Harry Cool','Photographer','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi architecto dolor, earum eum illo nostrum possimus quae, quasi quod ratione recusandae repudiandae soluta vero? Dicta dolor est et exercitationem illo! Deleniti dolorem est facere neque pariatur, quaerat recusandae ut? Alias atque cum dicta hic ipsum laboriosam, modi numquam sed vero?','harry-cool-e2797cb6a879efc1af1a2068586c8cca'),(4,'Jane Doe','Nurse','Phasellus quis lectus metus, at posuere neque. Sed pharetra nibh eget orci convallis at posuere leo convallis','jane-doe-2a29b9a9b0a26a7d39e8d6fb247eef69'),(5,'Cen Lung','Accountant','Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.Vivamus sit amet libero turpis, non venenatis urna. In blandit, odio convallis suscipit venenatis, ante ipsum cursus augue.','cen-lung-d868f46a40b126f375f0b6a4b40500c8');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `gateway` varchar(255) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `tax_amount` varchar(255) NOT NULL,
  `total_payment_amount` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,8,10,'owner@gmail.com',4,'none','0','0','0','none',1597082400),(2,9,11,'smil@gmil.com',4,'none','0','0','0','none',1597168800);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;

--
-- Table structure for table `upazilas`
--

DROP TABLE IF EXISTS `upazilas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upazilas` (
  `id` int(2) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(2) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `upazila_id` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upazilas`
--

/*!40000 ALTER TABLE `upazilas` DISABLE KEYS */;
INSERT INTO `upazilas` VALUES (1,1,'Aftabnagar'),(2,1,'Adabar'),(3,1,'Banani'),(4,1,'Bashundhara'),(5,1,'Badda'),(6,1,'Bangshal'),(7,1,'Bhashantek'),(8,1,'Bhatara'),(9,1,'Biman Bandar'),(10,1,'Chalkbazar'),(11,1,'Cantonment'),(12,1,'Dhamrai'),(13,1,'Dhanmondi'),(14,1,'Dakhinkhan'),(15,1,'Darus Salam'),(16,1,'Demra'),(17,1,'Gulshan'),(18,1,'Gendaria'),(19,1,'Hazaribagh'),(20,1,'Jatrabari'),(21,1,'Joypara'),(22,1,'Keraniganj'),(23,1,'Khilgaon'),(24,1,'Khilkhet'),(25,1,'Kadamtoli'),(26,1,'Kamrangirchar'),(27,1,'Kotwali'),(28,1,'Lalbag'),(29,1,'Mirpur'),(30,1,'Mohammadpur'),(31,1,'Motijheel'),(32,1,'Nawabganj'),(33,1,'New market'),(34,1,'Palton'),(35,1,'Pallabi'),(36,1,'Ramna'),(37,1,'Rampura'),(38,1,'Rupnagar'),(39,1,'Sherebangla Nagar'),(40,1,'Shahjahanpur'),(41,1,'Sabujbag'),(42,1,'Savar'),(43,1,'Sutrapur'),(44,1,'Tejgaon'),(45,1,'Tejgaon industrial area'),(46,1,'Turag'),(47,1,'Uttara'),(48,1,'Uttarkhan'),(49,1,'Malibag'),(50,1,'Baridhara'),(51,1,'Shegunbagicha'),(52,1,'Shiddhessory'),(53,1,'Purbachal'),(54,1,'Nikunja'),(58,1,'Agargaon');
/*!40000 ALTER TABLE `upazilas` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usertype` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accecpt` tinyint(1) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `yrs_exp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `college` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passing_year_ssc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passing_year_hsc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passing_year_graduation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin',1,'Domicile Realtors Ltd','domicile1971@gmail.com','$2y$10$ydXn.mI5imVSUswoB2wPdO4IHu9QUaN.bWyst3G72q8YLtPVPEziy',NULL,'+8801953533003','Domicile Realtor is the only real estate consultancy firm in Bangladesh.','https://www.facebook.com/','https://www.linkedin.com/company/',NULL,0,'2016-10-11 12:42:11','2022-08-08 18:25:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'domicile-realtors-ltd-a4c70f916c50149af708d0a34f4bd3f4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Table structure for table `varify`
--

DROP TABLE IF EXISTS `varify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `varify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varify`
--

/*!40000 ALTER TABLE `varify` DISABLE KEYS */;
INSERT INTO `varify` VALUES (2,'265338','2020-09-12 22:45:48','2020-09-12 22:45:48'),(31,'883281','2020-09-13 22:35:13','2020-09-13 22:35:13'),(40,'723692','2020-09-14 21:53:01','2020-09-14 21:53:01'),(46,'784107','2020-09-16 16:32:11','2020-09-16 16:32:11'),(47,'657564','2020-09-16 16:34:07','2020-09-16 16:34:07'),(48,'493545','2020-09-16 16:35:44','2020-09-16 16:35:44'),(50,'724854','2020-09-16 16:50:15','2020-09-16 16:50:15'),(52,'255807','2020-09-16 17:39:32','2020-09-16 17:39:32'),(53,'310677','2020-09-16 17:44:38','2020-09-16 17:44:38'),(54,'899215','2020-09-16 17:47:11','2020-09-16 17:47:11'),(56,'144615','2020-09-19 11:28:37','2020-09-19 11:28:37'),(63,'354999','2020-09-21 08:18:27','2020-09-21 08:18:27'),(78,'496800','2020-10-08 15:04:15','2020-10-08 15:04:15'),(87,'918067','2020-10-08 15:58:06','2020-10-08 15:58:06'),(90,'775286','2020-10-08 16:43:43','2020-10-08 16:43:43'),(93,'622682','2020-10-10 02:15:06','2020-10-10 02:15:06'),(96,'931508','2020-10-13 02:30:06','2020-10-13 02:30:06'),(97,'423346','2020-10-14 17:56:44','2020-10-14 17:56:44'),(98,'292780','2020-10-15 09:34:26','2020-10-15 09:34:26'),(102,'615559','2020-10-17 16:28:28','2020-10-17 16:28:28'),(103,'374631','2020-10-17 16:30:58','2020-10-17 16:30:58'),(104,'960335','2020-10-17 16:33:56','2020-10-17 16:33:56'),(105,'824007','2020-10-17 16:38:15','2020-10-17 16:38:15'),(110,'245691','2020-10-21 18:04:59','2020-10-21 18:04:59'),(114,'465960','2020-10-23 22:07:24','2020-10-23 22:07:24'),(115,'498031','2020-10-24 23:40:53','2020-10-24 23:40:53'),(116,'639395','2020-10-28 10:10:48','2020-10-28 10:10:48'),(117,'417911','2020-10-28 10:21:12','2020-10-28 10:21:12'),(120,'801433','2020-11-09 17:27:01','2020-11-09 17:27:01'),(122,'429956','2020-11-09 17:41:24','2020-11-09 17:41:24'),(135,'431169','2020-11-23 08:46:02','2020-11-23 08:46:02'),(139,'635078','2020-11-23 08:49:12','2020-11-23 08:49:12'),(142,'750974','2020-11-25 11:34:31','2020-11-25 11:34:31'),(143,'753352','2020-11-25 11:35:45','2020-11-25 11:35:45'),(146,'424653','2020-12-02 16:19:10','2020-12-02 16:19:10'),(151,'210117','2020-12-13 16:41:23','2020-12-13 16:41:23'),(155,'701122','2020-12-16 02:50:31','2020-12-16 02:50:31'),(161,'290714','2020-12-24 14:48:44','2020-12-24 14:48:44'),(162,'295645','2020-12-24 14:48:47','2020-12-24 14:48:47'),(163,'337538','2020-12-24 14:49:09','2020-12-24 14:49:09'),(164,'169014','2020-12-24 14:49:48','2020-12-24 14:49:48'),(165,'563764','2020-12-24 14:49:50','2020-12-24 14:49:50'),(166,'833156','2020-12-24 14:49:50','2020-12-24 14:49:50'),(167,'723173','2020-12-24 14:49:50','2020-12-24 14:49:50'),(168,'138483','2020-12-24 14:49:51','2020-12-24 14:49:51'),(169,'433934','2020-12-24 14:49:52','2020-12-24 14:49:52'),(170,'200853','2020-12-24 14:49:52','2020-12-24 14:49:52'),(171,'365819','2020-12-24 14:49:52','2020-12-24 14:49:52'),(172,'673131','2020-12-24 14:49:52','2020-12-24 14:49:52'),(173,'467130','2020-12-24 14:49:52','2020-12-24 14:49:52'),(174,'151745','2020-12-24 14:49:52','2020-12-24 14:49:52'),(175,'486728','2020-12-24 14:50:42','2020-12-24 14:50:42'),(176,'221427','2020-12-24 14:50:42','2020-12-24 14:50:42'),(177,'916790','2020-12-24 14:50:43','2020-12-24 14:50:43'),(178,'719445','2020-12-24 14:50:43','2020-12-24 14:50:43'),(179,'528944','2020-12-24 14:50:44','2020-12-24 14:50:44'),(180,'715428','2020-12-24 14:50:44','2020-12-24 14:50:44'),(181,'266049','2020-12-24 14:50:44','2020-12-24 14:50:44'),(182,'574505','2020-12-24 14:50:44','2020-12-24 14:50:44'),(186,'825378','2021-01-08 22:00:52','2021-01-08 22:00:52'),(187,'233173','2021-01-08 22:01:12','2021-01-08 22:01:12'),(188,'545664','2021-01-08 22:01:45','2021-01-08 22:01:45'),(190,'700433','2021-01-09 15:20:19','2021-01-09 15:20:19'),(191,'359985','2021-01-09 15:20:39','2021-01-09 15:20:39'),(192,'624193','2021-01-09 15:20:54','2021-01-09 15:20:54'),(193,'330385','2021-01-09 15:20:56','2021-01-09 15:20:56'),(194,'823645','2021-01-11 12:07:43','2021-01-11 12:07:43'),(195,'834213','2021-01-11 12:10:41','2021-01-11 12:10:41'),(196,'673748','2021-01-11 12:13:04','2021-01-11 12:13:04'),(200,'911777','2021-01-15 22:59:40','2021-01-15 22:59:40'),(202,'722903','2021-01-21 14:51:07','2021-01-21 14:51:07'),(209,'760729','2021-02-19 03:20:57','2021-02-19 03:20:57'),(210,'203255','2021-02-19 03:21:18','2021-02-19 03:21:18'),(211,'686827','2021-02-19 03:21:37','2021-02-19 03:21:37'),(212,'263733','2021-02-19 03:21:57','2021-02-19 03:21:57'),(213,'940722','2021-02-19 03:22:01','2021-02-19 03:22:01'),(214,'452935','2021-02-19 03:22:03','2021-02-19 03:22:03'),(215,'911964','2021-02-19 03:22:05','2021-02-19 03:22:05'),(216,'436849','2021-02-19 03:22:07','2021-02-19 03:22:07'),(217,'830360','2021-02-19 03:22:10','2021-02-19 03:22:10'),(218,'598229','2021-02-19 03:22:12','2021-02-19 03:22:12'),(219,'510614','2021-02-19 03:22:15','2021-02-19 03:22:15'),(220,'632473','2021-02-19 03:22:17','2021-02-19 03:22:17'),(221,'627054','2021-02-19 03:22:20','2021-02-19 03:22:20'),(225,'226822','2021-02-28 13:46:57','2021-02-28 13:46:57'),(231,'177701','2021-03-24 12:37:40','2021-03-24 12:37:40'),(232,'486406','2021-04-11 19:11:56','2021-04-11 19:11:56'),(238,'963379','2021-05-06 21:50:17','2021-05-06 21:50:17'),(239,'191176','2021-05-08 16:54:31','2021-05-08 16:54:31'),(241,'392534','2021-06-04 11:46:51','2021-06-04 11:46:51'),(243,'621465','2021-06-08 11:21:22','2021-06-08 11:21:22'),(247,'260298','2021-06-11 17:27:09','2021-06-11 17:27:09'),(248,'130406','2021-06-24 11:45:52','2021-06-24 11:45:52'),(249,'965097','2022-05-12 00:14:22','2022-05-12 00:14:22'),(250,'711418','2022-05-12 00:16:23','2022-05-12 00:16:23'),(251,'148928','2022-05-12 00:21:41','2022-05-12 00:21:41');
/*!40000 ALTER TABLE `varify` ENABLE KEYS */;

--
-- Dumping routines for database 'u764021699_domicilebd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-09 18:21:33
