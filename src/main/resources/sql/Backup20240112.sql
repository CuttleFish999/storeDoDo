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
  `aid` int NOT NULL AUTO_INCREMENT COMMENT '收貨地址id',
  `uid` int DEFAULT NULL COMMENT '會員id',
  `name` varchar(20) DEFAULT NULL COMMENT '收貨人姓名',
  `province_name` varchar(20) DEFAULT NULL COMMENT '國家',
  `province_code` char(20) DEFAULT NULL COMMENT '國家-代號',
  `city_name` varchar(20) DEFAULT NULL COMMENT '市-名稱',
  `city_code` char(20) DEFAULT NULL COMMENT '市-代號',
  `area_name` varchar(20) DEFAULT NULL COMMENT '區-名稱',
  `area_code` char(20) DEFAULT NULL COMMENT '區-代號',
  `zip` char(20) DEFAULT NULL COMMENT '郵遞區號',
  `address` varchar(50) DEFAULT NULL COMMENT '詳細地址',
  `phone` varchar(20) DEFAULT NULL COMMENT '手機',
  `tel` varchar(20) DEFAULT NULL COMMENT '市話',
  `tag` varchar(20) DEFAULT NULL COMMENT '標籤',
  `is_default` int DEFAULT NULL COMMENT '是否預設：0-不預設，1-預設',
  `created_user` varchar(20) DEFAULT NULL COMMENT '創建人',
  `created_time` datetime DEFAULT NULL COMMENT '創建時間',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address`
--

LOCK TABLES `t_address` WRITE;
/*!40000 ALTER TABLE `t_address` DISABLE KEYS */;
INSERT INTO `t_address` VALUES (1,2,'測試','台灣','8860000','澎湖縣','8862200','馬公市','8862101','123','小王村4號','0937373737','034333333','學校',0,'test02','2024-01-04 19:52:12','test02','2024-01-04 19:52:12'),(2,1,'測試','台灣','8860000','桃園市','8864000','桃園區','8864001','320','小王村3號','0912121212',NULL,'家',1,'test02','2024-01-05 22:25:17','test02','2024-01-05 22:25:17'),(3,1,'測試','台灣','8860000','桃園市','8864000','桃園區','8864001','320','小王村3號','0912121212',NULL,'學校',0,'test02','2024-01-05 22:27:36','test02','2024-01-05 22:27:36'),(4,1,'測試','台灣','8860000','桃園市','8864000','桃園區','8864001','320','小王村3號','0912121212',NULL,'家',0,'test02','2024-01-05 22:30:18','test02','2024-01-05 22:30:18'),(6,2,'小王','台灣','8860000','桃園市','8864000','桃園區','8864001','320','小王村3號','0980808080',NULL,'家',0,'網站管理者','2024-01-07 13:34:31','test02','2024-01-07 18:36:44'),(10,2,'張無忌','台灣','8860000','桃園市','8864000','桃園區','8864001','320','幸福路1號','0966666666','','學校',0,'test02','2024-01-07 23:41:15','test02','2024-01-07 23:41:15'),(11,2,'測試地址','台灣','8860000','雲林縣','8861200','斗南鎮','8861202','333','測試路1號','0966666666','','家',0,'test02','2024-01-07 23:42:49','test02','2024-01-07 23:42:49');
/*!40000 ALTER TABLE `t_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cart`
--

DROP TABLE IF EXISTS `t_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cart` (
  `cid` int NOT NULL AUTO_INCREMENT COMMENT '購物車id',
  `uid` int NOT NULL COMMENT '會員id',
  `pid` int NOT NULL COMMENT '商品id',
  `price` bigint DEFAULT NULL COMMENT '商品單價',
  `num` int DEFAULT NULL COMMENT '商品數量',
  `created_user` varchar(20) DEFAULT NULL COMMENT '創建人',
  `created_time` datetime DEFAULT NULL COMMENT '創建時間',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改時間',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cart`
--

