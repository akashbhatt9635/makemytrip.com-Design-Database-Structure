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
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `Travel_Id` varchar(20) NOT NULL,
  `agency_Id` varchar(45) NOT NULL,
  `BusNo` varchar(45) NOT NULL,
  `DepartureCity` varchar(45) DEFAULT NULL,
  `ArrivalCity` varchar(45) DEFAULT NULL,
  `Departure_DateTime` time DEFAULT NULL,
  `Arrival_DateTime` time DEFAULT NULL,
  `Stops` varchar(45) DEFAULT NULL,
  `SleeperSeat` varchar(45) DEFAULT NULL,
  `SeaterSeat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Travel_Id`),
  KEY `servi3_idx` (`agency_Id`),
  CONSTRAINT `servi3` FOREIGN KEY (`agency_Id`) REFERENCES `travel_agency_details` (`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES ('1','tb1','MH13AB2545','AKOLA','MUMBAI','15:15:00','24:15:00','3','50','0'),('2','tb2','GJ06AB5896','AHDABAD','MUMBAI','18:15:00','25:45:00','8','50','0'),('3','tb3','DL1AB1256','DELHI','CHANDIGARH','05:30:00','12:30:00','4','0','60'),('4','tb5','MP12 BD5489','BHOPAL','INDORE','05:35:00','00:12:00','5','50','0'),('5','tb4','MH32SC4523','PUNE','MUMBAI','10:30:00','12:30:00','0','0','60');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
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
