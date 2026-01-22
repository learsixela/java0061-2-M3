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
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `empresa_id` int NOT NULL,
  `cargo_id` int NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `fecha_alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_empresa_id_idx` (`empresa_id`),
  KEY `fk_cargo_id_idx` (`cargo_id`),
  CONSTRAINT `fk_cargo_id` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  CONSTRAINT `fk_empresa_id` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'Lucía','Rodríguez','lucía.rodríguez@alfasoft.example',1,21,'+34 639958838','2025-08-05'),(2,'Andrés','Rodríguez','andrés.rodríguez@innovaedu.example',9,4,'+34 666629388','2025-07-09'),(3,'Ana','Rodríguez','ana.rodríguez@deltalog.example',4,14,'+34 690801586','2025-07-07'),(4,'Valeria','Martínez','valeria.martínez@innovaedu.example',9,12,'+34 670291817','2025-11-28'),(5,'Sofía','Herrera','sofía.herrera@alfasoft.example',1,15,'+34 655667651','2025-09-10'),(6,'María','Martínez','maría.martínez@finpulse.example',6,3,'+34 660992979','2025-07-25'),(7,'Jorge','Castro','jorge.castro@finpulse.example',6,11,'+34 615831819','2025-10-26'),(8,'Valeria','Rodríguez','valeria.rodríguez@greenbuild.example',7,1,'+34 649349722','2025-12-08'),(9,'Pablo','Mendoza','pablo.mendoza@finpulse.example',6,7,'+34 619335534','2025-07-12'),(10,'Lucía','Martínez','lucía.martínez@ecosolar.example',5,2,'+34 623556182','2025-10-06'),(11,'Sofía','Díaz','sofía.díaz@finpulse.example',6,16,'+34 657683626','2025-08-23'),(12,'Lucía','Sánchez','lucía.sánchez@bionova.example',2,9,'+34 681691040','2025-09-01'),(13,'María','Díaz','maría.díaz@greenbuild.example',7,20,'+34 639476249','2025-12-23'),(14,'Jorge','Castro','jorge.castro@alfasoft.example',1,19,'+34 652339391','2025-10-11'),(15,'Sofía','Rodríguez','sofía.rodríguez@deltalog.example',4,8,'+34 638538251','2025-12-15'),(16,'Diego','Gómez','diego.gómez@hiperretail.example',8,18,'+34 628740864','2025-09-02'),(17,'Andrés','Vargas','andrés.vargas@innovaedu.example',9,22,'+34 667503414','2025-11-27'),(18,'Elena','Pérez','elena.pérez@deltalog.example',4,14,'+34 676238574','2025-07-24'),(19,'Camila','García','camila.garcía@bionova.example',2,17,'+34 666661351','2025-11-30'),(20,'Luis','Gómez','luis.gómez@greenbuild.example',7,6,'+34 681016525','2025-09-03'),(21,'Valeria','Castro','valeria.castro@alfasoft.example',1,1,'+34 645812670','2025-12-12'),(22,'Jorge','Rodríguez','jorge.rodríguez@ecosolar.example',5,13,'+34 670897765','2025-07-01'),(23,'Andrés','Mendoza','andrés.mendoza@ecosolar.example',5,9,'+34 678139880','2025-07-28'),(24,'Mateo','Navarro','mateo.navarro@ecosolar.example',5,10,'+34 636697396','2025-08-09'),(25,'Jorge','Herrera','jorge.herrera@caféandino.example',3,5,'+34 610076758','2025-12-01');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-16 10:19:03