LOCK TABLES `t_cart` WRITE;
/*!40000 ALTER TABLE `t_cart` DISABLE KEYS */;
INSERT INTO `t_cart` VALUES (1,2,10000001,1000,2,'小王','2024-01-11 00:04:47','test02','2024-01-11 02:17:00'),(2,2,10000003,13,2,'小王','2024-01-11 00:04:47','test02','2024-01-11 16:42:58'),(3,2,10000006,28,2,'test02','2024-01-11 01:56:23','test02','2024-01-11 02:22:32'),(4,2,10000009,39929,1,'test02','2024-01-11 02:21:19','test02','2024-01-12 10:02:52'),(5,2,10000007,32999,1,'test02','2024-01-11 02:23:22','test02','2024-01-12 10:02:51');
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
INSERT INTO `t_dict_district` VALUES (1,'886','8860000','台灣'),(2,'8860000','8861000','基隆市'),(3,'8860000','8862000','台北市'),(4,'8860000','8863000','新北市'),(5,'8860000','8864000','桃園市'),(6,'8860000','8865000','新竹市'),(7,'8860000','8866000','新竹縣'),(8,'8860000','8867000','苗栗縣'),(9,'8860000','8868000','台中市'),(10,'8860000','8869000','彰化縣'),(11,'8860000','8861100','南投縣'),(12,'8860000','8861200','雲林縣'),(13,'8860000','8861300','嘉義市'),(14,'8860000','8861400','嘉義縣'),(15,'8860000','8861500','台南市'),(16,'8860000','8861600','高雄市'),(17,'8860000','8861700','屏東縣'),(18,'8860000','8861800','台東縣'),(19,'8860000','8861900','花蓮縣'),(20,'8860000','8862100','宜蘭縣'),(21,'8860000','8862200','澎湖縣'),(22,'8860000','8862300','金門縣'),(23,'8860000','8862400','連江縣'),(24,'8861000','8861001','仁愛區'),(25,'8861000','8861002','信義區'),(26,'8861000','8861003','中正區'),(27,'8862000','8862001','中正區'),(28,'8862000','8862002','大同區'),(29,'8862000','8862003','中山區'),(30,'8863000','8863001','板橋區'),(31,'8863000','8863002','新莊區'),(32,'8863000','8863003','中和區'),(33,'8864000','8864001','桃園區'),(34,'8864000','8864002','中壢區'),(35,'8864000','8864003','大溪區'),(36,'8865000','8865001','東區'),(37,'8865000','8865002','北區'),(38,'8865000','8865003','香山區'),(39,'8866000','8866001','竹北市'),(40,'8866000','8866002','竹東鎮'),(41,'8866000','8866003','新埔鎮'),(42,'8867000','8867001','苗栗市'),(43,'8867000','8867002','竹南鎮'),(44,'8867000','8867003','頭份市'),(45,'8868000','8868001','中區'),(46,'8868000','8868002','東區'),(47,'8868000','8868003','南區'),(48,'8869000','8869001','彰化市'),(49,'8869000','8869002','員林市'),(50,'8869000','8869003','和美鎮'),(51,'8861100','8861101','南投市'),(52,'8861100','8861102','埔里鎮'),(53,'8861100','8861103','草屯鎮'),(54,'8861200','8861201','斗六市'),(55,'8861200','8861202','斗南鎮'),(56,'8861200','8861203','虎尾鎮'),(57,'8861300','8861301','東區'),(58,'8861300','8861302','西區'),(59,'8861300','8861303','中區'),(60,'8861400','8861401','太保市'),(61,'8861400','8861402','朴子市'),(62,'8861400','8861403','水上鄉'),(63,'8861500','8861501','中西區'),(64,'8861500','8861502','東區'),(65,'8861500','8861503','南區'),(66,'8861600','8861601','新興區'),(67,'8861600','8861602','前金區'),(68,'8861600','8861603','苓雅區'),(69,'8861700','8861701','屏東市'),(70,'8861700','8861702','潮州鎮'),(71,'8861700','8861703','東港鎮'),(72,'8861800','8861801','台東市'),(73,'8861800','8861802','成功鎮'),(74,'8861800','8861803','太麻里鄉'),(75,'8861900','8861901','花蓮市'),(76,'8861900','8861902','玉里鎮'),(77,'8861900','8861903','鳳林鎮'),(78,'8862100','8862001','宜蘭市'),(79,'8862100','8862002','羅東鎮'),(80,'8862100','8862003','蘇澳鎮'),(81,'8862200','8862101','馬公市'),(82,'8862200','8862102','湖西鄉'),(83,'8862200','8862103','白沙鄉'),(84,'8862300','8862201','金城鎮'),(85,'8862300','8862202','金湖鎮'),(86,'8862300','8862203','金沙鎮'),(87,'8862400','8862301','南竿鄉'),(88,'8862400','8862302','北竿鄉'),(89,'8862400','8862303','莒光鄉');
/*!40000 ALTER TABLE `t_dict_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order` (
  `oid` int NOT NULL AUTO_INCREMENT COMMENT '訂單id',
  `uid` int NOT NULL COMMENT '會員id',
  `recv_name` varchar(20) NOT NULL COMMENT '收貨人姓名',
  `recv_phone` varchar(20) DEFAULT NULL COMMENT '收貨人電話',
  `recv_province` varchar(15) DEFAULT NULL COMMENT '收貨人國家',
  `recv_city` varchar(15) DEFAULT NULL COMMENT '收貨人市',
  `recv_area` varchar(15) DEFAULT NULL COMMENT '收貨人區',
  `recv_address` varchar(50) DEFAULT NULL COMMENT '收貨詳細地址',
  `total_price` bigint DEFAULT NULL COMMENT '總價',
  `status` int DEFAULT NULL COMMENT '狀態 : 0未付款 ,1-已付款,2-已取消,3-已關閉,4-已完成',
  `order_time` datetime DEFAULT NULL COMMENT '下單時間',
  `pay_time` datetime DEFAULT NULL COMMENT '付款時間',
  `created_user` varchar(20) DEFAULT NULL COMMENT '創建人',
  `created_time` datetime DEFAULT NULL COMMENT '創建時間',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改時間',
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
  `id` int NOT NULL AUTO_INCREMENT COMMENT '訂單裡面商品的id',
  `oid` int NOT NULL COMMENT '屬於哪個訂單編號',
  `pid` int NOT NULL COMMENT '商品的pid',
  `title` varchar(100) NOT NULL COMMENT '商品標題',
  `image` varchar(500) DEFAULT NULL COMMENT '商品圖片',
  `price` bigint DEFAULT NULL COMMENT '商品價格',
  `num` int DEFAULT NULL COMMENT '購買數量',
  `created_user` varchar(20) DEFAULT NULL COMMENT '創建人',
  `created_time` datetime DEFAULT NULL COMMENT '創建時間',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改時間',
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
  `id` int NOT NULL COMMENT '商品id',
  `category_id` int DEFAULT NULL COMMENT '分類id',
  `item_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品系列',
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品標題',
  `sell_point` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '商品賣點',
  `price` bigint DEFAULT NULL COMMENT '商品單價',
  `num` int DEFAULT NULL COMMENT '庫存數',
  `image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '圖片',
  `status` int DEFAULT '1' COMMENT '商品狀態 1:上架 2:下架 3:刪除',
  `priority` int DEFAULT NULL COMMENT '優先級',
  `created_time` datetime DEFAULT NULL COMMENT '創建時間',
  `modified_time` datetime DEFAULT NULL COMMENT '最後修改時間',
  `created_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '創建人',
  `modified_user` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '最後修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES (10000001,238,'筆記本','測試筆記本','超值特惠!',23,100,'/images/portal/00GuangBo1040A5GBR0731/',1,10,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000002,238,'皮質筆記本','(GuangBo)皮質日程筆記本,計畫筆記本米色FB60322','超值特惠!',46,100,'/images/portal/001GuangBo)FB60322/',1,9,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000003,238,'16k记事本','(GuangBo)16K115頁筆記本日記本圖案隨機','超值特惠!',13,100,'/images/portal/01GuangBo16K115FB60506/',1,8,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000004,241,'計算機','(deli）1548A商務辦公計算機,太陽能雙電源','超值特惠!',58,100,'/images/portal/002calculator1548A/',1,7,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000005,241,'滾珠筆','(Schneider） K15 經典款滾珠筆(5之混裝)','超值特惠!',29,100,'/images/portal/03SchneiderK15/',1,6,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000006,236,'夾鏈袋','三木 C4523 網格夾鏈袋/文件帶12個裝顏色隨機','超值特惠!',28,100,'/images/portal/04_SUNWOODC452312/',1,5,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000007,163,'筆記型電腦','Dell 700R經典版金色','下單送行動電源',32999,100,'/images/portal/11DELLran7000gold/',1,4,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000008,163,'筆記型電腦','Dell 700R 1605經典版銀色','下單送行動電源',4549,100,'/images/portal/11DELLran7000R1605Ssilvery/',1,3,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000009,163,'筆記型電腦','Dell 700R學習板金色','下單送行動電源',39929,100,'/images/portal/11DELLran7000gold/',1,2,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin'),(10000010,163,'筆記型電腦','Dell 700R 1605 經典版银色','下單送行動電源',5559,100,'/images/portal/11DELLran7000R1605Ssilvery/',1,1,'2023-10-25 15:08:55','2023-10-25 15:08:55','admin','admin');
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '會員id',
  `username` varchar(20) NOT NULL COMMENT '會員名稱',
  `password` char(32) NOT NULL COMMENT '密碼',
  `salt` char(36) DEFAULT NULL COMMENT '鹽值',
  `phone` varchar(20) DEFAULT NULL COMMENT '電話號碼',
  `email` varchar(30) DEFAULT NULL COMMENT '電子郵件',
  `gender` int DEFAULT NULL COMMENT '性別: 0-女，1-男',
  `avatar` blob,
  `is_delete` int DEFAULT NULL COMMENT '是否刪除：0-未刪除，1-已刪除',
  `created_user` varchar(20) DEFAULT NULL COMMENT '日誌-創建人',
  `created_time` datetime DEFAULT NULL COMMENT '日誌-創建時間',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '日誌-最後修改執行人',
  `modified_time` datetime DEFAULT NULL COMMENT '日誌-最後修改時間',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'test01','D83B8A0A65C896FFF659F34EB5E2AB77','CC56F379-0CDC-4E0F-B386-B891C09BC670','09876543210','changeInfoTest@gmail.com',0,NULL,0,'test01','2024-01-04 18:33:11','新增資料測試','2024-01-04 18:44:54'),(2,'test02','C0DBEA8EF2DA991B3A505CFC36C52F67','17EBCDA4-35A7-4BD4-BB40-646253D27ECB','09876543210','changeInfoTest@gmail.com',0,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0d\0\0\0d\0\0\0p\�T\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0�IDATx^\�	\\W�\�ͱ�ٝ�fvgFf�\�\�gg\�x%*�(� �\r�r)��\�-\ZQ��bD�\�����\�A�CnI�@�j�(�	�y�|�\��3\\U\�-\�\�\���HWU���߿\�]UՎ\�H#�4\�H#�4\�H#�4\�H#�4\Z��\�u\��\��a\�\�S�#s�~\��Ϳ�ݿ<\�\�\������7�mm:\�\���r�\�\�.A\�\�w\�j�t\���\'\�a�VFG�\�3�\�Q\�ȏ\�[��\�\0\���n���Aċ%l~��eп�\�_荘e�\�\�\�K\���b	R\�ʘ�\�\���|\�\�]�\�?�$\�=\�\�r{�3\�S1�@gL1y\��Pqs�\�\�L\�(`�ǽM,�Q�����e)j\�BgB-R��7��v*���\�%-N\�l\�B\�uQM\��\'7u$�	5]\�DHytVk9�\�Rv[ۯQ��I��i���b��E\����\�/�3d/-�#��G};D��\�\�(e��\��9\�U\�\��[\�\�\��??D\�?�%�3\�䰷Cɧ(�4cT\�\�E���;$\�7\�Q�\�tԁ7�$#W\��\�<�\0#�|�ZH\�\���&\��#!�jj\�\n�$��&��Q\�|<\�\�\���T\�i-A�ݼJ,��Bɨ�U^}a\�c3R�\�#4�\�\��Uɼ:����4ao�P2ܕ3�\Z4\�DR�7*\�ݠ�\�%A�5a�eW�\�f�j�?�W\�m�9\�\��\�겚\0`�\�jj\�f\�\r!�\�z�A�JOx�TSAAeՉ҄ �\�\�\�~Ev�N�,\��6��s�M}JHY\�t��.!�\�\�\�f\�	/\�\r�>�/�Re�*n�瀊��!/U\'���M��\������\�\��\�\Z\r\�7���\�Q�\�H2d}\�@=^p nm����p���QD�/N�����\'���\�|��	ڎ���\\���\\�\�\�m�=�QR\�\��ib�z��e\�d�狼����\�Q���	�P\����\�Րu�����\�֣G�\�\0\�\�\�ʻwz��\�n�\�\�Q\n\�/(�\�\� �bwr\�̠�\�,u�!*f\�\\�F���𢫋KV\�\'r��eb�z�ge*�)�ua\�&s\�\�\�\�\0+\�\�`\��}\�2���\�S���\�\�\�g\�6qSӿ;T�I��\\p<�7�j,�����\������\�LsՋb�ꄾ,\�os%�A�\�}����\�\�v;TP_�,\��\�?kT#n\�A	n(l޾�j$\�\�>���Z.�Yv3�F5Bg\�yZ`C�\�ّj&,�oK-�/��T֗��~Dj�XM\�U0r\�)`:n�\����h�%�L>Ag�\'�H�B#�HZ@C!��Y�D+#h͌�ʄ�\�ki�� \�y��i��\�b	SB,R�Pg�.*��\�P�5p\�f\��������`�3\�\���1��y\���j/5[\�▖�#V)G�,;�̙�z6�/\�E.�||3$��Uֳ�z�\�\�Vg\"D.���\� 5«g�\�\'OP\�\�|\�X�H�PZ |\�<Ǆ3���FS�A\���h�?��k\�n�\�*��	�)3!,�C�R�PB�h�����K8\�<D�=�\�ɉ�ڤ(��\�\��P��\�d\�3�^n4��\\\�\�s\�`�e\��\�֙�̄<\�wb���\�O�h����\�M�q[\�m8#ۑ��f�5M_,��\�Km��K�����\�\�l�-�`\�\�y��	�7�S\�{�/1\�\�>7�b	�\\��|J,Vⶖ��\0�!!+�3\�؆er�� 71z�%E,�� �	+1\�\�\�\�<\�\�j�\�\��sq�\�\�M\�R}]��o�\��\��\����\��6�\�Q�V`�3Yi�PǾ�X&��\�\�Q��B��b\�x\�\�0A����(9C1~��y\�\\�\�R\�Q�Qq`X�\��+�/\�y\�Ly�F\�ff�._�\�\�J\�\��~Z\0Ca\�W{�\�\�Z\�\��]ԁo���\�22\�p�gt��r\�e�{j\�2H\�\�\��-�/\�\�	���\Z�]\��泩����\� �	+TP\Z-�����\��]ș�\�E��Yș��w,Ra{I�\\�q>��w����`�\�xj,<�X&��H)|H|��\0��l_�Nlz=:⋳\��\�\�\� .!\�w��R{;j,��2]\�2a�\�jd�\�\��;;\���ϡ�N�|P�$�\�p6��Wy ���;\�\�\�\���\�Ǯ�\� 4$�\Z��*\'TP���Ƈ�K�Ru���\�]�w\��Pqh=g�P	�\�-�oKL?E��Oro\��i\�[}\�=NR�ZU�\�*\���0\�o1gة�7w\�R�<�?ȍ񇼘\0�۫\�\r^�\�	��\�g�����Hn\��\�,=CZ �\�1I\�+u#�K�A��Se`�;���\��\�*�\�)�j\r�9\�r;+�\�I��O�j�LX�>䘴\��yz\���\'\�;*6�2�\�p&8*\�5�p+��\�4�N\�/.bND��ܩ���R\���C,Vxڻ�\�\�\�w\���P\�&�>y���x�P�sT\'nP�g�\�\�p���֌\�r�0޶\��e\�!j����\�y�\�P\�|O֎@7S�\��#k�/�ڸ��fn�b\�G\�>��z<��\�C\�a��&jy����\�2aU �̢�#��*�z�T4���Z8X\�y8æ-��e	\�F˄~2�\Z\0\�Dm��l\�r\�\�4��Kʶ`pC\�\�\�r�B\�\�, �	/4��Ђ\�<7�Y\��\�v\\�@3���(�9�I֨z�6�z\�ēV���gٿ���ؾw\�f\�\�\�2(d��\�\��\�\�p2�M\Z7(^�M\�\�\�>Ev;>��|\���\��_(�~��0\�.a��eg���\�0O+ݡ\�f6- ^�\�\�e�8oG�PFP�\\9\r�q7ܝm���yB�Z�C\�2\���\�Ѡ�¡K��\�8B퍳\���\�B{\���XO;n&߻o�~\"\n\�}ᐿ,��\�\�R?G(\����|\�d�\�au\050��\�ƍ�k�B8�b�!n�|�\�\��r\��\�\�\�\0u�Vq��Aq�P?KpX\�	?�֧PB\�Ӓ!�P\"L���>��a��qOB�4~ܓY\�>_������ܹ�e�eª�\��-��,�7H\�._��\�\��\�@\�O��e\�P�?H���\�t�Xn2��L�\�\08Zp�Zߜ��\�&�	���Q�d`؆Xjp!���c��\�XL�\n\�~��\�\'\�1!�jz_�\�;�\'�\�a`��>\�\Z�\�\�H8SSM�aȰl\0�K,V v�\0%��w2:����\�\��\0�\�\Z\�\�\��6V0g�$pt�\0σ����J�K�J\�����!q-\�xYp�\nSw�.�Y.�~�9�հ<\�8zxre�9\�A�\�$\�o�E�m0(�Y\�\�*\�_��\�����y�)bo$Ђ\�\�\\�72\0;kkX�w?��\�%�ƚ˕���\�{\�b\�V�=��OXU\����最�\�\��ʂ\�r߹lmm�b��]\�\�YsM)\�?�R\�\�\�?�`�\�\�o�JO�\�\�G5L��e\�\��@.��\���\�,kO,Q�P\�\�\�gԳ\�d\�z��8�F5HU\�/��h֠����`>�B=D~���lo�\�`�x�PMQ5�,aZ*5\�7�\���Z�B}T�0�\�Zв\��וGNP\rQ5�\��&8�\Z��@M\�Zb�������L>A�P\rQ5\�q�\�\�\�J����s���r\�\�p{J�\�Ƞ?�j�:\���t�O�]�mS�s\���\�n�5�\n ��ς��9\�u`E\�QX2\�B!nYγ���ixv�a��*���C��Ի2_�<	�m�f�+����\�r1\�R~\�<�\\\"�+\�-_\���\�\�\n\�9N�R\�P|Ng��\�grI���\ZӳB�/Et7���\�\Z_:\�0\�Q�\�*��\r\�\�ݝj�:\��-\�nA�M�<�m�\rO�&\�e�}#�\�\�%q[\���\nq}\n��u��`\�_s\�I�	a�ǅ�1�g�\�Y\�\���\�!��\�Q���8X\�^\�2\�8!V�oB�h\�X�d\�	/J\�DR�\�#�,�aﲘjƊKW �TfuV@</VP�cL\'|\�]�$	I�t\�޿�*?��#\Z7�\�\�?\���R9#�s��X~��^���Y9\�}�:�y���X\�,%ao�\Z�\�\�[x\�|�\��e_~\�]��F�CB���sw��\'\��r$\Z;j�����֢\�\�=$�,!A�*�#~\�YZ�0�4\�J\�*\�����w�\���52\�\�pf�CTtw歷opBt3�ayB2,��s�\�/-�\�\�\�\Z=\�\�\�v���K)Y\�\�kk��M��٤	?:����ع\�����Bp߉�\�+�A�;�\�\�`�\��\�\�\�ǌ�/\��V@U\�\�Q�pnuYu[Pi�/\�ܧP\��[�Ӝ\�\��?y6W�\���v���\�\�\�q\��\�a�I\�\�\�\\\�/����=\�\�x;\��B�[D$�x-+��\�\�S&�p63�p23�\�p\�_�L��\�(��&B�\�D	�ɿ��?Ȯi\����	7\'���mf~�ak4�{+}�Vzӟ�\�hw�iO쒂_\�՛��\�|Ѭ\�MM�;\Z�F�M>�\�\���&��\�IX]��w�i�f���>*��E\�V:CL\�f�4\�H#�4\�H#�4\�H#�4\�H#�4\Z�F������Nh��\0\0\0\0IEND�B`�',0,'test02','2024-01-04 18:33:23','test02','2024-01-06 22:34:25');
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
