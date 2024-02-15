CREATE DATABASE  IF NOT EXISTS `hr_unicorn` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hr_unicorn`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: hr_unicorn
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id_departamento` int DEFAULT NULL,
  `nombre_departamento` text,
  `id_gerente` int DEFAULT NULL,
  `id_ubicacion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (10,'Administration',200,1700),(20,'Marketing',201,1800),(30,'Purchasing',114,1700),(40,'Human Resources',203,2400),(50,'Shipping',121,1500),(60,'IT',103,1400),(70,'Public Relations',204,2700),(80,'Sales',145,2500),(90,'Executive',100,1700),(100,'Finance',108,1700),(110,'Accounting',205,1700),(120,'Treasury',0,1700),(130,'Corporate Tax',0,1700),(140,'Control And Credit',0,1700),(150,'Shareholder Services',0,1700),(160,'Benefits',0,1700),(170,'Manufacturing',0,1700),(180,'Construction',0,1700),(190,'Contracting',0,1700),(200,'Operations',0,1700),(210,'IT Support',0,1700),(220,'NOC',0,1700),(230,'IT Helpdesk',0,1700),(240,'Government Sales',0,1700),(250,'Retail Sales',0,1700),(260,'Recruiting',0,1700),(270,'Payroll',0,1700);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int DEFAULT NULL,
  `nombre_empleado` text,
  `apellido_empleado` text,
  `email` text,
  `telefono` text,
  `fecha_contratacion` text,
  `id_trabajo` text,
  `salario` double DEFAULT NULL,
  `comision_pactada` double DEFAULT NULL,
  `id_gerente` int DEFAULT NULL,
  `id_departamento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (100,'Steven','King','SKING','5,151,234,567','2003-06-17','AD_PRES',24000,0,0,90),(101,'Neena','Kochhar','NKOCHHAR','5,151,234,568','2005-09-21','AD_VP',17000,0,100,90),(102,'Lex','De Haan','LDEHAAN','5,151,234,569','2001-01-13','AD_VP',17000,0,100,90),(103,'Alexander','Hunold','AHUNOLD','5,904,234,567','2006-01-03','IT_PROG',9000,0,102,60),(104,'Bruce','Ernst','BERNST','5,904,234,568','2007-05-21','IT_PROG',6000,0,103,60),(105,'David','Austin','DAUSTIN','5,904,234,569','2005-06-25','IT_PROG',4800,0,103,60),(106,'Valli','Pataballa','VPATABAL','5,904,234,560','2006-02-05','IT_PROG',4800,0,103,60),(107,'Diana','Lorentz','DLORENTZ','5,904,235,567','2007-02-07','IT_PROG',4200,0,103,60),(108,'Nancy','Greenberg','NGREENBE','5,151,244,569','2002-08-17','FI_MGR',12008,0,101,100),(109,'Daniel','Faviet','DFAVIET','5,151,244,169','2002-08-16','FI_ACCOUNT',9000,0,108,100),(110,'John','Chen','JCHEN','5,151,244,269','2005-09-28','FI_ACCOUNT',8200,0,108,100),(111,'Ismael','Sciarra','ISCIARRA','5,151,244,369','2005-09-30','FI_ACCOUNT',7700,0,108,100),(112,'Jose Manuel','Urman','JMURMAN','5,151,244,469','2006-03-07','FI_ACCOUNT',7800,0,108,100),(113,'Luis','Popp','LPOPP','5,151,244,567','2007-12-07','FI_ACCOUNT',6900,0,108,100),(114,'Den','Raphaely','DRAPHEAL','5,151,274,561','2002-12-07','PU_MAN',11000,0,100,30),(115,'Alexander','Khoo','AKHOO','5,151,274,562','2003-05-18','PU_CLERK',3100,0,114,30),(116,'Shelli','Baida','SBAIDA','5,151,274,563','2005-12-24','PU_CLERK',2900,0,114,30),(117,'Sigal','Tobias','STOBIAS','5,151,274,564','2005-07-24','PU_CLERK',2800,0,114,30),(118,'Guy','Himuro','GHIMURO','5,151,274,565','2006-11-15','PU_CLERK',2600,0,114,30),(119,'Karen','Colmenares','KCOLMENA','5,151,274,566','2007-08-10','PU_CLERK',2500,0,114,30),(120,'Matthew','Weiss','MWEISS','6,501,231,234','2004-07-18','ST_MAN',8000,0,100,50),(121,'Adam','Fripp','AFRIPP','6,501,232,234','2005-04-10','ST_MAN',8200,0,100,50),(122,'Payam','Kaufling','PKAUFLIN','6,501,233,234','2003-05-01','ST_MAN',7900,0,100,50),(123,'Shanta','Vollman','SVOLLMAN','6,501,234,234','2005-10-10','ST_MAN',6500,0,100,50),(124,'Kevin','Mourgos','KMOURGOS','6,501,235,234','2007-11-16','ST_MAN',5800,0,100,50),(125,'Julia','Nayer','JNAYER','6,501,241,214','2005-07-16','ST_CLERK',3200,0,120,50),(126,'Irene','Mikkilineni','IMIKKILI','6,501,241,224','2006-09-28','ST_CLERK',2700,0,120,50),(127,'James','Landry','JLANDRY','6,501,241,334','2007-01-14','ST_CLERK',2400,0,120,50),(128,'Steven','Markle','SMARKLE','6,501,241,434','2008-03-08','ST_CLERK',2200,0,120,50),(129,'Laura','Bissot','LBISSOT','6,501,245,234','2005-08-20','ST_CLERK',3300,0,121,50),(130,'Mozhe','Atkinson','MATKINSO','6,501,246,234','2005-10-30','ST_CLERK',2800,0,121,50),(131,'James','Marlow','JAMRLOW','6,501,247,234','2005-02-16','ST_CLERK',2500,0,121,50),(132,'TJ','Olson','TJOLSON','6,501,248,234','2007-04-10','ST_CLERK',2100,0,121,50),(133,'Jason','Mallin','JMALLIN','6,501,271,934','2004-06-14','ST_CLERK',3300,0,122,50),(134,'Michael','Rogers','MROGERS','6,501,271,834','2006-08-26','ST_CLERK',2900,0,122,50),(135,'Ki','Gee','KGEE','6,501,271,734','2007-12-12','ST_CLERK',2400,0,122,50),(136,'Hazel','Philtanker','HPHILTAN','6,501,271,634','2008-02-06','ST_CLERK',2200,0,122,50),(137,'Renske','Ladwig','RLADWIG','6,501,211,234','2003-07-14','ST_CLERK',3600,0,123,50),(138,'Stephen','Stiles','SSTILES','6,501,212,034','2005-10-26','ST_CLERK',3200,0,123,50),(139,'John','Seo','JSEO','6,501,212,019','2006-02-12','ST_CLERK',2700,0,123,50),(140,'Joshua','Patel','JPATEL','6,501,211,834','2006-04-06','ST_CLERK',2500,0,123,50),(141,'Trenna','Rajs','TRAJS','6,501,218,009','2003-10-17','ST_CLERK',3500,0,124,50),(142,'Curtis','Davies','CDAVIES','6,501,212,994','2005-01-29','ST_CLERK',3100,0,124,50),(143,'Randall','Matos','RMATOS','6,501,212,874','2006-03-15','ST_CLERK',2600,0,124,50),(144,'Peter','Vargas','PVARGAS','6,501,212,004','2006-07-09','ST_CLERK',2500,0,124,50),(145,'John','Russell','JRUSSEL','011.44.1344.429268','2004-10-01','SA_MAN',14000,0.4,100,80),(146,'Karen','Partners','KPARTNER','011.44.1344.467268','2005-01-05','SA_MAN',13500,0.3,100,80),(147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','2005-03-10','SA_MAN',12000,0.3,100,80),(148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','2007-10-15','SA_MAN',11000,0.3,100,80),(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','2008-01-29','SA_MAN',10500,0.2,100,80),(150,'Peter','Tucker','PTUCKER','011.44.1344.129268','2005-01-30','SA_REP',10000,0.3,145,80),(151,'David','Bernstein','DBERNSTE','011.44.1344.345268','2005-03-24','SA_REP',9500,0.25,145,80),(152,'Peter','Hall','PHALL','011.44.1344.478968','2005-08-20','SA_REP',9000,0.25,145,80),(153,'Christopher','Olsen','COLSEN','011.44.1344.498718','2006-03-30','SA_REP',8000,0.2,145,80),(154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','2006-12-09','SA_REP',7500,0.2,145,80),(155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','2007-11-23','SA_REP',7000,0.15,145,80),(156,'Janette','King','JKING','011.44.1345.429268','2004-01-30','SA_REP',10000,0.35,146,80),(157,'Patrick','Sully','PSULLY','011.44.1345.929268','2004-03-04','SA_REP',9500,0.35,146,80),(158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','2004-08-01','SA_REP',9000,0.35,146,80),(159,'Lindsey','Smith','LSMITH','011.44.1345.729268','2005-03-10','SA_REP',8000,0.3,146,80),(160,'Louise','Doran','LDORAN','011.44.1345.629268','2005-12-15','SA_REP',7500,0.3,146,80),(161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','2006-11-03','SA_REP',7000,0.25,146,80),(162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','2005-11-11','SA_REP',10500,0.25,147,80),(163,'Danielle','Greene','DGREENE','011.44.1346.229268','2007-03-19','SA_REP',9500,0.15,147,80),(164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','2008-01-24','SA_REP',7200,0.1,147,80),(165,'David','Lee','DLEE','011.44.1346.529268','2008-02-23','SA_REP',6800,0.1,147,80),(166,'Sundar','Ande','SANDE','011.44.1346.629268','2008-03-24','SA_REP',6400,0.1,147,80),(167,'Amit','Banda','ABANDA','011.44.1346.729268','2008-04-21','SA_REP',6200,0.1,147,80),(168,'Lisa','Ozer','LOZER','011.44.1343.929268','2005-03-11','SA_REP',11500,0.25,148,80),(169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','2006-03-23','SA_REP',10000,0.2,148,80),(170,'Tayler','Fox','TFOX','011.44.1343.729268','2006-01-24','SA_REP',9600,0.2,148,80),(171,'William','Smith','WSMITH','011.44.1343.629268','2007-02-23','SA_REP',7400,0.15,148,80),(172,'Elizabeth','Bates','EBATES','011.44.1343.529268','2007-03-24','SA_REP',7300,0.15,148,80),(173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','2008-04-21','SA_REP',6100,0.1,148,80),(174,'Ellen','Abel','EABEL','011.44.1644.429267','2004-05-11','SA_REP',11000,0.3,149,80),(175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','2005-03-19','SA_REP',8800,0.25,149,80),(176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','2006-03-24','SA_REP',8600,0.2,149,80),(177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','2006-04-23','SA_REP',8400,0.2,149,80),(178,'Kimberely','Grant','KGRANT','011.44.1644.429263','2007-05-24','SA_REP',7000,0.15,149,0),(179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','2008-01-04','SA_REP',6200,0.1,149,80),(180,'Winston','Taylor','WTAYLOR','6,505,079,876','2006-01-24','SH_CLERK',3200,0,120,50),(181,'Jean','Fleaur','JFLEAUR','6,505,079,877','2006-02-23','SH_CLERK',3100,0,120,50),(182,'Martha','Sullivan','MSULLIVA','6,505,079,878','2007-06-21','SH_CLERK',2500,0,120,50),(183,'Girard','Geoni','GGEONI','6,505,079,879','2008-02-03','SH_CLERK',2800,0,120,50),(184,'Nandita','Sarchand','NSARCHAN','6,505,091,876','2004-01-27','SH_CLERK',4200,0,121,50),(185,'Alexis','Bull','ABULL','6,505,092,876','2005-02-20','SH_CLERK',4100,0,121,50),(186,'Julia','Dellinger','JDELLING','6,505,093,876','2006-06-24','SH_CLERK',3400,0,121,50),(187,'Anthony','Cabrio','ACABRIO','6,505,094,876','2007-02-07','SH_CLERK',3000,0,121,50),(188,'Kelly','Chung','KCHUNG','6,505,051,876','2005-06-14','SH_CLERK',3800,0,122,50),(189,'Jennifer','Dilly','JDILLY','6,505,052,876','2005-08-13','SH_CLERK',3600,0,122,50),(190,'Timothy','Gates','TGATES','6,505,053,876','2006-07-11','SH_CLERK',2900,0,122,50),(191,'Randall','Perkins','RPERKINS','6,505,054,876','2007-12-19','SH_CLERK',2500,0,122,50),(192,'Sarah','Bell','SBELL','6,505,011,876','2004-02-04','SH_CLERK',4000,0,123,50),(193,'Britney','Everett','BEVERETT','6,505,012,876','2005-03-03','SH_CLERK',3900,0,123,50),(194,'Samuel','McCain','SMCCAIN','6,505,013,876','2006-07-01','SH_CLERK',3200,0,123,50),(195,'Vance','Jones','VJONES','6,505,014,876','2007-03-17','SH_CLERK',2800,0,123,50),(196,'Alana','Walsh','AWALSH','6,505,079,811','2006-04-24','SH_CLERK',3100,0,124,50),(197,'Kevin','Feeney','KFEENEY','6,505,079,822','2006-05-23','SH_CLERK',3000,0,124,50),(198,'Donald','OConnell','DOCONNEL','6,505,079,833','2007-06-21','SH_CLERK',2600,0,124,50),(199,'Douglas','Grant','DGRANT','6,505,079,844','2008-01-13','SH_CLERK',2600,0,124,50),(200,'Jennifer','Whalen','JWHALEN','5,151,234,444','2003-09-17','AD_ASST',4400,0,101,10),(201,'Michael','Hartstein','MHARTSTE','5,151,235,555','2004-02-17','MK_MAN',13000,0,100,20),(202,'Pat','Fay','PFAY','6,031,236,666','2005-08-17','MK_REP',6000,0,201,20),(203,'Susan','Mavris','SMAVRIS','5,151,237,777','2002-06-07','HR_REP',6500,0,101,40),(204,'Hermann','Baer','HBAER','5,151,238,888','2002-06-07','PR_REP',10000,0,101,70),(205,'Shelley','Higgins','SHIGGINS','5,151,238,080','2002-06-07','AC_MGR',12008,0,101,110),(206,'William','Gietz','WGIETZ','5,151,238,181','2002-06-07','AC_ACCOUNT',8300,0,205,110);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado_trabajo`
--

DROP TABLE IF EXISTS `grado_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado_trabajo` (
  `nivel_grado` text,
  `salario_mninimo` text,
  `salario_maximo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado_trabajo`
--

LOCK TABLES `grado_trabajo` WRITE;
/*!40000 ALTER TABLE `grado_trabajo` DISABLE KEYS */;
INSERT INTO `grado_trabajo` VALUES ('A','1,000.00','2,999.00'),('B','3,000.00','5,999.00'),('C','6,000.00','9,999.00'),('D','10,000.00','14,999.00'),('E','15,000.00','24,999.00'),('F','25,000.00','40,000.00');
/*!40000 ALTER TABLE `grado_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_trabajos`
--

DROP TABLE IF EXISTS `historial_trabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_trabajos` (
  `id_empleado` int DEFAULT NULL,
  `fecha_inicio` text,
  `fecha_fin` text,
  `id_trabajo` text,
  `id_departamento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_trabajos`
--

LOCK TABLES `historial_trabajos` WRITE;
/*!40000 ALTER TABLE `historial_trabajos` DISABLE KEYS */;
INSERT INTO `historial_trabajos` VALUES (102,'2001-01-13','2006-07-24','IT_PROG',60),(101,'1997-09-21','2001-10-27','AC_ACCOUNT',110),(101,'2001-10-28','2005-03-15','AC_MGR',110),(201,'2004-02-17','2007-12-19','MK_REP',20),(114,'2006-03-24','2007-12-31','ST_CLERK',50),(122,'2007-01-01','2007-12-31','ST_CLERK',50),(200,'1995-09-17','2001-06-17','AD_ASST',90),(176,'2006-03-24','2006-12-31','SA_REP',80),(176,'2007-01-01','2007-12-31','SA_MAN',80),(200,'2002-07-01','2006-12-31','AC_ACCOUNT',90);
/*!40000 ALTER TABLE `historial_trabajos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `id_pais` text,
  `nombre_pais` text,
  `id_region` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES ('AR','Argentina',2),('AU','Australia',3),('BE','Belgium',1),('BR','Brazil',2),('CA','Canada',2),('CH','Switzerland',1),('CN','China',3),('DE','Germany',1),('DK','Denmark',1),('EG','Egypt',4),('FR','France',1),('IL','Israel',4),('IN','India',3),('IT','Italy',1),('JP','Japan',3),('KW','Kuwait',4),('ML','Malaysia',3),('MX','Mexico',2),('NG','Nigeria',4),('NL','Netherlands',1),('SG','Singapore',3),('UK','United Kingdom',1),('US','United States of America',2),('ZM','Zambia',4),('ZW','Zimbabwe',4);
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajos`
--

DROP TABLE IF EXISTS `trabajos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajos` (
  `id_trabajo` text,
  `titulo_trabajo` text,
  `salario_min` int DEFAULT NULL,
  `salario_max` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajos`
--

LOCK TABLES `trabajos` WRITE;
/*!40000 ALTER TABLE `trabajos` DISABLE KEYS */;
INSERT INTO `trabajos` VALUES ('AD_PRES','President',20080,40000),('AD_VP','Administration Vice President',15000,30000),('AD_ASST','Administration Assistant',3000,6000),('FI_MGR','Finance Manager',8200,16000),('FI_ACCOUNT','Accountant',4200,9000),('AC_MGR','Accounting Manager',8200,16000),('AC_ACCOUNT','Public Accountant',4200,9000),('SA_MAN','Sales Manager',10000,20080),('SA_REP','Sales Representative',6000,12008),('PU_MAN','Purchasing Manager',8000,15000),('PU_CLERK','Purchasing Clerk',2500,5500),('ST_MAN','Stock Manager',5500,8500),('ST_CLERK','Stock Clerk',2008,5000),('SH_CLERK','Shipping Clerk',2500,5500),('IT_PROG','Programmer',4000,10000),('MK_MAN','Marketing Manager',9000,15000),('MK_REP','Marketing Representative',4000,9000),('HR_REP','Human Resources Representative',4000,9000),('PR_REP','Public Relations Representative',4500,10500);
/*!40000 ALTER TABLE `trabajos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicaciones` (
  `id_ubicacion` int DEFAULT NULL,
  `direccion` text,
  `codigo_postal` int DEFAULT NULL,
  `ciudad` text,
  `estado_provincia` text,
  `id_pais` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES (1000,'1297 Via Cola di Rie',989,'Roma','','IT'),(1100,'93091 Calle della Testa',10934,'Venice','','IT'),(1200,'2017 Shinjuku-ku',1689,'Tokyo','Tokyo Prefecture','JP'),(1300,'9450 Kamiya-cho',6823,'Hiroshima','','JP'),(1400,'2014 Jabberwocky Rd',26192,'Southlake','Texas','US'),(1500,'2011 Interiors Blvd',99236,'South San Francisco','California','US'),(1600,'2007 Zagora St',50090,'South Brunswick','New Jersey','US'),(1700,'2004 Charade Rd',98199,'Seattle','Washington','US'),(2000,'40-5-12 Laogianggen',190518,'Beijing','','CN'),(2100,'1298 Vileparle (E)',490231,'Bombay','Maharashtra','IN'),(2200,'12-98 Victoria Street',2901,'Sydney','New South Wales','AU'),(2300,'198 Clementi North',540198,'Singapore','','SG'),(2700,'Schwanthalerstr. 7031',80925,'Munich','Bavaria','DE'),(2900,'20 Rue des Corps-Saints',1730,'Geneva','Geneve','CH'),(3000,'Murtenstrasse 921',3095,'Bern','BE','CH'),(3200,'Mariano Escobedo 9991',11932,'Mexico City','Distrito Federal,','MX');
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 19:05:53
