CREATE DATABASE  IF NOT EXISTS `domomidb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `domomidb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: domomidb.cwidfjxj5r7n.us-west-2.rds.amazonaws.com    Database: domomidb
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `units` (
  `idunit` int(11) NOT NULL AUTO_INCREMENT,
  `idbuilding` int(11) DEFAULT NULL,
  `idmanager` int(11) DEFAULT NULL,
  `floor` varchar(2) DEFAULT NULL,
  `unitname` varchar(20) DEFAULT NULL,
  `bedqnty` int(2) DEFAULT NULL,
  `bathqnty` int(2) DEFAULT NULL,
  `pets` tinyint(1) DEFAULT NULL,
  `unitscol` varchar(45) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `photo` blob,
  `insuitlaundry` int(1) DEFAULT NULL,
  `rentmonth` float(7,2) DEFAULT NULL,
  `parking` int(1) DEFAULT NULL,
  `tag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idunit`),
  UNIQUE KEY `idbuilding_UNIQUE` (`idunit`),
  KEY `idbuilding_idx` (`idbuilding`),
  CONSTRAINT `fk_idbuildingunits` FOREIGN KEY (`idbuilding`) REFERENCES `building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,5,1,'1','101',2,2,1,NULL,460,NULL,1,1500.00,1,NULL);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  9:05:51
