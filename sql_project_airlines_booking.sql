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
-- Table structure for table `airlines_booking`
--

DROP TABLE IF EXISTS `airlines_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlines_booking` (
  `booking_id` varchar(20) NOT NULL,
  `airline_id` varchar(45) NOT NULL,
  `departure` varchar(45) NOT NULL,
  `arrival` varchar(45) NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `class_id` varchar(20) NOT NULL,
  `no_of_seats` int NOT NULL,
  `pnr_no` varchar(20) NOT NULL,
  UNIQUE KEY `booking_id_UNIQUE` (`booking_id`),
  KEY `airline_idx` (`airline_id`),
  KEY `class_idx` (`class_id`),
  CONSTRAINT `airline` FOREIGN KEY (`airline_id`) REFERENCES `airlines_schedule` (`Airlines_Id`),
  CONSTRAINT `booking2` FOREIGN KEY (`booking_id`) REFERENCES `booking_table` (`booking_id`),
  CONSTRAINT `class` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines_booking`
--

LOCK TABLES `airlines_booking` WRITE;
/*!40000 ALTER TABLE `airlines_booking` DISABLE KEYS */;
INSERT INTO `airlines_booking` VALUES ('04-2318633','tfa04','Dehradun','Mumbai','09:20:00','15:25:00','10',5,'5276714836'),('05-9069464','tfa04','Dehradun','Mumbai','07:45:00','15:25:00','1',1,'2932519141'),('09-3017042','tfa04','Dehradun','Mumbai','05:00:00','15:25:00','10',5,'9851274298'),('09-4486713','tfa03','Dehradun','Mumbai','10:15:00','19:00:00','2',1,'5112011629'),('13-4794500','tfa03','Dehradun','Mumbai','07:10:00','16:00:00','3',1,'9636344336'),('16-3353141','tfa04','Dehradun','Mumbai','10:05:00','18:00:00','1',3,'8332101436'),('18-4341604','tfa04','Dehradun','Mumbai','14:50:00','17:05:00','10',4,'6426868979'),('24-1004947','tfa06','Dehradun','Mumbai','21:30:00','07:25:00','10',4,'6198866569'),('28-4269321','tfa06','Dehradun','Mumbai','19:00:00','07:25:00','9',5,'1173026997'),('33-5859226','tfa07','Dehradun','Mumbai','12:10:00','14:20:00','3',5,'2643942869'),('34-0563986','tfa04','Dehradun','Mumbai','10:05:00','18:00:00','10',2,'4562106289'),('35-0315881','tfa04','Dehradun','Mumbai','14:50:00','17:05:00','2',5,'8651706480'),('35-6036086','tfa06','Dehradun','Mumbai','21:30:00','07:25:00','7',1,'3256371827'),('40-9693382','tfa06','Dehradun','Mumbai','19:00:00','07:25:00','4',2,'7896983400'),('43-3978218','tfa04','Dehradun','Mumbai','07:25:00','09:35:00','8',5,'6997170947'),('44-5692761','tfa01','Dehradun','Mumbai','12:10:00','14:20:00','6',3,'2295467478'),('48-7775401','tfa04','Dehradun','Mumbai','09:20:00','14:45:00','4',3,'7542742727'),('51-8096681','tfa03','Dehradun','Mumbai','10:05:00','16:00:00','2',3,'2399861864'),('53-7278543','tfa03','Dehradun','Mumbai','13:40:00','19:00:00','4',1,'4048624201'),('53-8572875','tfa01','Dehradun','Mumbai','10:25:00','14:45:00','1',5,'6141765374'),('54-3237593','tfa07','Dehradun','Mumbai','12:25:00','18:00:00','1',1,'8596756612'),('55-8863910','tfa07','Dehradun','Mumbai','11:55:00','18:00:00','3',4,'6867521865'),('56-5154810','tfa06','Dehradun','Mumbai','08:00:00','13:45:00','6',2,'4672988475'),('61-2846370','tfa01','Dehradun','Mumbai','13:30:00','19:00:00','6',2,'7821070251'),('64-2090317','tfa06','Dehradun','Mumbai','10:00:00','15:25:00','10',1,'5352831281'),('64-5671211','tfa04','Dehradun','Mumbai','09:20:00','14:45:00','5',4,'2763647176'),('66-2662961','tfa04','Dehradun','Mumbai','10:05:00','16:00:00','4',2,'3318561543'),('67-3075795','tfa04','Dehradun','Mumbai','13:40:00','19:00:00','1',4,'5329594411'),('67-4309263','tfa07','Dehradun','Mumbai','10:25:00','14:45:00','2',2,'6668741230'),('69-8932368','tfa07','Dehradun','Mumbai','12:25:00','18:00:00','8',3,'8524131999'),('74-6093831','tfa07','Dehradun','Mumbai','11:55:00','18:00:00','5',5,'4337756569'),('83-4766700','tfa01','Dehradun','Mumbai','08:00:00','13:45:00','3',3,'7478746770'),('83-9496000','tfa03','Dehradun','Mumbai','13:30:00','19:00:00','1',1,'4023219687'),('89-8690659','tfa01','Dehradun','Mumbai','10:00:00','15:25:00','10',1,'3349459780'),('93-0825734','tfa03','Dehradun','Mumbai','10:15:00','15:25:00','9',2,'1515628148'),('94-5401705','tfa01','Dehradun','Mumbai','07:20:00','14:45:00','9',5,'7547171366'),('95-7836718','tfa07','Dehradun','Mumbai','12:10:00','14:20:00','7',2,'9823896259'),('95-8001346','tfa07','Dehradun','Mumbai','09:20:00','14:45:00','2',3,'5221956088');
/*!40000 ALTER TABLE `airlines_booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-06 19:56:14
