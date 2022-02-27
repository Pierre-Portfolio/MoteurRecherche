-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gmp
-- ------------------------------------------------------
-- Server version	5.5.60-0ubuntu0.14.04.1

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
-- Table structure for table `orsay_categories`
--

DROP TABLE IF EXISTS `orsay_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orsay_categories` (
  `cid` int(8) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `rank` int(8) unsigned NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orsay_categories`
--

LOCK TABLES `orsay_categories` WRITE;
/*!40000 ALTER TABLE `orsay_categories` DISABLE KEYS */;
INSERT INTO `orsay_categories` VALUES (0,0,0,'Tout'),(1,1,5,'Langage informatique'),(2,1,4,'Français-Littérature'),(3,1,1,'IUT d\'Orsay'),(4,1,3,'Chimie'),(5,1,7,'Physique'),(6,1,6,'Mathématiques'),(7,1,2,'Anglais');
/*!40000 ALTER TABLE `orsay_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orsay_login`
--

DROP TABLE IF EXISTS `orsay_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orsay_login` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT '',
  `level` tinyint(6) unsigned NOT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `fname` varchar(40) DEFAULT '',
  `lname` varchar(40) DEFAULT '',
  `email` varchar(80) DEFAULT '',
  `created` varchar(19) DEFAULT '',
  `laccess` varchar(19) DEFAULT '',
  `chgpass` varchar(19) DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orsay_login`
--

LOCK TABLES `orsay_login` WRITE;
/*!40000 ALTER TABLE `orsay_login` DISABLE KEYS */;
INSERT INTO `orsay_login` VALUES (1,'admin',0,'$1$3s7Y13yv$NPUF3tyUQvZt1QZudbE01/','System','Admin','','2018/04/15','2018:04/23 16:43:22',''),(2,'pierre',1,'$2y$10$PUpMdWdNvnpbN7Sj2GE4muJU5K96iNF4Kj1OG8kRgPaa.rtTJKQ0u','Pierre','PETILLION','petillion99@gmail.com','2018/04/15','2018:04/22 18:54:43','2018/04/22'),(3,'hugo',2,'$2y$10$zVMxSuWlaFUoYLmtXT3AE.1g4Ydx43lL6SE.40v7X5I0WQ6WE42v2','Hugo','KUENY','hugo.kueny@u-psud.fr','2018/04/22','','');
/*!40000 ALTER TABLE `orsay_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orsay_menu`
--

DROP TABLE IF EXISTS `orsay_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orsay_menu` (
  `m1id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `level` char(1) DEFAULT NULL,
  `rank` int(11) unsigned NOT NULL,
  `live` char(1) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `action` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`m1id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orsay_menu`
--

LOCK TABLES `orsay_menu` WRITE;
/*!40000 ALTER TABLE `orsay_menu` DISABLE KEYS */;
INSERT INTO `orsay_menu` VALUES (1,'9',1,'1','Gestion BD','OP;makeSearch;OP2;makeSearch;showFrame1'),(2,'4',2,'1','blank0','BLANK;8px'),(3,'4',3,'1','Mot de passe','OP;Passwd;OP2;mdp;showFrame1'),(4,'1',4,'1','blank1','BLANK;8px'),(5,'1',5,'1','Catégories','OP;cat;OP2;cat;showFrame1'),(6,'1',6,'1','Utilisateurs','OP;Users;OP2;userList;showFrame1'),(7,'9',7,'1','blank2','BLANK;8px'),(8,'9',8,'1','Page principale','menuHide'),(9,'4',9,'1','Quitter','logout');
/*!40000 ALTER TABLE `orsay_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orsay_records`
--

DROP TABLE IF EXISTS `orsay_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orsay_records` (
  `idx` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `active` int(1) unsigned NOT NULL DEFAULT '0',
  `cat` int(8) unsigned NOT NULL,
  `titre` varchar(120) DEFAULT '',
  `clefs` varchar(200) DEFAULT '',
  `lien` varchar(200) DEFAULT '',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orsay_records`
--

LOCK TABLES `orsay_records` WRITE;
/*!40000 ALTER TABLE `orsay_records` DISABLE KEYS */;
INSERT INTO `orsay_records` VALUES (1,1,1,'JavaScript: remplacement d\'une chaîne de caractères - string.replace() method',',javascript,remplacer,simple,string,replace,chaine,','https://www.w3schools.com/jsref/jsref_replace.asp'),(2,1,1,'JavaScript: remplacer toutes les occurrences d\'une chaîne de caractères',',javascript,remplacer,string,replace,toutes,occurrences,chaine,','https://www.journaldunet.fr/web-tech/developpement/1202971-comment-remplacer-toutes-les-occurrences-d-un-string-en-javascript/'),(3,1,3,'Page d\'accueil de l\'IUT d\'Orsay',',iut,orsay,accueil,','http://www.iut-orsay.u-psud.fr/fr/index.html'),(4,1,3,'Actualités de l\'IUT d\'Orsay',',iut,orsay,actualites,','http://www.actu.u-psud.fr/fr/index.html'),(5,1,3,'IUT d\'Orsay: toute la documentation en ligne (formations, diplômes, portes ouvertes, relations internationales, etc.)',',iut,orsay,documentation,portes,ouvertes,ligne,relations,internationales,formation,formations,diplome,diplomes,technologie,dut,information,pratique,','http://www.iut-orsay.u-psud.fr/fr/informations_pratiques/documentation.html'),(6,1,1,'PHP: remplacer toutes les occurrences d\'une chaîne de caractères',',php,remplacer,occurrences,toutes,string,chaine,','http://php.net/manual/fr/function.str-replace.php'),(7,1,1,'PHP: scinder une chaîne de caractères avec explode (split obsolète en php7)',',php,couper,scinder,separateur,string,array,segment,segments,segmentation,string,split,chaine,explode,','http://php.net/manual/fr/function.explode.php'),(8,1,0,'MCD base de données',',mcd,donnee,modele,conceptuel,','http://www.base-de-donnees.com/mcd/'),(9,1,0,'PHP: suppression des accents dans une chaîne de caractères (commentaires à la fin pour le codage en UTF8)',',php,supprimer,suppression,accents,utf8,chaine,caracteres,','https://www.developpez.net/forums/d284411/php/langage/fonctions/suppression-d-accents-utf-8-a/'),(10,1,1,'JavaScript: construire un affichage partiel grâce à une requête en Ajax (tutoriel)',',ajax,xmlhttprequest,xhr,requete,affichage,partiel,construire,construction,javascript,porte,arriere,tutoriel,','https://www.xul.fr/xml-ajax.html#ajax-construction'),(11,1,2,'Francesco Alberoni: incompréhension de l\'innamorento (choc amoureux) par les auteurs français',',francesco,alberoni,sartre,bataille,comprehension,innamoramento,choc,amoureux,amour,litterature,','http://www.alberoni.it/gli-errori-dei-classici-francesi-dell-amore-focus-francese.asp'),(12,1,1,'CSS: glossaire de toutes les propriétés par ordre alphabétique',',css,propriete,proprietes,glossaire,liste,classement,div,border,background,color,margin,padding,font,size,scrollbar,text-vertical,align,top,left,right,bottom,','http://www.css-faciles.com/proprietes-css-liste-alphabetique.php'),(13,1,1,'PHP: migrer de mysql (php5) à mysqli (php7)',',php,mysql,msqli,sql,migrer,passer,','https://www.linuxtricks.fr/wiki/php-passer-de-mysql-a-mysqli-requetes-de-base'),(14,1,1,'CSS: faire un tableau avec des div',',mise,div,css,tableau,table,top,left,width,height,right,bottom,margin,padding,border,','http://css.mammouthland.net/mise-en-page-sans-tableau.php'),(15,1,1,'HTML: l\'attribut TYPE du tag INPUT',',input,type,attrribut,attribute,tag,text,hidden,','https://www.w3schools.com/tags/att_input_type.asp');
/*!40000 ALTER TABLE `orsay_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-24  8:50:39
