CREATE DATABASE  IF NOT EXISTS `cpxs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `cpxs`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cpxs
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `cp`
--

DROP TABLE IF EXISTS `cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cp` (
  `产品编号` char(6) NOT NULL,
  `产品名称` char(30) NOT NULL,
  `价格` float DEFAULT NULL,
  `库存量` int(11) DEFAULT NULL,
  PRIMARY KEY (`产品编号`),
  UNIQUE KEY `产品名称_UNIQUE` (`产品名称`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp`
--

LOCK TABLES `cp` WRITE;
/*!40000 ALTER TABLE `cp` DISABLE KEYS */;
INSERT INTO `cp` VALUES ('001','薯片',4.5,200),('100001','彩色电视机',3000,10),('100002','洗衣机',1200,20),('100003','冰箱',1800,12),('100004','电热水器',2000,30),('100005','太阳能热水器',2200,8),('100006','1匹空调',1800,5),('100007','1.5匹空调',2400,20),('100008','2匹空调',3800,6),('100011','MP3',900,10),('100012','海尔冰箱_A',400,80),('200001','柜式空调',3000,200),('200002','微波炉',1000,100),('200003','抽油烟机',1200,50);
/*!40000 ALTER TABLE `cp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpxsb`
--

DROP TABLE IF EXISTS `cpxsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpxsb` (
  `产品编号` char(6) NOT NULL,
  `客户编号` char(6) NOT NULL,
  `销售日期` datetime NOT NULL,
  `数量` int(11) DEFAULT NULL,
  `销售额` float DEFAULT NULL,
  PRIMARY KEY (`产品编号`,`销售日期`,`客户编号`),
  KEY `客户编号_idx` (`客户编号`),
  CONSTRAINT `产品编号` FOREIGN KEY (`产品编号`) REFERENCES `cp` (`产品编号`),
  CONSTRAINT `客户编号` FOREIGN KEY (`客户编号`) REFERENCES `xss` (`客户编号`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpxsb`
--

LOCK TABLES `cpxsb` WRITE;
/*!40000 ALTER TABLE `cpxsb` DISABLE KEYS */;
INSERT INTO `cpxsb` VALUES ('100001','000002','2004-03-18 00:00:00',1,2300),('100001','000004','2004-06-20 00:00:00',5,8000),('100002','000001','2004-03-18 00:00:00',1,1200),('100002','000002','2004-03-18 00:00:00',3,4500),('100003','000001','2004-03-18 00:00:00',2,5900),('100003','000005','2004-05-18 00:00:00',2,6000);
/*!40000 ALTER TABLE `cpxsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xss`
--

DROP TABLE IF EXISTS `xss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xss` (
  `客户编号` char(6) NOT NULL,
  `客户名称` char(30) NOT NULL,
  `地区` char(10) DEFAULT NULL,
  `负责人` char(8) DEFAULT NULL,
  `电话` char(12) DEFAULT NULL,
  PRIMARY KEY (`客户编号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xss`
--

LOCK TABLES `xss` WRITE;
/*!40000 ALTER TABLE `xss` DISABLE KEYS */;
INSERT INTO `xss` VALUES ('000001','广电公司','镇江','张三','111111112'),('000002','家电市场','无锡','李四','222222222'),('000003','电器商场','上海','王五','333333333'),('000004','小家电商场','南京','赵六','666666666'),('000005','广电公司','南京','张三','111111122');
/*!40000 ALTER TABLE `xss` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19  8:51:07
