CREATE DATABASE  IF NOT EXISTS `sads_bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sads_bookstore`;
-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sads_bookstore
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'George','Martin'),(2,'John','Tolkien'),(3,'Arthur','Clarke'),(4,'Isaac','Asimov'),(5,'Frank','Herbert');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `price` decimal(2,0) DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_author_idx` (`id_author`),
  CONSTRAINT `fk_author` FOREIGN KEY (`id_author`) REFERENCES `author` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'O Silmarillion',1977,30,2),(2,'O Hobbit',1937,35,2),(3,'O Senhor dos Anéis',1954,80,2),(4,'A Guerra dos Tronos',1996,30,1),(5,'A Fúria dos Reis',1998,25,1),(6,'A Tormenta de Espadas',2000,40,1),(7,'O Festim dos Corvos',2005,38,1),(8,'A Dança dos Dragões',2011,35,1),(9,'Eu, Robô',1950,25,4),(10,'Fundação',1942,27,4),(11,'Fundação e Império',1952,20,4),(12,'Segunda Fundação',1953,25,4),(13,'Encontro com Rama',1973,24,3),(14,'O Fim da Infância',1953,23,3),(15,'2001: Uma Odisséia no Espaço',1968,30,3),(16,'Duna',1965,20,5),(17,'Messias de Duna',1969,25,5),(18,'Filhos de Duna',1976,22,5),(19,'Imperador Deus de Duna',1981,30,5),(20,'Hereges de Duna',1983,28,5);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-06 16:38:46

CREATE USER 'senai_sads'@'localhost' IDENTIFIED BY 'senai_sads';
GRANT SELECT, INSERT, UPDATE, DELETE ON sads_bookstore.* TO 'senai_sads'@'%';
