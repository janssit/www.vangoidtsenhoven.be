# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.28-0ubuntu0.12.04.3)
# Database: vangoidtsenhoven
# Generation Time: 2018-01-16 10:32:33 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ap_column_preferences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ap_column_preferences`;

CREATE TABLE `ap_column_preferences` (
  `acp_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL,
  `element_name` varchar(255) NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`acp_id`),
  KEY `acp_position` (`form_id`,`position`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table ap_element_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ap_element_options`;

CREATE TABLE `ap_element_options` (
  `aeo_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `element_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `option` text,
  `option_is_default` int(11) NOT NULL DEFAULT '0',
  `live` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`aeo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `ap_element_options` WRITE;
/*!40000 ALTER TABLE `ap_element_options` DISABLE KEYS */;

INSERT INTO `ap_element_options` (`aeo_id`, `form_id`, `element_id`, `option_id`, `position`, `option`, `option_is_default`, `live`)
VALUES
	(1,1,7,1,1,'Renovatie',0,1),
	(2,1,7,2,2,'Nieuwbouw',0,1),
	(3,1,7,3,3,'Deuren / ramen',0,1),
	(4,1,7,4,4,'Keuken',0,1),
	(5,1,7,5,5,'Trappen',0,1),
	(6,1,7,6,6,'Dressings',0,1),
	(7,1,7,7,7,'Andere',0,1);

/*!40000 ALTER TABLE `ap_element_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ap_form_1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ap_form_1`;

CREATE TABLE `ap_form_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `element_2` text COMMENT 'Email',
  `element_3` text COMMENT 'Single Line Text',
  `element_6` mediumtext COMMENT 'Paragraph Text',
  `element_7_1` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 1',
  `element_7_2` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 2',
  `element_7_3` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 3',
  `element_7_4` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 4',
  `element_7_5` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 5',
  `element_7_6` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 6',
  `element_7_7` int(6) unsigned NOT NULL DEFAULT '0' COMMENT 'Checkbox - 7',
  `element_8_1` varchar(255) DEFAULT NULL COMMENT 'Normal Name - First',
  `element_8_2` varchar(255) DEFAULT NULL COMMENT 'Normal Name - Last',
  `element_9_1` varchar(255) DEFAULT NULL COMMENT 'Address - Street',
  `element_9_2` varchar(255) DEFAULT NULL COMMENT 'Address - Line 2',
  `element_9_3` varchar(255) DEFAULT NULL COMMENT 'Address - City',
  `element_9_4` varchar(255) DEFAULT NULL COMMENT 'Address - State/Province/Region',
  `element_9_5` varchar(255) DEFAULT NULL COMMENT 'Address - Zip/Postal Code',
  `element_9_6` varchar(255) DEFAULT NULL COMMENT 'Address - Country',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `ap_form_1` WRITE;
/*!40000 ALTER TABLE `ap_form_1` DISABLE KEYS */;

INSERT INTO `ap_form_1` (`id`, `date_created`, `date_updated`, `ip_address`, `element_2`, `element_3`, `element_6`, `element_7_1`, `element_7_2`, `element_7_3`, `element_7_4`, `element_7_5`, `element_7_6`, `element_7_7`, `element_8_1`, `element_8_2`, `element_9_1`, `element_9_2`, `element_9_3`, `element_9_4`, `element_9_5`, `element_9_6`)
VALUES
	(1,'2009-11-13 20:42:45',NULL,'91.86.149.40','sabine.luyckx@gmail.com','0495/559791','geachte heer, u bent in september op een zondag op onze adres gekomen. We hebben u een prijsofferte gevraagd voor 2 buiten muren + een kamer die moet volledig gerenoveerd zijn (dak + muren). we zijn echt geinteresseerd maar tot nu toe hebben we nog geen prijsofferte gezien. U had meermal gezegd dat het prijsofferte onder weg is en zelf klaar maar niet gezien.\r\nGraag een afspraak om over uw prijsofferte te bespreken.\r\nAlvast bedankt\r\nMet vriendelijke groeten,\r\nSabine en Emmanuel',1,0,0,0,0,0,1,'luyckx','sabine','linterseweg 2 b 2','linterseweg 2 b 2','budingen','vlaams brabant','3440','Belgium'),
	(2,'2010-09-22 09:22:51',NULL,'81.165.108.219','rolandschurmans@telenet.be','016789710 - 0495561598 (R) - 04722277833 (E)','Is het mogelijk om ons dak-teras waterdicht te maken?',0,1,0,0,0,0,1,'Roland','Schurmans','Heerenweg 1','Idem','Wommersom',' B','3350','Belgium'),
	(3,'2011-07-12 11:03:32',NULL,'84.193.37.228','rolandschurmans@telenet.be','016789710','Ik laat eens langs deze weg iets weten.\r\nMooie website',0,1,1,1,0,0,0,'roland','schurmans','Heerenweg 1',NULL,'Linter','B','3350','Belgium'),
	(4,'2011-08-22 09:29:54',NULL,'193.191.208.158','anne.radoes@mobilit.fgov.be','011/581773','u bent bij mij geweest op vrijdagavond i.v.m. bestek voor schade door storm aan keukendeur.\r\nik wil u hierbij vragen om de deur te repareren in afseliahout\r\n\r\nvriendelijke groeten en dank bij voorbaat.',0,0,0,0,0,0,0,'HAYEN','VALERE','HOEVESTRAAT 67',NULL,'NIEUWERKERKEN BINDERVELD','LIMBURG','3850','Belgium'),
	(5,'2011-09-29 10:19:17',NULL,'193.191.208.158','anne.radoes@mobilit.fgov.be','011/581773 (na 18 uur)','betreft offerte stormschade - u bent vergeten het glas te vermelden op de offerte\r\nik heb mijn verzekeringsagent geraadpleegd en hij zegt dat het bestek veel te laag is opgemaakt en dat u de andere deur bij op het bestek mag zetten. is het mogelijk een ander bestek te maken ? dank bij voorbaat \r\n\r\nvriendelijke groeten\r\n\r\nP.S. moet toch niet meer te lang wachten voor reparatie deur hé want ik moet ze nog een paar keer kunnen kleuren',0,0,0,0,0,0,0,'Valère','Hayen','Hoevestraat 67','Hoevestraat','Nieuwerkerken','Limburg','3850','Belgium'),
	(6,'2011-10-17 22:53:14',NULL,'109.132.203.85','richardmaes@belgacom.net','0472315327','Betreft vervanging van dakvensters.\r\nIk bel U morgen.\r\n\r\n\r\nGroetjes,\r\n\r\nRichard Maes',1,0,0,0,0,0,0,'maes','richard','groenstraat 19','groenstraat 19','scherpenheuvel','vlaams-brabant','3270','Belgium'),
	(7,'2012-01-06 16:55:27',NULL,'84.192.175.252','dionyvaneeckhout@yahoo.co.uk','0474 84 28 81','Wegens verzaken aannemer ben ik momenteel dringend op zoek naar een renovatiefirma voor een project te Landen (Grootveldstraat 88). Concreet gaat het om volgende werken:\r\n\r\n- verwijderen oud dak + plaatsen nieuw dak achterbouw (nieuwe balken + dak met twee lichtstraten) + plaatsing poutrel achtergevel\r\n- chape- en pleisterwerken\r\n- rioleringswerken\r\n- plaatsen gyprocwanden\r\n- plaatsen vloeren + isolatie\r\n- steunwerken terras\r\n- evt. verwarming en sanitair',1,0,0,0,0,0,0,'Diony','Van Eeckhout','Grootveldstraat','88','Landen','Vlaams Brabant','3400','Belgium'),
	(8,'2012-02-01 19:26:10',NULL,'84.195.105.116','koen.vanuytrecht@telenet.be','0498139755','Beste,\r\n\r\nWij gaan onze woning verbouwen en hadden graag prijs gevraagd voor de benodigde ramen alsook trappen.\r\nIs het mogelijk een afspraak te maken aub? Zijn jullie een avon ook na 18H open?\r\n\r\nMvg,\r\nKoen',0,0,1,0,1,0,0,'Koen','Vanuytrecht','Bergenstraat 14',NULL,'Geetbets','Vlaams Brabant','3450','Belgium'),
	(9,'2012-02-07 21:30:07',NULL,'84.195.250.29','mieke.raymaekers@telenet.be','0479 38 88 98','Beste,\r\n\r\nEen hele tijd geleden bestelden wij nieuwe keukendeurtjes. Graag vernemen wij de datum waarop de keukendeurtjes geplaatst worden.\r\n\r\nAlvast bedankt.\r\n\r\nVriendelijke groeten,\r\nMieke',0,0,0,0,0,0,0,'Mieke','Raymaekers','Kanonniersstraat 13',NULL,'Halen','Limburg','3545','Belgium'),
	(10,'2014-05-08 14:06:24',NULL,'91.183.64.71','elie.heireman@telenet.be','0473775227','Hello,\r\n\r\nGraag een offerte voor maatwerk van een vaste houten trap met reling naar zolder',0,0,0,0,1,0,0,'Elie','Heireman','Glabbeekstraat 65',NULL,'Geetbets','VL Brabant','3450','Belgium'),
	(11,'2016-03-21 17:07:44',NULL,'84.192.9.26','dannyfeucht@hotmail.com','0486200212 (echtgenote)','Beste,\r\nWij willen onze zolder ombouwen naar 3 slaapkamers.\r\nDe muren willen we in gyproc doen met geluidsisolatie.\r\nOok één houten zolderraam is te vervangen.\r\nHierbij willen we ook een vaste trap plaatsen naar het zolder toe.\r\n\r\n',1,0,1,0,1,0,0,'danny','feucht','nieuwstraat 2','nieuwstraat 2','nieuwstraat 2','vlaams-brabant','3380 glabbeek','Belgium'),
	(12,'2016-03-24 08:38:52',NULL,'84.192.208.243','weesblij@icloud.com','0497453855','Beste, Ik ben op zoek naar een goedkopere manier om te bouwen. Ik ben een single dame zonder kinderen én moet gewoon letten op het budget. Via een video ben ik informatie te weten gekomen over ecohomepanels. Jullie staan op als verdeler ervan.\r\nOp hun site krijg je een ingewikkeld gegeven om een berekening te maken voor de kostprijs. Maar ik zit alleen nog maar in de fase of het effectief wel mogelijk is goedkoper te bouwen dan de traditionele manier. Wat ik niet belangrijk vind zijn vloeren (dat mag voor mij de eerste jaren gewoon linoleum zijn) en mijn keuken mag ook bestaan uit een goedkopere versie. De idee dat alles 20 tot 30 tot 40 jaar moet meegaan, hoeft niet voor mij.\r\nBovendien zou de helft van de ruimte die ik wil, dienst moeten doen als atelier.\r\nMijn vraag is dus, is het goedkoper om te bouwen met eco home panels of volledig in hout, en daar bedoel ik dan geen houtskeletbouw mee maar wel een houten huis. Mijn idee bevat ongeveer 180m2\r\n\r\nKan u mijn meer informatie geven?',0,1,0,0,0,0,0,'Inge','Vanhooof','Wijerstraat 73',NULL,'Hasselt','limburg','3510','Belgium'),
	(13,'2016-04-02 19:55:37',NULL,'84.195.57.232','Jeroenemsen@hotmail.com','0494234738','Beste,\r\nWij hebben 4 binnendeuren in kit gekocht. We zoeken nog een plaatser.\r\nHeb je hier eventueel interesse in ? Wat is je prijs hiervoor ? ',0,0,1,0,0,0,0,'Jeroen','Empsen','Biesemstraat 69',NULL,'Rummen','Vlaams-Brabant ','3454','Belgium'),
	(14,'2016-09-29 14:10:08',NULL,'84.192.141.13','patrick.arkesteyn@gmail.com','0495860062','Het is hier in verband met die draaikast in onze keuken, door jullie geplaatst in 1996.\r\n\r\nIk heb nu zo al (de afgelopen 3 maanden) ongeveer 10 keer met Luc gebeld, waarop die telkens zegt dat hij gaat langskomen en vervolgens gewoon niks meer van zich laat horen.\r\n\r\nIs dat het soort service dat jullie leveren, en houden jullie al jullie  klanten zo aan het lijntje ? Dat hij dan gewoon zegt dat het hem niet interesseert, zodat ik iemand anders kan zoeken. Of is hij daar te laf voor ?\r\n\r\nIk was destijds zeer tevreden van jullie plaatsing, maar dit geval is er serieus over. Kan hier eens iemand dringend op reageren, want mijn geduld is meer dan op.\r\n\r\nALvast bedankt,\r\nPatrick Arkesteyn\r\n',0,0,0,0,0,0,0,'Patrick','Arkesteyn','Barenbergseweg 17',NULL,'Schaffen','Vlaams-Brabant','3290','Belgium'),
	(15,'2016-10-11 19:32:32',NULL,'109.130.41.212','jan.cassiman@hotmail.be','0475710031','Beste,\r\n\r\nWe willen graag een offerte aanvragen voor : \r\n\r\n- 14 binnendeuren \r\n- een nieuwe open houten trap met leuning kwartslag draai \r\n- inbouwkasten onder schuin dak 2 X 14 lopende meter\r\n\r\nmvg,\r\nCassiman- Dekinder\r\nSint-Truidersteenweg 152\r\n3540 Herk-de-Stad',1,0,1,0,1,0,1,'Jan','Cassiman','Sint-Truidersteenweg 15',NULL,'Herk-de-Stad','België','3540','Belgium'),
	(16,'2017-01-20 12:42:04',NULL,'84.195.60.110','Fam.bernar@gmail.com','0494-38.17.10','Beste,\r\n\r\nBij deze ben ik op zoek naar een officieel bestek voor het repareren van oa onze zetel en een tv kast nadat deze in een internationale verhuis beschadigd zijn.\r\n\r\nHet gaat om ikea meubelen, welke natuurlijk gemakkelijk te vervangen zijn via ikea, maar de verzekering wil een officieel bestek van herstelling zodat ze de volledige waarde niet moeten terugbetalen.\r\n\r\nHet gaat om de volgende items...\r\nDe ikea karlstad hoekzetel (reeds uit gamma) waarvan de zijkanten van de zijleuningen zijn losgekomen. (Aankoopprijs 999)\r\n\r\nEn de ikea bjusta dressoir die na de verhuis er wel heel ermbarmelijk is uitgekomen. Met afgebroken sluitsystemen, deurtjes die niet meer passen en met als gevolg de lades ook niet meer. (Volledig uit de hoek) (aankoopprijs 199)\r\n\r\nIs het mogelijk om ons uit de nood te helpen en om daar een bestek van te maken??\r\n\r\nMvg,\r\nKristel van Rens\r\nHogenstraat 28\r\n3450 Geetbets\r\n\r\n\r\n\r\n\r\n\r\n\r\n',0,0,0,0,0,0,1,'Kristel','Van Rens','Hogenstraat ','28','Geetbets','Vlaams brabant','3450','Belgium'),
	(17,'2017-08-28 13:39:36',NULL,'194.78.15.163','saburlet@gmail.com','0490/58.08.95','Beste,\r\n\r\nWij zijn zouden graag een vaste trap plaatsen van ons eerste verdiep naar de zolder.\r\nis het mogelijk om eens langs te komen om een offerte op te maken?\r\n\r\nAlvast bedankt!\r\n\r\nMet vriendelijke groeten,\r\n\r\nSarah Burlet',0,0,0,0,1,0,0,'Sarah','Burlet','boesbergstraat','26','Sterrebeek','vlaams brabant','1933','Belgium');

/*!40000 ALTER TABLE `ap_form_1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ap_form_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ap_form_elements`;

CREATE TABLE `ap_form_elements` (
  `form_id` int(11) NOT NULL DEFAULT '0',
  `element_id` int(11) NOT NULL DEFAULT '0',
  `element_title` text,
  `element_guidelines` text,
  `element_size` varchar(6) NOT NULL DEFAULT 'medium',
  `element_is_required` int(11) NOT NULL DEFAULT '0',
  `element_is_unique` int(11) NOT NULL DEFAULT '0',
  `element_is_private` int(11) NOT NULL DEFAULT '0',
  `element_type` varchar(50) DEFAULT NULL,
  `element_position` int(11) NOT NULL DEFAULT '0',
  `element_default_value` text,
  `element_constraint` varchar(50) DEFAULT NULL,
  `element_total_child` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`form_id`,`element_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `ap_form_elements` WRITE;
/*!40000 ALTER TABLE `ap_form_elements` DISABLE KEYS */;

INSERT INTO `ap_form_elements` (`form_id`, `element_id`, `element_title`, `element_guidelines`, `element_size`, `element_is_required`, `element_is_unique`, `element_is_private`, `element_type`, `element_position`, `element_default_value`, `element_constraint`, `element_total_child`)
VALUES
	(1,2,'Email','','medium',1,0,0,'email',2,'','',0),
	(1,3,'Telefoon','','medium',1,0,0,'text',3,'','',0),
	(1,9,'Adres','','large',1,0,0,'address',1,'Belgium','',5),
	(1,8,'Naam','','small',1,0,0,'simple_name',0,'','',1),
	(1,6,'Uw vraag','','medium',1,0,0,'textarea',4,'','',0),
	(1,7,'Interesse voor','','medium',0,0,0,'checkbox',5,'','',6);

/*!40000 ALTER TABLE `ap_form_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ap_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ap_forms`;

CREATE TABLE `ap_forms` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` text,
  `form_description` text,
  `form_email` varchar(255) DEFAULT NULL,
  `form_redirect` text,
  `form_success_message` text,
  `form_password` varchar(100) DEFAULT NULL,
  `form_unique_ip` int(1) NOT NULL DEFAULT '0',
  `form_frame_height` int(11) DEFAULT NULL,
  `form_has_css` int(11) NOT NULL DEFAULT '0',
  `form_captcha` int(11) NOT NULL DEFAULT '0',
  `form_active` int(11) NOT NULL DEFAULT '1',
  `form_review` int(11) NOT NULL DEFAULT '0',
  `esl_from_name` text,
  `esl_from_email_address` varchar(255) DEFAULT NULL,
  `esl_subject` text,
  `esl_content` mediumtext,
  `esl_plain_text` int(11) NOT NULL DEFAULT '0',
  `esr_email_address` varchar(255) DEFAULT NULL,
  `esr_from_name` text,
  `esr_from_email_address` varchar(255) DEFAULT NULL,
  `esr_subject` text,
  `esr_content` mediumtext,
  `esr_plain_text` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `ap_forms` WRITE;
/*!40000 ALTER TABLE `ap_forms` DISABLE KEYS */;

INSERT INTO `ap_forms` (`form_id`, `form_name`, `form_description`, `form_email`, `form_redirect`, `form_success_message`, `form_password`, `form_unique_ip`, `form_frame_height`, `form_has_css`, `form_captcha`, `form_active`, `form_review`, `esl_from_name`, `esl_from_email_address`, `esl_subject`, `esl_content`, `esl_plain_text`, `esr_email_address`, `esr_from_name`, `esr_from_email_address`, `esr_subject`, `esr_content`, `esr_plain_text`)
VALUES
	(1,'Contacteer ons','Vul onderstaand formulier in en wij nemen zo spoedig mogelijk contact op met u.','info@vangoidtsenhoven.be','','Bedankt! Wij nemen zo spoedig mogelijk contact op met u.','',0,1016,1,1,1,0,'Vangoidtsenhoven.be','2','{form_name} [#{entry_no}]','{entry_data}',0,NULL,NULL,NULL,NULL,NULL,0);

/*!40000 ALTER TABLE `ap_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_banner
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_banner`;

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_bannerclient
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_bannerclient`;

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_bannertrack
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_bannertrack`;

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_categories`;

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`)
VALUES
	(1,0,'Contacteer ons','','contacteer-ons','','com_contact_details','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),
	(2,0,'Links','','links','','com_weblinks','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),
	(3,0,'Contacteer ons','','contacteer-ons','','1','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,'');

/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_components
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_components`;

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`)
VALUES
	(1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),
	(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),
	(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),
	(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=0\ncomp_description=\nshow_link_hits=0\nshow_link_description=0\nshow_other_cats=0\nshow_headings=0\ntarget=1\nlink_icons=-1\n\n',1),
	(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),
	(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),
	(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=1\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nallow_vcard=0\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=1\ncustom_reply=0\n\n',1),
	(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),
	(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),
	(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),
	(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),
	(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),
	(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),
	(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),
	(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),
	(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),
	(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),
	(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),
	(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),
	(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n',1),
	(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),
	(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),
	(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'site=nl-NL\nadministrator=nl-NL\n\n',1),
	(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),
	(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),
	(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),
	(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),
	(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),
	(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),
	(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=0\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),
	(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),
	(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),
	(34,'Projecten','option=com_picman',0,0,'option=com_picman','Projects','com_picman',0,'js/ThemeOffice/component.png',0,'',1),
	(35,'Machform','option=com_machform',0,0,'option=com_machform','Machform','com_machform',0,'js/ThemeOffice/component.png',0,'',1);

/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_contact_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_contact_details`;

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`)
VALUES
	(1,'Schrijnwerkerij Vangoidtsenhoven bvba','schrijnwerkerij-vangoidtsenhoven-bvba','','Oudestraat 1\r\n3450 Geetbets','','','','','011 58 17 43','','','',NULL,'info@vangoidtsenhoven.be',0,1,0,'0000-00-00 00:00:00',1,'show_name=1\nshow_position=1\nshow_email=0\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=1\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=',0,1,0,'','');

/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_content`;

CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`)
VALUES
	(1,'Wie zijn we?','wie-zijn-we','','<p>Schrijnwerkerij Vangoidtsenhoven werd opgericht in 1990 door Vangoidtsenhoven Luc, Johan en Willy en is gespecialiseerd in algemeen schrijnwerk, totaalrenovatie, etc. </p><p><img class=\"caption\" src=\"images/stories/voorgevel.jpg\" border=\"0\" /> </p><h3>Vakmanschap <br /></h3><p>Door de opgedane kennis en jarenlange ervaring staat VANGOIDTSENHOVEN BVBA voor vakmanschap. De wensen en behoeften van onze klanten staan centraal. Bovendien wordt er grote aandacht besteed aan de kwaliteit en diversiteit van het materiaal en de perfecte afwerking.</p><h3>Totaalrenovatie <br /></h3><p>Een sterk punt bij de totaalrenovatie is dat wij het totaalconcept in handen nemen en alles zelf uitvoeren. Dit van afbraak tot sanitair, elektriciteit, vloeren, etc.  </p><p>Omdat foto’s zo veel meer zeggen, verwijzen wij u graag door naar onze fotopagina waar u een aantal van onze realisaties kan bekijken.</p>','',1,0,0,0,'2009-01-29 13:48:38',62,'','2009-02-27 13:30:54',63,0,'0000-00-00 00:00:00','2009-01-29 13:48:38','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,2,'','',0,423,'robots=\nauthor='),
	(2,'Wat doen we?','wat-doen-we','','<p>Zowel algemene schrijnwerkerij, als totaalrenovaties behoren tot ons aanbod.  </p><p>Algemene schrijnwerkerij:</p><ul><li>Ramen en deuren</li><li>Daken</li><li>Trappen</li><li>Parket</li><li>Keukens</li><li>Plaatsen gyrpocwanden</li><li>Dressings</li><li>Veranda’s</li><li> … </li></ul>','',1,0,0,0,'2009-01-29 13:48:38',62,'','2009-02-10 15:03:03',62,0,'0000-00-00 00:00:00','2009-01-29 13:48:38','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,3,'','',0,382,'robots=\nauthor='),
	(5,'Contacteer ons','contacteer-ons','','<p>Oudestraat 1<br />3450 Geetbets<br /><br />U kan ons ook telefonisch bereiken:</p><ul><li>Luc : 0496 61 49 54</li><li>Johan : 0497 32 16 40</li><li>Willy : 0496 52 55 01</li><li>FAX : 011 58 17 44</li></ul><p>E-mail: info@vangoidtsenhoven.be</p>','',1,1,0,3,'2009-02-27 12:30:09',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-02-27 12:30:09','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,1,'','',0,0,'robots=\nauthor='),
	(3,'Realisaties','realisaties','','<p>Omdat foto’s zo veel meer zeggen, geven wij u graag een blik in onze recente realisaties.</p><p>{loadposition content} </p>','',-2,0,0,0,'2009-01-30 13:29:31',62,'','2009-02-03 12:23:38',62,0,'0000-00-00 00:00:00','2009-01-30 13:29:31','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',4,0,0,'','',0,218,'robots=\nauthor='),
	(4,'Routebeschrijving','routebeschrijving','','<p>Vul onderaan het plannetje uw adres (straat, postcode en woonplaats) in en uw krijgt automatisch de route beschrijving.</p>','',1,0,0,0,'2009-02-03 12:55:37',62,'','2014-05-08 11:04:18',62,0,'0000-00-00 00:00:00','2009-02-03 12:55:37','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',5,0,1,'','',0,1703,'robots=\nauthor=');

/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_content_frontpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_content_frontpage`;

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`)
VALUES
	(1,2),
	(2,1);

/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_content_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_content_rating`;

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_core_acl_aro
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_acl_aro`;

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`)
VALUES
	(10,'users','62',0,'Administrator',0),
	(11,'users','63',0,'Willy Vangoidtsenhoven',0);

/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_core_acl_aro_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`)
VALUES
	(17,0,'ROOT',1,22,'ROOT'),
	(28,17,'USERS',2,21,'USERS'),
	(29,28,'Public Frontend',3,12,'Public Frontend'),
	(18,29,'Registered',4,11,'Registered'),
	(19,18,'Author',5,10,'Author'),
	(20,19,'Editor',6,9,'Editor'),
	(21,20,'Publisher',7,8,'Publisher'),
	(30,28,'Public Backend',13,20,'Public Backend'),
	(23,30,'Manager',14,19,'Manager'),
	(24,23,'Administrator',15,18,'Administrator'),
	(25,24,'Super Administrator',16,17,'Super Administrator');

/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_core_acl_aro_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_core_acl_aro_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`)
VALUES
	(10,'users',1,'Users',0);

/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_core_acl_groups_aro_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`)
VALUES
	(25,'',10),
	(25,'',11);

/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_core_log_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_log_items`;

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_core_log_searches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_core_log_searches`;

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_groups`;

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;

INSERT INTO `jos_groups` (`id`, `name`)
VALUES
	(0,'Public'),
	(1,'Registered'),
	(2,'Special');

/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_menu`;

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`)
VALUES
	(1,'mainmenu','Startpagina','startpagina','index.php?option=com_content&view=frontpage','component',1,0,20,0,2,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=0\nnum_intro_articles=99\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=order\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),
	(2,'mainmenu','Realisaties','realisaties','index.php?option=com_picman&view=albums','component',1,0,34,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),
	(3,'mainmenu','Contacteer ons','contacteer-ons','index.php?option=com_machform&view=machform&id=1','component',1,0,35,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),
	(4,'mainmenu','Routebeschrijving','routebeschrijving','index.php?option=com_content&view=article&id=4','component',1,3,20,1,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),
	(5,'mainmenu','Offerte','offerte','#','url',-2,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),
	(6,'mainmenu','Links','links','index.php?option=com_weblinks&view=category&id=2','component',1,0,4,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_feed_link=0\nshow_comp_description=0\ncomp_description=\nshow_link_hits=0\nshow_link_description=0\nshow_other_cats=0\nshow_headings=0\ntarget=\nlink_icons=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);

/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_menu_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_menu_types`;

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`)
VALUES
	(1,'mainmenu','Main Menu','The main menu for the site');

/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_messages`;

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_messages_cfg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_messages_cfg`;

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_migration_backlinks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_migration_backlinks`;

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_modules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_modules`;

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`)
VALUES
	(1,'Main Menu','',1,'mainmenu',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=1\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),
	(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),
	(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),
	(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),
	(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),
	(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),
	(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),
	(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),
	(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),
	(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),
	(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),
	(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),
	(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),
	(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),
	(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),
	(16,'Realisaties','',3,'left',0,'0000-00-00 00:00:00',1,'mod_picman_menu',0,0,0,'moduleclass_sfx=\n\n',0,0,''),
	(17,'Contacteer ons','<p>Oudestraat 1<br />3450 Geetbets<br /><br />U kan ons ook telefonisch bereiken:</p><ul><li>Luc : 0496 61 49 54</li><li>Johan : 0497 32 16 40</li><li>Willy : 0496 52 55 01</li><li>FAX : 011 58 17 44</li></ul><p>E-mail: info@vangoidtsenhoven.be</p>',4,'left',0,'0000-00-00 00:00:00',0,'mod_custom',0,0,1,'moduleclass_sfx=\n\n',0,0,''),
	(18,'Routebeschrijving','',1,'left',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=\nmenu_style=list\nstartLevel=1\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),
	(19,'Realisaties','',2,'content',0,'0000-00-00 00:00:00',1,'mod_picman_menu',0,0,0,'moduleclass_sfx=\n\n',0,0,''),
	(22,'Contacteer ons','',2,'left',0,'0000-00-00 00:00:00',1,'mod_newsflash',0,0,1,'catid=3\nlayout=default\nimage=0\nlink_titles=0\nshowLastSeparator=0\nreadmore=0\nitem_title=0\nitems=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n',0,0,'');

/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_modules_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_modules_menu`;

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`)
VALUES
	(1,0),
	(16,2),
	(17,1),
	(17,3),
	(17,4),
	(17,6),
	(18,3),
	(18,4),
	(19,2),
	(22,1),
	(22,3),
	(22,4);

/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_newsfeeds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_newsfeeds`;

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_picman_albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_picman_albums`;

CREATE TABLE `jos_picman_albums` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `albumid` varchar(250) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_picman_albums` WRITE;
/*!40000 ALTER TABLE `jos_picman_albums` DISABLE KEYS */;

INSERT INTO `jos_picman_albums` (`id`, `username`, `albumid`, `catid`, `title`, `alias`, `introtext`, `hits`, `published`, `checked_out`, `checked_out_time`)
VALUES
	(1,'vangoidtsenhoven','5298525586449606081',1,'Italia-bar','italia-bar','Italiabar te Sint-Truiden',0,1,0,'0000-00-00 00:00:00'),
	(2,'vangoidtsenhoven','5298557894414740881',1,'Bed & Breakfast','bed-a-breakfast','Bed & Breakfast te ...',0,0,0,'0000-00-00 00:00:00'),
	(3,'vangoidtsenhoven','5298562123088204561',3,'Ramen','ramen','',0,1,0,'0000-00-00 00:00:00'),
	(4,'vangoidtsenhoven','5298562770079714225',3,'Deuren','deuren','',0,1,0,'0000-00-00 00:00:00'),
	(5,'vangoidtsenhoven','5298565993051946609',3,'Trappen','trappen','',0,1,0,'0000-00-00 00:00:00');

/*!40000 ALTER TABLE `jos_picman_albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_picman_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_picman_categories`;

CREATE TABLE `jos_picman_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_picman_categories` WRITE;
/*!40000 ALTER TABLE `jos_picman_categories` DISABLE KEYS */;

INSERT INTO `jos_picman_categories` (`id`, `title`, `alias`, `description`, `published`, `checked_out`, `checked_out_time`)
VALUES
	(1,'Restaurants & Horeca','restaurants-a-horeca','',1,0,'0000-00-00 00:00:00'),
	(2,'Winkels','winkels','',1,0,'0000-00-00 00:00:00'),
	(3,'Particulieren','particulieren','',1,0,'0000-00-00 00:00:00');

/*!40000 ALTER TABLE `jos_picman_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_plugins`;

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`)
VALUES
	(1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),
	(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
	(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),
	(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),
	(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),
	(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
	(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),
	(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),
	(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),
	(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),
	(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),
	(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
	(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),
	(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),
	(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),
	(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=xhtml\n\n'),
	(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),
	(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),
	(19,'Editor - TinyMCE 2.0','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),
	(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),
	(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),
	(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),
	(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),
	(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),
	(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),
	(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),
	(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),
	(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),
	(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),
	(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),
	(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),
	(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00',''),
	(34,'YOOeffects','yoo_effects','system',0,0,1,0,0,0,'0000-00-00 00:00:00','lightbox=1\nreflection=0\nspotlight=0\ngzip=1\n\n'),
	(35,'System - Mootools Upgrade','mtupgrade','system',0,0,0,0,0,0,'0000-00-00 00:00:00','');

/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_poll_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_poll_data`;

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_poll_date
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_poll_date`;

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_poll_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_poll_menu`;

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_polls
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_polls`;

CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_sections`;

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`)
VALUES
	(1,'Linkerkant','','linkerkant','','content','left','',1,0,'0000-00-00 00:00:00',1,0,1,'');

/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_session`;

CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`)
VALUES
	('','1516021550','1pa8k3h8ha6jqqj4b23eph13e7',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:5;s:19:\"session.timer.start\";i:1516021543;s:18:\"session.timer.last\";i:1516021548;s:17:\"session.timer.now\";i:1516021550;s:22:\"session.client.browser\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:77:\"/var/www/vangoidtsenhoven.be/git/code/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');

/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_stats_agents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_stats_agents`;

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table jos_templates_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_templates_menu`;

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`)
VALUES
	('svg',0,0),
	('khepri',0,1);

/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_users`;

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`)
VALUES
	(62,'Administrator','janss','tom@janss.be','62f35a85ec092a818c64b05ab124d511:O0mk82ors77gBksBnmTEgfOxz16hglvd','Super Administrator',0,1,25,'2009-01-23 14:31:27','2015-10-20 09:26:27','','admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n'),
	(63,'Willy Vangoidtsenhoven','willy','info@vangoidtsenhoven.be','388812770a001e3f2be9cff167e41664:i3oLTsbYLgUesiXmKzMnOsP3y0q9hWdU','Super Administrator',0,0,25,'2009-02-06 12:27:38','2009-05-08 07:18:50','','admin_language=nl-NL\nlanguage=nl-NL\neditor=tinymce\nhelpsite=\ntimezone=1\n\n');

/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jos_weblinks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jos_weblinks`;

CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`)
VALUES
	(1,2,0,'Restaurant ‘De groene loot’','restaurant-de-groene-loot','http://www.degroeneloot.be/','','2009-02-10 15:22:52',1945,1,0,'0000-00-00 00:00:00',1,0,1,'target=\n\n'),
	(2,2,0,'Restaurant ‘Italia-Bar’','restaurant-italia-bar','http://www.evolutionbuilder.com/22505%5F1/','','2009-02-10 15:23:12',1492,1,0,'0000-00-00 00:00:00',2,0,1,'target=\n\n');

/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
