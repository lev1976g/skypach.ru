-- MySQL dump 10.11
--
-- Host: localhost    Database: v222
-- ------------------------------------------------------
-- Server version	5.0.95-log

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
-- Table structure for table `vii_ads`
--

DROP TABLE IF EXISTS `vii_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_ads` (
  `id` int(11) NOT NULL auto_increment,
  `settings` varchar(64) NOT NULL,
  `description` varchar(100) NOT NULL,
  `links` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `views` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `views` (`views`)
) ENGINE=MyISAM AUTO_INCREMENT=609 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_ads`
--

LOCK TABLES `vii_ads` WRITE;
/*!40000 ALTER TABLE `vii_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_albums`
--

DROP TABLE IF EXISTS `vii_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_albums` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `111` int(11) NOT NULL,
  `photo_num` mediumint(9) NOT NULL,
  `comm_num` mediumint(9) NOT NULL,
  `cover` text NOT NULL,
  `descr` text NOT NULL,
  `ahash` text NOT NULL,
  `position` text NOT NULL,
  `adate` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `privacy` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY  (`aid`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_albums`
--

LOCK TABLES `vii_albums` WRITE;
/*!40000 ALTER TABLE `vii_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_apps`
--

DROP TABLE IF EXISTS `vii_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_apps` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `flash` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `balance` int(10) NOT NULL default '0',
  `cols` int(11) NOT NULL default '0',
  `width` int(5) NOT NULL default '800',
  `height` int(5) NOT NULL default '800',
  `status` int(2) NOT NULL default '-1',
  `type` int(1) NOT NULL default '1',
  `admins` varchar(255) NOT NULL default '|0|',
  `admins_num` int(11) NOT NULL default '1',
  `user_id` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_apps`
--

LOCK TABLES `vii_apps` WRITE;
/*!40000 ALTER TABLE `vii_apps` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_apps_transactions`
--

DROP TABLE IF EXISTS `vii_apps_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_apps_transactions` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `whom` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_apps_transactions`
--

LOCK TABLES `vii_apps_transactions` WRITE;
/*!40000 ALTER TABLE `vii_apps_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_apps_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_apps_users`
--

DROP TABLE IF EXISTS `vii_apps_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_apps_users` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `balance` int(10) NOT NULL default '0',
  `date` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_apps_users`
--

LOCK TABLES `vii_apps_users` WRITE;
/*!40000 ALTER TABLE `vii_apps_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_apps_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_attach`
--

DROP TABLE IF EXISTS `vii_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_attach` (
  `id` int(11) NOT NULL auto_increment,
  `photo` text NOT NULL,
  `ouser_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=958 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_attach`
--

LOCK TABLES `vii_attach` WRITE;
/*!40000 ALTER TABLE `vii_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_audio`
--

DROP TABLE IF EXISTS `vii_audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_audio` (
  `aid` int(11) NOT NULL auto_increment,
  `auser_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `artist` text NOT NULL,
  `adate` varchar(25) NOT NULL,
  `user_search_pref` int(11) NOT NULL,
  PRIMARY KEY  (`aid`),
  FULLTEXT KEY `search` (`name`,`artist`)
) ENGINE=MyISAM AUTO_INCREMENT=3063 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_audio`
--

LOCK TABLES `vii_audio` WRITE;
/*!40000 ALTER TABLE `vii_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_banned`
--

DROP TABLE IF EXISTS `vii_banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_banned` (
  `descr` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `always` text NOT NULL,
  `ip` text NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_banned`
--

LOCK TABLES `vii_banned` WRITE;
/*!40000 ALTER TABLE `vii_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_blacksite`
--

DROP TABLE IF EXISTS `vii_blacksite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_blacksite` (
  `url` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_blacksite`
--

LOCK TABLES `vii_blacksite` WRITE;
/*!40000 ALTER TABLE `vii_blacksite` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_blacksite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_blog`
--

DROP TABLE IF EXISTS `vii_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_blog` (
  `title` varchar(30) NOT NULL,
  `story` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_blog`
--

LOCK TABLES `vii_blog` WRITE;
/*!40000 ALTER TABLE `vii_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_city`
--

DROP TABLE IF EXISTS `vii_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_city` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  `id_country` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17590 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_city`
--

LOCK TABLES `vii_city` WRITE;
/*!40000 ALTER TABLE `vii_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities`
--

DROP TABLE IF EXISTS `vii_communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `descr` text NOT NULL,
  `traf` int(11) NOT NULL,
  `ulist` text NOT NULL,
  `photo` text NOT NULL,
  `admin` text NOT NULL,
  `feedback` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `real_admin` text NOT NULL,
  `rec_num` mediumint(9) NOT NULL,
  `del` varchar(3) NOT NULL,
  `ban` varchar(3) NOT NULL,
  `adres` text NOT NULL,
  `audio_num` mediumint(9) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `type` int(11) NOT NULL,
  `photos_num` mediumint(9) NOT NULL,
  `cnt` text NOT NULL,
  `videos_num` int(11) NOT NULL,
  `photo_num` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `cover_pos` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `status_text` varchar(255) NOT NULL,
  `forum_num` mediumint(8) NOT NULL,
  `discussion` tinyint(1) NOT NULL,
  `com_real` int(11) NOT NULL,
  `recommendation` int(11) NOT NULL,
  `rotation` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities`
--

LOCK TABLES `vii_communities` WRITE;
/*!40000 ALTER TABLE `vii_communities` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_audio`
--

DROP TABLE IF EXISTS `vii_communities_audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_audio` (
  `id` int(11) NOT NULL auto_increment,
  `public_id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `adate` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_audio`
--

LOCK TABLES `vii_communities_audio` WRITE;
/*!40000 ALTER TABLE `vii_communities_audio` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_demands`
--

DROP TABLE IF EXISTS `vii_communities_demands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_demands` (
  `user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL,
  `date` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_demands`
--

LOCK TABLES `vii_communities_demands` WRITE;
/*!40000 ALTER TABLE `vii_communities_demands` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_demands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_feedback`
--

DROP TABLE IF EXISTS `vii_communities_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_feedback` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL,
  `office` text NOT NULL,
  `fphone` text NOT NULL,
  `femail` text NOT NULL,
  `fdate` varchar(25) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`),
  KEY `fuser_id` (`fuser_id`),
  KEY `fdate` (`fdate`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_feedback`
--

LOCK TABLES `vii_communities_feedback` WRITE;
/*!40000 ALTER TABLE `vii_communities_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_forum`
--

DROP TABLE IF EXISTS `vii_communities_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_forum` (
  `fid` int(11) NOT NULL auto_increment,
  `public_id` int(11) NOT NULL,
  `fuser_id` int(11) NOT NULL,
  `title` varchar(65) NOT NULL,
  `text` text NOT NULL,
  `attach` text NOT NULL,
  `fdate` varchar(10) NOT NULL,
  `msg_num` mediumint(8) NOT NULL,
  `lastdate` varchar(10) NOT NULL,
  `lastuser_id` int(11) NOT NULL,
  `fixed` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `vote` mediumint(8) NOT NULL,
  PRIMARY KEY  (`fid`),
  KEY `public_id` (`public_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_forum`
--

LOCK TABLES `vii_communities_forum` WRITE;
/*!40000 ALTER TABLE `vii_communities_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_forum_msg`
--

DROP TABLE IF EXISTS `vii_communities_forum_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_forum_msg` (
  `mid` int(11) NOT NULL auto_increment,
  `fid` int(11) NOT NULL,
  `muser_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `attach` text NOT NULL,
  `mdate` varchar(10) NOT NULL,
  `user_logged_mobile` int(11) default NULL,
  PRIMARY KEY  (`mid`),
  KEY `fid` (`fid`),
  KEY `muser_id` (`muser_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_forum_msg`
--

LOCK TABLES `vii_communities_forum_msg` WRITE;
/*!40000 ALTER TABLE `vii_communities_forum_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_forum_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_photos`
--

DROP TABLE IF EXISTS `vii_communities_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_photos` (
  `id` int(11) NOT NULL auto_increment,
  `public_id` int(11) NOT NULL,
  `add_date` varchar(30) NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=836 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_photos`
--

LOCK TABLES `vii_communities_photos` WRITE;
/*!40000 ALTER TABLE `vii_communities_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_wall`
--

DROP TABLE IF EXISTS `vii_communities_wall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_wall` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `public_id` int(11) NOT NULL,
  `fast_comm_id` int(11) NOT NULL,
  `add_date` varchar(25) NOT NULL,
  `date` varchar(30) NOT NULL,
  `text` text NOT NULL,
  `attach` text NOT NULL,
  `fasts_num` mediumint(9) NOT NULL,
  `admin` text NOT NULL,
  `likes_num` mediumint(9) NOT NULL,
  `likes_users` text NOT NULL,
  `tell_uid` int(11) NOT NULL,
  `tell_date` varchar(30) NOT NULL,
  `public` text NOT NULL,
  `tell_comm` text NOT NULL,
  `fixed` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `public_id` (`public_id`),
  KEY `fast_comm_id` (`fast_comm_id`),
  KEY `fixed` (`fixed`),
  KEY `add_date` (`add_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2622 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_wall`
--

LOCK TABLES `vii_communities_wall` WRITE;
/*!40000 ALTER TABLE `vii_communities_wall` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_wall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_communities_wall_like`
--

DROP TABLE IF EXISTS `vii_communities_wall_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_communities_wall_like` (
  `id` int(11) NOT NULL auto_increment,
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=705 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_communities_wall_like`
--

LOCK TABLES `vii_communities_wall_like` WRITE;
/*!40000 ALTER TABLE `vii_communities_wall_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_communities_wall_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_country`
--

DROP TABLE IF EXISTS `vii_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_country` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_country`
--

LOCK TABLES `vii_country` WRITE;
/*!40000 ALTER TABLE `vii_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_doc`
--

DROP TABLE IF EXISTS `vii_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_doc` (
  `did` int(11) NOT NULL auto_increment,
  `duser_id` int(11) NOT NULL,
  `dname` varchar(150) NOT NULL,
  `dsize` varchar(19) NOT NULL,
  `ddate` varchar(100) NOT NULL,
  `ddownload_name` text NOT NULL,
  PRIMARY KEY  (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_doc`
--

LOCK TABLES `vii_doc` WRITE;
/*!40000 ALTER TABLE `vii_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_fave`
--

DROP TABLE IF EXISTS `vii_fave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_fave` (
  `user_id` int(11) NOT NULL,
  `fave_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_fave`
--

LOCK TABLES `vii_fave` WRITE;
/*!40000 ALTER TABLE `vii_fave` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_fave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_friends`
--

DROP TABLE IF EXISTS `vii_friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_friends` (
  `user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friends_date` date NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `subscriptions` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `ddate` varchar(30) NOT NULL,
  `ddownload_name` varchar(50) NOT NULL,
  `duser_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `subscriptions` (`subscriptions`),
  KEY `friend_id` (`friend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_friends`
--

LOCK TABLES `vii_friends` WRITE;
/*!40000 ALTER TABLE `vii_friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_friends_demands`
--

DROP TABLE IF EXISTS `vii_friends_demands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_friends_demands` (
  `for_user_id` int(11) NOT NULL,
  `demand_date` text NOT NULL,
  `from_user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_friends_demands`
--

LOCK TABLES `vii_friends_demands` WRITE;
/*!40000 ALTER TABLE `vii_friends_demands` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_friends_demands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_gifts`
--

DROP TABLE IF EXISTS `vii_gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_gifts` (
  `gid` int(11) NOT NULL auto_increment,
  `text` varchar(255) NOT NULL,
  `gdate` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  `gift` text NOT NULL,
  `from_uid` int(11) NOT NULL,
  `msg` text NOT NULL,
  `privacy` int(11) NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY  (`gid`),
  KEY `uid` (`uid`),
  KEY `gdate` (`gdate`)
) ENGINE=MyISAM AUTO_INCREMENT=1621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_gifts`
--

LOCK TABLES `vii_gifts` WRITE;
/*!40000 ALTER TABLE `vii_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_gifts_list`
--

DROP TABLE IF EXISTS `vii_gifts_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_gifts_list` (
  `gid` int(11) NOT NULL auto_increment,
  `price` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `category` int(1) NOT NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_gifts_list`
--

LOCK TABLES `vii_gifts_list` WRITE;
/*!40000 ALTER TABLE `vii_gifts_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_gifts_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_im`
--

DROP TABLE IF EXISTS `vii_im`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_im` (
  `all_msg_num` int(11) NOT NULL,
  `iuser_id` int(11) NOT NULL,
  `im_user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `msg_num` varchar(50) NOT NULL,
  `idate` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_im`
--

LOCK TABLES `vii_im` WRITE;
/*!40000 ALTER TABLE `vii_im` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_im` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_invites`
--

DROP TABLE IF EXISTS `vii_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_invites` (
  `id` int(11) NOT NULL auto_increment,
  `ruid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_invites`
--

LOCK TABLES `vii_invites` WRITE;
/*!40000 ALTER TABLE `vii_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_log`
--

DROP TABLE IF EXISTS `vii_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_log` (
  `ip` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `browser` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_log`
--

LOCK TABLES `vii_log` WRITE;
/*!40000 ALTER TABLE `vii_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_log_user`
--

DROP TABLE IF EXISTS `vii_log_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_log_user` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_log_user`
--

LOCK TABLES `vii_log_user` WRITE;
/*!40000 ALTER TABLE `vii_log_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_log_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_mail_tpl`
--

DROP TABLE IF EXISTS `vii_mail_tpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_mail_tpl` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_mail_tpl`
--

LOCK TABLES `vii_mail_tpl` WRITE;
/*!40000 ALTER TABLE `vii_mail_tpl` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_mail_tpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_messages`
--

DROP TABLE IF EXISTS `vii_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_messages` (
  `id` int(11) NOT NULL auto_increment,
  `text` text NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `pm_read` text NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `folder` text NOT NULL,
  `history_user_id` int(11) NOT NULL,
  `theme` text NOT NULL,
  `date` varchar(25) NOT NULL,
  `attach` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `tell_uid` mediumint(9) NOT NULL,
  `tell_date` varchar(30) NOT NULL,
  `public` varchar(200) NOT NULL,
  `tell_comm` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9495 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_messages`
--

LOCK TABLES `vii_messages` WRITE;
/*!40000 ALTER TABLE `vii_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_news`
--

DROP TABLE IF EXISTS `vii_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_news` (
  `action_text` text NOT NULL,
  `action_time` varchar(50) NOT NULL,
  `ac_id` int(11) NOT NULL auto_increment,
  `ac_user_id` int(11) NOT NULL,
  `action_type` tinyint(11) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `author_user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `fasts_num` mediumint(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `photo` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  PRIMARY KEY  (`ac_id`),
  KEY `ac_user_id` (`ac_user_id`),
  KEY `action_type` (`action_type`),
  KEY `obj_id` (`obj_id`),
  KEY `author_user_id` (`author_user_id`),
  KEY `for_user_id` (`for_user_id`),
  KEY `fasts_num` (`fasts_num`)
) ENGINE=MyISAM AUTO_INCREMENT=10615 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_news`
--

LOCK TABLES `vii_news` WRITE;
/*!40000 ALTER TABLE `vii_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_notes`
--

DROP TABLE IF EXISTS `vii_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_notes` (
  `id` int(11) NOT NULL auto_increment,
  `full_text` text NOT NULL,
  `title` varchar(50) NOT NULL,
  `comm_num` varchar(25) NOT NULL,
  `owner_user_id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_notes`
--

LOCK TABLES `vii_notes` WRITE;
/*!40000 ALTER TABLE `vii_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_notes_comments`
--

DROP TABLE IF EXISTS `vii_notes_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_notes_comments` (
  `id` int(11) NOT NULL auto_increment,
  `text` varchar(255) NOT NULL,
  `note_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `add_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_notes_comments`
--

LOCK TABLES `vii_notes_comments` WRITE;
/*!40000 ALTER TABLE `vii_notes_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_notes_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_photos`
--

DROP TABLE IF EXISTS `vii_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_photos` (
  `id` int(11) NOT NULL auto_increment,
  `album_id` int(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comm_num` mediumint(11) NOT NULL,
  `photo_name` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `position` varchar(200) NOT NULL,
  `descr` text NOT NULL,
  `hash` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=905 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_photos`
--

LOCK TABLES `vii_photos` WRITE;
/*!40000 ALTER TABLE `vii_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_photos_comments`
--

DROP TABLE IF EXISTS `vii_photos_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_photos_comments` (
  `pid` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `hash` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `photo_name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_photos_comments`
--

LOCK TABLES `vii_photos_comments` WRITE;
/*!40000 ALTER TABLE `vii_photos_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_photos_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_photos_mark`
--

DROP TABLE IF EXISTS `vii_photos_mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_photos_mark` (
  `mphoto_id` int(11) NOT NULL,
  `mapprove` varchar(25) NOT NULL,
  `muser_id` int(11) NOT NULL,
  `mphoto_name` varchar(100) NOT NULL,
  `msettings_pos` varchar(100) NOT NULL,
  `mmark_user_id` int(11) NOT NULL,
  `mdate` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_photos_mark`
--

LOCK TABLES `vii_photos_mark` WRITE;
/*!40000 ALTER TABLE `vii_photos_mark` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_photos_mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_rating_list`
--

DROP TABLE IF EXISTS `vii_rating_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_rating_list` (
  `author_user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `rate_date` varchar(80) NOT NULL,
  `num` int(11) NOT NULL,
  `comment` varchar(50) NOT NULL,
  KEY `for_user_id` (`for_user_id`),
  KEY `rate_date` (`rate_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_rating_list`
--

LOCK TABLES `vii_rating_list` WRITE;
/*!40000 ALTER TABLE `vii_rating_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_rating_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_reiting`
--

DROP TABLE IF EXISTS `vii_reiting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_reiting` (
  `author_user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `rate_date` varchar(80) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_reiting`
--

LOCK TABLES `vii_reiting` WRITE;
/*!40000 ALTER TABLE `vii_reiting` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_reiting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_report`
--

DROP TABLE IF EXISTS `vii_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_report` (
  `id` int(11) NOT NULL auto_increment,
  `ruser_id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `act` text NOT NULL,
  `type` text NOT NULL,
  `text` text NOT NULL,
  `date` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_report`
--

LOCK TABLES `vii_report` WRITE;
/*!40000 ALTER TABLE `vii_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_restore`
--

DROP TABLE IF EXISTS `vii_restore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_restore` (
  `email` varchar(60) NOT NULL,
  `hash` char(100) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_restore`
--

LOCK TABLES `vii_restore` WRITE;
/*!40000 ALTER TABLE `vii_restore` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_restore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_static`
--

DROP TABLE IF EXISTS `vii_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_static` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `alt_name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_static`
--

LOCK TABLES `vii_static` WRITE;
/*!40000 ALTER TABLE `vii_static` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_support`
--

DROP TABLE IF EXISTS `vii_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_support` (
  `title` varchar(255) NOT NULL,
  `question` varchar(50) NOT NULL,
  `suser_id` int(11) NOT NULL,
  `sfor_user_id` int(11) NOT NULL,
  `sdate` text NOT NULL,
  `сdate` text NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_support`
--

LOCK TABLES `vii_support` WRITE;
/*!40000 ALTER TABLE `vii_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_support_answers`
--

DROP TABLE IF EXISTS `vii_support_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_support_answers` (
  `qid` int(11) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `adate` varchar(25) NOT NULL,
  `answer` text NOT NULL,
  `auser_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_support_answers`
--

LOCK TABLES `vii_support_answers` WRITE;
/*!40000 ALTER TABLE `vii_support_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_support_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_updates`
--

DROP TABLE IF EXISTS `vii_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_updates` (
  `id` int(11) NOT NULL auto_increment,
  `from_user_id` int(11) NOT NULL,
  `lnk` text NOT NULL,
  `text` text NOT NULL,
  `date` varchar(25) NOT NULL,
  `type` text NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `user_search_pref` text NOT NULL,
  `user_photo` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_updates`
--

LOCK TABLES `vii_updates` WRITE;
/*!40000 ALTER TABLE `vii_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_user_log`
--

DROP TABLE IF EXISTS `vii_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_user_log` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1389 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_user_log`
--

LOCK TABLES `vii_user_log` WRITE;
/*!40000 ALTER TABLE `vii_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_user_rate`
--

DROP TABLE IF EXISTS `vii_user_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_user_rate` (
  `author_user_id` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `rate_date` varchar(80) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_user_rate`
--

LOCK TABLES `vii_user_rate` WRITE;
/*!40000 ALTER TABLE `vii_user_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_user_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_users`
--

DROP TABLE IF EXISTS `vii_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_users` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_cover` varchar(225) NOT NULL,
  `user_cover_pos` varchar(225) NOT NULL,
  `user_phone` int(11) NOT NULL default '0',
  `user_real` int(11) NOT NULL default '0',
  `user_paid` int(11) default NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` char(50) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_lastname` varchar(25) NOT NULL,
  `user_sex` int(11) NOT NULL,
  `user_day` int(11) NOT NULL,
  `user_month` int(11) NOT NULL,
  `user_year` int(11) NOT NULL,
  `user_country` varchar(50) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_reg_date` varchar(60) NOT NULL,
  `user_lastdate` varchar(60) NOT NULL,
  `user_group` smallint(11) NOT NULL,
  `user_hid` char(100) NOT NULL,
  `user_country_city_name` varchar(60) NOT NULL,
  `user_search_pref` varchar(25) NOT NULL,
  `user_birthday` char(11) NOT NULL,
  `user_privacy` text NOT NULL,
  `user_status` varchar(200) NOT NULL,
  `user_audio` int(11) NOT NULL,
  `user_last_visit` text NOT NULL,
  `user_photo` varchar(90) NOT NULL,
  `user_delet` int(11) NOT NULL,
  `user_ban` int(11) NOT NULL,
  `user_balance` int(11) NOT NULL,
  `user_wall_num` mediumint(11) NOT NULL,
  `user_notes_num` mediumint(11) NOT NULL,
  `user_videos_num` mediumint(11) NOT NULL,
  `user_wall_id` int(11) NOT NULL,
  `user_pm_num` mediumint(11) NOT NULL,
  `user_ban_date` varchar(255) NOT NULL,
  `user_friends_demands` int(11) NOT NULL,
  `user_support` int(11) NOT NULL,
  `user_lastupdate` int(11) NOT NULL,
  `user_msg_type` int(11) NOT NULL,
  `user_new_mark_photos` int(11) NOT NULL,
  `user_friends_num` mediumint(11) NOT NULL,
  `user_xfields` text NOT NULL,
  `user_xfields_all` text NOT NULL,
  `user_subscriptions_num` mediumint(11) NOT NULL,
  `user_albums_num` mediumint(11) NOT NULL,
  `user_sp` varchar(10) NOT NULL,
  `user_gifts` int(11) NOT NULL,
  `user_public_num` mediumint(11) NOT NULL,
  `xfields` text NOT NULL,
  `user_doc_num` mediumint(11) NOT NULL,
  `user_fave_num` mediumint(11) NOT NULL,
  `user_blacklist` text NOT NULL,
  `user_blacklist_num` mediumint(11) NOT NULL,
  `all_liked_users` text NOT NULL,
  `user_rate` int(11) NOT NULL default '0',
  `user_mobile` int(11) NOT NULL,
  `see_guests` text,
  `alias` text NOT NULL,
  `user_new_groups` int(10) NOT NULL,
  `password_reg` varchar(50) NOT NULL,
  `password_last` varchar(50) NOT NULL,
  `vkava` text NOT NULL,
  `vkava1` text NOT NULL,
  `user_vk` int(11) NOT NULL,
  `user_emailed` int(11) NOT NULL default '0',
  `user_fans` int(10) NOT NULL default '0',
  `user_banpass` int(11) NOT NULL default '0',
  PRIMARY KEY  (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1294 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_users`
--

LOCK TABLES `vii_users` WRITE;
/*!40000 ALTER TABLE `vii_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_videos`
--

DROP TABLE IF EXISTS `vii_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_videos` (
  `id` int(11) NOT NULL auto_increment,
  `owner_user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `video` text NOT NULL,
  `comm_num` mediumint(50) NOT NULL,
  `add_date` varchar(50) NOT NULL,
  `views` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `photo_num` mediumint(11) NOT NULL,
  `photo` text NOT NULL,
  `privacy` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_videos`
--

LOCK TABLES `vii_videos` WRITE;
/*!40000 ALTER TABLE `vii_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_videos_comments`
--

DROP TABLE IF EXISTS `vii_videos_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_videos_comments` (
  `id` int(11) NOT NULL auto_increment,
  `author_user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `add_date` varchar(20) NOT NULL,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_videos_comments`
--

LOCK TABLES `vii_videos_comments` WRITE;
/*!40000 ALTER TABLE `vii_videos_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_videos_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_votes`
--

DROP TABLE IF EXISTS `vii_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_votes` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `answers` text NOT NULL,
  `answer_num` mediumint(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_votes`
--

LOCK TABLES `vii_votes` WRITE;
/*!40000 ALTER TABLE `vii_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_votes_result`
--

DROP TABLE IF EXISTS `vii_votes_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_votes_result` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `vote_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=542 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_votes_result`
--

LOCK TABLES `vii_votes_result` WRITE;
/*!40000 ALTER TABLE `vii_votes_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_votes_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_wall`
--

DROP TABLE IF EXISTS `vii_wall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_wall` (
  `id` int(11) NOT NULL auto_increment,
  `fast_comm_id` int(11) NOT NULL,
  `fasts_num` int(11) NOT NULL,
  `likes_users` text NOT NULL,
  `author_user_id` int(11) NOT NULL,
  `likes_num` mediumint(11) NOT NULL,
  `add_date` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `tell_uid` int(11) NOT NULL,
  `tell_date` int(11) NOT NULL,
  `public` int(11) NOT NULL,
  `attach` text NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `tell_comm` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` varchar(100) NOT NULL,
  `cnt` int(11) NOT NULL,
  `val_wall` text NOT NULL,
  `check_friend` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `author_user_id` (`author_user_id`),
  KEY `fast_comm_id` (`fast_comm_id`),
  KEY `add_date` (`add_date`)
) ENGINE=MyISAM AUTO_INCREMENT=5286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_wall`
--

LOCK TABLES `vii_wall` WRITE;
/*!40000 ALTER TABLE `vii_wall` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_wall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vii_wall_like`
--

DROP TABLE IF EXISTS `vii_wall_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vii_wall_like` (
  `rec_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vii_wall_like`
--

LOCK TABLES `vii_wall_like` WRITE;
/*!40000 ALTER TABLE `vii_wall_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `vii_wall_like` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-14  3:22:42
