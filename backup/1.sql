-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: moviesuniverse_test
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-07-03 05:28:43','2017-07-03 05:28:43');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockedips`
--

DROP TABLE IF EXISTS `blockedips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockedips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blockedips_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_097750d3c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockedips`
--

LOCK TABLES `blockedips` WRITE;
/*!40000 ALTER TABLE `blockedips` DISABLE KEYS */;
/*!40000 ALTER TABLE `blockedips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'Pakistan','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'India','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'UK','2017-07-03 05:29:01','2017-07-03 05:29:01'),(5,'USA','2017-07-03 05:29:01','2017-07-03 05:29:01'),(6,'China','2017-07-03 05:29:01','2017-07-03 05:29:01'),(7,'Canada','2017-07-03 05:29:01','2017-07-03 05:29:01'),(8,'Japan','2017-07-03 05:29:01','2017-07-03 05:29:01'),(9,'Germany','2017-07-03 05:29:01','2017-07-03 05:29:01'),(10,'France','2017-07-03 05:29:01','2017-07-03 05:29:01'),(11,'Rusia','2017-07-03 05:29:01','2017-07-03 05:29:01'),(12,'Turkey','2017-07-03 05:29:01','2017-07-03 05:29:01'),(13,'Asia','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'Hindi','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'English','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'Punjabi','2017-07-03 05:29:01','2017-07-03 05:29:01'),(5,'Tamil','2017-07-03 05:29:01','2017-07-03 05:29:01'),(6,'Chinese','2017-07-03 05:29:01','2017-07-03 05:29:01'),(7,'Turkish','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `latest_movies`
--

DROP TABLE IF EXISTS `latest_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latest_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_latest_movies_on_movie_id` (`movie_id`),
  CONSTRAINT `fk_rails_3fff8f3fa8` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `latest_movies`
--

LOCK TABLES `latest_movies` WRITE;
/*!40000 ALTER TABLE `latest_movies` DISABLE KEYS */;
INSERT INTO `latest_movies` VALUES (1,1,'2017-07-03 05:30:41','2017-07-03 05:30:41'),(2,2,'2017-07-03 05:30:41','2017-07-03 05:30:41'),(3,3,'2017-07-03 05:30:42','2017-07-03 05:30:42'),(4,4,'2017-07-03 05:30:42','2017-07-03 05:30:42'),(5,5,'2017-07-03 05:30:43','2017-07-03 05:30:43'),(6,6,'2017-07-03 05:30:43','2017-07-03 05:30:43'),(7,7,'2017-07-03 05:30:44','2017-07-03 05:30:44'),(8,8,'2017-07-03 05:30:44','2017-07-03 05:30:44'),(9,9,'2017-07-03 05:30:44','2017-07-03 05:30:44'),(10,10,'2017-07-03 05:30:45','2017-07-03 05:30:45'),(11,11,'2017-07-03 05:30:45','2017-07-03 05:30:45'),(12,12,'2017-07-03 05:30:46','2017-07-03 05:30:46'),(13,13,'2017-07-03 05:30:46','2017-07-03 05:30:46'),(14,14,'2017-07-03 05:30:46','2017-07-03 05:30:46'),(15,15,'2017-07-03 05:30:47','2017-07-03 05:30:47'),(16,16,'2017-07-03 05:30:47','2017-07-03 05:30:47'),(17,17,'2017-07-03 05:30:48','2017-07-03 05:30:48'),(18,18,'2017-07-03 05:30:48','2017-07-03 05:30:48'),(19,19,'2017-07-03 05:30:49','2017-07-03 05:30:49'),(20,20,'2017-07-03 05:30:49','2017-07-03 05:30:49'),(21,21,'2017-07-03 05:30:49','2017-07-03 05:30:49'),(22,22,'2017-07-03 05:30:50','2017-07-03 05:30:50');
/*!40000 ALTER TABLE `latest_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_movies`
--

DROP TABLE IF EXISTS `linked_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `new_movie_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_linked_movies_on_movie_id` (`movie_id`),
  CONSTRAINT `fk_rails_4e693f2dcd` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_movies`
--

LOCK TABLES `linked_movies` WRITE;
/*!40000 ALTER TABLE `linked_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modes`
--

DROP TABLE IF EXISTS `modes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modes`
--

LOCK TABLES `modes` WRITE;
/*!40000 ALTER TABLE `modes` DISABLE KEYS */;
INSERT INTO `modes` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'Romatic','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'Action','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'Horror','2017-07-03 05:29:01','2017-07-03 05:29:01'),(5,'Thriller','2017-07-03 05:29:01','2017-07-03 05:29:01'),(6,'Science Friction','2017-07-03 05:29:01','2017-07-03 05:29:01'),(7,'Story','2017-07-03 05:29:01','2017-07-03 05:29:01'),(8,'Adventure','2017-07-03 05:29:01','2017-07-03 05:29:01'),(9,'Biography','2017-07-03 05:29:01','2017-07-03 05:29:01'),(10,'Crime','2017-07-03 05:29:01','2017-07-03 05:29:01'),(11,'Sports','2017-07-03 05:29:01','2017-07-03 05:29:01'),(12,'War','2017-07-03 05:29:01','2017-07-03 05:29:01'),(13,'Family','2017-07-03 05:29:01','2017-07-03 05:29:01'),(14,'Fantasy','2017-07-03 05:29:01','2017-07-03 05:29:01'),(15,'Documentary','2017-07-03 05:29:01','2017-07-03 05:29:01'),(16,'Comedy','2017-07-03 05:29:01','2017-07-03 05:29:01'),(17,'Musical','2017-07-03 05:29:01','2017-07-03 05:29:01'),(18,'Animation','2017-07-03 05:29:01','2017-07-03 05:29:01'),(19,'History','2017-07-03 05:29:01','2017-07-03 05:29:01'),(20,'Darama','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `modes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modes_movies`
--

DROP TABLE IF EXISTS `modes_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modes_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_modes_movies_on_mode_id` (`mode_id`),
  KEY `index_modes_movies_on_movie_id` (`movie_id`),
  CONSTRAINT `fk_rails_b5fe2255b1` FOREIGN KEY (`mode_id`) REFERENCES `modes` (`id`),
  CONSTRAINT `fk_rails_f397d56221` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modes_movies`
--

LOCK TABLES `modes_movies` WRITE;
/*!40000 ALTER TABLE `modes_movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `modes_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `months` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months`
--

LOCK TABLES `months` WRITE;
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
INSERT INTO `months` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'January','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'Febrary','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'March','2017-07-03 05:29:01','2017-07-03 05:29:01'),(5,'April','2017-07-03 05:29:01','2017-07-03 05:29:01'),(6,'May','2017-07-03 05:29:01','2017-07-03 05:29:01'),(7,'June','2017-07-03 05:29:01','2017-07-03 05:29:01'),(8,'July','2017-07-03 05:29:01','2017-07-03 05:29:01'),(9,'August','2017-07-03 05:29:01','2017-07-03 05:29:01'),(10,'September','2017-07-03 05:29:01','2017-07-03 05:29:01'),(11,'October','2017-07-03 05:29:01','2017-07-03 05:29:01'),(12,'November','2017-07-03 05:29:01','2017-07-03 05:29:01'),(13,'December','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_urls`
--

DROP TABLE IF EXISTS `movie_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `url` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_movie_urls_on_movie_id` (`movie_id`),
  KEY `index_movie_urls_on_user_id` (`user_id`),
  CONSTRAINT `fk_rails_ef5ca41555` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `fk_rails_fd754b3205` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_urls`
--

LOCK TABLES `movie_urls` WRITE;
/*!40000 ALTER TABLE `movie_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `trailer_link` text,
  `page` text,
  `discription` text,
  `rating` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `viewers` int(11) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `search_name` text,
  `encrypted_id` text,
  `column6` varchar(255) DEFAULT NULL,
  `column7` varchar(255) DEFAULT NULL,
  `column8` varchar(255) DEFAULT NULL,
  `column9` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `month_id` int(11) DEFAULT NULL,
  `quality_id` int(11) DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `video_authentication` tinyint(1) DEFAULT NULL,
  `is_updated` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_movies_on_country_id` (`country_id`),
  KEY `index_movies_on_month_id` (`month_id`),
  KEY `index_movies_on_quality_id` (`quality_id`),
  KEY `index_movies_on_year_id` (`year_id`),
  KEY `index_movies_on_language_id` (`language_id`),
  KEY `index_movies_on_type_id` (`type_id`),
  KEY `index_movies_on_site_id` (`site_id`),
  CONSTRAINT `fk_rails_12a4aa3d0b` FOREIGN KEY (`quality_id`) REFERENCES `qualities` (`id`),
  CONSTRAINT `fk_rails_3960b4efda` FOREIGN KEY (`month_id`) REFERENCES `months` (`id`),
  CONSTRAINT `fk_rails_6604e716d2` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `fk_rails_83d31c3618` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `fk_rails_a91517549b` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  CONSTRAINT `fk_rails_a9eef36a9c` FOREIGN KEY (`site_id`) REFERENCES `sites` (`id`),
  CONSTRAINT `fk_rails_f5b9a38685` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Darkness Rising (2017) Full Movie Watch Online HD Print Free... ',NULL,'http://www.watchonlinemovies.com.pk/darkness-rising-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Darkness Rising ',NULL,'giHepRx3gmpEfj8zYQuYJg==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:41','2017-07-03 05:30:41','data','image/jpeg',9075,'2017-07-03 05:30:41'),(2,'47 Meters Down (2017) Full Movie Watch Online HD Print Free ... ',NULL,'http://www.watchonlinemovies.com.pk/47-meters-down-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,1,NULL,'47 Meters Down ',NULL,'AXMAFIugDpII2CAe8ntx3Q==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:41','2017-07-03 05:30:41','data','image/jpeg',7718,'2017-07-03 05:30:41'),(3,'Inconceivable (2017) Full Movie Watch Online HD Print Free D... ',NULL,'http://www.watchonlinemovies.com.pk/inconceivable-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Inconceivable ',NULL,'JHx56yz52gjDLAz3E+jqBg==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:42','2017-07-03 05:30:42','data','image/jpeg',7726,'2017-07-03 05:30:42'),(4,'Wonder Woman (2017) Full Movie Watch Online HD Print Free Do... ',NULL,'http://www.watchonlinemovies.com.pk/wonder-woman-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,2,NULL,'Wonder Woman ',NULL,'dZt/JfxphEUe03H3ChplAA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:42','2017-07-03 05:30:42','data','image/jpeg',6737,'2017-07-03 05:30:42'),(5,'Okja (2017) Hindi Dubbed Full Movie Watch Online HD Print Fr... ',NULL,'http://www.watchonlinemovies.com.pk/okja-2017-hindi-dubbed-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Okja ',NULL,'M200271Bt9YFGTLOJWw7zw==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:43','2017-07-03 05:30:43','data','image/jpeg',6026,'2017-07-03 05:30:43'),(6,'The Expendables 2 (2012) Hindi Dubbed Full Movie Watch Onlin... ',NULL,'http://www.watchonlinemovies.com.pk/the-expendables-2-2012-hindi-dubbed-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'The Expendables 2 ',NULL,'bjfX4+DOpqb70LU4g+We9A==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:43','2017-07-03 05:30:43','open-uri20170702-6092-1bnyuh7','image/jpeg',12225,'2017-07-03 05:30:43'),(7,'Another Evil (2016) Full Movie Watch Online HD Print Free Do... ',NULL,'http://www.watchonlinemovies.com.pk/another-evil-2016-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Another Evil ',NULL,'MWypon/sYXVxASGbmcBc2Q==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:44','2017-07-03 05:30:44','data','image/jpeg',7549,'2017-07-03 05:30:44'),(8,'Ajab Singh Ki Gajab Kahani (2017) Full Movie Watch Online HD... ',NULL,'http://www.watchonlinemovies.com.pk/ajab-singh-ki-gajab-kahani-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Ajab Singh Ki Gajab Kahani ',NULL,'XMKf7SGHA7/bLB4myxsmkA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:44','2017-07-03 05:30:44','open-uri20170702-6092-1i2sp8o','image/jpeg',10643,'2017-07-03 05:30:44'),(9,'Theri (Hunter) (2017) Hindi Dubbed Full Movie Watch Online H... ',NULL,'http://www.watchonlinemovies.com.pk/theri-hunter-2017-hindi-dubbed-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Theri ',NULL,'THByqhzdSTmMVKNb1cjKzA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:44','2017-07-03 05:30:44','data','image/jpeg',9733,'2017-07-03 05:30:44'),(10,'The Boss Baby (2017) Hindi Dubbed Full Movie Watch Online HD... ',NULL,'http://www.watchonlinemovies.com.pk/the-boss-baby-2017-hindi-dubbed-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'The Boss Baby ',NULL,'xVaJzqPgoazW69/9eK8fbQ==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:45','2017-07-03 05:30:45','data','image/jpeg',7244,'2017-07-03 05:30:45'),(11,'Dear Maya (2017) Full Movie Watch Online HD Print Free Downl... ',NULL,'http://www.watchonlinemovies.com.pk/dear-maya-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Dear Maya ',NULL,'WrptWrSAPLeRmnvos2ufAw==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:45','2017-07-03 05:30:45','open-uri20170702-6092-2gz2zz','image/jpeg',10409,'2017-07-03 05:30:45'),(12,'Ek Haseena Thi Ek Deewana Tha (2017) Full Movie Watch Online... ',NULL,'http://www.watchonlinemovies.com.pk/ek-haseena-thi-ek-deewana-tha-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Ek Haseena Thi Ek Deewana Tha ',NULL,'PUwIWuFpkRlcXOORXFKNmg==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:46','2017-07-03 05:30:46','data','image/jpeg',7901,'2017-07-03 05:30:45'),(13,'The Magnificent Seven (2016) Hindi Dubbed Full Movie Watch O... ',NULL,'http://www.watchonlinemovies.com.pk/the-magnificent-seven-2016-hindi-dubbed-full-movie-watch-online-free-download/',NULL,NULL,NULL,0,0,NULL,'The Magnificent Seven ',NULL,'1/muSbRSyEkD8S60RXMYNA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:46','2017-07-03 05:30:46','open-uri20170702-6092-16s4qyu','image/jpeg',16296,'2017-07-03 05:30:46'),(14,'Transformers: The Last Knight (2017) Hindi Dubbed Full Movie... ',NULL,'http://www.watchonlinemovies.com.pk/transformers-the-last-knight-2017-hindi-dubbed-full-movie-watch-online-hd-free-download/',NULL,NULL,NULL,0,0,NULL,'Transformers: The Last Knight ',NULL,'mRjS2zG8sCsAe49or2TUjA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:46','2017-07-03 05:30:46','open-uri20170702-6092-fbazv4','image/jpeg',11019,'2017-07-03 05:30:46'),(15,'A Death in the Gunj (2016) Hindi Full Movie Watch Online HD ... ',NULL,'http://www.watchonlinemovies.com.pk/a-death-in-the-gunj-2016-hindi-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'A Death in the Gunj ',NULL,'gcRLO4wCmBjswYWhisjAZA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:47','2017-07-03 05:30:47','open-uri20170702-6092-q5gzbe','image/jpeg',12606,'2017-07-03 05:30:47'),(16,'Sweetiee Weds NRI (2017) Full Movie Watch Online HD Print Fr... ',NULL,'http://www.watchonlinemovies.com.pk/sweetiee-weds-nri-2017-full-movie-watch-free-download/',NULL,NULL,NULL,0,0,NULL,'Sweetiee Weds NRI ',NULL,'H+ORy5YAUaPQ9bJtlDSP3A==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:47','2017-07-03 05:30:47','open-uri20170702-6092-1en579w','image/jpeg',13154,'2017-07-03 05:30:47'),(17,'The Mummy (2017) Full Movie Watch Online HD Print Free Downl... ',NULL,'http://www.watchonlinemovies.com.pk/the-mummy-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'The Mummy ',NULL,'g3+icGwBNbmB4Mp7LhCOig==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:48','2017-07-03 05:30:48','data','image/jpeg',7575,'2017-07-03 05:30:48'),(18,'Raabta (2017) Full Movie Watch Online HD Print Free Download ',NULL,'http://www.watchonlinemovies.com.pk/raabta-2017-full-movie-watch-online-hd-print-free-download/',NULL,NULL,NULL,0,0,NULL,'Raabta ',NULL,'lnTAHHhXAj05HqbCKb1SxQ==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:48','2017-07-03 05:30:48','open-uri20170702-6092-13tv5ku','image/jpeg',10748,'2017-07-03 05:30:48'),(19,'Behen Hogi Teri (2017) Full Movie Watch Online HD Print Free... ',NULL,'http://www.watchonlinemovies.com.pk/behen-hogi-teri-2017-full-movie-watch-free-download/',NULL,NULL,NULL,0,0,NULL,'Behen Hogi Teri ',NULL,'2DaOP7dBY3ac6BRFi//+DA==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:49','2017-07-03 05:30:49','data','image/jpeg',8888,'2017-07-03 05:30:49'),(20,'Laali Ki Shaadi Mein Laaddoo Deewana (2017) Full Movie Watch... ',NULL,'http://www.watchonlinemovies.com.pk/laali-ki-shaadi-mein-laaddoo-deewana-2017-full-movie-watch-online-hd-free-download/',NULL,NULL,NULL,0,0,NULL,'Laali Ki Shaadi Mein Laaddoo Deewana ',NULL,'EZttkMM95APX9GP7FhSzOg==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:49','2017-07-03 05:30:49','open-uri20170702-6092-r5v8fd','image/jpeg',13248,'2017-07-03 05:30:49'),(21,'Bank Chor (2017) Full Movie Watch Online DVD Print Download ',NULL,'http://www.watchonlinemovies.com.pk/bank-chor-2017-full-movie-watch-online-dvd-print-download/',NULL,NULL,NULL,0,0,NULL,'Bank Chor ',NULL,'70jTIvQnhAPxXMJbBGafeQ==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:49','2017-07-03 05:30:49','open-uri20170702-6092-v384u2','image/jpeg',11071,'2017-07-03 05:30:49'),(22,'Tubelight (2017) Full Movie Watch Online HD Print Free Downl... ',NULL,'http://www.watchonlinemovies.com.pk/tubelight-2017-full-movie-hd-watch/',NULL,NULL,NULL,0,0,NULL,'Tubelight ',NULL,'3cWAr5u3DjOV6UpID4XYhg==\n',NULL,NULL,NULL,NULL,2,1,1,1,1,2,1,NULL,NULL,NULL,NULL,2,'2017-07-03 05:30:50','2017-07-03 05:30:50','data','image/jpeg',8789,'2017-07-03 05:30:50');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualities`
--

DROP TABLE IF EXISTS `qualities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualities`
--

LOCK TABLES `qualities` WRITE;
/*!40000 ALTER TABLE `qualities` DISABLE KEYS */;
INSERT INTO `qualities` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'BlueRay','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'HD','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'Camera Print','2017-07-03 05:29:01','2017-07-03 05:29:01'),(5,'DVD Rip','2017-07-03 05:29:01','2017-07-03 05:29:01'),(6,'720p','2017-07-03 05:29:01','2017-07-03 05:29:01'),(7,'1080p','2017-07-03 05:29:01','2017-07-03 05:29:01'),(8,'480p','2017-07-03 05:29:01','2017-07-03 05:29:01'),(9,'360p','2017-07-03 05:29:01','2017-07-03 05:29:01'),(10,'240p','2017-07-03 05:29:01','2017-07-03 05:29:01'),(11,'120p','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `qualities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170221102141'),('20170221102212'),('20170221102227'),('20170221102240'),('20170221102251'),('20170221102323'),('20170221102341'),('20170221102410'),('20170221102519'),('20170221103017'),('20170221103055'),('20170222202420'),('20170302165340'),('20170317062920'),('20170319201353'),('20170401101021'),('20170427081509'),('20170506123946'),('20170511103230'),('20170512100558'),('20170515084410'),('20170517172228');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'http://www.watchonlinemovies.com.pk','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'http://onlinemoviescinema.com','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'http://youtube.com','2017-07-03 05:29:01','2017-07-03 05:29:01'),(5,'http://www.hdmovieswatch.eu','2017-07-03 05:29:01','2017-07-03 05:29:01'),(6,'http://fmovie.io/','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Not Specify','2017-07-03 05:29:01','2017-07-03 05:29:01'),(2,'Hollywood','2017-07-03 05:29:01','2017-07-03 05:29:01'),(3,'Bollywood','2017-07-03 05:29:01','2017-07-03 05:29:01'),(4,'Lollywood','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_locations`
--

