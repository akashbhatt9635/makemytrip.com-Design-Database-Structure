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
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `Hotels_Id` varchar(20) NOT NULL,
  `Service_Id` varchar(45) NOT NULL,
  `HotelName` varchar(45) NOT NULL,
  `Area_Id` varchar(45) NOT NULL,
  `StarCategory` varchar(45) DEFAULT NULL,
  `Category_Id` varchar(45) NOT NULL,
  `Room_Id` varchar(45) NOT NULL,
  `Property_Id` varchar(45) NOT NULL,
  `GST` varchar(45) NOT NULL,
  `Facility_Id` varchar(45) DEFAULT NULL,
  `NO_of_Rooms` varchar(45) NOT NULL,
  `PhoneNo` varchar(45) NOT NULL,
  `rule_id` varchar(20) NOT NULL,
  `about_hotel` text,
  PRIMARY KEY (`Hotels_Id`),
  KEY `services_idx` (`Service_Id`),
  KEY `area_idx` (`Area_Id`),
  KEY `category_idx` (`Category_Id`),
  KEY `facility_idx` (`Facility_Id`),
  KEY `property_idx` (`Property_Id`),
  KEY `room5_idx` (`Room_Id`),
  KEY `rules3_idx` (`rule_id`),
  CONSTRAINT `area4` FOREIGN KEY (`Area_Id`) REFERENCES `areas` (`Area_Id`),
  CONSTRAINT `category3` FOREIGN KEY (`Category_Id`) REFERENCES `categories` (`Category_Id`),
  CONSTRAINT `facility7` FOREIGN KEY (`Facility_Id`) REFERENCES `facilities` (`Facility_Id`),
  CONSTRAINT `prop` FOREIGN KEY (`Property_Id`) REFERENCES `properties` (`Property_Id`),
  CONSTRAINT `room5` FOREIGN KEY (`Room_Id`) REFERENCES `rooms` (`Rooms_Id`),
  CONSTRAINT `rules3` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`rules_id`),
  CONSTRAINT `servi9` FOREIGN KEY (`Service_Id`) REFERENCES `services` (`Services_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 19:56:19
