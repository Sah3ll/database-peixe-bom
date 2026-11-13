-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: peixebom_sao_francisco
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `tipo_cliente` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Peixaria Pescados','(74) 99574-8512','Juazeiro-BA','Mercado'),(2,'Praça do Peixe','(87) 3899-0011','Petrolina-PE','Mercado'),(3,'Restaurante do Vale','(74) 3612-1414','Paulo Afonso-BA','Restaurante'),(4,'Peixaria da Ilha','(74) 98851-5174','Juazeiro-BA','Mercado'),(5,'Supermercado Cai, Cai','(87) 3574-8558','Petrolina-PE','Supermercado'),(6,'Zezo do peixe','(74) 99699-9889','Paulo Afonso-BA','Restaurante');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `produto_fornecido` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Casa das Rações','(87) 3866-5522','Petrolina-PE','Ração para peixes'),(2,'Casa das Piscinas','(81) 98114-4050','Juazeiro-BA','Produtos de higienização'),(3,'Distribuidora Valle','(74) 3613-2020','Juazeiro-BA','Insumos'),(4,'Ovas do Vale','(74) 3578-7414','Paulo Afonso-BA','Ovos de peixes');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produção`
--

DROP TABLE IF EXISTS `produção`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produção` (
  `id_producao` int NOT NULL AUTO_INCREMENT,
  `id_tanque` int DEFAULT NULL,
  `especie` varchar(60) DEFAULT NULL,
  `quantidade_peixes` int DEFAULT NULL,
  `peso_medio` decimal(10,2) DEFAULT NULL,
  `data_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_producao`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produção`
--

LOCK TABLES `produção` WRITE;
/*!40000 ALTER TABLE `produção` DISABLE KEYS */;
INSERT INTO `produção` VALUES (1,1,'Dourado',1500,2.10,'2026-01-10'),(2,1,'Carí',3000,1.20,'2026-01-15'),(3,2,'Piranha',4000,1.50,'2026-01-12'),(4,3,'Piaba',4500,0.82,'2026-02-01'),(5,4,'Dourado',3500,2.10,'2026-02-05'),(6,5,'Piranha',1500,1.50,'2026-02-10'),(7,3,'Carí',2000,1.20,'2026-02-12'),(8,4,'Piaba',5000,0.82,'2026-02-14');
/*!40000 ALTER TABLE `produção` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tanques`
--

DROP TABLE IF EXISTS `tanques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tanques` (
  `id_tanque` int NOT NULL AUTO_INCREMENT,
  `identificacao` varchar(30) NOT NULL,
  `capacidade` int DEFAULT NULL,
  `localizacao` varchar(80) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_tanque`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tanques`
--

LOCK TABLES `tanques` WRITE;
/*!40000 ALTER TABLE `tanques` DISABLE KEYS */;
INSERT INTO `tanques` VALUES (1,'Tanque A1',3000,'Margem do rio - Setor 1','Ativo'),(2,'Tanque A2',4000,'Margem do rio - Setor 3','Ativo'),(3,'Tanque B1',1000,'Ala Norte - Setor 4','Ativo'),(4,'Tanque B3',5000,'Ala Sul - Setor 2','Em manutenção'),(5,'Tanque B2',2000,'Ala Central - Setor 5','Ativo');
/*!40000 ALTER TABLE `tanques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `especie` varchar(60) DEFAULT NULL,
  `quantidade_kg` decimal(10,2) DEFAULT NULL,
  `preco_kg` decimal(10,2) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  PRIMARY KEY (`id_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,'Piaba',150.00,17.99,2698.50,'2026-03-01'),(2,2,'Piranha',30.00,22.00,660.00,'2026-03-02'),(3,3,'Carí',100.00,20.00,2000.00,'2026-03-03'),(4,4,'Dourado',80.00,35.00,2800.00,'2026-03-04'),(5,5,'Tilápia',150.00,20.00,3000.00,'2026-03-05'),(6,6,'Tambaqui',120.00,23.00,2760.00,'2026-03-06'),(7,1,'Piranha',150.00,22.00,3300.00,'2026-03-07'),(8,2,'Tilápia',200.00,18.00,3600.00,'2026-03-08');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'peixebom_sao_francisco'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-12 21:33:27
