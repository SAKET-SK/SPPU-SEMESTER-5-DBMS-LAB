-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `budget` int DEFAULT '10000',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES ('401','Computer','2nd Floor North',15000),('402','Mechanical','2nd Floor South',12000),('403','I.T.','3rd Floor South',30000),('404','Electronics','3rd Floor East',17000),('405','Human Resources','Ground Floor',14000);
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `emp_id` int NOT NULL,
  `name` varchar(15) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `salary` decimal(18,2) NOT NULL DEFAULT '5000.00',
  `DOB` date DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `phone_no` (`phone_no`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (101,'ABC','401',7000.00,'1995-07-24','8908908908','Delhi'),(102,'ABCD','401',9000.00,'1996-07-14','8908358918','Mumbai'),(103,'PQR','402',12000.00,'1990-11-01','7234358722','Mumbai'),(104,'ABD','403',15000.00,'1988-12-31','7456758722','Chennai'),(105,'XYZ','404',6000.00,'1997-02-09','7482538719','Bangalore'),(106,'PQRS','405',21000.00,'1995-04-09','7682538510','Pune'),(107,'DEF','405',25000.00,'1992-07-26','7682513596','Kolkata');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-17 16:00:35
