-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: bestmenu
-- ------------------------------------------------------
-- Server version	5.1.33-community-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add vote',9,'add_vote'),(26,'Can change vote',9,'change_vote'),(27,'Can delete vote',9,'delete_vote'),(28,'Can add score',10,'add_score'),(29,'Can change score',10,'change_score'),(30,'Can delete score',10,'delete_score'),(31,'Can add similar user',11,'add_similaruser'),(32,'Can change similar user',11,'change_similaruser'),(33,'Can delete similar user',11,'delete_similaruser'),(34,'Can add ignored object',12,'add_ignoredobject'),(35,'Can change ignored object',12,'change_ignoredobject'),(36,'Can delete ignored object',12,'delete_ignoredobject'),(37,'Can add comida',13,'add_comida'),(38,'Can change comida',13,'change_comida'),(39,'Can delete comida',13,'delete_comida'),(40,'Can add bebida',14,'add_bebida'),(41,'Can change bebida',14,'change_bebida'),(42,'Can delete bebida',14,'delete_bebida'),(43,'Can add sopa',15,'add_sopa'),(44,'Can change sopa',15,'change_sopa'),(45,'Can delete sopa',15,'delete_sopa'),(46,'Can add complemento',16,'add_complemento'),(47,'Can change complemento',16,'change_complemento'),(48,'Can delete complemento',16,'delete_complemento'),(49,'Can add menu',17,'add_menu'),(50,'Can change menu',17,'change_menu'),(51,'Can delete menu',17,'delete_menu');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'ww','','','oscarortega@outlook.com','sha1$6dfeb$b63c1cbdbc5d080cc9d1f0293ccdf986e3e9c4c6',1,1,1,'2014-01-22 19:37:03','2014-01-10 18:11:52');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-01-10 18:13:11',1,14,'1','Agua de Naranja',1,''),(2,'2014-01-10 18:13:12',1,14,'1','Agua de Naranja',2,'No ha cambiado ningún campo.'),(3,'2014-01-10 18:13:20',1,14,'2','Agua de jamaica',1,''),(4,'2014-01-10 18:13:43',1,13,'1','Empanizado',1,''),(5,'2014-01-10 18:14:24',1,13,'2','Enchiladas Suizas',1,''),(6,'2014-01-10 18:14:39',1,13,'3','Paella',1,''),(7,'2014-01-10 18:16:23',1,16,'1','Verduras Hervidas',1,''),(8,'2014-01-10 18:16:32',1,16,'2','Espagueti',1,''),(9,'2014-01-10 18:16:56',1,15,'1','Sopa de zanahoria',1,''),(10,'2014-01-10 18:17:05',1,15,'2','Sopa de pasta',1,''),(11,'2014-01-10 18:17:24',1,17,'1','Empanizado 2014-01-10 18:17:17',1,''),(12,'2014-01-10 18:17:39',1,17,'2','Enchiladas Suizas 2014-01-10 18:17:33',1,''),(13,'2014-01-10 18:17:57',1,17,'3','Paella 2014-01-13 18:17:51',1,''),(14,'2014-01-11 18:59:55',1,17,'3','Paella 2014-01-11',2,'Modificado/a fecha.'),(15,'2014-01-15 21:06:31',1,17,'3','Paella 2014-01-11',2,'Modificado/a dia.'),(16,'2014-01-15 21:06:36',1,17,'2','Enchiladas Suizas 2014-01-10',2,'Modificado/a dia.'),(17,'2014-01-15 21:06:44',1,17,'1','Empanizado 2014-01-10',2,'Modificado/a dia.'),(18,'2014-01-16 21:18:51',1,17,'4','Empanizado 2',1,''),(19,'2014-01-16 21:19:01',1,17,'5','Enchiladas Suizas 3',1,''),(20,'2014-01-16 21:19:12',1,17,'6','Paella 4',1,''),(21,'2014-01-16 21:19:22',1,17,'7','Empanizado 5',1,''),(22,'2014-01-18 17:50:19',1,17,'8','Empanizado 6',1,''),(23,'2014-01-18 17:50:33',1,17,'9','Enchiladas Suizas 7',1,''),(24,'2014-01-21 20:24:51',1,17,'5','Enchiladas Suizas 2',2,'Modificado/a dia.'),(25,'2014-01-21 20:25:50',1,17,'5','Enchiladas Suizas 3',2,'Modificado/a dia.'),(26,'2014-01-21 20:27:16',1,17,'5','Enchiladas Suizas 3',2,'No ha cambiado ningún campo.'),(27,'2014-01-21 20:46:34',1,17,'5','Enchiladas Suizas 2',2,'Modificado/a dia.'),(28,'2014-01-21 20:58:55',1,17,'5','Enchiladas Suizas 2',2,'No ha cambiado ningún campo.'),(29,'2014-01-22 19:37:16',1,17,'5','Enchiladas Suizas 3',2,'Modificado/a dia.'),(30,'2014-01-22 19:48:52',1,17,'5','Enchiladas Suizas 3',2,'Modificado/a sopa.'),(31,'2014-01-22 20:05:01',1,17,'5','Enchiladas Suizas 3',2,'No ha cambiado ningún campo.'),(32,'2014-01-22 20:05:09',1,17,'4','Empanizado 3',2,'Modificado/a dia.'),(33,'2014-01-24 03:41:34',1,16,'2','Espagueti',2,'No ha cambiado ningún campo.'),(34,'2014-01-25 18:55:11',1,13,'1','Empanizado',2,'Modificado/a descripcion.'),(35,'2014-01-25 18:55:57',1,13,'2','Enchiladas Suizas',2,'Modificado/a descripcion.'),(36,'2014-01-25 18:57:20',1,13,'3','Paella',2,'Modificado/a descripcion.'),(37,'2014-01-25 20:39:00',1,17,'9','Enchiladas Suizas 2',2,'Modificado/a dia.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'vote','djangoratings','vote'),(10,'score','djangoratings','score'),(11,'similar user','djangoratings','similaruser'),(12,'ignored object','djangoratings','ignoredobject'),(13,'comida','menu','comida'),(14,'bebida','menu','bebida'),(15,'sopa','menu','sopa'),(16,'complemento','menu','complemento'),(17,'menu','menu','menu');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8cbe649c2b88c0f9c93a8a1e78e1d26a','ZWZjNmI5MjNiZTY0N2M4MDFmZGY3NDBjMDVhZmRkMDMyMzE1YWMwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-01-24 18:12:53'),('289554215cc1190cb5af975c5cd9af97','ZWZjNmI5MjNiZTY0N2M4MDFmZGY3NDBjMDVhZmRkMDMyMzE1YWMwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-02-04 20:21:21'),('61c466166ba537a9884e584d170d1ef5','ZWZjNmI5MjNiZTY0N2M4MDFmZGY3NDBjMDVhZmRkMDMyMzE1YWMwMDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2014-02-05 19:37:03');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangoratings_ignoredobject`
--

DROP TABLE IF EXISTS `djangoratings_ignoredobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangoratings_ignoredobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`object_id`),
  KEY `djangoratings_ignoredobject_403f60f` (`user_id`),
  KEY `djangoratings_ignoredobject_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangoratings_ignoredobject`