DROP TABLE IF EXISTS `user_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `requested_url` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_locations`
--

LOCK TABLES `user_locations` WRITE;
/*!40000 ALTER TABLE `user_locations` DISABLE KEYS */;
INSERT INTO `user_locations` VALUES (1,'127.0.0.1','http://localhost:3000/','2017-07-03 05:29:51','2017-07-03 05:29:51','','',''),(2,'127.0.0.1','http://localhost:3000/sink','2017-07-03 05:30:24','2017-07-03 05:30:24','','',''),(3,'127.0.0.1','http://localhost:3000/data/launch_data_sinking','2017-07-03 05:30:40','2017-07-03 05:30:40','','',''),(4,'127.0.0.1','http://localhost:3000/','2017-07-03 05:30:50','2017-07-03 05:30:50','','',''),(5,'127.0.0.1','http://localhost:3000/','2017-07-03 05:32:22','2017-07-03 05:32:22','','',''),(6,'127.0.0.1','http://localhost:3000/','2017-07-03 05:32:43','2017-07-03 05:32:43','','',''),(7,'127.0.0.1','http://localhost:3000/play?id=AXMAFIugDpII2CAe8ntx3Q%3D%3D%0A&name=47+Meters+Down+','2017-07-03 05:32:55','2017-07-03 05:32:55','','',''),(8,'127.0.0.1','http://localhost:3000/','2017-07-03 05:32:56','2017-07-03 05:32:56','','',''),(9,'127.0.0.1','http://localhost:3000/play?id=dZt%2FJfxphEUe03H3ChplAA%3D%3D%0A&name=Wonder+Woman+','2017-07-03 05:33:03','2017-07-03 05:33:03','','',''),(10,'127.0.0.1','http://localhost:3000/','2017-07-03 05:33:03','2017-07-03 05:33:03','','',''),(11,'127.0.0.1','http://localhost:3000/play?id=dZt%2FJfxphEUe03H3ChplAA%3D%3D%0A&name=Wonder+Woman+','2017-07-03 05:34:15','2017-07-03 05:34:15','','','');
/*!40000 ALTER TABLE `user_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_problems`
--

DROP TABLE IF EXISTS `user_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_problems_on_movie_id` (`movie_id`),
  CONSTRAINT `fk_rails_44fad9077a` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_problems`
--

LOCK TABLES `user_problems` WRITE;
/*!40000 ALTER TABLE `user_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `cell_no` varchar(255) DEFAULT NULL,
  `user_rating` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `column3` int(11) DEFAULT NULL,
  `column4` int(11) DEFAULT NULL,
  `column5` int(11) DEFAULT NULL,
  `column6` varchar(255) DEFAULT NULL,
  `column7` varchar(255) DEFAULT NULL,
  `column8` varchar(255) DEFAULT NULL,
  `column9` varchar(255) DEFAULT NULL,
  `column10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `years`
--

DROP TABLE IF EXISTS `years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `years`
--

LOCK TABLES `years` WRITE;
/*!40000 ALTER TABLE `years` DISABLE KEYS */;
INSERT INTO `years` VALUES (1,'1901','2017-07-03 05:29:00','2017-07-03 05:29:00'),(2,'1902','2017-07-03 05:29:00','2017-07-03 05:29:00'),(3,'1903','2017-07-03 05:29:00','2017-07-03 05:29:00'),(4,'1904','2017-07-03 05:29:00','2017-07-03 05:29:00'),(5,'1905','2017-07-03 05:29:00','2017-07-03 05:29:00'),(6,'1906','2017-07-03 05:29:00','2017-07-03 05:29:00'),(7,'1907','2017-07-03 05:29:00','2017-07-03 05:29:00'),(8,'1908','2017-07-03 05:29:00','2017-07-03 05:29:00'),(9,'1909','2017-07-03 05:29:00','2017-07-03 05:29:00'),(10,'1910','2017-07-03 05:29:00','2017-07-03 05:29:00'),(11,'1911','2017-07-03 05:29:00','2017-07-03 05:29:00'),(12,'1912','2017-07-03 05:29:00','2017-07-03 05:29:00'),(13,'1913','2017-07-03 05:29:00','2017-07-03 05:29:00'),(14,'1914','2017-07-03 05:29:00','2017-07-03 05:29:00'),(15,'1915','2017-07-03 05:29:00','2017-07-03 05:29:00'),(16,'1916','2017-07-03 05:29:00','2017-07-03 05:29:00'),(17,'1917','2017-07-03 05:29:00','2017-07-03 05:29:00'),(18,'1918','2017-07-03 05:29:00','2017-07-03 05:29:00'),(19,'1919','2017-07-03 05:29:00','2017-07-03 05:29:00'),(20,'1920','2017-07-03 05:29:00','2017-07-03 05:29:00'),(21,'1921','2017-07-03 05:29:00','2017-07-03 05:29:00'),(22,'1922','2017-07-03 05:29:00','2017-07-03 05:29:00'),(23,'1923','2017-07-03 05:29:00','2017-07-03 05:29:00'),(24,'1924','2017-07-03 05:29:00','2017-07-03 05:29:00'),(25,'1925','2017-07-03 05:29:00','2017-07-03 05:29:00'),(26,'1926','2017-07-03 05:29:00','2017-07-03 05:29:00'),(27,'1927','2017-07-03 05:29:00','2017-07-03 05:29:00'),(28,'1928','2017-07-03 05:29:00','2017-07-03 05:29:00'),(29,'1929','2017-07-03 05:29:00','2017-07-03 05:29:00'),(30,'1930','2017-07-03 05:29:00','2017-07-03 05:29:00'),(31,'1931','2017-07-03 05:29:00','2017-07-03 05:29:00'),(32,'1932','2017-07-03 05:29:00','2017-07-03 05:29:00'),(33,'1933','2017-07-03 05:29:00','2017-07-03 05:29:00'),(34,'1934','2017-07-03 05:29:00','2017-07-03 05:29:00'),(35,'1935','2017-07-03 05:29:00','2017-07-03 05:29:00'),(36,'1936','2017-07-03 05:29:00','2017-07-03 05:29:00'),(37,'1937','2017-07-03 05:29:00','2017-07-03 05:29:00'),(38,'1938','2017-07-03 05:29:00','2017-07-03 05:29:00'),(39,'1939','2017-07-03 05:29:00','2017-07-03 05:29:00'),(40,'1940','2017-07-03 05:29:00','2017-07-03 05:29:00'),(41,'1941','2017-07-03 05:29:00','2017-07-03 05:29:00'),(42,'1942','2017-07-03 05:29:00','2017-07-03 05:29:00'),(43,'1943','2017-07-03 05:29:00','2017-07-03 05:29:00'),(44,'1944','2017-07-03 05:29:00','2017-07-03 05:29:00'),(45,'1945','2017-07-03 05:29:00','2017-07-03 05:29:00'),(46,'1946','2017-07-03 05:29:00','2017-07-03 05:29:00'),(47,'1947','2017-07-03 05:29:00','2017-07-03 05:29:00'),(48,'1948','2017-07-03 05:29:00','2017-07-03 05:29:00'),(49,'1949','2017-07-03 05:29:00','2017-07-03 05:29:00'),(50,'1950','2017-07-03 05:29:00','2017-07-03 05:29:00'),(51,'1951','2017-07-03 05:29:00','2017-07-03 05:29:00'),(52,'1952','2017-07-03 05:29:00','2017-07-03 05:29:00'),(53,'1953','2017-07-03 05:29:00','2017-07-03 05:29:00'),(54,'1954','2017-07-03 05:29:00','2017-07-03 05:29:00'),(55,'1955','2017-07-03 05:29:00','2017-07-03 05:29:00'),(56,'1956','2017-07-03 05:29:00','2017-07-03 05:29:00'),(57,'1957','2017-07-03 05:29:00','2017-07-03 05:29:00'),(58,'1958','2017-07-03 05:29:00','2017-07-03 05:29:00'),(59,'1959','2017-07-03 05:29:00','2017-07-03 05:29:00'),(60,'1960','2017-07-03 05:29:00','2017-07-03 05:29:00'),(61,'1961','2017-07-03 05:29:00','2017-07-03 05:29:00'),(62,'1962','2017-07-03 05:29:00','2017-07-03 05:29:00'),(63,'1963','2017-07-03 05:29:00','2017-07-03 05:29:00'),(64,'1964','2017-07-03 05:29:00','2017-07-03 05:29:00'),(65,'1965','2017-07-03 05:29:00','2017-07-03 05:29:00'),(66,'1966','2017-07-03 05:29:00','2017-07-03 05:29:00'),(67,'1967','2017-07-03 05:29:00','2017-07-03 05:29:00'),(68,'1968','2017-07-03 05:29:00','2017-07-03 05:29:00'),(69,'1969','2017-07-03 05:29:00','2017-07-03 05:29:00'),(70,'1970','2017-07-03 05:29:00','2017-07-03 05:29:00'),(71,'1971','2017-07-03 05:29:00','2017-07-03 05:29:00'),(72,'1972','2017-07-03 05:29:00','2017-07-03 05:29:00'),(73,'1973','2017-07-03 05:29:00','2017-07-03 05:29:00'),(74,'1974','2017-07-03 05:29:00','2017-07-03 05:29:00'),(75,'1975','2017-07-03 05:29:00','2017-07-03 05:29:00'),(76,'1976','2017-07-03 05:29:00','2017-07-03 05:29:00'),(77,'1977','2017-07-03 05:29:00','2017-07-03 05:29:00'),(78,'1978','2017-07-03 05:29:00','2017-07-03 05:29:00'),(79,'1979','2017-07-03 05:29:00','2017-07-03 05:29:00'),(80,'1980','2017-07-03 05:29:00','2017-07-03 05:29:00'),(81,'1981','2017-07-03 05:29:00','2017-07-03 05:29:00'),(82,'1982','2017-07-03 05:29:00','2017-07-03 05:29:00'),(83,'1983','2017-07-03 05:29:00','2017-07-03 05:29:00'),(84,'1984','2017-07-03 05:29:00','2017-07-03 05:29:00'),(85,'1985','2017-07-03 05:29:00','2017-07-03 05:29:00'),(86,'1986','2017-07-03 05:29:00','2017-07-03 05:29:00'),(87,'1987','2017-07-03 05:29:00','2017-07-03 05:29:00'),(88,'1988','2017-07-03 05:29:00','2017-07-03 05:29:00'),(89,'1989','2017-07-03 05:29:00','2017-07-03 05:29:00'),(90,'1990','2017-07-03 05:29:00','2017-07-03 05:29:00'),(91,'1991','2017-07-03 05:29:00','2017-07-03 05:29:00'),(92,'1992','2017-07-03 05:29:00','2017-07-03 05:29:00'),(93,'1993','2017-07-03 05:29:00','2017-07-03 05:29:00'),(94,'1994','2017-07-03 05:29:00','2017-07-03 05:29:00'),(95,'1995','2017-07-03 05:29:00','2017-07-03 05:29:00'),(96,'1996','2017-07-03 05:29:00','2017-07-03 05:29:00'),(97,'1997','2017-07-03 05:29:00','2017-07-03 05:29:00'),(98,'1998','2017-07-03 05:29:00','2017-07-03 05:29:00'),(99,'1999','2017-07-03 05:29:00','2017-07-03 05:29:00'),(100,'2000','2017-07-03 05:29:00','2017-07-03 05:29:00'),(101,'2001','2017-07-03 05:29:00','2017-07-03 05:29:00'),(102,'2002','2017-07-03 05:29:00','2017-07-03 05:29:00'),(103,'2003','2017-07-03 05:29:00','2017-07-03 05:29:00'),(104,'2004','2017-07-03 05:29:01','2017-07-03 05:29:01'),(105,'2005','2017-07-03 05:29:01','2017-07-03 05:29:01'),(106,'2006','2017-07-03 05:29:01','2017-07-03 05:29:01'),(107,'2007','2017-07-03 05:29:01','2017-07-03 05:29:01'),(108,'2008','2017-07-03 05:29:01','2017-07-03 05:29:01'),(109,'2009','2017-07-03 05:29:01','2017-07-03 05:29:01'),(110,'2010','2017-07-03 05:29:01','2017-07-03 05:29:01'),(111,'2011','2017-07-03 05:29:01','2017-07-03 05:29:01'),(112,'2012','2017-07-03 05:29:01','2017-07-03 05:29:01'),(113,'2013','2017-07-03 05:29:01','2017-07-03 05:29:01'),(114,'2014','2017-07-03 05:29:01','2017-07-03 05:29:01'),(115,'2015','2017-07-03 05:29:01','2017-07-03 05:29:01'),(116,'2016','2017-07-03 05:29:01','2017-07-03 05:29:01'),(117,'2017','2017-07-03 05:29:01','2017-07-03 05:29:01'),(118,'2018','2017-07-03 05:29:01','2017-07-03 05:29:01'),(119,'2019','2017-07-03 05:29:01','2017-07-03 05:29:01');
/*!40000 ALTER TABLE `years` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-08 16:10:57
