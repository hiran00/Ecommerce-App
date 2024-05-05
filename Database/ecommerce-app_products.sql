-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce-app
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pId` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) DEFAULT NULL,
  `pdetails` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `pcategory` varchar(45) DEFAULT NULL,
  `availability` varchar(45) DEFAULT NULL,
  `pimage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (4,'Samsung Galaxy S24+','(12GB RAM | 256GB ROM)','266990','samsung','outofstock','Samsung Galaxy S24 plus.jpg'),(5,'Samsung Galaxy S23 ','(8GB RAM | 128GB ROM)','194990','samsung','outofstock','Samsung Galaxy S23.jpg'),(6,'Samsung Galaxy S22 5G ','(8GB RAM | 256GB ROM)','189990','samsung','outofstock','Samsung Galaxy S22 5G.jpg'),(7,'Samsung Galaxy S21 5G ','(8GB RAM | 256GB ROM)','124990','samsung','instock','Samsung Galaxy S21 FE 5G.jpg'),(8,'Samsung Galaxy A35 5G ','(8GB RAM | 256GB ROM)','104990','samsung','instock','Samsung Galaxy A35.jpg'),(9,'Apple iPhone 15 Pro Max','512GB [DIRECT IMPORT]','444990','apple','instock','Apple iPhone 15 Pro Max.jpg'),(11,'Apple iPhone 14 Pro Max','256GB [DIRECT IMPORT]','398990','apple','instock','Apple iPhone 14 Pro Max.jpg'),(12,'Apple iPhone 15 ','128GB [DIRECT IMPORT]','231990','apple','instock','Apple iPhone 15.jpg'),(13,'Apple iPhone 12 ','128GB [DIRECT IMPORT]','162990','apple','instock','apple-iphone-12.jpg'),(14,'Apple iPhone 14 ','128GB [DIRECT IMPORT]','198990','apple','instock','Apple iPhone 14.jpg'),(18,'Baseus Lens Film','for iPhone 14 / 14 Plus','3500','accessories','outofstock','Baseus Lens Film For iPhone 14.jpg'),(19,'Fast Charging Wall Charger','Supporting iPhone 12 PD 20W','4990','accessories','instock','Joyroom Wall Charger.jpg'),(21,'Sam Headset Protective Case ','for Galaxy Buds Live','1990','accessories','instock','Sam Headset Protective Case.jpg'),(22,'Spigen Tough Armor Case ','for Apple iPhone 12','10900','accessories','instock','Spigen Tough Armor Case.jpg'),(24,'15W PD Power Adapter','USB PD Type-C Port','6900','accessories','outofstock','Samsung Power Adapter.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05 21:24:08
