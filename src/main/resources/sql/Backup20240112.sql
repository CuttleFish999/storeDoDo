-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `t_address`
--

DROP TABLE IF EXISTS `t_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_address` (
  `aid` int NOT NULL AUTO_INCREMENT COMMENT 'æ”¶è²¨åœ°å€id',
  `uid` int DEFAULT NULL COMMENT 'æœƒå“¡id',
  `name` varchar(20) DEFAULT NULL COMMENT 'æ”¶è²¨äººå§“å',
  `province_name` varchar(20) DEFAULT NULL COMMENT 'åœ‹å®¶',
  `province_code` char(20) DEFAULT NULL COMMENT 'åœ‹å®¶-ä»£è™Ÿ',
  `city_name` varchar(20) DEFAULT NULL COMMENT 'å¸‚-åç¨±',
  `city_code` char(20) DEFAULT NULL COMMENT 'å¸‚-ä»£è™Ÿ',
  `area_name` varchar(20) DEFAULT NULL COMMENT 'å€-åç¨±',
  `area_code` char(20) DEFAULT NULL COMMENT 'å€-ä»£è™Ÿ',
  `zip` char(20) DEFAULT NULL COMMENT 'éƒµéå€è™Ÿ',
  `address` varchar(50) DEFAULT NULL COMMENT 'è©³ç´°åœ°å€',
  `phone` varchar(20) DEFAULT NULL COMMENT 'æ‰‹æ©Ÿ',
  `tel` varchar(20) DEFAULT NULL COMMENT 'å¸‚è©±',
  `tag` varchar(20) DEFAULT NULL COMMENT 'æ¨™ç±¤',
  `is_default` int DEFAULT NULL COMMENT 'æ˜¯å¦é è¨­ï¼š0-ä¸é è¨­ï¼Œ1-é è¨­',
  `created_user` varchar(20) DEFAULT NULL COMMENT 'å‰µå»ºäºº',
  `created_time` datetime DEFAULT NULL COMMENT 'å‰µå»ºæ™‚é–“',
  `modified_user` varchar(20) DEFAULT NULL COMMENT 'ä¿®æ”¹äºº',
  `modified_time` datetime DEFAULT NULL COMMENT 'ä¿®æ”¹æ™‚é–“',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address`
--

LOCK TABLES `t_address` WRITE;
/*!40000 ALTER TABLE `t_address` DISABLE KEYS */;
INSERT INTO `t_address` VALUES (1,2,'æ¸¬è©¦','å°ç£','8860000','æ¾æ¹–ç¸£','8862200','é¦¬å…¬å¸‚','8862101','123','å°ç‹æ‘4è™Ÿ','0937373737','034333333','å­¸æ ¡',0,'test02','2024-01-04 19:52:12','test02','2024-01-04 19:52:12'),(2,1,'æ¸¬è©¦','å°ç£','8860000','æ¡ƒåœ’å¸‚','8864000','æ¡ƒåœ’å€','8864001','320','å°ç‹æ‘3è™Ÿ','0912121212',NULL,'å®¶',1,'test02','2024-01-05 22:25:17','test02','2024-01-05 22:25:17'),(3,1,'æ¸¬è©¦','å°ç£','8860000','æ¡ƒåœ’å¸‚','8864000','æ¡ƒåœ’å€','8864001','320','å°ç‹æ‘3è™Ÿ','0912121212',NULL,'å­¸æ ¡',0,'test02','2024-01-05 22:27:36','test02','2024-01-05 22:27:36'),(4,1,'æ¸¬è©¦','å°ç£','8860000','æ¡ƒåœ’å¸‚','8864000','æ¡ƒåœ’å€','8864001','320','å°ç‹æ‘3è™Ÿ','0912121212',NULL,'å®¶',0,'test02','2024-01-05 22:30:18','test02','2024-01-05 22:30:18'),(6,2,'å°ç‹','å°ç£','8860000','æ¡ƒåœ’å¸‚','8864000','æ¡ƒåœ’å€','8864001','320','å°ç‹æ‘3è™Ÿ','0980808080',NULL,'å®¶',0,'ç¶²ç«™ç®¡ç†è€…','2024-01-07 13:34:31','test02','2024-01-07 18:36:44'),(10,2,'å¼µç„¡å¿Œ','å°ç£','8860000','æ¡ƒåœ’å¸‚','8864000','æ¡ƒåœ’å€','8864001','320','å¹¸ç¦è·¯1è™Ÿ','0966666666','','å­¸æ ¡',0,'test02','2024-01-07 23:41:15','test02','2024-01-07 23:41:15'),(11,2,'æ¸¬è©¦åœ°å€','å°ç£','8860000','é›²æ—ç¸£','8861200','æ–—å—é®','8861202','333','æ¸¬è©¦è·¯1è™Ÿ','0966666666','','å®¶',0,'test02','2024-01-07 23:42:49','test02','2024-01-07 23:42:49');
/*!40000 ALTER TABLE `t_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cart`
--

DROP TABLE IF EXISTS `t_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cart` (
  `cid` int NOT NULL AUTO_INCREMENT COMMENT 'è³¼ç‰©è»Šid',
  `uid` int NOT NULL COMMENT 'æœƒå“¡id',
  `pid` int NOT NULL COMMENT 'å•†å“id',
  `price` bigint DEFAULT NULL COMMENT 'å•†å“å–®åƒ¹',
  `num` int DEFAULT NULL COMMENT 'å•†å“æ•¸é‡',
  `created_user` varchar(20) DEFAULT NULL COMMENT 'å‰µå»ºäºº',
  `created_time` datetime DEFAULT NULL COMMENT 'å‰µå»ºæ™‚é–“',
  `modified_user` varchar(20) DEFAULT NULL COMMENT 'ä¿®æ”¹äºº',
  `modified_time` datetime DEFAULT NULL COMMENT 'ä¿®æ”¹æ™‚é–“',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cart`
--

LOCK TABLES `t_cart` WRITE;
/*!40000 ALTER TABLE `t_cart` DISABLE KEYS */;
INSERT INTO `t_cart` VALUES (1,2,10000001,1000,2,'å°ç‹','2024-01-11 00:04:47','test02','2024-01-11 02:17:00'),(2,2,10000003,13,2,'å°ç‹','2024-01-11 00:04:47','test02','2024-01-11 16:42:58'),(3,2,10000006,28,2,'test02','2024-01-11 01:56:23','test02','2024-01-11 02:22:32'),(4,2,10000009,39929,1,'test02','2024-01-11 02:21:19','test02','2024-01-12 10:02:52'),(5,2,10000007,32999,1,'test02','2024-01-11 02:23:22','test02','2024-01-12 10:02:51');
/*!40000 ALTER TABLE `t_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dict_district`
--

DROP TABLE IF EXISTS `t_dict_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dict_district` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dict_district`
--

LOCK TABLES `t_dict_district` WRITE;
/*!40000 ALTER TABLE `t_dict_district` DISABLE KEYS */;
INSERT INTO `t_dict_district` VALUES (1,'886','8860000','å°ç£'),(2,'8860000','8861000','åŸºéš†å¸‚'),(3,'8860000','8862000','å°åŒ—å¸‚'),(4,'8860000','8863000','æ–°åŒ—å¸‚'),(5,'8860000','8864000','æ¡ƒåœ’å¸‚'),(6,'8860000','8865000','æ–°ç«¹å¸‚'),(7,'8860000','8866000','æ–°ç«¹ç¸£'),(8,'8860000','8867000','è‹—æ —ç¸£'),(9,'8860000','8868000','å°ä¸­å¸‚'),(10,'8860000','8869000','å½°åŒ–ç¸£'),(11,'8860000','8861100','å—æŠ•ç¸£'),(12,'8860000','8861200','é›²æ—ç¸£'),(13,'8860000','8861300','å˜‰ç¾©å¸‚'),(14,'8860000','8861400','å˜‰ç¾©ç¸£'),(15,'8860000','8861500','å°å—å¸‚'),(16,'8860000','8861600','é«˜é›„å¸‚'),(17,'8860000','8861700','å±æ±ç¸£'),(18,'8860000','8861800','å°æ±ç¸£'),(19,'8860000','8861900','èŠ±è“®ç¸£'),(20,'8860000','8862100','å®œè˜­ç¸£'),(21,'8860000','8862200','æ¾æ¹–ç¸£'),(22,'8860000','8862300','é‡‘é–€ç¸£'),(23,'8860000','8862400','é€£æ±Ÿç¸£'),(24,'8861000','8861001','ä»æ„›å€'),(25,'8861000','8861002','ä¿¡ç¾©å€'),(26,'8861000','8861003','ä¸­æ­£å€'),(27,'8862000','8862001','ä¸­æ­£å€'),(28,'8862000','8862002','å¤§åŒå€'),(29,'8862000','8862003','ä¸­å±±å€'),(30,'8863000','8863001','æ¿æ©‹å€'),(31,'8863000','8863002','æ–°èŠå€'),(32,'8863000','8863003','ä¸­å’Œå€'),(33,'8864000','8864001','æ¡ƒåœ’å€'),(34,'8864000','8864002','ä¸­å£¢å€'),(35,'8864000','8864003','å¤§æºªå€'),(36,'8865000','8865001','æ±å€'),(37,'8865000','8865002','åŒ—å€'),(38,'8865000','8865003','é¦™å±±å€'),(39,'8866000','8866001','ç«¹åŒ—å¸‚'),(40,'8866000','8866002','ç«¹æ±é®'),(41,'8866000','8866003','æ–°åŸ”é®'),(42,'8867000','8867001','è‹—æ —å¸‚'),(43,'8867000','8867002','ç«¹å—é®'),(44,'8867000','8867003','é ­ä»½å¸‚'),(45,'8868000','8868001','ä¸­å€'),(46,'8868000','8868002','æ±å€'),(47,'8868000','8868003','å—å€'),(48,'8869000','8869001','å½°åŒ–å¸‚'),(49,'8869000','8869002','å“¡æ—å¸‚'),(50,'8869000','8869003','å’Œç¾é®'),(51,'8861100','8861101','å—æŠ•å¸‚'),(52,'8861100','8861102','åŸ”é‡Œé®'),(53,'8861100','8861103','è‰å±¯é®'),(54,'8861200','8861201','æ–—å…­å¸‚'),(55,'8861200','8861202','æ–—å—é®'),(56,'8861200','8861203','è™å°¾é®'),(57,'8861300','8861301','æ±å€'),(58,'8861300','8861302','è¥¿å€'),(59,'8861300','8861303','ä¸­å€'),(60,'8861400','8861401','å¤ªä¿å¸‚'),(61,'8861400','8861402','æœ´å­å¸‚'),(62,'8861400','8861403','æ°´ä¸Šé„‰'),(63,'8861500','8861501','ä¸­è¥¿å€'),(64,'8861500','8861502','æ±å€'),(65,'8861500','8861503','å—å€'),(66,'8861600','8861601','æ–°èˆˆå€'),(67,'8861600','8861602','å‰é‡‘å€'),(68,'8861600','8861603','è‹“é›…å€'),(69,'8861700','8861701','å±æ±å¸‚'),(70,'8861700','8861702','æ½®å·é®'),(71,'8861700','8861703','æ±æ¸¯é®'),(72,'8861800','8861801','å°æ±å¸‚'),(73,'8861800','8861802','æˆåŠŸé®'),(74,'8861800','8861803','å¤ªéº»é‡Œé„‰'),(75,'8861900','8861901','èŠ±è“®å¸‚'),(76,'8861900','8861902','ç‰é‡Œé®'),(77,'8861900','8861903','é³³æ—é®'),(78,'8862100','8862001','å®œè˜­å¸‚'),(79,'8862100','8862002','ç¾…æ±é®'),(80,'8862100','8862003','è˜‡æ¾³é®'),(81,'8862200','8862101','é¦¬å…¬å¸‚'),(82,'8862200','8862102','æ¹–è¥¿é„‰'),(83,'8862200','8862103','ç™½æ²™é„‰'),(84,'8862300','8862201','é‡‘åŸé®'),(85,'8862300','8862202','é‡‘æ¹–é®'),(86,'8862300','8862203','é‡‘æ²™é®'),(87,'8862400','8862301','å—ç«¿é„‰'),(88,'8862400','8862302','åŒ—ç«¿é„‰'),(89,'8862400','8862303','è’å…‰é„‰');
/*!40000 ALTER TABLE `t_dict_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order` (
  `oid` int NOT NULL AUTO_INCREMENT COMMENT 'è¨‚å–®id',
  `uid` int NOT NULL COMMENT 'æœƒå“¡id',
  `recv_name` varchar(20) NOT NULL COMMENT 'æ”¶è²¨äººå§“å',
  `recv_phone` varchar(20) DEFAULT NULL COMMENT 'æ”¶è²¨äººé›»è©±',
  `recv_province` varchar(15) DEFAULT NULL COMMENT 'æ”¶è²¨äººåœ‹å®¶',
  `recv_city` varchar(15) DEFAULT NULL COMMENT 'æ”¶è²¨äººå¸‚',
  `recv_area` varchar(15) DEFAULT NULL COMMENT 'æ”¶è²¨äººå€',
  `recv_address` varchar(50) DEFAULT NULL COMMENT 'æ”¶è²¨è©³ç´°åœ°å€',
  `total_price` bigint DEFAULT NULL COMMENT 'ç¸½åƒ¹',
  `status` int DEFAULT NULL COMMENT 'ç‹€æ…‹ : 0æœªä»˜æ¬¾ ,1-å·²ä»˜æ¬¾,2-å·²å–æ¶ˆ,3-å·²é—œé–‰,4-å·²å®Œæˆ',
  `order_time` datetime DEFAULT NULL COMMENT 'ä¸‹å–®æ™‚é–“',
  `pay_time` datetime DEFAULT NULL COMMENT 'ä»˜æ¬¾æ™‚é–“',
  `created_user` varchar(20) DEFAULT NULL COMMENT 'å‰µå»ºäºº',
  `created_time` datetime DEFAULT NULL COMMENT 'å‰µå»ºæ™‚é–“',
  `modified_user` varchar(20) DEFAULT NULL COMMENT 'ä¿®æ”¹äºº',
  `modified_time` datetime DEFAULT NULL COMMENT 'ä¿®æ”¹æ™‚é–“',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_item`
--

DROP TABLE IF EXISTS `t_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order_item` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'è¨‚å–®è£¡é¢å•†å“çš„id',
  `oid` int NOT NULL COMMENT 'å±¬æ–¼å“ªå€‹è¨‚å–®ç·¨è™Ÿ',
  `pid` int NOT NULL COMMENT 'å•†å“çš„pid',
  `title` varchar(100) NOT NULL COMMENT 'å•†å“æ¨™é¡Œ',
  `image` varchar(500) DEFAULT NULL COMMENT 'å•†å“åœ–ç‰‡',
  `price` bigint DEFAULT NULL COMMENT 'å•†å“åƒ¹æ ¼',
  `num` int DEFAULT NULL COMMENT 'è³¼è²·æ•¸é‡',
  `created_user` varchar(20) DEFAULT NULL COMMENT 'å‰µå»ºäºº',
  `created_time` datetime DEFAULT NULL COMMENT 'å‰µå»ºæ™‚é–“',
  `modified_user` varchar(20) DEFAULT NULL COMMENT 'ä¿®æ”¹äºº',
  `modified_time` datetime DEFAULT NULL COMMENT 'ä¿®æ”¹æ™‚é–“',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_item`
--

LOCK TABLES `t_order_item` WRITE;
/*!40000 ALTER TABLE `t_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_product` (
  `id` int NOT NULL COMMENT 'å•†å“id',
  `category_id` int DEFAULT NULL COMMENT 'åˆ†é¡id',
  `item_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'å•†å“ç³»åˆ—',
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'å•†å“æ¨™é¡Œ',
  `sell_point` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'å•†å“è³£é»',
  `price` bigint DEFAULT NULL COMMENT 'å•†å“å–®åƒ¹',
  `num` int DEFAULT NULL COMMENT 'åº«å­˜æ•¸',
  `image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'åœ–ç‰‡',
  `status` int DEFAULT '1' COMMENT 'å•†å“ç‹€æ…‹ 1:ä¸Šæ¶ 2:ä¸‹æ¶ 3:åˆªé™¤',
  `priority` int DEFAULT NULL COMMENT 'å„ªå…ˆç´š',
  `created_time` datetime DEFAULT NULL COMMENT 'å‰µå»ºæ™‚é–“',
  `modified_time` datetime DEFAULT NULL COMMENT 'æœ€å¾Œä¿®æ”¹æ™‚é–“',
  `created_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'å‰µå»ºäºº',
  `modified_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT 'æœ€å¾Œä¿®æ”¹äºº',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES (10000001,238,'ç­†è¨˜æœ¬','æ¸¬è©¦ç­†è¨˜æœ¬','è¶…å€¼ç‰¹æƒ !',23,100,'/images/portal/00GuangBo1040A5GBR0731/',1,10,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000002,238,'çš®è³ªç­†è¨˜æœ¬','(GuangBo)çš®è³ªæ—¥ç¨‹ç­†è¨˜æœ¬,è¨ˆç•«ç­†è¨˜æœ¬ç±³è‰²FB60322','è¶…å€¼ç‰¹æƒ !',46,100,'/images/portal/001GuangBo)FB60322/',1,9,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000003,238,'16kè®°äº‹æœ¬','(GuangBo)16K115é ç­†è¨˜æœ¬æ—¥è¨˜æœ¬åœ–æ¡ˆéš¨æ©Ÿ','è¶…å€¼ç‰¹æƒ !',13,100,'/images/portal/01GuangBo16K115FB60506/',1,8,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000004,241,'è¨ˆç®—æ©Ÿ','(deliï¼‰1548Aå•†å‹™è¾¦å…¬è¨ˆç®—æ©Ÿ,å¤ªé™½èƒ½é›™é›»æº','è¶…å€¼ç‰¹æƒ !',58,100,'/images/portal/002calculator1548A/',1,7,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000005,241,'æ»¾ç ç­†','(Schneiderï¼‰ K15 ç¶“å…¸æ¬¾æ»¾ç ç­†(5ä¹‹æ··è£)','è¶…å€¼ç‰¹æƒ !',29,100,'/images/portal/03SchneiderK15/',1,6,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000006,236,'å¤¾éˆè¢‹','ä¸‰æœ¨ C4523 ç¶²æ ¼å¤¾éˆè¢‹/æ–‡ä»¶å¸¶12å€‹è£é¡è‰²éš¨æ©Ÿ','è¶…å€¼ç‰¹æƒ !',28,100,'/images/portal/04_SUNWOODC452312/',1,5,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000007,163,'ç­†è¨˜å‹é›»è…¦','Dell 700Rç¶“å…¸ç‰ˆé‡‘è‰²','ä¸‹å–®é€è¡Œå‹•é›»æº',32999,100,'/images/portal/11DELLran7000gold/',1,4,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000008,163,'ç­†è¨˜å‹é›»è…¦','Dell 700R 1605ç¶“å…¸ç‰ˆéŠ€è‰²','ä¸‹å–®é€è¡Œå‹•é›»æº',4549,100,'/images/portal/11DELLran7000R1605Ssilvery/',1,3,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000009,163,'ç­†è¨˜å‹é›»è…¦','Dell 700Rå­¸ç¿’æ¿é‡‘è‰²','ä¸‹å–®é€è¡Œå‹•é›»æº',39929,100,'/images/portal/11DELLran7000gold/',1,2,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000010,163,'ç­†è¨˜å‹é›»è…¦','Dell 700R 1605 ç¶“å…¸ç‰ˆé“¶è‰²','ä¸‹å–®é€è¡Œå‹•é›»æº',5559,100,'/images/portal/11DELLran7000R1605Ssilvery/',1,1,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin');
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT 'æœƒå“¡id',
  `username` varchar(20) NOT NULL COMMENT 'æœƒå“¡åç¨±',
  `password` char(32) NOT NULL COMMENT 'å¯†ç¢¼',
  `salt` char(36) DEFAULT NULL COMMENT 'é¹½å€¼',
  `phone` varchar(20) DEFAULT NULL COMMENT 'é›»è©±è™Ÿç¢¼',
  `email` varchar(30) DEFAULT NULL COMMENT 'é›»å­éƒµä»¶',
  `gender` int DEFAULT NULL COMMENT 'æ€§åˆ¥: 0-å¥³ï¼Œ1-ç”·',
  `avatar` blob,
  `is_delete` int DEFAULT NULL COMMENT 'æ˜¯å¦åˆªé™¤ï¼š0-æœªåˆªé™¤ï¼Œ1-å·²åˆªé™¤',
  `created_user` varchar(20) DEFAULT NULL COMMENT 'æ—¥èªŒ-å‰µå»ºäºº',
  `created_time` datetime DEFAULT NULL COMMENT 'æ—¥èªŒ-å‰µå»ºæ™‚é–“',
  `modified_user` varchar(20) DEFAULT NULL COMMENT 'æ—¥èªŒ-æœ€å¾Œä¿®æ”¹åŸ·è¡Œäºº',
  `modified_time` datetime DEFAULT NULL COMMENT 'æ—¥èªŒ-æœ€å¾Œä¿®æ”¹æ™‚é–“',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'test01','D83B8A0A65C896FFF659F34EB5E2AB77','CC56F379-0CDC-4E0F-B386-B891C09BC670','09876543210','changeInfoTest@gmail.com',0,NULL,0,'test01','2024-01-04 18:33:11','æ–°å¢è³‡æ–™æ¸¬è©¦','2024-01-04 18:44:54'),(2,'test02','C0DBEA8EF2DA991B3A505CFC36C52F67','17EBCDA4-35A7-4BD4-BB40-646253D27ECB','09876543210','changeInfoTest@gmail.com',0,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0d\0\0\0d\0\0\0p\â•T\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0—IDATx^\í	\\W\ÇÍ±³Ù½fvgFf³\Ç\Ìgg\Öx%*¢(Á ˆ\rˆr)Š‚\Ê-\ZQˆbD£\ÑˆŠˆ¢\ä²A•CnIğ@¨j(	ÿy¯|\İô3\\U\İ-\é\ß\çóıHWU÷û¿ß¿\ë]UÕ\ĞH#4\ÒH#4\ÒH#4\ÒH#4\Z‚”\ïu\äş\Ñõa\Ş\ÈS¹#s›~\ÈıÍ¿’İ¿<\Õ\Õ\Õıª¨¹ù7…mm:\ß\Úú»r‰\ä\É.A\â\ïw\äj¥t\äüÁ\'\ãa®VFG\È3²\åQ\ÎÈ\È[†Ÿ\Ä\0\ï°¬n„ñAÄ‹%l~„eĞ¿\è_è˜eº\í\è\ïK\èøƒb	R\ĞÊ˜ˆ\Û\Ûÿ‰|\ä \Õ]ò\á? $\Ô=\Ê\Ór{˜3\ÒS1¯@gL1y\ËğPqsó\Å\ã‡L\Ï(`™Ç½M,óQŒ´± ¥e)j\ĞBgB-Rˆ7’úv*³±ñ\ï%-N\èl\ÈB\ÆuQM\å¦\'7u$„	5]\å´DHytVk9ô\íRv[Û¯Qü‘I¬¢iÂƒš·§b–E\Éù„\Ô/¡3d/-¹#€òG};Dú”\æ\Í(eƒš\Ç¨9\ÛU\Ò\Òò[\â\Ï\êø??D\Æ? %õ3\îä°·CÉ§(µ4cT\Ë\ÜE±¹À;$\Ü7\êQ¶\ÖtÔ7ö$#W\ëñ\Ã<­\0#ú|¯ZH\Ü\Ôôú&\îÁ#!ªjj\Æ\n‹$’ÿ&¡¿Q\Ø|<\Ì\í\ÈùıT\Éi-A‡İ¼J,‘ŒBÉ¨¡U^}a\îc3R…\á#4˜\Ç\ÛğUÉ¼:›™ˆş4ao…P2Ü•3Œ\Z4\ÉDR­7*\àİ ²\Ú%A¥5a¡eWµ\Èfõj‡?§W\îm…9\Ó\×ò\Ìê²š\0`‚\Êjj\Éf\Õ\r!ƒ\é•z»AõJOxTSAAeÕ‰Ò„ º\Â\ê\ê~Ev©N…,\ëò6Œ¤sğM}JHY\ít””.!¥\Õ\Û\Èf\Õ	/\ä\r>£/˜Re­*nøç€Šúÿ!/U\'¼üÀM¬¨\à¬†«°\ç\èˆ\Ü\Z\r\ë7¬‡\ÑQ°\çH2d}\×@=^p nm‘ª«Ÿp»Š’QD/N–•‚Ÿ—\'˜³\Ç|¤€	Ú÷§–\\ ¾¨\\º\İ\Åm­=¯QR\î\à•ibz©€e\Ãdƒç‹¼¦›°÷\ØQôó³	ŸP\Ñœ˜\àÕuµú™ƒ\áÖ£G¨\Û\0\è\ê\î†Ê»wz¶£\Én¾\Ú\ÍQ\n\æ/(¸\ç\Ò ùbwr\ØÌ š\Ş,u´!*f\ä\\¿Fıüğ¢«‹KV\ë“\'rûğeb…zge*¨)€ua\ë¨&s\í‰\à\á\ä\0+\İ\İ`\Çş}\Ô2û¢ı\ÙS’€ú\î\Ë\ïg\Ù6qSÓ¿;T«I‹•\\p<³7j,¬ò÷¥–\Ù…ˆºû÷\áŠLsÕ‹b‰ê„¾,\ï os%¸Aƒ\Û}ü¦™\É\Ûvï¢–;TP_ò,\ïö\í?kT#n\ÎA	n(lŞ¾j$\à\Î>£¾Z.ˆYv3±F5Bg\ÇyZ`CÁ\İÙ‘j&,™oK-“/TÖ—´¶~Dj¨XM\ÓU0r\áŒ)`:n´\Âö²h%µL>Ag‰\'±H¹B#‹HZ@C!¿¥YÁD+#hÍŒ…Ê„õ\àki¤° \àyŒ˜i¦–\Íb	SB,RPgş.*¸…\ĞP‘5pî¤\áf\Ú¸Ÿ·«‡¢ø`±3\Ñ\Øş1ø¸y\Ú÷¼j/5[\İâ––ÿ#V)G…,;Ì™øz6¾/\ĞE.²||3$¯ó€UÖ³Áz²\â\ŞVg\"D.±‚òƒ\ë 5Â«gû\×\'OP\Ë\å|\éX¥H˜PZ |\à<Ç„3³¯¥FS“A\ãú‰h¨?²‰k\Ún\Ú*·¯	½)3!,“C¬RPBòhğÁŠ¥K8\ã<Dú=†\ŞÉ‰ƒÚ¤(‰\â\İÁP›¸\îd\ï”3ı^n4 „\\\Ü\Ês\å`´e\Åö\ì·Ö™ Ì„<\Åwb»„¾\ãO‚hğÁ†\ÈMœq[\İm8#Û‘ñşf°5M_,±†\íKm¹¿Kö„ö˜\Ù\äl«-Œ`\Ë\ây‹	·7ƒS\Ë{ö/1\Ò\ã>7õb	µ\\ş‘|J,Vâ¶–±ô\0ø!!+‹3\îØ†er†• 71z”%E,‘¬ –	+1\Ã\Ø\Ğ\à<\ì\Íj¨\ç\Úûsq«\ä\ÅM\ÑR}]¸¼o­\Üö\Şû\Ü¼õ \åô6¹\íQ®V`©3Yi±PÇ¾‹X&¬„\è\ĞQ››BüÀb\Âx\î\ì0A“À†”(9C1~¦°y\á\\…\íR\ÚQŸQq`X\Ãı+»/\Ìy\ØLyµF\æff§._¤\Æ\ÂJ\ë\Øñ~Z\0Ca\ÇW{À\Û\ÜZ\Î\ÄÀ]Ôo÷²‡\Û22\æp¨gtú¦r\ÛeÁ{j\Ø2H\Û\à\Éı-»/\Î\Û	®§½\Zµ]\ï®æ³©±ğš±\ß –	+TP\Z-€¡€¯‹\ïô]È™µ\ÕE¶ºYÈ™‰Áw,Ra{I\\…q>¨£w¦ô­`ö\Éxj,<ò€X&¬ğ©H)|H|™˜\0¡‹l_±Nlz=:â‹³\Ûı\á\Ò\Ş .!\çw‡ÀR{;j,¼Á2]\Ä2a…\×jd¾\Ñ\Ñ;;\áşÏ¡üN»|Pı$õ\Âp6šÁWy †ó;\Â\Â\ä\í„º\äÇ®„\ë¼ 4$˜\ZŸı*\'TP•´ÀÆ‡¸KšRuşô“\Ü]ıw\ê†Pqh=gP	Á\Ë-øoKL?E…Oro\Üşi\Ù[}\î=NRñZU÷\î*\Öğ„0\Æo1gØ©¨7w\ÜRğ¬<û?Èñ‡¼˜\0¸Û«\ï\r^”\Ä	¹Š\Şg­§«”ùHn\Î²\Ğ,=CZ û\ä1I\Ã+u#ğ½K²Aõ—Se`¥;²ö„\èÁ\Ë*´\í½)ùj\r£9\Ìr;+ˆ\ØIOğj±LX¡>ä˜´\Ğ¨yz\Ôù¢\'\×;*6³2Á\Şp&8*\Î5ğp+ı…\í4šN\Ê/.bNDùÀÜ©“¹R\Î–¹C,VxÚ»ğ\Ë\í·\Õw\ĞÀ÷P\á&¥>y£‚©xÁP¼sT\'nP˜g°\ß\Æp‹Š˜ÖŒ\írû0Ş¶\æğe\Â!j™‚À²\Êy¯\ÑP\à|OÖ@7S¥\àş#k‹/œÚ¸‚›fnñb\ÔG\Ü>»ƒz<¿\ÌC\Íaş­&jy‚À²©\Ä2aU ‘Ì¢À#§«*ÁzúT4³–¿Z8X\Öy8Ã¦-›©e	\ËFË„~2•\Z\0\ÏDmû¼l\çr\Ë\ï4“ûKÊ¶`pC\î\Í\Ôr„B\Ü\Ê, –	/4‚Ğ‚\à<7ñY\æ¾\Îv\\ÿ@3û»”(®9ºIÖ¨z“6úz\ÜÄ“V†œgÙ¿»„¤Ø¾w\åf\á™\Ò\æ2(d…­\à\åø\Ğ\Ğp2úM\Z7(^ùM\×\Ñ\ã>Ev;>«¢|\İÀÁ\Ø_(¢~¶À0\Ä.aõòŠ£eg¹û²\Â0O+İ¡\æf6- ^Á\ã\àeó8oGPFP²\\9\r¦q7ÜmüúyBƒZC\Ä2\áô²\ÌÑ ³Â¡KšŒ\×8Bí³\ÔÀø\ÄB{\ïğ†XO;n&ß»o¹~\"\n\â}á¿,š©\Ç\ÎR?G(\åñ”Œ|\Åd¼\âau\050¾À\íˆÆ†k‡B8Šb½!nù|ø\Ê\Ï¬r\áş\Ş\ç\ë\0uûVqûñ­Aq‡P?KpX\æ	?–Ö§PB\îÓ’!¥P\"L’œŸ>‹œaµqOB¤4~Ü“Y\Ò>_öúºŸ” Ü¹†e‰eÂª³\Üş-˜¯,¢7H\Ò._‚õ\á\ëÀ\Ñ@\èO…¸e\ÖP¿?HÁøŸ\ãtøXn2¬¦L‚\Ğ\08ZpZßœ“´\Ì&–	«—öQ´d`Ø†Xjp!£¶¢c·\ÓXL›\n\Î~’”\Ù\'\ã¡1!”jz_”\İ;\'À\âµa`ù™>\Ø\ZÀ\Æ\èH8SSMaÈ°l\0¼K,V vù\0%¥¼w2:ªıº‹\Ù\ëô\0û\à\Z\Ö\Æ\Ø®6V0gò$pt÷\0Ïƒ‰°º´JúK‘J\àô™¯¡!q-\ÕxYpò\nSwÀ.ñY.«~ı9¥Õ°<\é8zxre¹9\ÙAü\á$\Èo¾Em0(ıY\Ã\î*\ç_£¾\Ä‘ƒ†¿y¨)bo$Ğ‚\ë‹\ä¼\\°72\0;kkX¶w?•”\Ë%ÆšË•ŸŸ™\é{\áb\ÊV¨=¼¾OXU\ÉŸ¶æœ€ğ’\Ë\Ô÷Ê‚\Ërß¹lmmÀbŠ¬]\Ì\ÇYsM)\×?úR\Ñ\í\æ?£`ô\î¡\ÌoÁJO–\í\ÙG5L™øe\ä\Âÿ@.”\âÁ•\Å,kO,Q½P\Û\Ù\ïgÔ³\Ñd\Íz†¬8šF5HU\à/‡ƒhÖ ®• ‰`>±B=D~º¯‘loğ\Ï`¸xûPMQ5ó­,aZ*5\î7\êıÿZ±B}TÀ0ø\ÖZĞ²\à•×•GNP\rQ5®\á°&8\Z÷›@M\ÕZbú©¯¦ªL>A¯P\rQ5\îqñ\à\ã\îJ“ûs¿¥r\á\àp{J\ÜÈ ?j†:\à¹ÿğtšO]–mSùs\éış\énğ5…\n ’²Ï‚½¥9\Õu`E\ÒQX2\ÏB!nYÎ³· ˜ixva¦*«¿ğCøÔ»2_Ÿ<	óm©f¨+Ÿ„¦\Ær1\ËR~\ë<«\\\"+\ç-_\Âÿª\Ä\Ù\n\Å9N‹R\ÍP|Ng½\ágrI…½\ZÓ³B/Et7Š”ó\Ø\Z_:\Ï0\ãQŸ\Ò*­¾\r\Ç\Ùİj†:\à—-\ænA’M‚<¼m¯\rO–&\äe¹}#©\æ\Û%q[\Ûÿ¢\nq}\nş•uƒ`\Ï_s\íIŠ	a™Ç…‰1ˆg¼\ßY\î\àõ²\Ü!º»\ÂQõ¿©8X\á^\Ì2\Ù8!VªoBğ¢¦h\ÜX¹d\à	/J\ÆDR•\á#¼,aï²˜jÆŠKW °TfuV@</VP·cL\'|\Ì]¡$	I¹t\ïŞ¿*?­#\Z7¦\Ó\Å?\à§À¢R9#ŒsÀµX~›ø^®‚©Y9\Ô}ó©:yµşX\Â,%ao\Zõ\ï\è[x\Ø|º\îóe_~\Å]§ÀF¨CB¼§sw·\'\áşr$\Z;j†™ö¤«Ö¢\Ù\Ï=$ª,!A—*Á#~\ØYZ¼04\áJ\È*\ŞğøŸ¡wŒ\Çü¿52\â¦\Èpf§CTtwï¦ŒopBt3³ayB2,òös\É/-¦\é\Ö\Ì\Z=\Ú\Æ\Öv„ú®K)Y\ï\èkk›˜Mœğ­Ù¤	?:¹¸¼ğØ¹\Ä¨¦ÿœBpß‰†\İ+½A¤;¥\Û\Ú`†\Äú\Ó\é\ëÇŒù/\ÃğV@U\Õ\ïQÿpnuYu[Piµ/\ÙÜ§P\Çÿ[„Óœ\É\Ú¦?y6Wÿ\Ó¸ºv¹……\Ã\Ò\íq\àõ\ÍağI\Ï\ß\Ì\\\È/†À‚‹=\à\×x;\îğB¡[D$¸x-+£™\İ\æS&¿p63­p23ù\Üp\Ü_şLŠû\å(¨´&Bú\íD	ùÉ¿¼ü?È®i\Öø¿ş	7\'“µ£mf~–ak4ó{+}½VzÓŸš\ëhwšiOì’‚_\ÏÕ›ş÷\Ã|Ñ¬\ïœMM;\ZŠFM>î—« \Ò\ÚÀ&£´\æIX]ğwóiôf…‰›>*«‰E\ÍV:CL\Èf4\ÒH#4\ÒH#4\ÒH#4\ÒH#4\ZœFŒø¦Š—¡Nh‡°\0\0\0\0IEND®B`‚',0,'test02','2024-01-04 18:33:23','test02','2024-01-06 22:34:25');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 11:32:05
