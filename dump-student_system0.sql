-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: student_system
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `tb_clazz`
--

DROP TABLE IF EXISTS `tb_clazz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clazz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clazz_name` varchar(100) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_1` (`subject_id`) USING BTREE,
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`subject_id`) REFERENCES `tb_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clazz`
--

LOCK TABLES `tb_clazz` WRITE;
/*!40000 ALTER TABLE `tb_clazz` DISABLE KEYS */;
INSERT INTO `tb_clazz` VALUES (16,'软件工程2020102',17,'计算老师教'),(17,'网络通信2020103',17,''),(18,'英语2020201',18,''),(19,'日语2020202',18,''),(20,'电子商务2020301',19,''),(21,'物流2020302',19,'');
/*!40000 ALTER TABLE `tb_clazz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_course`
--

DROP TABLE IF EXISTS `tb_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_course`
--

LOCK TABLES `tb_course` WRITE;
/*!40000 ALTER TABLE `tb_course` DISABLE KEYS */;
INSERT INTO `tb_course` VALUES (5,'Java','计算机应用技术专业'),(8,'英语','外语专业'),(9,'C#','计算机应用技术专业'),(10,'电子商务','电子商务专业'),(11,'网络通信','计算机应用技术系'),(12,'日语','日语专业');
/*!40000 ALTER TABLE `tb_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_job`
--

DROP TABLE IF EXISTS `tb_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(100) DEFAULT NULL,
  `job_date` varchar(200) DEFAULT NULL,
  `salay` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_7` (`stu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_job`
--

LOCK TABLES `tb_job` WRITE;
/*!40000 ALTER TABLE `tb_job` DISABLE KEYS */;
INSERT INTO `tb_job` VALUES (14,'腾讯','2020-10-01',15000,'薪资15K',31),(15,'测试就业','2021-04-13',1000,'测试就业备注',32);
/*!40000 ALTER TABLE `tb_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_request`
--

DROP TABLE IF EXISTS `tb_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `reason` text,
  `type` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  `result1` varchar(255) DEFAULT NULL,
  `result2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_request`
--

