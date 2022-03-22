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
-- Table structure for table `booking_homestays`
--

DROP TABLE IF EXISTS `booking_homestays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_homestays` (
  `booking_id` varchar(20) NOT NULL,
  `homestays_id` varchar(20) NOT NULL,
  `check_in_time` datetime NOT NULL,
  `check_out_time` datetime NOT NULL,
  `no_of_guests` int NOT NULL,
  `room_id` varchar(20) DEFAULT NULL,
  `facility_id` varchar(20) DEFAULT NULL,
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`),
  KEY `homestay_idx` (`homestays_id`),
  KEY `room_idx` (`room_id`),
  KEY `facility1_idx` (`facility_id`),
  KEY `homestay1_idx` (`homestays_id`),
  KEY `room1_idx` (`room_id`),
  KEY `facility2_idx` (`facility_id`),
  CONSTRAINT `booking3` FOREIGN KEY (`booking_id`) REFERENCES `booking_table` (`booking_id`),
  CONSTRAINT `facility2` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`Facility_Id`),
  CONSTRAINT `homestay1` FOREIGN KEY (`homestays_id`) REFERENCES `homestays` (`Homestays_Id`),
  CONSTRAINT `room1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`Rooms_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_homestays`
--

LOCK TABLES `booking_homestays` WRITE;
/*!40000 ALTER TABLE `booking_homestays` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_homestays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 19:56:13
