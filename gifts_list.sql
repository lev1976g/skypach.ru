-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: viivk
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1-log

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
-- Table structure for table `vii_gifts_list`
--

DROP TABLE IF EXISTS `vii_gifts_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_gifts_list` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `category` int(1) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_gifts_list`
--

LOCK TABLES `vii_gifts_list` WRITE;
/*!40000 ALTER TABLE `vii_gifts_list` DISABLE KEYS */;
INSERT INTO `vii_gifts_list` VALUES (6,1,'197',3),(7,30,'381',3),(8,5,'14',1),(9,4,'436',1),(10,3,'98',2),(11,5,'652',1),(12,1,'143',4),(13,1,'89',4),(14,1,'940',4),(17,1,'641',3),(18,30,'766',3),(19,5,'558',3),(93,1,'2',1),(22,1,'542',3),(23,15,'207',1),(24,1,'865',1),(25,1,'322',0),(26,10,'512',1),(27,1,'572',2),(28,1,'919',2),(29,1,'842',2),(30,1,'65',2),(31,1,'970',0),(32,1,'26',1),(33,1,'700',3),(34,1,'202',2),(35,1,'154',3),(36,30,'822',3),(37,3,'686',3),(38,1,'790',4),(39,1,'794',0),(40,5,'60',1),(41,1,'164',4),(42,1,'339',1),(43,1,'160',1),(44,1,'34',1),(45,1,'627',1),(46,1,'639',3),(47,3,'876',0),(48,1,'33',3),(50,2,'865',0),(51,1,'133',1),(52,1,'57',1),(53,1,'139',1),(54,1,'835',1),(55,1,'824',0),(56,1,'384',1),(57,1,'853',0),(58,1,'59',4),(59,100,'506',0),(60,1,'957',0),(61,1,'889',4),(62,1,'671',0),(63,2,'679',0),(64,2,'424',0),(65,1,'124',4),(66,1,'385',4),(68,1,'777',0),(88,1,'209',0),(89,1,'629',0),(90,1,'653',4),(91,1,'510',0),(92,1,'205',0),(94,1,'3',0),(95,1,'4',0),(96,1,'5',0),(166,1,'909',2),(98,1,'8',3),(99,1,'9',2),(100,1,'10',0),(101,1,'15',0),(102,1,'16',0),(103,1,'17',0),(104,1,'18',0),(105,3,'26',0),(106,1,'784',0),(107,1,'879',0),(108,2,'752',0),(109,1,'816',0),(110,1,'896',0),(111,1,'680',0),(112,1,'393',0),(113,1,'0',0),(114,3,'517',0),(120,1,'147',1),(121,1,'482',0),(123,1,'414',0),(124,2,'316',0),(125,1,'18',1),(126,1,'849',1),(127,1,'937',3),(128,1,'786',1),(129,1,'365',0),(130,1,'343',0),(131,1,'722',1),(132,1,'830',0),(133,1,'515',0),(134,1,'884',1),(135,500,'995',0),(136,1,'416',0),(137,1,'739',1),(138,1,'619',0),(139,1,'953',0),(140,1,'333',0),(141,1,'113',0),(142,1,'461',0),(143,1,'196',0),(144,1,'913',0),(145,1,'103',1),(146,1,'474',0),(147,5,'725',0),(149,1,'368',0),(150,1,'353',0),(152,1,'933',0),(155,2,'341',0),(156,1,'144',1),(157,2,'265',0),(158,1,'876',1),(159,1,'181',1),(160,1,'126',1),(162,1,'350',1),(163,1,'585',0),(164,1,'347',1),(167,1,'869',2),(168,1,'23',0),(172,1,'954',2),(171,1,'607',0),(173,10000,'150',2),(174,1,'213',3),(175,10,'546',1);
/*!40000 ALTER TABLE `vii_gifts_list` ENABLE KEYS */;
UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-25 19:42:04
