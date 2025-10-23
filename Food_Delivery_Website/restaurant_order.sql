CREATE DATABASE  IF NOT EXISTS `restaurant` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurant`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `restaurantId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `orderDate` varchar(255) DEFAULT NULL,
  `totalAmount` double DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `paymentMode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,5,3,'2025-07-22 01:40:53.119',230,'Delivered','Cash on Delivery','Vijayanagar, Bengaluru'),(2,3,3,'2025-07-22 01:57:56.233',780,'Delivered','Cash on Delivery','BTM, Bengaluru'),(3,2,3,'2025-07-22 02:08:55.533',410,'Cancelled','UPI','Dharmapuri, TamilNadu'),(4,2,3,'2025-07-22 02:45:35.318',140,'Delivered','Credit/Debit Card','Dharmapuri, TamilNadu'),(5,4,3,'2025-07-22 16:42:50.187',350,'Cancelled','UPI','BTM, Bengaluru'),(6,4,3,'2025-07-22 16:42:50.364',350,'Delivered','UPI','BTM, Bengaluru'),(7,5,3,'2025-07-22 16:48:54.082',360,'Delivered','UPI','BTM, Bengaluru'),(8,6,3,'2025-07-22 17:13:33.645',180,'Pending','UPI','Dharmapuri, Tamil Nadu'),(9,7,3,'2025-07-22 17:26:23.109',330,'Pending','Cash on Delivery','Dharmapuri, Tamil Nadu'),(10,1,3,'2025-07-22 18:31:53.266',120,'Pending','Cash on Delivery','Vijayanagar, Bengaluru'),(11,3,3,'2025-07-22 18:53:22.022',200,'Pending','Cash on Delivery','BTM, Bengaluru'),(12,7,3,'2025-07-22 20:20:57.609',190,'Pending','UPI','Dharmapuri, Tamil Nadu'),(13,4,3,'2025-07-22 20:27:50.62',240,'Pending','Cash on Delivery','Dharmapuri, Tamil nadu'),(14,3,3,'2025-07-23 21:08:37.14',540,'Pending','Cash on Delivery','BTM, Bengaluru'),(15,2,3,'2025-09-07 13:30:27.012',140,'Pending','Cash on Delivery','BTM, Bengaluru');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-07 14:04:07
