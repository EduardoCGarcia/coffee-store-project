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
-- Table structure for table `Capuccino`
--

DROP TABLE IF EXISTS `Capuccino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Capuccino` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_SABOR` int DEFAULT NULL,
  `ID_TAMANO` int DEFAULT NULL,
  `ID_TIPO_BEBIDA` int DEFAULT NULL,
  `PRECIO` decimal(10,2) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Capuccino`
--

LOCK TABLES `Capuccino` WRITE;
/*!40000 ALTER TABLE `Capuccino` DISABLE KEYS */;
INSERT INTO `Capuccino` VALUES (1,8,2,1,50.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(2,9,2,1,50.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(3,10,2,1,50.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(4,11,2,1,50.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(5,12,2,1,50.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(6,13,2,1,45.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(7,8,3,1,57.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(8,9,3,1,57.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(9,10,3,1,57.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(10,11,3,1,57.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(11,12,3,1,57.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(12,13,3,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg');
/*!40000 ALTER TABLE `Capuccino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clasicos`
--

DROP TABLE IF EXISTS `Clasicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clasicos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `ID_TAMANO` int DEFAULT NULL,
  `ID_TIPO_BEBIDA` int DEFAULT NULL,
  `PRECIO` decimal(10,2) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clasicos`
--

LOCK TABLES `Clasicos` WRITE;
/*!40000 ALTER TABLE `Clasicos` DISABLE KEYS */;
INSERT INTO `Clasicos` VALUES (1,'ESPRESSO',1,1,27.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(2,'ESPRESSO DOBLE',1,1,35.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(3,'CARAMEL MACHIATO',1,1,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(4,'CHOCOLATE',1,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(5,'CHOCOLATE BLANCO',1,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(6,'TARO',1,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(7,'CHAI',1,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(8,'MATCHA LATTE',1,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(9,'CHOCO-MENTA',1,1,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(10,'INFUSION ENCANTUM',1,1,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(11,'INFUSION',1,1,30.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(12,'AMERICANO',2,1,35.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(13,'CAPUCCINO',2,1,45.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(14,'MOKACCINO',2,1,45.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(15,'LATTE',2,1,45.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(16,'BOMBÓN',2,1,45.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(17,'AMERICANO',3,1,40.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(18,'CAPUCCINO',3,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(19,'MOKACCINO',3,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(20,'LATTE',3,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(21,'BOMBÓN',3,1,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(22,'ICED AMERICANO',1,2,40.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(23,'ICED LATTE',1,2,52.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(24,'AFFOGATO',1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(25,'ICED CARAMEL MACHIATO',1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg');
/*!40000 ALTER TABLE `Clasicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Frappe`
--

DROP TABLE IF EXISTS `Frappe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Frappe` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_SABOR` int DEFAULT NULL,
  `ID_TAMANO` int DEFAULT NULL,
  `ID_TIPO_BEBIDA` int DEFAULT NULL,
  `PRECIO` decimal(10,2) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Frappe`
--

LOCK TABLES `Frappe` WRITE;
/*!40000 ALTER TABLE `Frappe` DISABLE KEYS */;
INSERT INTO `Frappe` VALUES (1,2,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(2,14,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(3,15,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(4,16,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(5,17,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(6,18,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(7,19,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(8,20,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(9,21,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(10,22,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg');
/*!40000 ALTER TABLE `Frappe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ice`
--

DROP TABLE IF EXISTS `Ice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_SABOR` int DEFAULT NULL,
  `ID_TAMANO` int DEFAULT NULL,
  `ID_TIPO_BEBIDA` int DEFAULT NULL,
  `PRECIO` decimal(10,2) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ice`
--

LOCK TABLES `Ice` WRITE;
/*!40000 ALTER TABLE `Ice` DISABLE KEYS */;
INSERT INTO `Ice` VALUES (1,1,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(2,2,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(3,4,1,2,55.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg');
/*!40000 ALTER TABLE `Ice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sabor`
--

DROP TABLE IF EXISTS `Sabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sabor` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Sabor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sabor`
--

LOCK TABLES `Sabor` WRITE;
/*!40000 ALTER TABLE `Sabor` DISABLE KEYS */;
INSERT INTO `Sabor` VALUES (1,'LIMON'),(2,'CEREZA'),(3,'FRESA'),(4,'UVA'),(5,'BLUE BERRY'),(6,'MANZANA VERDE'),(7,'FRUTOS ROJOS'),(8,'AVELLANA'),(9,'ROMPOPE'),(10,'TIRAMISU'),(11,'CREMA IRLANDESA'),(12,'CAJETA'),(13,'SOLO'),(14,'CAPPUCCINO'),(15,'CARAMEL'),(16,'CHOCOLATE'),(17,'OREO'),(18,'MATCHA'),(19,'TARO'),(20,'CHICLE'),(21,'CHAI'),(22,'ROMPOPE');
/*!40000 ALTER TABLE `Sabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Soda`
--

DROP TABLE IF EXISTS `Soda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Soda` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_TIPO_SODA` int DEFAULT NULL,
  `ID_SABOR` int DEFAULT NULL,
  `ID_TAMANO` int DEFAULT NULL,
  `ID_TIPO_BEBIDA` int DEFAULT NULL,
  `PRECIO` decimal(10,2) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Soda`
--

LOCK TABLES `Soda` WRITE;
/*!40000 ALTER TABLE `Soda` DISABLE KEYS */;
INSERT INTO `Soda` VALUES (1,1,1,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(2,1,2,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(3,1,3,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(4,1,4,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(5,1,5,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(6,1,6,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(7,2,4,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg'),(8,2,5,1,2,48.00,'https://hips.hearstapps.com/hmg-prod/images/hufflepuff-1571664671.jpg');
/*!40000 ALTER TABLE `Soda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tamano`
--

DROP TABLE IF EXISTS `Tamano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tamano` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tamano` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tamano`
--

LOCK TABLES `Tamano` WRITE;
/*!40000 ALTER TABLE `Tamano` DISABLE KEYS */;
INSERT INTO `Tamano` VALUES (1,'UNICO'),(2,'MEDIANO'),(3,'GRANDE'),(4,'REBANADA'),(5,'COMPLETO');
/*!40000 ALTER TABLE `Tamano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoBebida`
--

DROP TABLE IF EXISTS `TipoBebida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoBebida` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoBebida`
--

LOCK TABLES `TipoBebida` WRITE;
/*!40000 ALTER TABLE `TipoBebida` DISABLE KEYS */;
INSERT INTO `TipoBebida` VALUES (1,'CALIENTE'),(2,'FRIA');
/*!40000 ALTER TABLE `TipoBebida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoSoda`
--

DROP TABLE IF EXISTS `TipoSoda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TipoSoda` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoSoda`
--

LOCK TABLES `TipoSoda` WRITE;
/*!40000 ALTER TABLE `TipoSoda` DISABLE KEYS */;
INSERT INTO `TipoSoda` VALUES (1,'ITALIANA'),(2,'COREANA');
/*!40000 ALTER TABLE `TipoSoda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-07 19:33:49
