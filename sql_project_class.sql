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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` varchar(20) NOT NULL,
  `class_type` varchar(45) NOT NULL,
  `airfare_id` varchar(45) NOT NULL,
  `cabin_bag` varchar(45) DEFAULT NULL,
  `cheak_in` varchar(45) DEFAULT NULL,
  `cancelation_id` varchar(45) DEFAULT NULL,
  `datechage_policy_id` varchar(45) DEFAULT NULL,
  `airline_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `fare_idx` (`airfare_id`),
  CONSTRAINT `fare` FOREIGN KEY (`airfare_id`) REFERENCES `fare1` (`airfare_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('1','saver','1','7 kgs','15 kgs','1','1','tfa06'),('10','goflexi','2','7 kgs','15 kgs','2','2','tfa02'),('11','gomore','3','7 kgs','15 kgs','3','3','tfa01'),('2','flexi pluse','9','7 kgs','15kgs','2','2','tfa02'),('3','economy saver','5','7 kgs','25 kgs','1','1','tfa06'),('4','economy basic','6','7 kgs','25 kgs','2','2','tfa06'),('5','economy lite','5','7 kgs','1 piece','1','1','tfa07'),('6','economy standard','8','7 kgs','15 kgs','2','2','tfa07'),('7','premium economy','9','7 kgs','20 kgs','3','3','tfa07'),('8','premium economy standard','10','7 kgs','25 kgs','4','4','tfa07'),('9','gofirst','18','7 kgs','15 kgs','1','1','tfa01');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
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
