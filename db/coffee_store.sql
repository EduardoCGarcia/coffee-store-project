-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: coffee_store
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `beverage_type`
--

DROP TABLE IF EXISTS `beverage_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beverage_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beverage_type`
--

LOCK TABLES `beverage_type` WRITE;
/*!40000 ALTER TABLE `beverage_type` DISABLE KEYS */;
INSERT INTO `beverage_type` VALUES (1,'CALIENTE'),(2,'FRIA');
/*!40000 ALTER TABLE `beverage_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flavor`
--

DROP TABLE IF EXISTS `flavor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flavor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flavor_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flavor`
--

LOCK TABLES `flavor` WRITE;
/*!40000 ALTER TABLE `flavor` DISABLE KEYS */;
INSERT INTO `flavor` VALUES (1,'LIMON'),(2,'CEREZA'),(3,'FRESA'),(4,'UVA'),(5,'BLUE BERRY'),(6,'MANZANA VERDE'),(7,'FRUTOS ROJOS'),(8,'AVELLANA'),(9,'ROMPOPE'),(10,'TIRAMISU'),(11,'CREMA IRLANDESA'),(12,'CAJETA'),(13,'SOLO'),(14,'CAPPUCCINO'),(15,'CARAMEL'),(16,'CHOCOLATE'),(17,'OREO'),(18,'MATCHA'),(19,'TARO'),(20,'CHICLE'),(21,'CHAI'),(22,'ROMPOPE');
/*!40000 ALTER TABLE `flavor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `flavor_id` int DEFAULT NULL,
  `size_id` int DEFAULT NULL,
  `beverage_type_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'ESPRESSO',13,1,1,27.00,'url1'),(2,'ESPRESSO DOBLE',13,1,1,35.00,'url2'),(3,'CARAMEL MACHIATO',13,1,1,55.00,'url3'),(4,'CHOCOLATE',13,1,1,52.00,'url4'),(5,'CHOCOLATE BLANCO',13,1,1,52.00,'url5'),(6,'TARO',13,1,1,52.00,'url6'),(7,'CHAI',13,1,1,52.00,'url7'),(8,'MATCHA LATTE',13,1,1,52.00,'url8'),(9,'CHOCO-MENTA',13,1,1,55.00,'url9'),(10,'INFUSION ENCANTUM',13,1,1,48.00,'url10'),(11,'INFUSION',13,1,1,30.00,'url11'),(12,'AMERICANO',13,2,1,35.00,'url12'),(13,'CAPUCCINO',13,2,1,45.00,'url13'),(14,'MOKACCINO',13,2,1,45.00,'url14'),(15,'LATTE',13,2,1,45.00,'url15'),(16,'BOMBÓN',13,2,1,45.00,'url16'),(17,'AMERICANO',13,3,1,40.00,'url17'),(18,'CAPUCCINO',13,3,1,52.00,'url18'),(19,'MOKACCINO',13,3,1,52.00,'url19'),(20,'LATTE',13,3,1,52.00,'url20'),(21,'BOMBÓN',13,3,1,52.00,'url21'),(22,'ICED AMERICANO',13,1,2,40.00,'url22'),(23,'ICED LATTE',13,1,2,52.00,'url23'),(24,'AFFOGATO',13,1,2,55.00,'url24'),(25,'ICED CARAMEL MACHIATO',13,1,2,55.00,'url25'),(26,'SODA',1,1,2,48.00,'url26'),(27,'SODA',2,1,2,48.00,'url27'),(28,'SODA',3,1,2,48.00,'url28'),(29,'SODA',4,1,2,48.00,'url29'),(30,'SODA',5,1,2,48.00,'url30'),(31,'SODA',6,1,2,48.00,'url31'),(32,'SODA',4,1,2,48.00,'url32'),(33,'SODA',5,1,2,48.00,'url33'),(34,'CAPUCCINO',8,2,1,50.00,'url34'),(35,'CAPUCCINO',9,2,1,50.00,'url35'),(36,'CAPUCCINO',10,2,1,50.00,'url36'),(37,'CAPUCCINO',11,2,1,50.00,'url37'),(38,'CAPUCCINO',12,2,1,50.00,'url38'),(39,'CAPUCCINO',13,2,1,45.00,'url39'),(40,'CAPUCCINO',8,3,1,57.00,'url40'),(41,'CAPUCCINO',9,3,1,57.00,'url41'),(42,'CAPUCCINO',10,3,1,57.00,'url42'),(43,'CAPUCCINO',11,3,1,57.00,'url43'),(44,'CAPUCCINO',12,3,1,57.00,'url44'),(45,'CAPUCCINO',13,3,1,52.00,'url45'),(46,'ICE',1,1,2,55.00,'url46'),(47,'ICE',2,1,2,55.00,'url47'),(48,'ICE',4,1,2,55.00,'url48');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'UNICO'),(2,'MEDIANO'),(3,'GRANDE'),(4,'REBANADA'),(5,'COMPLETO');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soda_type`
--

DROP TABLE IF EXISTS `soda_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soda_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soda_type`
--

LOCK TABLES `soda_type` WRITE;
/*!40000 ALTER TABLE `soda_type` DISABLE KEYS */;
INSERT INTO `soda_type` VALUES (1,'ITALIANA'),(2,'COREANA');
/*!40000 ALTER TABLE `soda_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-09 14:44:50
