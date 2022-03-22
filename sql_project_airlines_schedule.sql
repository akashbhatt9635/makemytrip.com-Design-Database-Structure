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
-- Table structure for table `airlines_schedule`
--

DROP TABLE IF EXISTS `airlines_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines_schedule` (
  `Airlines_Id` varchar(20) NOT NULL,
  `FlightNo` varchar(45) NOT NULL,
  `AirlineName` varchar(45) NOT NULL,
  `DepartureCity` varchar(45) NOT NULL,
  `ArrivalCity` varchar(45) NOT NULL,
  `DepartureTime` time DEFAULT NULL,
  `ArrivalTime` time DEFAULT NULL,
  `AircraftName` varchar(45) NOT NULL,
  `Stops` varchar(45) DEFAULT NULL,
  `Domestic_International` varchar(45) NOT NULL,
  KEY `airline_idx` (`Airlines_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines_schedule`
--

LOCK TABLES `airlines_schedule` WRITE;
/*!40000 ALTER TABLE `airlines_schedule` DISABLE KEYS */;
INSERT INTO `airlines_schedule` VALUES ('tfa01','g8465','go first','delhi','mumbai','10:30:00','13:45:00','ER4','0','domestic'),('tfa02','w29051','flexflight','chandigarh','mumbai','00:00:04','06:50:00','A20N','0','domestic'),('tfa03','sg279','scpicejet','jaipur','delhi','06:20:00','07:20:00','B38M','0','domestic'),('tfa04','6e5213','indigo','raipur','mumbai','05:45:00','07:00:00','A320','0','domestic'),('tfa05','9i626','alliance air','bhuj','mumbai','08:40:00','10:25:00','32A','0','domestic'),('tfa01','g8141','go first','nagpur','mumbai','09:10:00','11:05:00','A320','0','domestic'),('tfa04','6e362','indigo','lucknow','mumbai','13:30:00','15:45:00','A20N','0','domestic'),('tfa01 ','g8383','go first','chennai','delhi','06:55:00','09:45:00','DH8D','0','domestic'),('tfa06','ai679','air india','mumbai','delhi','07:20:00','09:30:00','32A','0','domestic'),('tfa07','uk994','vistara','pune','chennai','23:15:00','01:00:00','A20N','0','domestic');
/*!40000 ALTER TABLE `airlines_schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 19:56:23
