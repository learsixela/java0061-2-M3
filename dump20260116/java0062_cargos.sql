-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: java0062
-- ------------------------------------------------------
-- Server version	8.0.42

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
use java0062;
--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Analista de Atención al cliente'),(2,'Analista de Finanzas'),(3,'Analista de Marketing'),(4,'Analista de Producto'),(5,'Coordinador/a de Atención al cliente'),(6,'Coordinador/a de Compras'),(7,'Coordinador/a de Finanzas'),(8,'Coordinador/a de IT'),(9,'Coordinador/a de Operaciones'),(10,'Coordinador/a de Producto'),(11,'Coordinador/a de RR.HH.'),(12,'Director/a de Finanzas'),(13,'Director/a de Operaciones'),(14,'Gerente de Atención al cliente'),(15,'Gerente de Dirección'),(16,'Gerente de IT'),(17,'Gerente de Operaciones'),(18,'Gerente de RR.HH.'),(19,'Gerente de Ventas'),(20,'Jefe de Atención al cliente'),(21,'Jefe de Finanzas'),(22,'Jefe de Producto');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-16 10:19:02
