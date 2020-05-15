-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atagvn
-- ------------------------------------------------------
-- Server version	8.0.20

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
CREATE DATABASE `atagvn`;
use atagvn;
USE `classicmodels`;
--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountID` varchar(20) NOT NULL,
  `accountName` varchar(255) NOT NULL,
  `LoginName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `accountAccess` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `gender` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`accountID`),
  UNIQUE KEY `accountID` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('AD1','Thinh Bui','mrthinh2502','thinhba',1,'Moon City','0969357766',1,1),('CT1','Linh Hoang','linhhm','linh123',0,'111 Van Cao','0913026630',0,0),('CT2','Binh Nguyen','binh491','binh123',0,'50 Pham Hung','0969358899',1,0),('CT3','Huynh Bui','huynhhuynh','huynhbui123',0,'Royal City','0966351299',0,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderID` varchar(20) NOT NULL,
  `accountID` varchar(20) NOT NULL,
  `orderDate` date NOT NULL,
  `shippedDate` date NOT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  UNIQUE KEY `orderID` (`orderID`),
  KEY `accountID` (`accountID`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('OD010501','CT2','2020-05-01','2020-05-05','Banking',1),('OD050501','CT3','2020-05-05','2020-06-05','Mobile Money',1),('OD100501','CT1','2020-05-10','2020-11-05','COD',1),('OD300401','CT1','2020-04-30','2020-02-05','COD',1),('OD300402','CT3','2020-04-30','2020-03-05','COD',1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `ID` varchar(20) NOT NULL,
  `OrderID` varchar(20) NOT NULL,
  `ProductID` varchar(20) NOT NULL,
  `Quantity` int NOT NULL,
  `PriceEach` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `OrderID` (`OrderID`),
  KEY `ProductID` (`ProductID`),
  CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order` (`orderID`),
  CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES ('OP0001','OD300401','SSGAF',1,50000000),('OP0002','OD300402','IP73',3,12990000),('OP0003','OD300402','IP1164',1,30190000),('OP0004','OD010501','SSGA11',2,3690000),('OP0005','OD050501','SSGAS2P',1,23990000),('OP0006','OD100501','IP11PM2',1,37990000);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productID` varchar(20) NOT NULL,
  `productLineID` varchar(20) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` float NOT NULL,
  `quantityInStock` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productID`),
  UNIQUE KEY `productID` (`productID`),
  KEY `productLineID` (`productLineID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productLineID`) REFERENCES `productline` (`productLineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('IP112','AAPL','Iphone 11 256GB',25690000,20,'White','Apple'),('IP1164','AAPL','Iphone 11 64 GB',21690000,50,'Red','Apple'),('IP11P6','AAPL','Iphone 11 Pro 64 GB',30190000,40,'Black','Apple'),('IP11PM2','AAPL','Iphone 11 Pro Max 256GB',37990000,30,'Black','Apple'),('IP11PM5','AAPL','Iphone 11 Pro Max 512GB',41990000,20,'Pink','Apple'),('IP11PM6','AAPL','Iphone 11 Pro Max 64GB',33990000,30,'Silver','Apple'),('IP73','AAPL','Iphone 7 32 GB',12990000,5,'Pink','Apple'),('IP8P6','AAPL','Iphone 8 Plus 64 GB',14990000,10,'Pink','Apple'),('IPXM6','AAPL','Iphone Xs Max 64 GB',25990000,50,'Pink','Apple'),('IPXSM2','AAPL','Iphone Xs Max 256GB',33990000,25,'Black','Apple'),('SSGA11','0593XQ','Galaxy A11',3690000,50,'Blue','SamSung'),('SSGA31','0593XQ','Galaxy A31',6490000,20,'Silver','SamSung'),('SSGAA8','0593XQ','Galaxy A80',14990000,20,'Pink','SamSung'),('SSGAF','0593XQ','Galaxy Ford',50000000,30,'Black & While','SamSung'),('SSGAN1','0593XQ','Galaxy N10',22990000,15,'Blue','SamSung'),('SSGAN1L','0593XQ','Galaxy Note 10 Lite',12490000,35,'Silver','SamSung'),('SSGAN1P','0593XQ','Galaxy Note 10+',26990000,25,'Blue','SamSung'),('SSGAS2P','0593XQ','Galaxy S20+',23990000,50,'Blue','SamSung'),('SSGAS2U','0593XQ','Galaxy S20 Ultra',29990000,40,'Black','SamSung'),('SSGAZF','0593XQ','Galaxy Z Flip',36000000,10,'Black & While','SamSung');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productline`
--

DROP TABLE IF EXISTS `productline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productline` (
  `productLineID` varchar(20) NOT NULL,
  `productLineName` varchar(255) NOT NULL,
  PRIMARY KEY (`productLineID`),
  UNIQUE KEY `productLineID` (`productLineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productline`
--

LOCK TABLES `productline` WRITE;
/*!40000 ALTER TABLE `productline` DISABLE KEYS */;
INSERT INTO `productline` VALUES ('0593XQ','SamSung'),('AAPL','Apple');
/*!40000 ALTER TABLE `productline` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-14 22:41:38