LOCK TABLES `tb_request` WRITE;
/*!40000 ALTER TABLE `tb_request` DISABLE KEYS */;
INSERT INTO `tb_request` VALUES (13,'张三想转专业','java太难了','转学','2021-04-13 14:54:34',16,1,'',NULL,NULL);
/*!40000 ALTER TABLE `tb_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_score`
--

DROP TABLE IF EXISTS `tb_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `score` decimal(10,1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_10` (`stu_id`) USING BTREE,
  KEY `FK_Reference_8` (`section_id`) USING BTREE,
  KEY `FK_Reference_9` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_score`
--

LOCK TABLES `tb_score` WRITE;
/*!40000 ALTER TABLE `tb_score` DISABLE KEYS */;
INSERT INTO `tb_score` VALUES (3,16,4,17,88.0),(53,13,5,16,77.0),(54,14,9,16,61.0);
/*!40000 ALTER TABLE `tb_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_section`
--

DROP TABLE IF EXISTS `tb_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `clazz_id` int(11) DEFAULT NULL,
  `clazz_name` varchar(100) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_2` (`clazz_id`) USING BTREE,
  KEY `FK_Reference_3` (`clazz_name`) USING BTREE,
  KEY `FK_Reference_4` (`teacher_id`) USING BTREE,
  KEY `FK_Reference_5` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_section`
--

LOCK TABLES `tb_section` WRITE;
/*!40000 ALTER TABLE `tb_section` DISABLE KEYS */;
INSERT INTO `tb_section` VALUES (13,2020,'春季',16,'Java一班',4,5,'这里是测试用的java班'),(14,2020,'秋季',16,'C#一班',4,9,'2020秋季C#选修班'),(15,2020,'春季',17,'UDP/TCP研习班',4,11,'这里是网络通信专业选修课'),(16,2020,'春季',18,'英语一班',5,8,'英语专业选课'),(17,2020,'春季',19,'日语一班',5,12,'日语一班');
/*!40000 ALTER TABLE `tb_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student`
--

DROP TABLE IF EXISTS `tb_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_no` varchar(50) DEFAULT NULL,
  `stu_name` varchar(50) DEFAULT NULL,
  `stu_pwd` varchar(50) DEFAULT NULL,
  `card_no` char(18) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `join_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `clazz_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_6` (`clazz_id`) USING BTREE,
  KEY `FK_Reference_7` (`subject_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student`
--

LOCK TABLES `tb_student` WRITE;
/*!40000 ALTER TABLE `tb_student` DISABLE KEYS */;
INSERT INTO `tb_student` VALUES (16,'001','张三','93a9ded8a9ab7cb69dba0c0575665204','123123123123123123','男',NULL,'18533333333','张二','13611011011','陕西省宝鸡市','2020-09-01 00:00:00','正常',16,17),(17,'002','李四','93a9ded8a9ab7cb69dba0c0575665204','321321321321321','男',NULL,'18544444444','李三','11911911911','重庆万州','2020-09-01 00:00:00','正常',17,17),(19,'003','王五','93a9ded8a9ab7cb69dba0c0575665204','510998199805230810','女',NULL,'13688888899','王四','13648965978','安徽省合肥市','2020-09-01 00:00:00','正常',18,18),(20,'004','赵六','93a9ded8a9ab7cb69dba0c0575665204','123123123123123125','男',NULL,'13788899977','赵五','13499968594','山东济南','2020-09-01 00:00:00','正常',19,18),(21,'005','孙七','93a9ded8a9ab7cb69dba0c0575665204','123123123123123121','男',NULL,'18533333334','孙六','13748485964','广西桂林','2020-09-01 00:00:00','正常',20,19),(22,'006','周八','93a9ded8a9ab7cb69dba0c0575665204','123123123123123127','男',NULL,'18533333344','周七','13784958475','四川成都','2020-09-01 00:00:00','正常',21,19),(23,'007','毕业','93a9ded8a9ab7cb69dba0c0575665204','123123123123123156','男',NULL,'18533333444','毕业父母','13496859647','甘肃兰州','2020-09-01 00:00:00','正常',16,17),(24,'008','就业','93a9ded8a9ab7cb69dba0c0575665204','123123123123123321','女',NULL,'18533333111','上班','13695968596','打工人','2020-09-01 00:00:00','正常',16,17);
/*!40000 ALTER TABLE `tb_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subject`
--

DROP TABLE IF EXISTS `tb_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) DEFAULT NULL,
  `college` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subject`
--

LOCK TABLES `tb_subject` WRITE;
/*!40000 ALTER TABLE `tb_subject` DISABLE KEYS */;
INSERT INTO `tb_subject` VALUES (17,'计算机应用','电子信息工程系','这里是电子信息工程系的专业'),(18,'外语','外语系','这里是外语系的专业'),(19,'电子商务','工商管理系','这里是工商管理系的专业');
/*!40000 ALTER TABLE `tb_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_teacher`
--

DROP TABLE IF EXISTS `tb_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(100) DEFAULT NULL,
  `teacher_pwd` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_teacher`
--

LOCK TABLES `tb_teacher` WRITE;
/*!40000 ALTER TABLE `tb_teacher` DISABLE KEYS */;
INSERT INTO `tb_teacher` VALUES (4,'jisuanji','93a9ded8a9ab7cb69dba0c0575665204','计算机老师','计算'),(5,'waiyu','93a9ded8a9ab7cb69dba0c0575665204','外语老师','外语'),(6,'shangwu','93a9ded8a9ab7cb69dba0c0575665204','商务老师','商务');
/*!40000 ALTER TABLE `tb_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_pwd` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'admin','93a9ded8a9ab7cb69dba0c0575665204','管理员','备注信息');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'student_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-13 15:50:51
