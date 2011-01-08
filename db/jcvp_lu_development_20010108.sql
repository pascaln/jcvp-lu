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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'','TestHomeImage','e7b83184df.jpg','image/jpeg',230838,1,1,'2010-12-27 23:42:52','2011-01-02 13:38:01'),(2,'','JCVP-LU-Logo','JCVP-Logo-Amt-Luzern-Land.jpg','image/jpeg',25384,1,1,'2010-12-27 23:43:10','2011-01-02 12:29:08'),(3,'','Banner','banner.jpg','image/jpeg',25553,1,NULL,'2011-01-06 20:52:21','2011-01-06 20:52:21');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `author_url` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_ip` varchar(255) DEFAULT NULL,
  `content` text,
  `content_html` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `filter_id` varchar(25) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `mollom_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,18,'Pascal','','info@planetnaef.ch','127.0.0.1','Das ist geil','<p>Das ist geil</p>','2011-01-07 23:31:26','2011-01-07 23:31:51','Textile','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; de; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13','http://localhost:3000/blog/2011/01/06/jcvp-nominiert-daniel-piazza-fr-die-nationalratswahlen-2011/comments','2011-01-07 23:31:51',NULL,NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'admin.title','Radiant CMS','Title text displayed at the top of all administration screens.'),(2,'admin.subtitle','Publishing for Small Teams','The tagline displayed underneath the main administration title'),(3,'defaults.page.parts','body, extended','Defines the page parts that a new page is created with.  It should be a list, separated by a comma and a space.  For example:\n\nbq. @body, extended, sidebar@\n'),(4,'defaults.page.status','draft','Defines the publishing status of new pages.  This can any one of:\n\n* draft\n* published\n* reviewed\n* hidden\n'),(5,'defaults.page.filter','','Sets the text filter a new page has by default.  Valid options, in a vanilla Radiant install are:\n\n* _leave blank to set no default filter_\n* Markdown\n* SmartyPants\n* Textile\n'),(6,'session_timeout','1209600',NULL),(7,'default_locale','en',NULL),(8,'roles.settings','admin','List of user roles that may see the settings tabs.'),(9,'assets.additional_thumbnails','normal=640x640>','Defines the default sizes for image assets that are created when an image is uploaded. Use \"#\" to crop the image to a specific size. \"42x42#\" would be a square thumbnail, cropped in the center 42 pixels by 42 pixels.'),(10,'assets.display_size','original','Sets which of your image sizes is shown is the edit view. Defaults to the \"original\" image size, but any size may be used. '),(11,'assets.content_types','image/jpeg, image/pjpeg, image/gif, image/png, image/x-png, image/jpg, video/x-m4v, video/quicktime, application/x-shockwave-flash, audio/mpeg, video/mpeg','Defines the content types of that will be allowed to be uploaded as assets.'),(12,'assets.max_asset_size','5','The size in megabytes that will be the max size allowed to be uploaded for an asset'),(13,'assets.skip_filetype_validation','true',NULL),(14,'tags.results_page_url','/search/by-tag',NULL),(15,'tags.complex_strings','false',NULL),(16,'comments.filters_enabled','true',NULL),(17,'comments.notify_creator','true',NULL),(18,'comments.notify_updater','false',NULL),(19,'comments.akismet_url','',NULL),(20,'comments.notification','false',NULL),(21,'comments.mollom_publickey','',NULL),(22,'comments.notification_to','',NULL),(23,'comments.notification_site_name','',NULL),(24,'comments.akismet_key','',NULL),(25,'comments.mollom_privatekey','',NULL),(26,'comments.notification_from','',NULL),(27,'comments.simple_spam_filter_required?','true',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` VALUES (1,'Home','<r:inside_layout name=\"Main\">\r\n  <r:snippet name=\"Main_Navigation_Home\" />\r\n  <div id=\"whiteboard\">  \r\n    <div id=\"leftWhiteboard\">    \r\n      <r:assets:image title=\"Banner\" />   \r\n    </div>  \r\n    <div id=\"centerWhiteboard\">    \r\n      <div id=\"centerWhiteboard-left-right-border\">\r\n        <r:snippet name=\"Content_Home\" />  \r\n      </div>\r\n      <div id=\"centerWhiteboard-bottom-border\">&nbsp;</div>\r\n    </div>\r\n    <div id=\"rightWhiteboard\">    \r\n      <r:snippet name=\"Box_1\" />    \r\n      <r:snippet name=\"Box_3\" />  \r\n    </div>\r\n</r:inside_layout>','2010-12-27 23:24:57','2011-01-08 23:42:08',1,1,'',9),(2,'Main','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">\r\n  <head>  \r\n    <title><r:title /></title>  \r\n    <link href=\"/stylesheets/jcvp/main.css\" media=\"screen, projection\" rel=\"stylesheet\" type=\"text/css\" />   \r\n    <link href=\"/stylesheets/jcvp/print.css\" media=\"print\" rel=\"stylesheet\" type=\"text/css\" />  \r\n    <!--[if IE]>      \r\n      <link href=\"/stylesheets/jcvp/ie.css\" media=\"screen, projection\" rel=\"stylesheet\" type=\"text/css\" />  \r\n    <![endif]-->  \r\n    <r:meta />\r\n  </head>\r\n<body>\r\n  <div id=\"main\">\r\n    <r:snippet name=\"Help_Navigation\" />\r\n    <r:content_for_layout/> \r\n  </div>\r\n</body>\r\n</html>','2010-12-27 23:27:12','2011-01-02 13:42:01',1,1,'',3),(3,'Content_Site','<r:inside_layout name=\"Main\">\r\n  <r:snippet name=\"Main_Navigation_Content\" />\r\n  <div id=\"whiteboard\">  \r\n    <div id=\"leftWhiteboard\">    \r\n      <r:snippet name=\"2Level_Navigation\" />    \r\n    </div>  \r\n    <div id=\"centerWhiteboard\">    \r\n      <div id=\"centerWhiteboard-left-right-border\">\r\n        <r:snippet name=\"Content\" />  \r\n      </div>\r\n      <div id=\"centerWhiteboard-bottom-border\">&nbsp;</div>\r\n    </div>\r\n    <div id=\"rightWhiteboard\">    \r\n      <r:snippet name=\"Box_1\" />    \r\n      <r:snippet name=\"Box_2\" />  \r\n    </div>\r\n</div>\r\n</r:inside_layout>','2011-01-02 12:45:07','2011-01-07 16:52:51',1,1,'',7),(4,'Blog','<r:inside_layout name=\"Main\">\r\n  <r:snippet name=\"Main_Navigation_Content\" />\r\n  <div id=\"whiteboard\">  \r\n    <div id=\"leftWhiteboard\" class=\"leftWhiteboard-Blog\">    \r\n      <r:snippet name=\"2Level_Navigation\" />    \r\n    </div>  \r\n    <div id=\"centerWhiteboard\">    \r\n      <div id=\"centerWhiteboard-left-right-border\">\r\n        <r:snippet name=\"Content_Blog\" />  \r\n      </div>\r\n      <div id=\"centerWhiteboard-bottom-border\">&nbsp;</div>\r\n    </div>\r\n    <div id=\"rightWhiteboard\">    \r\n      <r:snippet name=\"Box_1\" />    \r\n      <r:snippet name=\"Box_2\" />  \r\n    </div>\r\n</div>\r\n</r:inside_layout>','2011-01-08 16:42:27','2011-01-08 17:06:06',1,1,'',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_tags`
--

LOCK TABLES `meta_tags` WRITE;
/*!40000 ALTER TABLE `meta_tags` DISABLE KEYS */;
INSERT INTO `meta_tags` VALUES (3,'Abstimmungen'),(2,'Vorstand'),(1,'Wahlen');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_parts`
--

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` VALUES (1,'body','','Willkommen bei der JCVP Kanton Luzern!',1),(3,'body','','<r:children:each order=\"desc\" limit=\"10\">\r\n  <div class=\"blog-teaser\">\r\n    <div class=\"blog-teaser-title\">\r\n      <r:date format=\"%d.%m.%Y\" /><br />\r\n      <h1><r:link /></h1>\r\n    </div>\r\n    <div class=\"blog-teaser-text\">\r\n      <r:content part=\"teaser\" />\r\n    </div>\r\n    <div class=\"blog-teaser-info\">\r\n      Autor: <r:author /><br />\r\n      Thema: <r:tags:each><r:link />&nbsp;</r:tags:each><br />\r\n      Kommentare: <r:comments:count />\r\n    </div>\r\n  </div>\r\n</r:children:each>',2),(5,'body','','<p><b>Am vergangenen Freitag hielt die JCVP Kanton Luzern ihre diesjÃ¤hrige Generalversammlung ab. Die rund zwanzig anwesenden Mitglieder bestÃ¤tigten dabei das Vorstandsteam, welches im vergangenen Jahr die Geschicke der kantonalen JCVP geleitet hat. DarÃ¼ber hinaus wurde Tobias KÃ¤ch, Einwohnerrat von Emmen, in den Vorstand gewÃ¤hlt.</b></p>\r\n\r\n<p>KantonalprÃ¤sident Renato Bucher blickte in seinem Jahresbericht auf ein intensives Jahr zurÃ¼ck. So konnte die JCVP ihren Mitgliedern sowie den Luzernerinnen und Luzernern zahlreiche span-nende und interessante AnlÃ¤sse bieten, beispielsweise das traditionelle JCVP-Forum zum Thema Bildung oder das Open-Air-Podium zur Familienstimmrechtsinitiative. Nicht zu vergessen ist auch das JCVP-Stadtlaufteam, welches auf sportliche Weise Farbe bekannte und die JCVP durch die Stadt Luzern trug. Ein weiterer HÃ¶hepunkt war die Nomination des Krienser JCVP-Einwohnerrates Daniel Piazza als Nationalratskandidat auf der CVP-Liste. Auch thematisch konnte die JCVP im vergangenen Jahr wieder Akzente setzen. So wurden die VorschlÃ¤ge fÃ¼r eine stÃ¤rkere Einbindung der Schweizer Geschichte in der Schule sowie verstÃ¤rkte prÃ¤ventive, aber auch repressive Massnahmen im Sicherheitsbereich sehr positiv aufgenommen.</p>\r\n\r\n<p>SelbstverstÃ¤ndlich stand auch das kommende Super-Wahljahr 2011 mit den Kantonsrats- und Nationalratswahlen im Zentrum. Bei beiden Wahlen wird die JCVP als echte Jungpartei mit eige-nen Listen antreten. FÃ¼r die Kantonsratswahlen ist das Ziel klar: â€žWir wollen keinen Sitz â€“ wir holen einen Sitz!â€œ</p>',3),(6,'teaser','','Am vergangenen Freitag hielt die JCVP Kanton Luzern ihre diesjÃ¤hrige Generalversammlung ab. Die rund zwanzig anwesenden Mitglieder bestÃ¤tigten dabei das Vorstandsteam, welches im vergangenen Jahr die Geschicke der kantonalen JCVP geleitet hat. DarÃ¼ber hinaus wurde Tobias KÃ¤ch, Einwohnerrat von Emmen, in den Vorstand gewÃ¤hlt.',3),(7,'body','','<p>An der Kantonalversammlung der JCVP Kanton Luzern fassten rund zwanzig Delegierte aus dem ganzen Kanton die Parolen zu den eidgenÃ¶ssischen Abstimmungen vom 28.November. Die JCVP ist enttÃ¤uscht, dass die beiden Polparteien SVP und SP mit den Vorlagen in erster Linie Problembewirtschaftung betreiben, jedoch nicht an nachhaltigen LÃ¶sungen interessiert sind.</p>\r\n\r\n<p>Einstimmig sprachen sich die Delegierten gegen die Ausschaffungsinitiative und fÃ¼r den Gegenvorschlag aus. Der Gegenvorschlag ist eine passende Antwort auf ein berechtigtes Anliegen. Er berÃ¼cksichtigt als Ausschaffungsgrundlage jedoch nicht eine unvollstÃ¤ndige Liste willkÃ¼rlich zusammengewÃ¼rfelter TatbestÃ¤nde sondern die Schwere eines Verbrechens.</p>\r\n\r\n<p>Ebenfalls deutlich wehrt sich die JCVP gegen die SP-Steuerinitiative, die Gerechtigkeit verspricht, aber dem Mittelstand grossen Schaden zufÃ¼gen wÃ¼rde. Der fÃ¶deralistische Steuerwettbewerb ist ein wesentlicher Anreiz mit Steuereinnahmen verantwortungsbewusst und sorgfÃ¤ltig umzugehen wie auch eine effiziente schlanke Verwaltung zu garantieren. Die JCVP stÃ¶rt sich daran, dass die SP eine Kampagne betreibt, die sÃ¤mtliche Reichen als â€žAbzockerâ€œ und â€žEgoistenâ€œ pauschalisiert ohne dem gesellschaftlichen Engagement vieler VermÃ¶genden Rechnung zu tragen.</p>',4),(8,'teaser','','An der Kantonalversammlung der JCVP Kanton Luzern fassten rund zwanzig Delegierte aus dem ganzen Kanton die Parolen zu den eidgenÃ¶ssischen Abstimmungen vom 28.November. Die JCVP ist enttÃ¤uscht, dass die beiden Polparteien SVP und SP mit den Vorlagen in erster Linie Problembewirtschaftung betreiben, jedoch nicht an nachhaltigen LÃ¶sungen interessiert sind.',4),(9,'box_1','','<r:tag_cloud />',1),(10,'body','','',5),(11,'extended','','',5),(12,'body','','<p><b>Am vergangenen Freitag hielt die JCVP Kanton Luzern ihre diesjÃ¤hrige Generalversammlung ab. Die rund zwanzig anwesenden Mitglieder bestÃ¤tigten dabei das Vorstandsteam, welches im vergangenen Jahr die Geschicke der kantonalen JCVP geleitet hat. DarÃ¼ber hinaus wurde Tobias KÃ¤ch, Einwohnerrat von Emmen, in den Vorstand gewÃ¤hlt.</b></p>\r\n\r\n<p>KantonalprÃ¤sident Renato Bucher blickte in seinem Jahresbericht auf ein intensives Jahr zurÃ¼ck. So konnte die JCVP ihren Mitgliedern sowie den Luzernerinnen und Luzernern zahlreiche span-nende und interessante AnlÃ¤sse bieten, beispielsweise das traditionelle JCVP-Forum zum Thema Bildung oder das Open-Air-Podium zur Familienstimmrechtsinitiative. Nicht zu vergessen ist auch das JCVP-Stadtlaufteam, welches auf sportliche Weise Farbe bekannte und die JCVP durch die Stadt Luzern trug. Ein weiterer HÃ¶hepunkt war die Nomination des Krienser JCVP-Einwohnerrates Daniel Piazza als Nationalratskandidat auf der CVP-Liste. Auch thematisch konnte die JCVP im vergangenen Jahr wieder Akzente setzen. So wurden die VorschlÃ¤ge fÃ¼r eine stÃ¤rkere Einbindung der Schweizer Geschichte in der Schule sowie verstÃ¤rkte prÃ¤ventive, aber auch repressive Massnahmen im Sicherheitsbereich sehr positiv aufgenommen.</p>',6),(13,'extended','','',6),(14,'body','','',7),(15,'extended','','',7),(16,'body','','',8),(17,'extended','','',8),(18,'body','','',9),(19,'extended','','',9),(20,'body','','',10),(21,'extended','','',10),(22,'body','','',11),(23,'extended','','',11),(24,'body','','',12),(25,'extended','','',12),(26,'body','','',13),(27,'extended','','',13),(28,'body','','',14),(29,'extended','','',14),(30,'body','','<p>FÃ¼r die JCVP ist es problematisch, dass die LSVA einzig nach der Anzahl der zurÃ¼ckgelegten Tonnen- Kilometer berechnet wird. So kann es in Zukunft vermehrt vorkommen, dass LKWs auf Landstrassen ausweichen, um so gegenÃ¼ber den Autobahnen an Fahrdistanz einzusparen. Denkbar sind solche AbkÃ¼rzungen zwischen den AutobahnanschlÃ¼ssen Sempach und Gisikon. Die Strecke via Rain â€“ Eschenbach â€“ Inwil ist rund ein Viertel kÃ¼rzer als Route Ã¼ber die Autobahnverbindung A2/A14. Ebenso kann ein Lastwagenchauffeur einiges einsparen, wenn er von Bern nach Luzern den Weg durchs Entlebuch wÃ¤hlt. Dank dem Einsatz fest eingebauter GPSNavigationsgerÃ¤te sind auch Chauffeure ohne lokale oder regionale Kenntnisse in der Lage, die jeweils kÃ¼rzesten Fahrrouten ausfindig zu machen.</p>\r\n\r\n<p>Im Jahr 2005 befasste sich eine von der Dienststelle Verkehr und Infrastruktur in Auftrag gegebene Studie mit der Problematik. Es wurde untersucht, ob der Anteil des Transitverkehrs auf der Strecke Sempach â€“ Inwil auf Grund der LSVA zugenommen hatte. Die Vermutung konnte jedoch nicht bestÃ¤tigt werden. Die BegrÃ¼ndung tÃ¶nt an sich nachvollziehbar: â€žDer kÃ¼rzeren Wegstrecke stehen lÃ¤ngere Reisezeiten, anspruchsvolle Ortsdurchfahrten, steile und kurvenreiche Strassenabschnitte, Wartezeiten an Lichtsignalanlagen und Kreiseln entgegen.â€œ Wenn man aber mit denjenigen, welche die Situation am besten kennen, spricht â€“ den Anwohnern und damit den Hauptbetroffenen â€“ entstehen ernsthafte Zweifel, ob die vif-Untersuchung noch aktuell ist. Denn seit den neusten Belastungen fÃ¼r das Transportgewerbe hat der Schwerverkehr auf den Landstrassen zugenommen.</p>',15),(31,'extended','','',15),(32,'body','','',16),(33,'extended','','',16),(34,'body','','',17),(35,'extended','','',17),(36,'body','','<p>Die Mitglieder der JCVP Kanton Luzern haben an der vergangenen Kantonalversammlung Daniel Piazza zuhanden der Nationalratsliste der CVP Kanton Luzern nominiert. Zudem haben sie die Parolen fÃ¼r die kommenden Abstimmungen gefasst. Die Mitglieder sagten sowohl Ja zur Revision der Arbeitslosenversicherung als auch Ja zum Wahlkreisverbund Entlebuch-Willisau.</p>\r\n<p>Die Mitglieder haben Daniel Piazza fÃ¼r den fÃ¼r die JCVP reservierten Listenplatz auf der CVP-Liste fÃ¼r die Nationalratswahlen 2011 nominiert. Piazza hat nach einer Lehre und einigen Jahren TÃ¤tigkeit bei der Kantonalbank die Fachhochschule in Luzern und im Anschluss daran das Hochschulstudium der Betriebswirtschaften an der UniversitÃ¤t St. Gallen absolviert. Zurzeit steht er vor dem Abschluss seiner Doktorarbeit. Somit kennt Piazza sowohl das System der Berufslehre wie auch die akademische Bildung aus eigener Erfahrung. Politisch sitzt Daniel Piazza seit 2006 als momentan einziger auf einer JCVP-eigenen Liste gewÃ¤hlte Jungpolitiker der Schweiz im Krienser Parlament, wo er mit seinen VorstÃ¶ssen oftmals Mehrheiten gewinnen kann. Als PrÃ¤sident von Offenes Kriens engagiert sich der leidenschaftliche FasnÃ¤chtler an vorderster Front fÃ¼r eine starke Stadtregion. \"Mit Daniel Piazza kÃ¶nnen wir den Luzernerinnen und Luzernern einen sehr kompetenten, engagierten und politisch bereits erfahrenen jungen Kandidaten prÃ¤sentieren, der den Anliegen aus unserem Kanton das nÃ¶tige GehÃ¶r in Bern verschaffen wird\", meint Renato Bucher, KantonalprÃ¤sident der JCVP. Piazza will sich nach eigener Aussage \"mit meiner Kandidatur die CVP-Liste beleben und mich inhaltlich mit KreativitÃ¤t und innovativen VorschlÃ¤gen vor allem auch fÃ¼r die Anliegen der jÃ¼ngeren Generationen und Familien einsetzen\".</p>',18),(37,'teaser','','<p>Die Mitglieder der JCVP Kanton Luzern haben an der vergangenen Kantonalversammlung Daniel Piazza zuhanden der Nationalratsliste der CVP Kanton Luzern nominiert. Zudem haben sie die Parolen fÃ¼r die kommenden Abstimmungen gefasst. Die Mitglieder sagten sowohl Ja zur Revision der Arbeitslosenversicherung als auch Ja zum Wahlkreisverbund Entlebuch-Willisau.</p>',18),(38,'Box_2','','<h1>Mitgliedschaft</h1>\r\n<p>Ãœber Ihre Mitgliedschaft bei der CVP wÃ¼rden wir uns sehr freuen.</p>\r\n<p><a href=\"/\">JCVP Mitglied werden</a></p>',1),(39,'tab_name','','Willkommen',1),(40,'tab_name','','News',2),(41,'body','','',19),(42,'extended','','',19),(43,'body','','',20),(44,'extended','','',20),(45,'body','','',21),(46,'extended','','',21),(47,'box_3','','<r:find url=\"/news\">\r\n  <r:children:each order=\"desc\" limit=\"2\">\r\n    <b><r:date format=\"%d.%m.%Y\" /></b><br />\r\n    <r:link />\r\n  </r:children:each>\r\n</r:find>',1);
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
  `enable_comments` tinyint(1) DEFAULT '0',
  `comments_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'JCVP Kanton Luzern','/','JCVP Kanton Luzern','',100,NULL,1,'2010-12-27 23:14:25','2010-12-27 23:40:58','2010-12-27 00:00:00',1,1,0,3,'','',1,NULL,0,0),(2,'News','news','News','ArchivePage',100,1,1,'2010-12-27 23:30:35','2011-01-08 17:10:11','2010-12-27 00:00:00',1,1,0,12,'','',1,1,0,0),(3,'Mit Vollgas in die Wahlen â€“ JCVP verstÃ¤rkt das Vorstandsteam','mit-vollgas-in-die-wahlen-jcvp-verstrkt-das-vorstandsteam','Mit Vollgas in die Wahlen â€“ JCVP verstÃ¤rkt das Vorstandsteam','',100,2,NULL,'2010-12-27 23:51:56','2011-01-08 16:44:35','2010-12-27 00:00:00',1,1,0,6,'','',1,NULL,1,0),(4,'Die JCVP Kanton Luzern lehnt die Initiativen von SP und SVP klar ab!','die-jcvp-kanton-luzern-lehnt-die-initiativen-von-sp-und-svp-klar-ab','Die JCVP Kanton Luzern lehnt die Initiativen von SP und SVP klar ab!','',100,2,NULL,'2010-12-29 17:30:40','2011-01-07 22:10:27','2010-12-29 00:00:00',1,1,0,3,'','',2,NULL,1,0),(5,'Wahlen 2011','wahlen-2011','Wahlen 2011','',100,1,NULL,'2010-12-29 17:36:43','2010-12-29 17:38:09','2010-12-29 00:00:00',1,1,0,4,'','',2,1,0,0),(6,'Sektionen','sektionen','Sektionen','',100,1,3,'2010-12-29 17:37:03','2011-01-07 22:10:08','2010-12-29 00:00:00',1,1,0,6,'','',3,1,0,0),(7,'Personen','personen','Personen','',100,1,NULL,'2010-12-29 17:37:28','2010-12-29 17:37:56','2010-12-29 00:00:00',1,1,0,3,'','',4,1,0,0),(8,'Stadt Luzern','stadt-luzern','Stadt Luzern','IndexPage',100,6,NULL,'2010-12-29 17:40:45','2011-01-08 23:34:51','2010-12-29 00:00:00',1,1,0,2,'','',1,NULL,0,0),(9,'Amt Luzern Land','amt-luzern-land','Amt Luzern Land','',100,6,NULL,'2010-12-29 17:41:02','2010-12-29 17:41:02','2010-12-29 18:41:02',1,1,0,1,'','',2,NULL,0,0),(10,'Themen','themen','Themen','',100,1,3,'2011-01-02 13:29:54','2011-01-02 13:30:23','2011-01-02 00:00:00',1,1,0,2,'','',5,1,0,0),(11,'Amt Entlebuch','amt-entlebuch','Amt Entlebuch','',100,6,NULL,'2011-01-02 13:32:13','2011-01-02 13:32:39','2011-01-02 00:00:00',1,1,0,2,'','',3,NULL,0,0),(12,'Amt Hochdorf','amt-hochdorf','Amt Hochdorf','',100,6,NULL,'2011-01-02 13:32:32','2011-01-02 13:32:32','2011-01-02 14:32:32',1,1,0,1,'','',4,NULL,0,0),(13,'Amt Sursee','amt-sursee','Amt Sursee','',100,6,NULL,'2011-01-02 13:32:53','2011-01-02 13:32:53','2011-01-02 14:32:53',1,1,0,1,'','',5,NULL,0,0),(14,'Gemeinde Kriens','gemeinde-kriens','Gemeinde Kriens','',100,6,NULL,'2011-01-02 13:33:14','2011-01-02 13:33:14','2011-01-02 14:33:14',1,1,0,1,'','',6,NULL,0,0),(15,'News','news','News','',100,8,NULL,'2011-01-03 20:25:17','2011-01-03 20:58:28','2011-01-03 00:00:00',1,1,0,3,'','',1,NULL,0,0),(16,'Vorstand','vorstand','Vorstand','',100,8,NULL,'2011-01-03 20:25:45','2011-01-03 20:26:04','2011-01-03 21:26:04',1,1,0,2,'','',2,NULL,0,0),(17,'Mitglieder','mitglieder','Mitglieder','',100,8,NULL,'2011-01-03 20:25:56','2011-01-03 20:25:56','2011-01-03 21:25:56',1,1,0,1,'','',3,NULL,0,0),(18,'JCVP nominiert Daniel Piazza fÃ¼r die Nationalratswahlen 2011','jcvp-nominiert-daniel-piazza-fr-die-nationalratswahlen-2011','JCVP nominiert Daniel Piazza fÃ¼r die Nationalratswahlen 2011','',100,2,4,'2011-01-06 21:00:05','2011-01-08 17:10:03','2011-01-06 00:00:00',1,1,0,5,'','',3,NULL,1,1),(19,'Familie','familie','Familie','',100,10,NULL,'2011-01-08 23:31:34','2011-01-08 23:31:34','2011-01-09 00:31:34',1,1,0,1,'','',1,NULL,0,0),(20,'Bildung','bildung','Bildung','',100,10,NULL,'2011-01-08 23:31:58','2011-01-08 23:31:58','2011-01-09 00:31:58',1,1,0,1,'','',2,NULL,0,0),(21,'Wirtschaft','wirtschaft','Wirtschaft','',100,10,NULL,'2011-01-08 23:33:05','2011-01-08 23:33:05','2011-01-09 00:33:05',1,1,0,1,'','',3,NULL,0,0);
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
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20081203140407'),('20090226140109'),('20090929164633'),('20091003095744'),('21'),('3'),('4'),('5'),('6'),('7'),('8'),('9'),('Comments-1'),('Comments-2'),('Comments-3'),('Comments-4'),('Comments-5'),('Comments-6'),('Comments-7'),('Navigation Tags-1'),('Paperclipped-1'),('Paperclipped-2'),('Paperclipped-20090316132151'),('Paperclipped-3'),('Paperclipped-4'),('Paperclipped-5'),('Paperclipped-6'),('Paperclipped-7'),('Reorder-1'),('Settings-1'),('Settings-2'),('Tags-1');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` VALUES (1,'2Level_Navigation','','<div id=\"second-Level-Navigation\">\r\n  <r:external-nav-current-page />\r\n</div>','2010-12-27 23:33:45','2011-01-02 14:52:08',1,1,2),(2,'Box_1','','<div class=\"box\">  \r\n  <div class=\"boxBody\">\r\n    <div class=\"boxContent\">\r\n      <r:find url=\"/\">\r\n        <r:content part=\"box_1\" />\r\n      </r:find>\r\n    </div>  \r\n  </div>\r\n</div>','2010-12-27 23:35:58','2011-01-02 12:38:46',1,1,3),(3,'Content','','<div id=\"contentNavigation\">\r\n  <div id=\"content-Navigation-items\">\r\n    <r:jcvp_tab_navigation />\r\n  </div>\r\n</div>\r\n<div id=\"content\">\r\n  <r:content />\r\n</div>','2010-12-27 23:37:30','2011-01-07 23:22:28',1,1,18),(4,'Main_Navigation_Home','','<div id=\"mainNavigation\">  \r\n  <div id=\"mainNavigationImage\">    \r\n    <r:assets:image title=\"TestHomeImage\" />   \r\n  </div>  \r\n  <r:snippet name=\"Main_Navigation_Bar\" />\r\n</div>','2010-12-27 23:39:35','2011-01-07 16:49:14',1,1,4),(5,'Whiteboard','','<div id=\"whiteboard\">  \r\n  <div id=\"leftWhiteboard\">    \r\n    <r:snippet name=\"2Level_Navigation\" />    \r\n  </div>  \r\n  <div id=\"centerWhiteboard\">    \r\n    <r:snippet name=\"Content\" />  \r\n  </div>\r\n  <div id=\"rightWhiteboard\">    \r\n    <r:snippet name=\"Box_1\" />    \r\n    <r:snippet name=\"Box_2\" />  \r\n  </div>\r\n</div>','2010-12-27 23:40:20','2011-01-02 12:30:40',1,1,4),(6,'Help_Navigation','','<div id=\"helpNavigation\"> \r\n  <a id=\"rss\" href=\"\"><div id=\"rss-icon\">&nbsp;</div></a>\r\n  <a id=\"facebook\" href=\"http://www.facebook.com/pages/JCVP-Kanton-Luzern/104009029660183\"><div id=\"facebook-icon\">&nbsp;</div></a>\r\n  <a id=\"flicker\" href=\"\"><div id=\"flicker-icon\">&nbsp;</div></a>\r\n</div>','2010-12-27 23:44:23','2011-01-02 14:19:02',1,1,4),(7,'Box_2','','<div class=\"box\">  \r\n  <div class=\"boxBody\">\r\n    <div class=\"boxContent\">\r\n      <r:find url=\"/\">\r\n        <r:content part=\"box_2\" />\r\n      </r:find>\r\n    </div>  \r\n  </div>\r\n</div>','2010-12-29 17:34:28','2011-01-02 12:40:57',1,1,2),(8,'Content_Home','','<div id=\"contentNavigation\">\r\n  <div id=\"content-Navigation-items\">\r\n    <div class=\"contentNavigation-acitve-item-left-corner\">&nbsp;</div>\r\n    <div class=\"contentNavigation-item contentNavigation-acitve-item\"><r:content part=\"tab_name\"/></div>\r\n  </div>\r\n</div>\r\n<div id=\"content\">\r\n  <r:content />\r\n</div>','2011-01-06 21:16:57','2011-01-08 23:26:58',1,1,7),(9,'Main_Navigation_Bar','','<div id=\"mainNavigationBar\">    \r\n  <div id=\"mainNavigationBarItems\">       \r\n    <r:nav depth=\"1\" navigationtype=\"Main\"/>    \r\n  </div>    \r\n  <div id=\"mainNavigationBarLogo\">      \r\n    <a href=\"/\"><r:assets:image title=\"JCVP-LU-Logo\" /></a>     \r\n  </div>  \r\n</div>','2011-01-07 16:48:51','2011-01-07 16:48:51',1,NULL,0),(10,'Main_Navigation_Content','','<div id=\"mainNavigation\" class=\"mainNavigationContent\">  \r\n  <div id=\"mainNavigationImage\">    \r\n    <img src=\"/images/styles/main_nav_bg.jpg\" alt=\"Background Main Navigation\" />   \r\n  </div>  \r\n  <r:snippet name=\"Main_Navigation_Bar\" />\r\n</div>','2011-01-07 16:52:36','2011-01-07 17:32:45',1,1,2),(11,'comments','','<r:if_comments>\r\n  <div class=\"comments\">\r\n    <h2>Kommentare</h2>\r\n    <r:comments:each>\r\n      <r:snippet name=\"comment\" />\r\n    </r:comments:each>\r\n  </div>\r\n</r:if_comments>\r\n<r:snippet name=\"comment_form\" />\r\n','2011-01-07 22:09:05','2011-01-07 23:33:54',NULL,1,1),(12,'comment','','<r:comments:field>\r\n  <div class=\"comment\" id=\"comment-<r:id/>\">\r\n    <p class=\"author\">\r\n      <r:if_author_url><a href=\"<r:author_url/>\" title=\"Visit <r:author/>\'s website\"></r:if_author_url>\r\n      <r:author/>\r\n      <r:if_author_url></a></r:if_author_url> (<r:date format=\"%d.%m.%Y\"/>):\r\n    </p>\r\n    \r\n    <div class=\"content_html\"><r:content_html /></div>\r\n    \r\n    <r:if_selected><p><em>\r\n      <r:if_approved>Thanks for your comment!</r:if_approved>\r\n      <r:unless_approved>Thanks for your comment, it has gone into the moderation queue and will be dealt with shortly.</r:unless_approved>\r\n    </em></p></r:if_selected>\r\n  </div>\r\n</r:comments:field>\r\n','2011-01-07 22:09:05','2011-01-07 23:35:26',NULL,1,2),(13,'comment_spam_block','','<r:random>\r\n  <r:error on=\"spam_answer\"><p style=\"color:red\">Antwort <r:message /></p></r:error>\r\n  <r:option>\r\n    <p><label for=\"comment_spam_answer\">What day of the week has the letter \"h\" in it\'s name?</label> (required)<br />\r\n    <r:spam_answer_tag answer=\"Thursday\" /></p>\r\n  </r:option>\r\n  <r:option>\r\n    <p><label for=\"comment_spam_answer\">Gelb und blau ergeben zusammen welche Farbe?</label> (zwingend)<br />\r\n    <r:spam_answer_tag answer=\"grÃ¼n\" /></p>\r\n  </r:option>\r\n  <r:option>\r\n    <p><label for=\"comment_spam_answer\">SPAM r&uuml;ckw&auml;rts geschrieben?</label> (zwingend)<br />\r\n    <r:spam_answer_tag answer=\"MAPS\" /></p>\r\n  </r:option>\r\n</r:random>\r\n','2011-01-07 22:09:05','2011-01-07 23:26:28',NULL,1,3),(14,'comment_form','','<r:page>\r\n  <r:if_enable_comments>\r\n    <r:comments:form>\r\n      <h2>Neuer Kommentar schreiben</h2>\r\n      <r:error><p style=\"color:red\">Bitte die zwingenden Felder ausf&uml;llen.</p></r:error>\r\n      <p><label for=\"comment_author\">Name</label><br />\r\n      <r:error on=\"author\"><p style=\"color:red\">Name <r:message /></p></r:error>\r\n      <p><r:text_field_tag name=\"author\" id=\"author\" class=\"required\" /></p>\r\n\r\n      <p><label for=\"comment_author_email\">E-Mail-Adresse</label> (zwingend, wird nicht angezeigt)<br />\r\n      <r:error on=\"author_email\"><p style=\"color:red\">Email <r:message /></p></r:error>\r\n      <p><r:text_field_tag name=\"author_email\" class=\"required\" /></p>\r\n\r\n      <p><label for=\"comment_author_url\">Webseite</label> (optional)<br />\r\n      <r:error on=\"author_url\"><p style=\"color:red\">Web Address <r:message /></p></r:error>\r\n      <p><r:text_field_tag name=\"author_url\" /></p>\r\n\r\n      <p><label for=\"comment_content\">Kommentar</label><br />\r\n      <r:error on=\"content\"><p style=\"color:red\">Comment <r:message /></p></r:error>\r\n      <label for=\"comment_filter_id\">Filter: <r:filter_box_tag name=\"filter_id\" value=\"Textile\" /></label><br />\r\n      <p><r:text_area_tag name=\"content\" class=\"required\" rows=\"9\" cols=\"40\" /></p>\r\n\r\n      <r:if_comments_simple_spam_filter_enabled>\r\n        <r:snippet name=\"comment_spam_block\" />\r\n      </r:if_comments_simple_spam_filter_enabled>\r\n\r\n      <r:submit_tag name=\"submit\" value=\"Kommentar speichern\" />\r\n\r\n    </r:comments:form>\r\n  </r:if_enable_comments>\r\n</r:page>\r\n','2011-01-07 22:09:05','2011-01-07 23:35:50',NULL,1,7),(15,'Content_Blog','','<div id=\"contentNavigation\">\r\n  <div id=\"content-Navigation-items\">\r\n    <div class=\"contentNavigation-acitve-item-left-corner\">&nbsp;</div>\r\n    <div class=\"contentNavigation-item contentNavigation-acitve-item\"><r:title /></div>\r\n  </div>\r\n</div>\r\n<div id=\"content\">\r\n  <h1><r:title /></h1>\r\n  <r:content />\r\n  <div id=\"addthis\">\r\n    <r:snippet name=\"addthis\" />\r\n  </div>\r\n  <div id=\"comments\">\r\n    <r:snippet name=\"comments\" />\r\n  </div>\r\n</div>','2011-01-08 16:43:55','2011-01-08 23:29:38',1,1,6),(16,'AddThis','','<!-- AddThis Button BEGIN -->\r\n<div class=\"addthis_toolbox addthis_default_style addthis_32x32_style\">\r\n<a class=\"addthis_button_preferred_1\"></a>\r\n<a class=\"addthis_button_preferred_2\"></a>\r\n<a class=\"addthis_button_preferred_3\"></a>\r\n<a class=\"addthis_button_preferred_4\"></a>\r\n<a class=\"addthis_button_compact\"></a>\r\n</div>\r\n<script type=\"text/javascript\">var addthis_config = {\"data_track_clickback\":true};</script>\r\n<script type=\"text/javascript\" src=\"http://s7.addthis.com/js/250/addthis_widget.js#username=jcvplu\"></script>\r\n<!-- AddThis Button END -->\r\n','2011-01-08 23:29:49','2011-01-08 23:29:49',1,NULL,0),(17,'Box_3','','<div class=\"box\">  \r\n  <div class=\"boxBody\">\r\n    <div class=\"boxContent\">\r\n      <r:find url=\"/\">\r\n        <r:content part=\"box_3\" />\r\n      </r:find>\r\n    </div>  \r\n  </div>\r\n</div>','2011-01-08 23:42:47','2011-01-08 23:42:47',1,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,3,'Page'),(4,1,18,'Page'),(2,2,3,'Page'),(3,3,4,'Page');
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

-- Dump completed on 2011-01-09  0:45:39