--

LOCK TABLES `djangoratings_ignoredobject` WRITE;
/*!40000 ALTER TABLE `djangoratings_ignoredobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangoratings_ignoredobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangoratings_score`
--

DROP TABLE IF EXISTS `djangoratings_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangoratings_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `score` int(11) NOT NULL,
  `votes` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`object_id`,`key`),
  KEY `djangoratings_score_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangoratings_score`
--

LOCK TABLES `djangoratings_score` WRITE;
/*!40000 ALTER TABLE `djangoratings_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangoratings_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangoratings_similaruser`
--

DROP TABLE IF EXISTS `djangoratings_similaruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangoratings_similaruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `agrees` int(10) unsigned NOT NULL,
  `disagrees` int(10) unsigned NOT NULL,
  `exclude` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_user_id` (`from_user_id`,`to_user_id`),
  KEY `djangoratings_similaruser_74b00be1` (`from_user_id`),
  KEY `djangoratings_similaruser_315477a4` (`to_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangoratings_similaruser`
--

LOCK TABLES `djangoratings_similaruser` WRITE;
/*!40000 ALTER TABLE `djangoratings_similaruser` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangoratings_similaruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangoratings_vote`
--

DROP TABLE IF EXISTS `djangoratings_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangoratings_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `key` varchar(32) NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` char(15) NOT NULL,
  `cookie` varchar(32) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_changed` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`object_id`,`key`,`user_id`,`ip_address`,`cookie`),
  KEY `djangoratings_vote_1bb8f392` (`content_type_id`),
  KEY `djangoratings_vote_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangoratings_vote`
--

LOCK TABLES `djangoratings_vote` WRITE;
/*!40000 ALTER TABLE `djangoratings_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangoratings_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_bebida`
--

DROP TABLE IF EXISTS `menu_bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_bebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_bebida`
--

LOCK TABLES `menu_bebida` WRITE;
/*!40000 ALTER TABLE `menu_bebida` DISABLE KEYS */;
INSERT INTO `menu_bebida` VALUES (1,'Agua de Naranja',''),(2,'Agua de jamaica','');
/*!40000 ALTER TABLE `menu_bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_comida`
--

DROP TABLE IF EXISTS `menu_comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_comida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(450) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_comida`
--

LOCK TABLES `menu_comida` WRITE;
/*!40000 ALTER TABLE `menu_comida` DISABLE KEYS */;
INSERT INTO `menu_comida` VALUES (1,'Empanizado','La milanesa es un filete fino, normalmente de carne de vaca, pasado por huevo batido y luego por pan rallado, que se cocina frito o (menos comúnmente) al horno y suele acompañarse con una guarnición, como papas fritas. ','image/comidas/fileteempanizado.jpg'),(2,'Enchiladas Suizas','Preparadas con una salsa verde con base en una crema de leche y cubiertas de queso gratinado, en vez del queso fresco más usual en otro tipo de enchiladas. ','image/comidas/enchiladas.jpg'),(3,'Paella',' Plato de arroz seco con carne,pescado,mariscos,legumbres y azafrán,típico del levante español.','image/comidas/paella1.jpg');
/*!40000 ALTER TABLE `menu_comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_complemento`
--

DROP TABLE IF EXISTS `menu_complemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_complemento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_complemento`
--

LOCK TABLES `menu_complemento` WRITE;
/*!40000 ALTER TABLE `menu_complemento` DISABLE KEYS */;
INSERT INTO `menu_complemento` VALUES (1,'Verduras Hervidas',''),(2,'Espagueti','');
/*!40000 ALTER TABLE `menu_complemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu`
--

DROP TABLE IF EXISTS `menu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comidas_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `calificacion_votes` int(10) unsigned NOT NULL,
  `calificacion_score` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_menu_3aff351f` (`comidas_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu`
--

LOCK TABLES `menu_menu` WRITE;
/*!40000 ALTER TABLE `menu_menu` DISABLE KEYS */;
INSERT INTO `menu_menu` VALUES (1,1,'2014-01-10 00:00:00',0,0,1),(2,2,'2014-01-10 00:00:00',0,0,1),(3,3,'2014-01-11 00:00:00',0,0,1),(4,1,'2014-01-16 00:00:00',0,0,3),(5,2,'2014-01-16 00:00:00',0,0,3),(6,3,'2014-01-16 00:00:00',0,0,4),(7,1,'2014-01-16 00:00:00',0,0,5),(8,1,'2014-01-18 00:00:00',0,0,6),(9,2,'2014-01-18 00:00:00',0,0,2);
/*!40000 ALTER TABLE `menu_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu_bebida`
--

DROP TABLE IF EXISTS `menu_menu_bebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menu_bebida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `bebida_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`,`bebida_id`),
  KEY `menu_menu_bebida_143efa3` (`menu_id`),
  KEY `menu_menu_bebida_72d6fe85` (`bebida_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu_bebida`
--

LOCK TABLES `menu_menu_bebida` WRITE;
/*!40000 ALTER TABLE `menu_menu_bebida` DISABLE KEYS */;
INSERT INTO `menu_menu_bebida` VALUES (7,1,2),(6,2,2),(5,3,1),(22,4,1),(21,5,1),(10,6,2),(11,7,2),(12,8,1),(23,9,1);
/*!40000 ALTER TABLE `menu_menu_bebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu_complemento`
--

DROP TABLE IF EXISTS `menu_menu_complemento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menu_complemento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `complemento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`,`complemento_id`),
  KEY `menu_menu_complemento_143efa3` (`menu_id`),
  KEY `menu_menu_complemento_7a4e9a58` (`complemento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu_complemento`
--

LOCK TABLES `menu_menu_complemento` WRITE;
/*!40000 ALTER TABLE `menu_menu_complemento` DISABLE KEYS */;
INSERT INTO `menu_menu_complemento` VALUES (10,1,2),(9,2,1),(7,3,1),(8,3,2),(25,4,1),(24,5,1),(13,6,1),(14,7,2),(15,8,1),(26,9,1);
/*!40000 ALTER TABLE `menu_menu_complemento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu_sopa`
--

DROP TABLE IF EXISTS `menu_menu_sopa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menu_sopa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `sopa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_id` (`menu_id`,`sopa_id`),
  KEY `menu_menu_sopa_143efa3` (`menu_id`),
  KEY `menu_menu_sopa_21f8f485` (`sopa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu_sopa`
--

LOCK TABLES `menu_menu_sopa` WRITE;
/*!40000 ALTER TABLE `menu_menu_sopa` DISABLE KEYS */;
INSERT INTO `menu_menu_sopa` VALUES (7,1,2),(6,2,1),(5,3,2),(24,4,1),(23,5,2),(10,6,1),(11,7,2),(12,8,2),(25,9,1),(22,5,1);
/*!40000 ALTER TABLE `menu_menu_sopa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_sopa`
--

DROP TABLE IF EXISTS `menu_sopa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_sopa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_sopa`
--

LOCK TABLES `menu_sopa` WRITE;
/*!40000 ALTER TABLE `menu_sopa` DISABLE KEYS */;
INSERT INTO `menu_sopa` VALUES (1,'Sopa de zanahoria',''),(2,'Sopa de pasta','');
/*!40000 ALTER TABLE `menu_sopa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-26  1:11:17
