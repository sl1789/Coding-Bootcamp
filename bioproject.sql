CREATE DATABASE  IF NOT EXISTS `bioproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bioproject`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: bioproject
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `allele`
--

DROP TABLE IF EXISTS `allele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allele` (
  `all_name` varchar(45) NOT NULL,
  `gene_nane` int(2) NOT NULL,
  PRIMARY KEY (`all_name`),
  KEY `gene_nane` (`gene_nane`),
  CONSTRAINT `allele_ibfk_1` FOREIGN KEY (`gene_nane`) REFERENCES `gene` (`gene_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allele`
--

LOCK TABLES `allele` WRITE;
/*!40000 ALTER TABLE `allele` DISABLE KEYS */;
INSERT INTO `allele` VALUES ('aaaa',1),('HLA-A*01:01:01:01',1),('HLA-A*02:01:01:05',1),('HLA-A*03:01:01:01',1),('HLA-A*24:02:01:01',1),('HLA-A*29:02:01:01',1),('HLA-A*30:01:01',1),('HLA-B*18:01:01:02',2),('HLA-B*18:05',2),('HLA-B*27:05:02',2),('HLA-B*37:01:01',2),('HLA-B*44:03:01:03',2),('HLA-C*02:02:02:01',3),('HLA-C*06:02:38',3),('HLA-C*12:03:01:01',3),('HLA-C*12:03:08',3),('HLA-C*147:02:02:01',3),('HLA-DPB1*01:01:01',4),('HLA-DPB1*02:01:02',4),('HLA-DPB1*04:01:01:01',4),('HLA-DPB1*10:01:01',4),('HLA-DPB1*124:01',4),('HLA-DQA1*01:02:01:01',5),('HLA-DQA1*01:02:02',5),('HLA-DQA1*01:04:01:02',5),('HLA-DQA1*02:01:01:02',5),('HLA-DQA1*03:01:01',5),('HLA-DQA1*05:05:01:02',5),('HLA-DQB1*02:02:01:01',6),('HLA-DQB1*03:01:01:03',6),('HLA-DQB1*03:02:01',6),('HLA-DQB1*05:02:01',6),('HLA-DQB1*05:03:01:01',6),('HLA-DRB1*04:02:01',7),('HLA-DRB1*07:01:01:01',7),('HLA-DRB1*11:01:01:01',7),('HLA-DRB1*14:54:01',7),('HLA-DRB1*16:01:01',7);
/*!40000 ALTER TABLE `allele` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `belongs`
--

DROP TABLE IF EXISTS `belongs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `belongs` (
  `doc_username` varchar(45) NOT NULL,
  `hospital_id` int(8) NOT NULL,
  PRIMARY KEY (`doc_username`,`hospital_id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `belongs_ibfk_1` FOREIGN KEY (`doc_username`) REFERENCES `doctor` (`username`),
  CONSTRAINT `belongs_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `belongs`
--

LOCK TABLES `belongs` WRITE;
/*!40000 ALTER TABLE `belongs` DISABLE KEYS */;
INSERT INTO `belongs` VALUES ('beasta',1),('polgat',1),('tim',1);
/*!40000 ALTER TABLE `belongs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child` (
  `child_id` varchar(45) NOT NULL,
  `dateOfbirth` varchar(11) DEFAULT NULL,
  `mother_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`child_id`),
  KEY `mother_id` (`mother_id`),
  CONSTRAINT `child_ibfk_1` FOREIGN KEY (`child_id`) REFERENCES `patient` (`patient_id`),
  CONSTRAINT `child_ibfk_2` FOREIGN KEY (`mother_id`) REFERENCES `mother` (`mother_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES ('c10','30-03-2017','m10');
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `username` varchar(45) NOT NULL,
  `doc_credential` int(5) DEFAULT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('beasta',66666),('dada@gsads.com',12345),('polgat',12345),('tim',13133);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_username` varchar(11) DEFAULT NULL,
  `date` varchar(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `patient_id` varchar(45) NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `fk_username` (`fk_username`),
  KEY `patient_id` (`patient_id`),
  CONSTRAINT `examination_ibfk_1` FOREIGN KEY (`fk_username`) REFERENCES `doctor` (`username`),
  CONSTRAINT `examination_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (1,'polgat','23-5-99','def','fdfd','fdfd'),(2,'polgat','4-6-2017','wwf','wwf','x123'),(3,'polgat','5-6-17','string','string string','a1'),(4,'polgat','05-06-2017','a3','perfect','m10'),(5,'polgat','30-03-2017','HLA','moul','c10'),(6,'tim','4-5-17','hla','mpiri mpiri mpiri','m13');
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gene`
--

DROP TABLE IF EXISTS `gene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene` (
  `gene_id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gene_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene`
--

LOCK TABLES `gene` WRITE;
/*!40000 ALTER TABLE `gene` DISABLE KEYS */;
INSERT INTO `gene` VALUES (1,'HLA-A'),(2,'HLA-B'),(3,'HLA-C'),(4,'HLA-DPB1'),(5,'HLA-DQA1'),(6,'HLA-DQB1'),(7,'HLA-DRB1');
/*!40000 ALTER TABLE `gene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `hospital_id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Agios Savvas','Athens','Ampelokipoi','Leoforos Alexandras 123','2106425311'),(2,'Iaso','Athens','Marousi','Leof. Kifisias 37-39','2106184000'),(3,'Lito','Athens','Psihiko','Mouson 7-13','2106902000'),(4,'Mitera','Athens','Marousi','Erythrou Stavroy','2106869000'),(5,'Rea','Athens','Palaio Faliro','Leof. Andrea Sigrou 383','2109495000');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mother`
--

DROP TABLE IF EXISTS `mother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mother` (
  `mother_id` varchar(45) NOT NULL,
  `afm` int(9) DEFAULT NULL,
  PRIMARY KEY (`mother_id`),
  CONSTRAINT `mother_ibfk_1` FOREIGN KEY (`mother_id`) REFERENCES `patient` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother`
--

LOCK TABLES `mother` WRITE;
/*!40000 ALTER TABLE `mother` DISABLE KEYS */;
INSERT INTO `mother` VALUES ('a1',98765432),('efi',123456789),('fdfd',12345),('m10',987654321),('m13',121212333),('x123',987654321);
/*!40000 ALTER TABLE `mother` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patient_id` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `HLA-A` varchar(30) NOT NULL,
  `HLA-B` varchar(30) NOT NULL,
  `HLA-C` varchar(30) NOT NULL,
  `HLA-DPB1` varchar(30) NOT NULL,
  `HLA-DQA1` varchar(30) NOT NULL,
  `HLA-DQB1` varchar(30) NOT NULL,
  `HLA-DRB1` varchar(30) NOT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `HLA-A` (`HLA-A`),
  KEY `HLA-B` (`HLA-B`),
  KEY `HLA-C` (`HLA-C`),
  KEY `HLA-DPB1` (`HLA-DPB1`),
  KEY `HLA-DQA1` (`HLA-DQA1`),
  KEY `HLA-DQB1` (`HLA-DQB1`),
  KEY `HLA-DRB1` (`HLA-DRB1`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`HLA-A`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`HLA-B`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`HLA-C`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `patient_ibfk_4` FOREIGN KEY (`HLA-DPB1`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `patient_ibfk_5` FOREIGN KEY (`HLA-DQA1`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `patient_ibfk_6` FOREIGN KEY (`HLA-DQB1`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `patient_ibfk_7` FOREIGN KEY (`HLA-DRB1`) REFERENCES `allele` (`all_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('a1','loulis','louli','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa'),('c10','toulaki','toulou','HLA-A*30:01:01','HLA-B*18:01:01:02','HLA-C*02:02:02:01','HLA-DPB1*04:01:01:01','HLA-DQA1*02:01:01:02','HLA-DQB1*02:02:01:01','HLA-DRB1*04:02:01'),('efi','efi','rouli','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa'),('fdfd','pdf','pdf','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa'),('M006','soula','kits','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa'),('m10','toula','toulou','HLA-A*24:02:01:01','HLA-B*37:01:01','HLA-C*12:03:08','HLA-DPB1*04:01:01:01','HLA-DQA1*05:05:01:02','HLA-DQB1*05:02:01','HLA-DRB1*16:01:01'),('m13','lorenza','tanzini','HLA-A*03:01:01:01','HLA-B*18:01:01:02','HLA-C*12:03:08','HLA-DPB1*02:01:02','HLA-DQA1*01:02:02','HLA-DQB1*02:02:01:01','HLA-DRB1*14:54:01'),('x123','maria','grigoriou','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `transplant_id` int(5) NOT NULL,
  `hospital_id` int(8) NOT NULL,
  `unit_quantity` int(3) DEFAULT NULL,
  PRIMARY KEY (`transplant_id`,`hospital_id`),
  KEY `hospital_id` (`hospital_id`),
  CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`transplant_id`) REFERENCES `transplants` (`transplant_id`),
  CONSTRAINT `stores_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transplants`
--

DROP TABLE IF EXISTS `transplants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transplants` (
  `transplant_id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `hospital_id` int(8) NOT NULL,
  `HLA-A` varchar(30) NOT NULL,
  `HLA-B` varchar(30) NOT NULL,
  `HLA-C` varchar(30) NOT NULL,
  `HLA-DPB1` varchar(30) NOT NULL,
  `HLA-DQA1` varchar(30) NOT NULL,
  `HLA-DQB1` varchar(30) NOT NULL,
  `HLA-DRB1` varchar(30) NOT NULL,
  PRIMARY KEY (`transplant_id`),
  KEY `hospital_id` (`hospital_id`),
  KEY `HLA-A` (`HLA-A`),
  KEY `HLA-B` (`HLA-B`),
  KEY `HLA-C` (`HLA-C`),
  KEY `HLA-DPB1` (`HLA-DPB1`),
  KEY `HLA-DQA1` (`HLA-DQA1`),
  KEY `HLA-DQB1` (`HLA-DQB1`),
  KEY `HLA-DRB1` (`HLA-DRB1`),
  CONSTRAINT `transplants_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`),
  CONSTRAINT `transplants_ibfk_2` FOREIGN KEY (`HLA-A`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `transplants_ibfk_3` FOREIGN KEY (`HLA-B`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `transplants_ibfk_4` FOREIGN KEY (`HLA-C`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `transplants_ibfk_5` FOREIGN KEY (`HLA-DPB1`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `transplants_ibfk_6` FOREIGN KEY (`HLA-DQA1`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `transplants_ibfk_7` FOREIGN KEY (`HLA-DQB1`) REFERENCES `allele` (`all_name`),
  CONSTRAINT `transplants_ibfk_8` FOREIGN KEY (`HLA-DRB1`) REFERENCES `allele` (`all_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transplants`
--

LOCK TABLES `transplants` WRITE;
/*!40000 ALTER TABLE `transplants` DISABLE KEYS */;
INSERT INTO `transplants` VALUES (3,'aaaa',1,'aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa'),(4,'string',1,'aaaa','aaaa','aaaa','aaaa','aaaa','aaaa','aaaa'),(5,'a3',1,'HLA-A*24:02:01:01','HLA-B*37:01:01','HLA-C*12:03:08','HLA-DPB1*04:01:01:01','HLA-DQA1*05:05:01:02','HLA-DQB1*05:02:01','HLA-DRB1*16:01:01'),(6,'HLA',1,'HLA-A*30:01:01','HLA-B*18:01:01:02','HLA-C*02:02:02:01','HLA-DPB1*04:01:01:01','HLA-DQA1*02:01:01:02','HLA-DQB1*02:02:01:01','HLA-DRB1*04:02:01'),(7,'hla',1,'HLA-A*03:01:01:01','HLA-B*18:01:01:02','HLA-C*12:03:08','HLA-DPB1*02:01:02','HLA-DQA1*01:02:02','HLA-DQB1*02:02:01:01','HLA-DRB1*14:54:01');
/*!40000 ALTER TABLE `transplants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('beast','number','beasta','beast@gmail.com','1122'),('dededede','dededede','dada@gsads.com','dededede','12345'),('jim','jimopoulos','jim@gmail.com','jimis','123'),('oooo','oooo','ooo@ooo.oo','oooo','1234'),('pol','gat','polgat','pol@gmail.com','12345'),('qqqq','qqqq','qqqq@qqqq.qq','qqqqq','1234'),('efth','avg','tim','efta@gmail.com','timis'),('efth','tim','timav','tim@gmail.com','12345'),('vvvvv','vvvvvvv','vvv@gmail.com','vvvv','1234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-05 21:34:35
