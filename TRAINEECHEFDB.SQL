-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: TRAINEECHEFDB
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chef` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `F_NAME` varchar(20) NOT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `CURRENT_YEAR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (1,'Will','Hogan',3),(2,'Mike','Kelly',1),(3,'John','Rabbitte',2),(4,'Gerry','Mahony',4),(5,'Michelle','Doherty',3);
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_origin`
--

DROP TABLE IF EXISTS `food_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_origin` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ORIGIN` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_origin`
--

LOCK TABLES `food_origin` WRITE;
/*!40000 ALTER TABLE `food_origin` DISABLE KEYS */;
INSERT INTO `food_origin` VALUES (1,'Italian'),(2,'Chinese'),(3,'Cantonese'),(4,'Japanese'),(5,'Greek'),(6,'Congolese'),(7,'French'),(8,'German'),(9,'Spanish'),(10,'Mexican'),(11,'Polish'),(12,'Russian'),(13,'Brazilian'),(14,'Irish'),(15,'Scotish'),(16,'Welsh'),(17,'Morrocan'),(18,'Turkish'),(19,'Zimbabwean');
/*!40000 ALTER TABLE `food_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Salt'),(2,'Sugar'),(3,'Black Pepper'),(4,'Butter'),(5,'White Pepper'),(6,'5 Spice'),(7,'Eggs'),(8,'Milk'),(9,'Yeast'),(10,'Flour'),(11,'Baking Soda'),(12,'Cheese'),(13,'Tomatoes');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) NOT NULL,
  `PREP_TIME` int(11) NOT NULL,
  `DIRECTIONS` mediumtext NOT NULL,
  `IMAGE` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Spanish Omellette',25,'Beat eggs together with ingredients, blah, blah, blah.........','C:/Users/william/Desktop');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-24 20:58:28
