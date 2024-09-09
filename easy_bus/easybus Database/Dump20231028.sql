CREATE DATABASE  IF NOT EXISTS `easybus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `easybus`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: easybus
-- ------------------------------------------------------
-- Server version	8.0.34

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
  `BusNum` int NOT NULL AUTO_INCREMENT,
  `Bustype` varchar(45) DEFAULT NULL,
  `Busname` varchar(45) DEFAULT NULL,
  `Busmodel` varchar(45) DEFAULT NULL,
  `Drivername` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `Ownername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BusNum`),
  KEY `idx_bus_Ownername` (`Ownername`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,'LUXURY','NA-2726','MITSHUBISHIROSA','M.M.ANJANA','M.M.TRAVELS','A.A. Movindu '),(2,'SEMILUXURY','NA-6324','ASHOKALEYLAND',' K.U.UDARA','S.J.TRAVELS','A.E. Sarith Maduraperuma'),(3,'LUXURY','ND-5728','TATA','D.HESHITHA','A.B.TRAVELS',' A.B.Harishchandra'),(4,'COMMON',' NE-1313',' ASHOKALEYLAND',' V.ROHITHA',' U.TRAVELS',' N. Vimukthi'),(5,'COMMON','NB-7726','ASHOKALEYLAND','A.SIRIWARDANA','N.S.E GROUP','K.B.Herath'),(6,'SEMILUXURY','NC-0786','ASHOKAI EYLAND','L.KUMARA','S. TRAVELS','O.Dissanayake'),(7,'SEMILUXURY',' NV-3746','ROSA','J.PIYAL THISERA','W.S.P GROUP','W.M. Muthukumarana');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancellation`
--

DROP TABLE IF EXISTS `cancellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `User name` varchar(45) DEFAULT NULL,
  `Reference Id` varchar(20) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Reason` varchar(100) DEFAULT NULL,
  `Bank Details` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation`
--

LOCK TABLES `cancellation` WRITE;
/*!40000 ALTER TABLE `cancellation` DISABLE KEYS */;
INSERT INTO `cancellation` VALUES (1,'Ayanaja','EB-34456','ashika32@gmail.com','I have special event on that day.','A/C NO:43215\r\n'),(2,'Dulya','EB-77889','ddgh@gmail.com','busy','A/C NO:56789');
/*!40000 ALTER TABLE `cancellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Movindu','movindu@gmail.com','774567833','Avissawella','Colombo','CID01','nanotec'),(6,'Hiran ','hiranhiran@gmail.com','0776432581','Eheliyagoda','Rathnapura','CID700','200145'),(11,'gethmin ayanaja','gethminmovindu73@gmail.com','0789065745','Rathnapura','Rathnapura','movi','movi'),(12,'sahan','sahan@gmail.com','0773425467','mathale','mathale','saha','2000'),(14,'saniru','saniru@gmail.com','0786546576','Galle','Galle','CID90','9090'),(23,'gamage','gamage@gmail.com','0786754634','Gampaha','Gampaha','gamage','2006'),(24,'sadaru','sadaru@gmail.com','0772345678','Anuradhapura','Anuradhapura','s12','234');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_details`
--

DROP TABLE IF EXISTS `reservation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_details` (
  `Reference_ID` varchar(30) NOT NULL,
  `User_name` varchar(45) DEFAULT NULL,
  `Travel_name` varchar(45) DEFAULT NULL,
  `Bus_type` varchar(20) DEFAULT NULL,
  `Model` varchar(30) DEFAULT NULL,
  `Bus_no` varchar(20) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Departure_location` varchar(30) DEFAULT NULL,
  `Arrival_location` varchar(30) DEFAULT NULL,
  `Departure_time` varchar(20) DEFAULT NULL,
  `Arrival_time` varchar(20) DEFAULT NULL,
  `Seat_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Reference_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_details`
--

LOCK TABLES `reservation_details` WRITE;
/*!40000 ALTER TABLE `reservation_details` DISABLE KEYS */;
INSERT INTO `reservation_details` VALUES ('EB-34456','Ayanaja','Kaiz','COMMON','TATA','AD-1234','2023-10-10','Maharagama','Hawlock','10:25','14:30','3,6'),('EB-77889','Anuradha','MITSUBISHI','SEMILUXURY','TATA','CD-9976','2023-10-15','Homagama','Nugegoda','12:35','16:40','8,9,7'),('EB-99807','Dulya','Gagana','Luxury','LEYLAND','AS-4567','2023-10-18','Kottawa','Thurstan','09:35','12:35','6,10');
/*!40000 ALTER TABLE `reservation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduledetails`
--

DROP TABLE IF EXISTS `scheduledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduledetails` (
  `scheduleID` varchar(12) NOT NULL,
  `departureLocation` varchar(45) NOT NULL,
  `arrivalLocation` varchar(45) NOT NULL,
  `departureDate` varchar(20) NOT NULL,
  `departureTime` varchar(20) NOT NULL,
  `arrivalDate` varchar(20) NOT NULL,
  `arrivalTime` varchar(20) NOT NULL,
  `busName` varchar(45) NOT NULL,
  `busType` varchar(45) NOT NULL,
  `routeNo` varchar(45) NOT NULL,
  `route` varchar(45) NOT NULL,
  `availableSeat` varchar(45) NOT NULL,
  `totalSeat` varchar(45) NOT NULL,
  `ticketPrice` varchar(45) NOT NULL,
  PRIMARY KEY (`scheduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduledetails`
--

LOCK TABLES `scheduledetails` WRITE;
/*!40000 ALTER TABLE `scheduledetails` DISABLE KEYS */;
INSERT INTO `scheduledetails` VALUES ('SCH-111','Kottawa','Pannipitiya','2022-10-02','09:00','2022-10-02','09:18','NC-311','LUXURY','A134','Kottawa-Pettah','4','48','Rs.15.00'),('SCH-144','Maharagama','Nugegoda','2022-10-04','16:31','2022-10-04','17:46','NG-558','COMMON','A139','Maharagama-Pettah','5','53','Rs.90.00'),('SCH-222','Kaluthara','Thurstan','2023-10-26','10:58','2023-10-26','14:00','ND-172','COMMON','B401','Kalutara-Colombo','12','55','Rs.100.00'),('SCH-256','Galle','Colombo','2022-10-03','11:10','2022-10-04','08:07','NS-234','COMMON','D567','Galle-Colombo','10','50','Rs.450.00'),('SCH-334','Panadura','Dehiwala','2022-10-01','08:00','2022-10-01','11:03','NV-374','SEMILUXURY','C103','Panadura-Colombo','9','50','Rs.50.00'),('SCH-444','Gampaha','Bambalapitiya','2023-10-20','08:18','2023-10-21','11:24','NA-374','SEMILUXURY','A501','Gampaha-Pettah','20','58','Rs.200.00');
/*!40000 ALTER TABLE `scheduledetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-28 19:20:45
