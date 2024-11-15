CREATE DATABASE  IF NOT EXISTS `bhagwanbachao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bhagwanbachao`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bhagwanbachao
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `additional_details`
--

DROP TABLE IF EXISTS `additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_details` (
  `student_id` varchar(6) NOT NULL,
  `SRN_NUMBER` bigint DEFAULT NULL,
  `Pen_num` bigint DEFAULT NULL,
  `Admission_no` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `additional_details_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_details`
--

LOCK TABLES `additional_details` WRITE;
/*!40000 ALTER TABLE `additional_details` DISABLE KEYS */;
INSERT INTO `additional_details` VALUES ('02C9wD',21383346846,1715067505,860,'2009-04-29','2023-03-04'),('25YOU5',21615219647,1907119105,2184,'2006-09-19','2023-07-24'),('3DWaJB',21490578167,2002347628,2015,'2014-08-29','2023-03-04'),('55rGEV',21528854554,1802101107,1691,'2013-02-15','2023-03-04'),('5NytOW',21281683720,1807324784,2052,'2017-12-01','2023-03-04'),('6Br0Lt',21740680437,2105500539,1305,'2011-06-02','2023-03-04'),('Ag1zEl',21563439258,1704496210,1188,'2015-02-11','2023-03-04'),('awjczD',21582379000,1907941800,2023,'2014-07-11','2023-03-04'),('bpSrpj',21233351175,2000707934,1723,'2008-06-08','2023-03-04'),('BsOgU4',21231891165,1714954924,1850,'2009-10-30','2023-03-04'),('cfEcKD',21792310242,1706890685,2018,'2010-03-11','2023-01-04'),('ckCPu8',21557677052,2002098949,1429,'2011-03-14','2023-03-04'),('EZx9k5',21287948226,NULL,1408,'2009-07-12','2023-03-04'),('fB9pny',21338456207,1603304212,1801,'2017-02-03','2023-03-04'),('fGvV6x',21324081583,2001391129,1172,'2005-10-10','2023-03-04'),('fRwXjW',21315848248,NULL,1618,'2014-11-07','2023-03-04'),('FrYSyA',21761608392,NULL,1870,'2013-10-25','2023-03-04'),('gRG1JP',21283114583,2003318747,1003,'2011-06-01','2023-03-04'),('iu8S6R',21554312942,2001386586,1384,'2013-01-18','2023-03-04'),('jlqfF2',21703870746,2001227469,524,'2006-06-29','2023-03-04'),('jOZZOs',21304843290,1705865408,1869,'2012-02-17','2023-03-04'),('JRU4Z1',21553210567,NULL,1664,'2009-10-06','2023-03-04'),('LU7slz',21326474680,1802080291,1466,'2015-02-07','2023-03-04'),('mOVVq5',21784652274,2002159758,1223,'2005-12-08','2023-05-15'),('NL0U1G',21348511653,2005723402,740,'2006-05-12','2023-03-04'),('Ns8dMr',21334316319,2001442023,2033,'2007-04-23','2023-01-04'),('oqQpe7',21467619409,1907094125,1981,'2005-10-19','2023-03-04'),('p6177r',21097499302,NULL,1850,'2017-10-15','2023-03-04'),('QBW5oS',21657990016,2105505420,1366,'2016-08-09','2023-03-04'),('qJVEjU',21350713163,NULL,1741,'2006-06-16','2023-05-15'),('QYEaMa',21290163431,1808735870,1874,'2015-11-07','2023-03-04'),('rj73Le',21370994664,2106990132,1864,'2013-06-07','2023-03-04'),('tCliEc',21295691332,2001216217,2108,'2014-10-02','2023-10-04'),('th6sZs',21177352701,1903475437,789,'2009-10-14','2023-03-04'),('tzN3NW',21084070265,NULL,843,'2008-12-30','2023-03-04'),('ubGx5G',21118042999,NULL,758,'2008-04-04','2023-03-04'),('UCm2RQ',21453540127,NULL,2040,'2012-06-03','2023-01-04'),('urWcTX',21440695105,2001334549,1033,'2008-05-20','2023-05-15'),('uS1PI3',21295898272,1808592771,1427,'2007-09-17','2023-03-04'),('Uuh5nL',21317233797,1704470017,1592,'2009-09-22','2023-03-04'),('w8G8uP',21339929707,2107086162,2142,'2017-08-03','2023-03-04'),('wdBHlt',21656403264,1512079616,1105,'2011-05-20','2023-03-04'),('WUAOfZ',21368418292,2105496042,1110,'2010-09-20','2023-03-04'),('ygEvv2',21536385338,1808831363,1646,'2016-06-16','2023-03-04'),('ZnOsEw',22512243250,NULL,1932,'2007-12-03','2023-03-04');
/*!40000 ALTER TABLE `additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_subjects`
--

DROP TABLE IF EXISTS `class_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_subjects` (
  `class_id` varchar(5) NOT NULL,
  `subject_id` varchar(4) NOT NULL,
  PRIMARY KEY (`class_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `class_subjects_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  CONSTRAINT `class_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_subjects`
--

LOCK TABLES `class_subjects` WRITE;
/*!40000 ALTER TABLE `class_subjects` DISABLE KEYS */;
INSERT INTO `class_subjects` VALUES ('1','ENGS'),('2','ENGS'),('3','ENGS'),('4','ENGS'),('5','ENGS'),('6','ENGS'),('7','ENGS'),('8','ENGS'),('9','ENGS'),('1','ENVS'),('2','ENVS'),('3','ENVS'),('1','HIND'),('2','HIND'),('3','HIND'),('4','HIND'),('5','HIND'),('6','HIND'),('7','HIND'),('8','HIND'),('9','HIND'),('1','MATH'),('2','MATH'),('3','MATH'),('4','MATH'),('5','MATH'),('6','MATH'),('7','MATH'),('8','MATH'),('9','MATH'),('9','PHED'),('5','SANS'),('6','SANS'),('7','SANS'),('8','SANS'),('4','SCIE'),('5','SCIE'),('6','SCIE'),('7','SCIE'),('8','SCIE'),('9','SCIE'),('4','SSTU'),('5','SSTU'),('6','SSTU'),('7','SSTU'),('8','SSTU'),('9','SSTU');
/*!40000 ALTER TABLE `class_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_id` varchar(5) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('1'),('10'),('11'),('12'),('2'),('3'),('4'),('5'),('6'),('7'),('8'),('9');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_details`
--

DROP TABLE IF EXISTS `family_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_details` (
  `student_id` varchar(6) NOT NULL,
  `AADHAR_NUMBER` varchar(50) DEFAULT NULL,
  `Father_Name` varchar(50) DEFAULT NULL,
  `Mother_Name` varchar(50) DEFAULT NULL,
  `Social_Category` varchar(50) DEFAULT NULL,
  `FATHER_PHONE` bigint DEFAULT NULL,
  `FATHER_AADHAR` varchar(50) DEFAULT NULL,
  `MOTHER_AADHAR` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `family_details_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_details`
--

LOCK TABLES `family_details` WRITE;
/*!40000 ALTER TABLE `family_details` DISABLE KEYS */;
INSERT INTO `family_details` VALUES ('02C9wD',NULL,'MANISH DUA','GENERAL','SHALU DUA',9910472733,NULL,NULL),('25YOU5','933673862013.0','RAKESH VASHIST','GENERAL','RAKESH VASHIST',9971643634,NULL,NULL),('3DWaJB','811942955713.0','RAHUL SINGH','GENERAL','POONAM RANI',9582827883,NULL,NULL),('55rGEV','314192219804.0','VINIT KUMAR TYAGI','GENERAL','SWEETY',8800177237,NULL,NULL),('5NytOW','256198823201.0','RIJWAN','GENERAL','ZEENAT BANO',9999250486,'723129634101.0','357425189106.0'),('6Br0Lt','576449676912.0','DHARANVEER','GENERAL','PINKI',9868472013,NULL,NULL),('Ag1zEl','594028278960.0','SANJAY SINGH KUSHWAHA','GENERAL','KAVITA KUSHWAHA',9971679404,NULL,NULL),('awjczD','731101226498.0','NAVEEN KUMAR ','GENERAL','RICHA ',NULL,NULL,NULL),('bpSrpj',NULL,'PRATAP SARKAR','GENERAL','SHIPRA SARKAR',9650132646,NULL,NULL),('BsOgU4',NULL,'ANIL KUMAR','GENERAL','ANJU',NULL,NULL,NULL),('cfEcKD','918354836148.0','RAJEEV KUMAR','GENERAL','MAMTA DEVI',NULL,NULL,NULL),('ckCPu8',NULL,'ALAUDDEEN','GENERAL','RESHMA',9711186734,NULL,NULL),('EZx9k5','302166765121.0','VINOD KUMAR','GENERAL','REKHA RANI',NULL,NULL,NULL),('fB9pny','543807483910.0','TEJAS KATHURIA','GENERAL','PREETI KATHURIA',8287376376,'804995261698.0','950667532495.0'),('fGvV6x','906558067312.0','YOGINDER','GENERAL','SUMAN',7838128440,NULL,NULL),('fRwXjW','503824726109.0','HARPREET SINGH','GENERAL','JASNEET KAUR',9711880288,NULL,NULL),('FrYSyA','631953272676.0','AJIT KUMAR','GENERAL','SEEMA',8810564088,NULL,NULL),('gRG1JP','210068609968.0','PAWAN KUMAR','GENERAL','SANGITA KUMARI',9990825819,NULL,NULL),('iu8S6R','203263936633.0','MANISH KUMAR','GENERAL','NEHA DEVI',9213849979,NULL,NULL),('jlqfF2','431831877770.0','SANTOSH KUMAR','GENERAL','SUSHILA',9313277383,NULL,NULL),('jOZZOs','872810128233.0','AJIT KUMAR','GENERAL','SEEMA',NULL,NULL,NULL),('JRU4Z1','245862859193.0','UDAY SINGH','GENERAL','ANITA DEVI',7503299571,NULL,NULL),('LU7slz','530893894430.0','DINESH KUMAR','GENERAL','TARA BHARDWAJ',9211098616,NULL,NULL),('mOVVq5','413382839144.0','MUKHRAM SAHANI','GENERAL','KAMLAWATI',8468908243,'490448211516.0','372087736787.0'),('NL0U1G','821367774671.0','BHOPAL SINGH BOHRA','GENERAL','BASANTI DEVI',8860896183,NULL,NULL),('Ns8dMr','927990572275.0','PARMOD KUMAR','GENERAL','SIMA KUMARI',9971680450,NULL,NULL),('oqQpe7','626618616909.0','ANIL  KUMAR','GENERAL','JYOTI DEVI',NULL,'680330078736.0','593114027359.0'),('p6177r','243616059419.0','KAILASH SHARMA','GENERAL','CHANCHAL DIXIT',9911109427,'699613414886.0','977023209120.0'),('QBW5oS','865296825920.0','RAMESH RAM','GENERAL','RINA DEVI',9142007629,'497966708031.0','906526605709.0'),('qJVEjU','268974896133.0','ANIL KUMAR AIND','GENERAL','GEETA',8700011428,NULL,NULL),('QYEaMa','887807913998.0','KULDEEP','GENERAL','JYOTI',7827231538,'876554568445.0','852898528903.0'),('rj73Le',NULL,'DEEPAK TIWARI','GENERAL','JYOTI DEVI',NULL,NULL,NULL),('tCliEc','636938745518.0','SANDEEP','GENERAL','MEENU',NULL,NULL,NULL),('th6sZs','960895809792.0','SADDAM KHAN','GENERAL','SAHIDA',8920015208,'530263271025.0','992890366650.0'),('tzN3NW',NULL,'JAYDEEP SINGH','GENERAL','KOMAL KAUR',9873944329,NULL,NULL),('ubGx5G','474383970722.0','BHUPINDER SINGH','GENERAL','HARDEEP KAUR',8750167776,NULL,NULL),('UCm2RQ','813970643864.0','VED PRAKASH ','GENERAL','POOJA ',NULL,NULL,NULL),('urWcTX','727828209297.0','PRAKASH YADAV','GENERAL','KAVITA DEVI',9899938278,NULL,NULL),('uS1PI3','584468277745.0','GAURISHANKAR','GENERAL','SEEMA YADAV',NULL,NULL,NULL),('Uuh5nL','926336433230.0','HEMANAND JHA','GENERAL','PRIYANKA',NULL,NULL,NULL),('w8G8uP','265813517190.0','NAVEEN  SHARMA','GENERAL','TANUJA SHARMA',9910161579,'423574429412.0','576826243581.0'),('wdBHlt','761671038980.0','GULSHAN SHARMA','OBC','GAYATRI',8470000061,NULL,NULL),('WUAOfZ','298039783989.0','YOGENDER SINGH','GENERAL','SUMAN',7838128440,NULL,NULL),('ygEvv2','579884380579.0',NULL,'GENERAL','MADHVI',NULL,NULL,'423158987934.0'),('ZnOsEw',NULL,'HIRAMAN SHARMA','GENERAL','VIDAYA DEVI',NULL,NULL,NULL);
/*!40000 ALTER TABLE `family_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `student_id` varchar(6) NOT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `class_id` varchar(5) NOT NULL,
  `section` varchar(3) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `student_details_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES ('02C9wD','KIRTI KAUSHIK','7','B','Female'),('25YOU5','MOHINI SHARMA','10','B','Female'),('3DWaJB','RAHUL KUMAR','10','C','Male'),('55rGEV','AAKRITI TYAGI','6','B','Female'),('5NytOW','JAYANT BHATI','12','B','Male'),('6Br0Lt','SHOURYA','3','A','Male'),('Ag1zEl','HARSHITA DHANNA','10','B','Female'),('ARYAN','QBW5oS','4','B','Male'),('awjczD','SHREYA','5','A','Female'),('bpSrpj','PRINCE','10','A','Male'),('BsOgU4','DRISHTI AGGARWAL','12','B','Female'),('cfEcKD','ANIKET GIRI','12','B','Male'),('ckCPu8','SACHIN YADAV','6','A','Male'),('DEV','p6177r','2','A','Male'),('EZx9k5','ALISHA KUMARI','6','B','Female'),('fB9pny','RAVI CHAUHAN','12','B','Male'),('fGvV6x','DIVYANSHI','5','A','Female'),('fRwXjW','HARSHIT','6','B','Male'),('FrYSyA','BHAVIKA SINGH','3','B','Female'),('GARIMA','LU7slz','1','B','Female'),('gRG1JP','RONAK JOGI','4','B','Male'),('iu8S6R','SAKSHI DIXIT','6','A','Female'),('jlqfF2','PRIYANSHU','11','B','Male'),('jOZZOs','AMRIT PAL SINGH','7','B','Male'),('JRU4Z1','RIDHIMA SHARMA','1','A','Female'),('LAKSH','tzN3NW','2','B','Male'),('LU7slz','GARIMA','1','B','Female'),('mOVVq5','KUNAL YADAV','8','A','Male'),('NL0U1G','KHUSHAL SINGH','4','A','Female'),('Ns8dMr','DIVJOT SINGH','6','A','Male'),('oqQpe7','POOJA KUMARI','6','B','Female'),('p6177r','DEV','2','A','Male'),('PRINCE','bpSrpj','10','A','Male'),('QBW5oS','ARYAN','4','B','Male'),('qJVEjU','ANSHU KUMAR','7','B','Male'),('QYEaMa','MANAV DIXIT','11','C','Male'),('rj73Le','REHANSH PANDEY','3','A','Male'),('SATYAM','urWcTX','1','B','Male'),('SHAYNA','w8G8uP','3','A','Female'),('SHREYA','awjczD','5','A','Female'),('tCliEc','UMESH','6','A','Male'),('th6sZs','SHRISHTI','9','A','Female'),('tzN3NW','LAKSH','2','B','Male'),('ubGx5G','VAIBHAV TIWARI','2','B','Male'),('UCm2RQ','SHRADDHA ADAK','1','A','Female'),('UMESH','tCliEc','6','A','Male'),('urWcTX','SATYAM','1','B','Male'),('uS1PI3','NISHTHA BISHT','11','B','Female'),('Uuh5nL','HIMANSHI KAUSHIK','10','A','Female'),('w8G8uP','SHAYNA','3','A','Female'),('wdBHlt','DEEPIKA','10','C','Female'),('WUAOfZ','TEJAS SHARMA','3','A','Male'),('ygEvv2','SANIYA KHATUN','10','A','Female'),('ZnOsEw','RUDRA SHARMA','1','B','Male');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_grades`
--

DROP TABLE IF EXISTS `student_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(6) NOT NULL,
  `subject_id` varchar(4) NOT NULL,
  `period_test_1` int DEFAULT NULL,
  `notebook_1` int DEFAULT NULL,
  `sub_en_1` int DEFAULT NULL,
  `term_1` int DEFAULT NULL,
  `total_1` int DEFAULT NULL,
  `period_test_2` int DEFAULT NULL,
  `notebook_2` int DEFAULT NULL,
  `sub_en_2` int DEFAULT NULL,
  `term_2` int DEFAULT NULL,
  `total_2` int DEFAULT NULL,
  `gtotal` int DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `student_grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_details` (`student_id`),
  CONSTRAINT `student_grades_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_grades`
--

LOCK TABLES `student_grades` WRITE;
/*!40000 ALTER TABLE `student_grades` DISABLE KEYS */;
INSERT INTO `student_grades` VALUES (1,'02C9wD','ENGS',0,1,0,0,0,0,0,0,0,0,0,0.00),(2,'02C9wD','HIND',0,0,0,0,0,0,0,0,0,0,0,0.00),(3,'02C9wD','MATH',0,0,0,0,0,0,0,0,0,0,0,0.00),(4,'02C9wD','SANS',0,0,0,0,0,0,0,0,0,0,0,0.00),(5,'02C9wD','SCIE',0,0,0,0,0,0,0,0,0,0,0,0.00),(6,'02C9wD','SSTU',0,0,0,0,0,0,0,0,0,0,0,0.00),(7,'ckCPu8','ENGS',0,0,0,0,0,0,0,0,0,0,0,0.00),(8,'ckCPu8','HIND',0,0,0,0,0,0,0,0,0,0,0,0.00),(9,'ckCPu8','MATH',0,0,0,0,0,0,0,0,0,0,0,0.00),(10,'ckCPu8','SANS',0,0,0,0,0,0,0,0,0,0,0,0.00),(11,'ckCPu8','SCIE',0,0,0,0,0,0,0,0,0,0,0,0.00),(12,'ckCPu8','SSTU',0,0,0,0,0,0,0,0,0,0,0,0.00);
/*!40000 ALTER TABLE `student_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` varchar(4) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('ENGS','English'),('ENVS','Environmental Studies'),('HIND','Hindi'),('MATH','Maths'),('PHED','Physical Education'),('POLS','Political Science'),('SANS','Sanskrit'),('SCIE','Science'),('SSTU','Social Studies');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_details`
--

DROP TABLE IF EXISTS `teacher_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_details` (
  `teacher_id` varchar(6) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone` bigint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_details`
--

LOCK TABLES `teacher_details` WRITE;
/*!40000 ALTER TABLE `teacher_details` DISABLE KEYS */;
INSERT INTO `teacher_details` VALUES ('00kn2r','Miss Diler Kaur',9821657104,43,'Female'),('03o498','Mrs. Meena Devi',7703956531,41,'Female'),('0h3468','Mr. Manoj',9540860814,30,'Male'),('17v8jz','Mrs. Rajni Joshi',9211919383,43,'Female'),('2zlacb','Mrs. Rekha Rani',9560440822,47,'Female'),('38215c','Mr. Bikash Ranjan',9999579219,43,'Male'),('4trp82','Mrs. Indu',7827697010,43,'Female'),('539n8a','Mrs. Bharti Jham',9599500272,30,'Female'),('5lve0y','Mrs. Usha',9811294794,36,'Female'),('5o33e9','Mrs. Divya Nagar',9810208270,27,'Female'),('608198','Mrs. Poonam',9599500272,44,'Female'),('7ty925','Mrs. Karishma Yadav',9536335706,27,'Female'),('8o30xx','Mr. Pushp Kumar',8851493385,40,'Male'),('95e0t0','Miss Ekta',9716515201,30,'Female'),('9img59','Miss Muskan',8851573818,23,'Female'),('a711nh','Ms. Poonam Rani',9599500272,31,'Female'),('adg173','Miss Harsha Bhatia',7838000707,26,'Female'),('bww5kg','Mrs. Deepa Dua',8810642551,38,'Female'),('ciw0oc','Mr. Sumit Rao',8368309032,34,'Male'),('ditpk2','Mrs. Gurpreet Kaur',9711003557,35,'Female'),('e1195u','Mrs. Sapna Shauhan',9582620273,31,'Female'),('f5z3s4','Miss Renu Gupta',9268222691,33,'Female'),('i67402','Mrs. Kiran',9891765567,56,'Female'),('j12t40','Mrs. Deepika Sood',8810432897,32,'Female'),('j4i751','Mrs. Anita Chaudhary',9910514213,42,'Female'),('mot3kf','Mrs. Neelam Bali',9653694950,47,'Female'),('os968k','Mrs. Preeti',9891527084,41,'Female'),('qkc16a','Mrs. Jyoti',9211909097,34,'Female'),('ravxzg','Mrs. Rma Arora',9953139666,38,'Female'),('rtbru4','Mrs. Shaweta',9999019419,29,'Female'),('san8tx','Mrs. Rita Tiwari',8860940200,35,'Female'),('ZLCAWC','Radhika',NULL,40,'Female');
/*!40000 ALTER TABLE `teacher_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subjects`
--

DROP TABLE IF EXISTS `teacher_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_subjects` (
  `teacher_id` varchar(6) NOT NULL,
  `subject_id` varchar(4) NOT NULL,
  PRIMARY KEY (`teacher_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `teacher_subjects_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_details` (`teacher_id`),
  CONSTRAINT `teacher_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subjects`
--

LOCK TABLES `teacher_subjects` WRITE;
/*!40000 ALTER TABLE `teacher_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bhagwanbachao'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31  4:28:12
