CREATE DATABASE  IF NOT EXISTS `gameantoniojacob` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gameantoniojacob`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: gameantoniojacob
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` decimal(5,0) NOT NULL,
  `RegistrationDate` date DEFAULT NULL,
  `PhoneNum` char(10) DEFAULT NULL,
  `CreditCardNum` decimal(16,0) DEFAULT NULL,
  `Name` varchar(150) NOT NULL,
  `Address` varchar(150) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (12345,'2022-04-15','5552345678',1,'Antonio Rodriguez','315 Grandfather Lane'),(23456,'2020-03-23','5553456789',2,'Jacob Olmos','617 Clock Street'),(34567,'2021-06-02','5554567890',3,'Ilan Tavares','521 Emperor New Grove'),(45678,'2018-06-18','5555678901',4,'Nicolle Metzger','923 Chipotle Street'),(56789,'2017-02-23','8307757577',987234587695692,'James Tyler','112 Elmer Drive'),(67890,'2019-03-12','6663134576',8274927368393938,'Hector Reems','223 Main Street'),(78901,'2022-01-14','9896378562',9276398657808543,'Reyna Pal','2324 W Avenue N'),(89012,'2019-05-20','9378294353',1111222233334444,'Paco White','909 Creal Drive');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `address` varchar(150) NOT NULL,
  `phoneNumber` decimal(11,0) DEFAULT NULL,
  `AccountNum` decimal(9,0) DEFAULT NULL,
  `DistributorID` decimal(9,0) NOT NULL,
  PRIMARY KEY (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES ('1830 N Bryant Blvd, San Angelo, TX 76903',5557890123,3214,3),('4425 Sherwood Way, San Angelo, TX 76904',5551234567,1321,5);
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `DateHired` date DEFAULT NULL,
  `EmployeeID` decimal(9,0) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PositionName` char(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `PositionName` (`PositionName`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`PositionName`) REFERENCES `employeeposition` (`PositionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('2022-11-26',2456,'Antonio Rodriguez','315 Grandfather Lane, Del Rio, Texas 78840','Order Processor'),('2022-11-26',2459,'Jacob Olmos','617 Clock Street, Del Rio, Texas 78840','Order Processor'),('2022-11-27',2958,'Timothy Tim Xayavong','245 Dremm Drive','Stocker'),('2022-11-27',7293,'Kate Ybarra','748 Astra Avenue','Cashier');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeposition`
--

DROP TABLE IF EXISTS `employeeposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeposition` (
  `PositionName` char(50) NOT NULL,
  `Salary` decimal(5,0) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`PositionName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeposition`
--

LOCK TABLES `employeeposition` WRITE;
/*!40000 ALTER TABLE `employeeposition` DISABLE KEYS */;
INSERT INTO `employeeposition` VALUES ('Cashier',14000,'Take care of customer\'s orders'),('Order Processor',45000,'everything with orders'),('Stocker',13000,'Stocks the shelves');
/*!40000 ALTER TABLE `employeeposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `Quantity` decimal(10,0) DEFAULT NULL,
  `OrderID` varchar(20) NOT NULL,
  `EmployeeID` decimal(10,0) DEFAULT NULL,
  `DistributorID` decimal(9,0) DEFAULT NULL,
  `GameTitle` varchar(50) NOT NULL,
  `Platform` char(50) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `DistributorID` (`DistributorID`),
  KEY `GameTitle` (`GameTitle`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`DistributorID`) REFERENCES `distributor` (`DistributorID`),
  CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`GameTitle`) REFERENCES `videogame` (`GameTitle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,'1234',2456,3,'God of War: Ragnarok','PS4/5'),(1,'1235',2456,5,'Pokemon Scarlet','Switch'),(1,'1236',2459,5,'Sonic Frontiers','All');
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseordercustomer`
--

DROP TABLE IF EXISTS `purchaseordercustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseordercustomer` (
  `CustomerOrderDate` date DEFAULT NULL,
  `PurchaseNum` decimal(9,0) NOT NULL,
  `Quantity` decimal(9,0) DEFAULT NULL,
  `GameTitle` varchar(50) NOT NULL,
  `Platform` char(50) DEFAULT NULL,
  `Shipped` char(20) DEFAULT NULL,
  `CustomerID` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`PurchaseNum`),
  KEY `GameTitle` (`GameTitle`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `purchaseordercustomer_ibfk_1` FOREIGN KEY (`GameTitle`) REFERENCES `videogame` (`GameTitle`),
  CONSTRAINT `purchaseordercustomer_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseordercustomer`
--

LOCK TABLES `purchaseordercustomer` WRITE;
/*!40000 ALTER TABLE `purchaseordercustomer` DISABLE KEYS */;
INSERT INTO `purchaseordercustomer` VALUES ('2022-11-26',45,1,'God of War: Ragnarok','PS4/5','shipped',12345),('2022-11-26',46,1,'Pokemon Scarlet','Switch','shipped',34567),('2022-09-22',47,1,'Sonic Frontiers','All','shipped',56789);
/*!40000 ALTER TABLE `purchaseordercustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnitem`
--

DROP TABLE IF EXISTS `returnitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returnitem` (
  `ReturnNum` decimal(5,0) NOT NULL,
  `Quantity` decimal(5,0) DEFAULT NULL,
  `GameTitle` varchar(50) NOT NULL,
  `Platform` char(50) DEFAULT NULL,
  `CustomerID` decimal(5,0) DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  PRIMARY KEY (`ReturnNum`),
  KEY `CustomerID` (`CustomerID`),
  KEY `GameTitle` (`GameTitle`),
  CONSTRAINT `returnitem_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `returnitem_ibfk_2` FOREIGN KEY (`GameTitle`) REFERENCES `videogame` (`GameTitle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnitem`
--

LOCK TABLES `returnitem` WRITE;
/*!40000 ALTER TABLE `returnitem` DISABLE KEYS */;
INSERT INTO `returnitem` VALUES (76544,1,'Pokemon Scarlet','Switch',34567,'2022-11-26');
/*!40000 ALTER TABLE `returnitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment`
--

DROP TABLE IF EXISTS `shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment` (
  `GameTitle` varchar(50) NOT NULL,
  `Platform` char(50) DEFAULT NULL,
  `EmployeeID` decimal(9,0) DEFAULT NULL,
  `ShipmentNum` decimal(20,0) NOT NULL,
  `TrackingNum` decimal(20,0) DEFAULT NULL,
  `TrackingCarrier` char(50) DEFAULT NULL,
  `CustomerID` decimal(5,0) DEFAULT NULL,
  `Quantity` decimal(9,0) DEFAULT NULL,
  `shipmentDate` date DEFAULT NULL,
  PRIMARY KEY (`ShipmentNum`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment`
--

LOCK TABLES `shipment` WRITE;
/*!40000 ALTER TABLE `shipment` DISABLE KEYS */;
INSERT INTO `shipment` VALUES ('Sonic Frontiers','All',2459,825,927,'USPS',56789,1,'2022-09-22'),('God of War: Ragnarok','PS4/5',2456,859,889,'USPS',12345,1,'2022-11-26'),('Pokemon Scarlet','Switch',2456,860,890,'USPS',34567,1,'2022-11-26');
/*!40000 ALTER TABLE `shipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videogame`
--

DROP TABLE IF EXISTS `videogame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videogame` (
  `GameTitle` varchar(50) NOT NULL,
  `Platform` char(50) DEFAULT NULL,
  `Price` decimal(5,2) DEFAULT NULL,
  `Publisher` varchar(100) NOT NULL,
  `DistributorID` decimal(9,0) DEFAULT NULL,
  `ESRBRating` varchar(50) DEFAULT NULL,
  `Quantity` decimal(5,0) DEFAULT NULL,
  `WholeSalePrice` decimal(9,0) DEFAULT NULL,
  `Genre` char(50) DEFAULT NULL,
  PRIMARY KEY (`GameTitle`),
  KEY `DistributorID` (`DistributorID`),
  CONSTRAINT `videogame_ibfk_1` FOREIGN KEY (`DistributorID`) REFERENCES `distributor` (`DistributorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogame`
--

LOCK TABLES `videogame` WRITE;
/*!40000 ALTER TABLE `videogame` DISABLE KEYS */;
INSERT INTO `videogame` VALUES ('Call of Duty: Modern Warfare II','All',70.00,'Activision',3,'M',1000,50000,'Shooter'),('Dragon Ball: The Breaker','All',30.00,'BANDAI NAMCO AMERICA',5,'T',500,10000,'Action'),('God of War: Ragnarok','PS4/5',60.00,'Playstation',3,'M',1000,50000,'RPG/Action'),('Gotham Knights','All',70.00,'Warner Bros. Interactive Entermainment',3,'T',1000,60000,'Action'),('Halo Inifinte','Xbox',20.00,'Microsoft',5,'T',1000,30000,'Shooter'),('Immortality','Xbox',15.00,'Half Mermaid',3,'M',1000,35000,'Adventure'),('Mario Party Superstars','Switch',60.00,'Nintendo',5,'E',1000,50000,'Party'),('Ori and the Will of the Wisps','Xbox',60.00,'Moon Studios',5,'T',1000,50000,'Platformer'),('PGA Tour 2K23','All',70.00,'2K',5,'E',1000,60000,'Sports'),('Pokemon Scarlet','Switch',60.00,'Nintendo',5,'E',1000,50000,'RPG/Adventure'),('Pokemon Violet','Switch',60.00,'Nintendo',5,'E',1000,50000,'RPG/Adventure'),('Quantum Break','Xbox',60.00,'Rememdy Entertainment',3,'M',1000,50000,'Action'),('Sable','Xbox',20.00,'Shedworks',5,'E',1000,30000,'Adventure'),('Sonic Frontiers','All',60.00,'SEGA',5,'E 10+',1000,50000,'Platform/Action'),('Sunset Overdrive','Xbox',30.00,'Insomniac Games',5,'T',1000,10000,'Action');
/*!40000 ALTER TABLE `videogame` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-12  2:16:54
