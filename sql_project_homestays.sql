-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_project
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `homestays`
--

DROP TABLE IF EXISTS `homestays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homestays` (
  `Homestays_Id` varchar(20) NOT NULL,
  `Service_Id` varchar(45) NOT NULL,
  `PropertyName` varchar(45) DEFAULT NULL,
  `Area_Id` varchar(45) NOT NULL,
  `Category_Id` varchar(45) NOT NULL,
  `Room_Id` varchar(45) DEFAULT NULL,
  `Property_Id` varchar(45) NOT NULL,
  `Gst` varchar(45) NOT NULL,
  `Facility_Id` varchar(45) NOT NULL,
  `Rule_Id` varchar(45) NOT NULL,
  PRIMARY KEY (`Homestays_Id`),
  KEY `area_idx` (`Area_Id`),
  KEY `category_idx` (`Category_Id`),
  KEY `acilities_idx` (`Facility_Id`),
  KEY `rule_idx` (`Rule_Id`),
  KEY `sevri1_idx` (`Service_Id`),
  KEY `prop1_idx` (`Property_Id`),
  CONSTRAINT `acilities` FOREIGN KEY (`Facility_Id`) REFERENCES `facilities` (`Facility_Id`),
  CONSTRAINT `area` FOREIGN KEY (`Area_Id`) REFERENCES `areas` (`Area_Id`),
  CONSTRAINT `category` FOREIGN KEY (`Category_Id`) REFERENCES `categories` (`Category_Id`),
  CONSTRAINT `prop1` FOREIGN KEY (`Property_Id`) REFERENCES `properties` (`Property_Id`),
  CONSTRAINT `rule` FOREIGN KEY (`Rule_Id`) REFERENCES `rules` (`rules_id`),
  CONSTRAINT `sevri1` FOREIGN KEY (`Service_Id`) REFERENCES `services` (`Services_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homestays`
--

LOCK TABLES `homestays` WRITE;
/*!40000 ALTER TABLE `homestays` DISABLE KEYS */;
/*!40000 ALTER TABLE `homestays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 19:56:16
