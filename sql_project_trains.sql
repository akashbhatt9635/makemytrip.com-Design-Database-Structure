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
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trains` (
  `train_id` varchar(20) NOT NULL,
  `sevice_id` varchar(20) NOT NULL,
  `train_no` varchar(45) NOT NULL,
  `train_name` varchar(45) NOT NULL,
  ` departure_citi_id` varchar(45) NOT NULL,
  `arrival_city_id` varchar(45) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `train_type` varchar(45) NOT NULL,
  `run_days` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`train_id`),
  KEY `servi12_idx` (`sevice_id`),
  KEY `city_idx` (` departure_citi_id`),
  KEY `ciy2_idx` (`arrival_city_id`),
  CONSTRAINT `servi12` FOREIGN KEY (`sevice_id`) REFERENCES `services` (`Services_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES ('tt1','tt','12267','mumbai central - ahmedabad ac duronto exp','1','4','23:25:00','05:55:00','duronto',NULL),('tt2','tt','22201','kolkata sealdah - puri duronto express','2','5','20:30:00','04:00:00','durronto',NULL),('tt3','tt','12430','new delhi - luchnow ac sf express','3','2','20:50:00','06:40:00','rajdhani',NULL),('tt4','tt','12019','howrah _rachi shatabdi express','4','1','06:05:00','13:15:00','shatabdi',NULL),('tt5','tt','11077','pune - jmmu tawi jhelam express','pune','jammu tawi','17:20:00','10:10:00','mail express',NULL),('tt6','tt','12138','firozpur cantt _mumbai cst punjab mail sf exp','firozpur','mumbai ','21:40:00','07:35:00','superfast',NULL),('tt7','tt','12307','howrah -joghpur sf express','howrah ','jodhpur','23:30:00','08:30:00','superfast',NULL);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
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
