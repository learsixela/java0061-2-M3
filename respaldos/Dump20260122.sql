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

--
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT '1900-01-01',
  `nacionalidad` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canales`
--

DROP TABLE IF EXISTS `canales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canales`
--

LOCK TABLES `canales` WRITE;
/*!40000 ALTER TABLE `canales` DISABLE KEYS */;
INSERT INTO `canales` VALUES (1,'Email'),(2,'Llamada'),(3,'Otro'),(4,'Reunión'),(5,'WhatsApp');
/*!40000 ALTER TABLE `canales` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `salario` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  CONSTRAINT `chk_salario` CHECK ((`salario` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'ayun',10.00);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'AlfaSoft',1,1,'https://alfasoft.example'),(2,'BioNova',2,2,'https://bionova.example'),(3,'Café Andino',3,3,'https://cafeandino.example'),(4,'DeltaLog',4,4,'https://deltalog.example'),(5,'EcoSolar',5,5,'https://ecosolar.example'),(6,'FinPulse',6,6,'https://finpulse.example'),(7,'GreenBuild',7,1,'https://greenbuild.example'),(8,'HiperRetail',8,7,'https://hiperretail.example'),(9,'InnovaEdu',9,8,'https://innovaedu.example'),(10,'JadeHealth',10,9,'https://jadehealth.example'),(11,'Marketpos',10,4,'https://marketpos.example');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `ano_publicacion` int DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monedas`
--

DROP TABLE IF EXISTS `monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monedas` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo` char(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monedas`
--

LOCK TABLES `monedas` WRITE;
/*!40000 ALTER TABLE `monedas` DISABLE KEYS */;
/*!40000 ALTER TABLE `monedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (5,'Argentina'),(10,'Brasil'),(4,'Chile'),(3,'Colombia'),(8,'Costa Rica'),(1,'España'),(2,'México'),(9,'Panamá'),(6,'Perú'),(7,'Uruguay');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectores`
--

DROP TABLE IF EXISTS `sectores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectores`
--

LOCK TABLES `sectores` WRITE;
/*!40000 ALTER TABLE `sectores` DISABLE KEYS */;
INSERT INTO `sectores` VALUES (12,'Agricola'),(3,'Alimentos & Bebidas'),(2,'Biotecnología'),(7,'Construcción'),(9,'Educación'),(5,'Energía'),(6,'Fintech'),(4,'Logística'),(8,'Retail'),(10,'Salud'),(1,'Software');
/*!40000 ALTER TABLE `sectores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `remitente_usuario_id` int NOT NULL,
  `destinatario_usuario_id` int NOT NULL,
  `importe` int DEFAULT '0',
  `fecha_transaccion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_remitente_usuario_id` (`remitente_usuario_id`),
  KEY `fk_destinatario_id` (`destinatario_usuario_id`),
  CONSTRAINT `fk_destinatario_id` FOREIGN KEY (`destinatario_usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_remitente_usuario_id` FOREIGN KEY (`remitente_usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
INSERT INTO `transacciones` VALUES (8,5,3,0,'2026-01-20 10:27:03'),(9,5,4,0,'2026-01-20 10:27:06'),(10,6,7,100,'2026-01-20 11:25:56'),(11,6,1,100,'2026-01-20 11:36:06'),(12,6,1,1000,'2026-01-20 11:44:55');
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `rol` varchar(45) DEFAULT 'VISITANTE',
  `fecha_creacion` datetime NOT NULL,
  `saldo` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'ana','ana@ejemplo.com','123456','VISITANTE','2026-01-16 00:00:00',900),(2,'carlos','carlos@ejemplo.com','123456','VISITANTE','2026-01-16 11:59:00',0),(3,'Luis','luis@ejemplo.com','123456','VISITANTE','2026-01-16 12:03:00',0),(4,'María','maria@ejemplo.com','123456','VISITANTE','2026-01-16 12:04:00',0),(5,'Sofía','sofia@ejemplo.com','123456','VISITANTE','2026-01-19 12:03:53',0),(6,'pamela','pamela@ejemplo.com','123456','VISITANTE','2026-01-20 11:21:00',200),(7,'mijail','mijail@ejemplo.com','123456','VISITANTE','2026-01-20 10:09:00',100);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-22  9:22:48
