-- MySQL dump 10.13  Distrib 5.1.40, for apple-darwin10.0.0 (i386)
--
-- Host: localhost    Database: jcvp_lu_development
-- ------------------------------------------------------
-- Server version	5.1.40

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
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `asset_file_name` varchar(255) DEFAULT NULL,
  `asset_content_type` varchar(255) DEFAULT NULL,
  `asset_file_size` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'','TestHomeImage','e86005729b.jpg','image/jpeg',36226,1,NULL,'2010-12-27 23:42:52','2010-12-27 23:42:52'),(2,'','JCVP-LU-Logo','JCVP-Logo-Amt-Luzern-Land.jpg','image/jpeg',4498,1,NULL,'2010-12-27 23:43:10','2010-12-27 23:43:10');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'admin.title','Radiant CMS','Title text displayed at the top of all administration screens.'),(2,'admin.subtitle','Publishing for Small Teams','The tagline displayed underneath the main administration title'),(3,'defaults.page.parts','body, extended','Defines the page parts that a new page is created with.  It should be a list, separated by a comma and a space.  For example:\n\nbq. @body, extended, sidebar@\n'),(4,'defaults.page.status','draft','Defines the publishing status of new pages.  This can any one of:\n\n* draft\n* published\n* reviewed\n* hidden\n'),(5,'defaults.page.filter','','Sets the text filter a new page has by default.  Valid options, in a vanilla Radiant install are:\n\n* _leave blank to set no default filter_\n* Markdown\n* SmartyPants\n* Textile\n'),(6,'session_timeout','1209600',NULL),(7,'default_locale','en',NULL),(8,'roles.settings','admin','List of user roles that may see the settings tabs.'),(9,'assets.additional_thumbnails','normal=640x640>','Defines the default sizes for image assets that are created when an image is uploaded. Use \"#\" to crop the image to a specific size. \"42x42#\" would be a square thumbnail, cropped in the center 42 pixels by 42 pixels.'),(10,'assets.display_size','original','Sets which of your image sizes is shown is the edit view. Defaults to the \"original\" image size, but any size may be used. '),(11,'assets.content_types','image/jpeg, image/pjpeg, image/gif, image/png, image/x-png, image/jpg, video/x-m4v, video/quicktime, application/x-shockwave-flash, audio/mpeg, video/mpeg','Defines the content types of that will be allowed to be uploaded as assets.'),(12,'assets.max_asset_size','5','The size in megabytes that will be the max size allowed to be uploaded for an asset'),(13,'assets.skip_filetype_validation','true',NULL),(14,'tags.results_page_url','/search/by-tag',NULL),(15,'tags.complex_strings','false',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension_meta`
--

DROP TABLE IF EXISTS `extension_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `schema_version` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension_meta`
--

LOCK TABLES `extension_meta` WRITE;
/*!40000 ALTER TABLE `extension_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `extension_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `content_type` varchar(40) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` VALUES (1,'Home','<r:inside_layout name=\"Main\">\r\n  <r:snippet name=\"Help_Navigation\" />\r\n  <r:snippet name=\"Main_Navigation\" />\r\n  <r:snippet name=\"Whiteboard\" />\r\n</r:inside_layout>\'','2010-12-27 23:24:57','2010-12-27 23:24:57',1,NULL,'',0),(2,'Main','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">\r\n  <head>  \r\n    <title><r:title /></title>  \r\n    <link href=\"/stylesheets/jcvp/main.css\" media=\"screen, projection\" rel=\"stylesheet\" type=\"text/css\" />   \r\n    <link href=\"/stylesheets/jcvp/print.css\" media=\"print\" rel=\"stylesheet\" type=\"text/css\" />  \r\n    <!--[if IE]>      \r\n      <link href=\"/stylesheets/jcvp/ie.css\" media=\"screen, projection\" rel=\"stylesheet\" type=\"text/css\" />  \r\n    <![endif]-->  \r\n    <r:meta />\r\n  </head>\r\n<body>\r\n  <div id=\"main\">\r\n    <r:content_for_layout/> \r\n  </div>\r\n</body>\r\n</html>','2010-12-27 23:27:12','2010-12-27 23:38:30',1,1,'',1);
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_tags`
--

DROP TABLE IF EXISTS `meta_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_meta_tags_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_tags`
--

LOCK TABLES `meta_tags` WRITE;
/*!40000 ALTER TABLE `meta_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_types`
--

DROP TABLE IF EXISTS `navigation_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_types`
--

LOCK TABLES `navigation_types` WRITE;
/*!40000 ALTER TABLE `navigation_types` DISABLE KEYS */;
INSERT INTO `navigation_types` VALUES (1,'Main','2010-12-27 23:13:16','2010-12-27 23:13:16'),(2,'Help','2010-12-27 23:13:16','2010-12-27 23:13:16'),(3,'Blog','2010-12-27 23:13:48','2010-12-27 23:13:48');
/*!40000 ALTER TABLE `navigation_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_attachments`
--

DROP TABLE IF EXISTS `page_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_attachments`
--

LOCK TABLES `page_attachments` WRITE;
/*!40000 ALTER TABLE `page_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_parts`
--

DROP TABLE IF EXISTS `page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parts_by_page` (`page_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_parts`
--

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` VALUES (1,'body','','<r:find url=\"/blog\">\r\n  <r:children:each order=\"desc\" limit=\"10\">\r\n    <div class=\"blog-teaser\">\r\n      <div class=\"blog-title\">\r\n        <r:date format=\"%d. %B %Y\" /><br />\r\n        <h1><r:link /></h1>\r\n      </div>\r\n      <div id=\"blog-teaser-text\">\r\n        <r:content part=\"teaser\" />\r\n      </div>\r\n      <div class=\"blog-info\">\r\n        Autor: <r:author /><br />\r\n        Thema:\r\n      </div>\r\n    </div>\r\n  </r:children:each>\r\n</r:find>',1),(2,'extended','','',1),(3,'body','','',2),(4,'extended','','',2),(5,'body','','<p><b>Am vergangenen Freitag hielt die JCVP Kanton Luzern ihre diesjÃ¤hrige Generalversammlung ab. Die rund zwanzig anwesenden Mitglieder bestÃ¤tigten dabei das Vorstandsteam, welches im vergangenen Jahr die Geschicke der kantonalen JCVP geleitet hat. DarÃ¼ber hinaus wurde Tobias KÃ¤ch, Einwohnerrat von Emmen, in den Vorstand gewÃ¤hlt.</b></p>\r\n\r\n<p>KantonalprÃ¤sident Renato Bucher blickte in seinem Jahresbericht auf ein intensives Jahr zurÃ¼ck. So konnte die JCVP ihren Mitgliedern sowie den Luzernerinnen und Luzernern zahlreiche span-nende und interessante AnlÃ¤sse bieten, beispielsweise das traditionelle JCVP-Forum zum Thema Bildung oder das Open-Air-Podium zur Familienstimmrechtsinitiative. Nicht zu vergessen ist auch das JCVP-Stadtlaufteam, welches auf sportliche Weise Farbe bekannte und die JCVP durch die Stadt Luzern trug. Ein weiterer HÃ¶hepunkt war die Nomination des Krienser JCVP-Einwohnerrates Daniel Piazza als Nationalratskandidat auf der CVP-Liste. Auch thematisch konnte die JCVP im vergangenen Jahr wieder Akzente setzen. So wurden die VorschlÃ¤ge fÃ¼r eine stÃ¤rkere Einbindung der Schweizer Geschichte in der Schule sowie verstÃ¤rkte prÃ¤ventive, aber auch repressive Massnahmen im Sicherheitsbereich sehr positiv aufgenommen.</p>\r\n\r\n<p>SelbstverstÃ¤ndlich stand auch das kommende Super-Wahljahr 2011 mit den Kantonsrats- und Nationalratswahlen im Zentrum. Bei beiden Wahlen wird die JCVP als echte Jungpartei mit eige-nen Listen antreten. FÃ¼r die Kantonsratswahlen ist das Ziel klar: â€žWir wollen keinen Sitz â€“ wir holen einen Sitz!â€œ</p>',3),(6,'teaser','','Am vergangenen Freitag hielt die JCVP Kanton Luzern ihre diesjÃ¤hrige Generalversammlung ab. Die rund zwanzig anwesenden Mitglieder bestÃ¤tigten dabei das Vorstandsteam, welches im vergangenen Jahr die Geschicke der kantonalen JCVP geleitet hat. DarÃ¼ber hinaus wurde Tobias KÃ¤ch, Einwohnerrat von Emmen, in den Vorstand gewÃ¤hlt.',3);
/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `breadcrumb` varchar(160) DEFAULT NULL,
  `class_name` varchar(25) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `lock_version` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `navigationTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'JCVP Kanton Luzern','/','JCVP Kanton Luzern','',100,NULL,1,'2010-12-27 23:14:25','2010-12-27 23:40:58','2010-12-27 00:00:00',1,1,0,3,'','',1,NULL),(2,'Blog','blog','Blog','ArchivePage',100,1,NULL,'2010-12-27 23:30:35','2010-12-27 23:41:08','2010-12-27 00:00:00',1,1,0,3,'','',1,3),(3,'Mit Vollgas in die Wahlen â€“ JCVP verstÃ¤rkt das Vorstandsteam','mit-vollgas-in-die-wahlen-jcvp-verstrkt-das-vorstandsteam','Mit Vollgas in die Wahlen â€“ JCVP verstÃ¤rkt das Vorstandsteam','',100,2,NULL,'2010-12-27 23:51:56','2010-12-27 23:52:11','2010-12-27 00:00:00',1,1,0,3,'','',1,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20081203140407'),('20090226140109'),('20090929164633'),('20091003095744'),('21'),('3'),('4'),('5'),('6'),('7'),('8'),('9'),('Navigation Tags-1'),('Paperclipped-1'),('Paperclipped-2'),('Paperclipped-20090316132151'),('Paperclipped-3'),('Paperclipped-4'),('Paperclipped-5'),('Paperclipped-6'),('Paperclipped-7'),('Reorder-1'),('Settings-1'),('Settings-2'),('Tags-1');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) DEFAULT NULL,
  `data` text,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` VALUES (1,'2Level_Navigation','','<div id=\"2LevelNavigation\">\r\n  <ul>\r\n    <li>Stadt Luzern</li>\r\n    <li>Amt Luzern Land</li>\r\n    <li>Amt Sursee</li>\r\n    <li>Amt Hochdorf</li>\r\n    <li>Gemeinde Kriens</li> \r\n  </ul>\r\n</div>','2010-12-27 23:33:45','2010-12-27 23:33:45',1,NULL,0),(2,'Box','','<div class=\"box\">  \r\n  <div class=\"boxTitle\">\r\n    Message  \r\n  </div>\r\n  <div class=\"boxBody\">\r\n    <div class=\"boxContent\">\r\n     Hallo zusammen\r\n    </div>  \r\n  </div>\r\n</div>','2010-12-27 23:35:58','2010-12-27 23:35:58',1,NULL,0),(3,'Content','','<div id=\"contentNavigation\">&nbsp;</div>\r\n<div id=\"content\">\r\n  <r:content />\r\n</div>','2010-12-27 23:37:30','2010-12-27 23:37:30',1,NULL,0),(4,'Main_Navigation','','<div id=\"mainNavigation\">  \r\n  <div id=\"mainNavigationImage\">    \r\n    <r:assets:image title=\"TestHomeImage\" />   \r\n  </div>  \r\n  <div id=\"mainNavigationBar\">    \r\n    <div id=\"mainNavigationBarItems\">       \r\n      <r:nav depth=\"2\" />    \r\n    </div>    \r\n    <div id=\"mainNavigationBarLogo\">      \r\n      <r:assets:image title=\"JCVP-LU-Logo\" />      \r\n    </div>  \r\n  </div>\r\n</div>','2010-12-27 23:39:35','2010-12-27 23:39:35',1,NULL,0),(5,'Whiteboard','','<div id=\"whiteboard\">  \r\n  <div id=\"leftWhiteboard\">    \r\n    <r:snippet name=\"2Level_Navigation\" />    \r\n    <r:snippet name=\"Box\" />    \r\n    <r:snippet name=\"Box\" />  \r\n  </div>  \r\n  <div id=\"rightWhiteboard\">    \r\n    <r:snippet name=\"Content\" />  \r\n  </div>\r\n</div>','2010-12-27 23:40:20','2010-12-27 23:42:19',1,1,2),(6,'Help_Navigation','','<div id=\"helpNavigation\"> &nbsp;</div>','2010-12-27 23:44:23','2010-12-27 23:44:23',1,NULL,0);
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_tag_id` int(11) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_taggings_on_meta_tag_id_and_taggable_id_and_taggable_type` (`meta_tag_id`,`taggable_id`,`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `designer` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `lock_version` int(11) DEFAULT '0',
  `salt` varchar(255) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pascal Naef',NULL,'admin','54a62b80da160000d5df751c42f6293bb11352e4','2010-12-27 23:11:51','2010-12-27 23:11:51',NULL,NULL,1,0,NULL,0,'4dac0b8542710a62dea46011b8ca79128b1704c4',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-12-28  0:56:41
