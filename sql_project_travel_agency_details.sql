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
-- Table structure for table `travel_agency_details`
--

DROP TABLE IF EXISTS `travel_agency_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_agency_details` (
  `agency_id` varchar(45) NOT NULL,
  `agency_name` varchar(45) NOT NULL,
  `account_number` varchar(45) NOT NULL,
  `acount_name` varchar(45) DEFAULT NULL,
  `ifcs _code` varchar(45) NOT NULL,
  `service_id` varchar(45) NOT NULL,
  `mobile_number` varchar(45) NOT NULL,
  `photos` text,
  `policies_id` varchar(45) DEFAULT NULL,
  `amenities-id` varchar(45) NOT NULL,
  PRIMARY KEY (`agency_id`),
  UNIQUE KEY `agency_id_UNIQUE` (`agency_id`),
  UNIQUE KEY `account_number_UNIQUE` (`account_number`),
  UNIQUE KEY `mobile_number_UNIQUE` (`mobile_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_agency_details`
--

LOCK TABLES `travel_agency_details` WRITE;
/*!40000 ALTER TABLE `travel_agency_details` DISABLE KEYS */;
INSERT INTO `travel_agency_details` VALUES ('tb1','zingbus','12564785',NULL,'sbin000001','tb','12365478795',NULL,NULL,''),('tb2','mahalaxmi travels','47852654',NULL,'sbin452145','tb','8856451236',NULL,NULL,''),('tb3','maharani travels','58964123',NULL,'sbin456214','tb','7745865245',NULL,NULL,''),('tb4','purpal traels','878956412',NULL,'sbin000001','tb','7785621155',NULL,NULL,''),('tb5','goldline super','156543213',NULL,'sbin000001','tb','1454321654',NULL,NULL,'');
/*!40000 ALTER TABLE `travel_agency_details` ENABLE KEYS */;
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
