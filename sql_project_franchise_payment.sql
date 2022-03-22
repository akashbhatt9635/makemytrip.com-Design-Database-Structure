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
-- Table structure for table `franchise_payment`
--

DROP TABLE IF EXISTS `franchise_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franchise_payment` (
  `franchise_Id` int NOT NULL,
  `Airline_Id` varchar(45) DEFAULT NULL,
  `Hotel_Id` varchar(45) DEFAULT NULL,
  `Homestays_Id` varchar(45) DEFAULT NULL,
  `TravelCompany` varchar(45) DEFAULT NULL,
  `BankDetail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`franchise_Id`),
  KEY `airlline1_idx` (`Airline_Id`),
  KEY `hotel3_idx` (`Hotel_Id`),
  KEY `homestay2_idx` (`Homestays_Id`),
  CONSTRAINT `airlline1` FOREIGN KEY (`Airline_Id`) REFERENCES `airlines_schedule` (`Airlines_Id`),
  CONSTRAINT `homestay2` FOREIGN KEY (`Homestays_Id`) REFERENCES `homestays` (`Homestays_Id`),
  CONSTRAINT `hotel3` FOREIGN KEY (`Hotel_Id`) REFERENCES `hotels` (`Hotels_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise_payment`
--

LOCK TABLES `franchise_payment` WRITE;
/*!40000 ALTER TABLE `franchise_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `franchise_payment` ENABLE KEYS */;
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
