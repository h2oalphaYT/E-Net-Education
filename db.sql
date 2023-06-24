-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: e-net-education
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `idContact` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idContact`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Chanuka Devin','chanukaddevin@gmail.com','hi'),(2,'Chanuka Devin','chanukaddevin@gmail.com','hi'),(3,'Chanuka Devin','chanukaddevin@gmail.com','hi');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creatett`
--

DROP TABLE IF EXISTS `creatett`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creatett` (
  `examno` varchar(10) NOT NULL,
  `module` varchar(10) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `stime` time DEFAULT NULL,
  `tdue` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`examno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creatett`
--

LOCK TABLES `creatett` WRITE;
/*!40000 ALTER TABLE `creatett` DISABLE KEYS */;
INSERT INTO `creatett` VALUES ('dms001','se','2023-05-25','15:06:00','150min'),('ossa001','ossa','2023-05-14','07:30:00','20min');
/*!40000 ALTER TABLE `creatett` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `F_name` varchar(45) DEFAULT NULL,
  `L_name` varchar(45) DEFAULT NULL,
  `S_email` varchar(45) DEFAULT NULL,
  `P_number` int DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Confirm_psw` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `UserID` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT 'Student',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (4,'Osadha','madhuwantha','madhuwantha@gmail.com',717826545,'madhu123','osadha123','on','it21803454','Student'),(14,'deu','mina','deu@gmail.com',123456799,'12345','12345','male','it21298653','Student'),(15,'Ajith','Siriwardana','ajith@ENETadmin.lk',719352275,'Ajithadmin123','Ajithadmin123','male','ADMIN2001','Admin'),(16,'modaya','morawaka','mihindi@gmail.com',714567892,'12345678','12345678','female','BM2001','Student'),(17,'Chanukaaa','Devin','chanukadddevin@gmail.com',719352299,'AHCDs@123','AHCDs@123','male','it21802676','Student'),(18,'mathisha','Devin','chanukaddevin@gmail.com',714567892,'12345','AHCDs@123','male','IT20013598','Student'),(19,'mathisha','Devin','chanukaddevin@gmail.com',714567892,'12345','AHCDs@123','male','IT20013598','Student'),(20,'mathisha','Devin','chanukaddevin@gmail.com',714567892,'12345','AHCDs@123','male','IT20013598','Student'),(21,'Madava','Siriwardana','Madavadevin@gmail.com',718956675,'12345','AHCDs@123','male','IT75899412','Student'),(22,'Madava','Siriwardana','Madavadevin@gmail.com',718956675,'12345','AHCDs@123','male','IT75899412','Student');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (17,'Chanuka','Devin','chanukaddevin@gmail.com','0719352275','admin','Admin2023','AHCDs@123');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 15:47:27
