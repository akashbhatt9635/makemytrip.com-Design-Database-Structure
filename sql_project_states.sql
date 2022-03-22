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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_id` varchar(20) NOT NULL,
  `state_name` varchar(45) NOT NULL,
  `country_id` varchar(45) NOT NULL,
  PRIMARY KEY (`state_id`),
  KEY `countri_idx` (`country_id`),
  CONSTRAINT `countri` FOREIGN KEY (`country_id`) REFERENCES `countries` (`Country_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('1','Maharashtra','1'),('10','Bihar','1'),('11','Madhya Pradesh','1'),('12','Andhra Pradesh','1'),('13','Punjab','1'),('14','Haryana','1'),('15','Jammu and Kashmir','1'),('16','Jharkhand','1'),('17','Chhattisgarh','1'),('18','Assam','1'),('19','Chandigarh','1'),('2','Delhi','1'),('20','Odisha','1'),('21','Kerala','1'),('22','Uttarakhand','1'),('23','Puducherry','1'),('24','Tripura','1'),('25','Karnatka','1'),('26','Mizoram','1'),('27','Meghalaya','1'),('28','Manipur','1'),('29','Himachal Pradesh','1'),('3','Karnataka','1'),('30','Nagaland','1'),('31','Goa','1'),('32','Andaman and Nicobar Islands','1'),('33','Arunachal Pradesh','1'),('34','Dadra and Nagar Haveli','1'),('4','Gujrat','1'),('5','Telangana','1'),('6','Tamil Nadu','1'),('7','West Bengal','1'),('8','Rajasthan','1'),('9','Uttar Pradesh','1');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 19:56:21
