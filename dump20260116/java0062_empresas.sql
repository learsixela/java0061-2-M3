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
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `sector_id` int NOT NULL,
  `pais_id` int NOT NULL,
  `sitio_web` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sector_id_idx` (`sector_id`),
  KEY `fk_pais_id_idx` (`pais_id`),
  CONSTRAINT `fk_pais_id` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`),
  CONSTRAINT `fk_sector_id` FOREIGN KEY (`sector_id`) REFERENCES `sectores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'AlfaSoft',1,1,'https://alfasoft.example'),(2,'BioNova',2,2,'https://bionova.example'),(3,'Café Andino',3,3,'https://cafeandino.example'),(4,'DeltaLog',4,4,'https://deltalog.example'),(5,'EcoSolar',5,5,'https://ecosolar.example'),(6,'FinPulse',6,6,'https://finpulse.example'),(7,'GreenBuild',7,1,'https://greenbuild.example'),(8,'HiperRetail',8,7,'https://hiperretail.example'),(9,'InnovaEdu',9,8,'https://innovaedu.example'),(10,'JadeHealth',10,9,'');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-16 10:19:01
