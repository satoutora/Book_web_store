-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: book_web
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add danh_muc',7,'add_danh_muc'),(26,'Can change danh_muc',7,'change_danh_muc'),(27,'Can delete danh_muc',7,'delete_danh_muc'),(28,'Can view danh_muc',7,'view_danh_muc'),(29,'Can add nha phat hanh',8,'add_nhaphathanh'),(30,'Can change nha phat hanh',8,'change_nhaphathanh'),(31,'Can delete nha phat hanh',8,'delete_nhaphathanh'),(32,'Can view nha phat hanh',8,'view_nhaphathanh'),(33,'Can add nha xuat ban',9,'add_nhaxuatban'),(34,'Can change nha xuat ban',9,'change_nhaxuatban'),(35,'Can delete nha xuat ban',9,'delete_nhaxuatban'),(36,'Can view nha xuat ban',9,'view_nhaxuatban'),(37,'Can add tac_gia',10,'add_tac_gia'),(38,'Can change tac_gia',10,'change_tac_gia'),(39,'Can delete tac_gia',10,'delete_tac_gia'),(40,'Can view tac_gia',10,'view_tac_gia'),(41,'Can add sach',11,'add_sach'),(42,'Can change sach',11,'change_sach'),(43,'Can delete sach',11,'delete_sach'),(44,'Can view sach',11,'view_sach'),(45,'Can add book_ tag',12,'add_book_tag'),(46,'Can change book_ tag',12,'change_book_tag'),(47,'Can delete book_ tag',12,'delete_book_tag'),(48,'Can view book_ tag',12,'view_book_tag'),(49,'Can add tag',13,'add_tag'),(50,'Can change tag',13,'change_tag'),(51,'Can delete tag',13,'delete_tag'),(52,'Can view tag',13,'view_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$6meCbkDoR25X$jp99XfrnLad/gHFtftefPi+2lZWtbZxgQWBkMEq++zo=','2021-03-23 08:52:48.712872',1,'admin','','','minhhien1017@gmail.com',1,1,'2021-03-23 08:52:12.814121');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_muc`
--

DROP TABLE IF EXISTS `danh_muc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_muc` (
  `id_danhmuc` int NOT NULL AUTO_INCREMENT,
  `Ten_danhmuc` varchar(50) NOT NULL,
  `ngay_tao` date NOT NULL,
  PRIMARY KEY (`id_danhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_muc`
--

LOCK TABLES `danh_muc` WRITE;
/*!40000 ALTER TABLE `danh_muc` DISABLE KEYS */;
INSERT INTO `danh_muc` VALUES (1,'Sách Giáo Khoa','2021-03-23'),(2,'Tiểu Thuyết','2021-03-23'),(3,'Tản văn','2021-03-23'),(4,'Khoa học - Trinh Thám','2021-03-23'),(5,'Hài hước - Truyện cười','2021-03-23'),(6,'Sức khỏe - Đời sống','2021-03-23'),(7,'Tạp chí','2021-03-23'),(8,'Kĩ năng sống','2021-03-23'),(9,'Manga - Comic','2021-03-23');
/*!40000 ALTER TABLE `danh_muc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-03-23 08:56:17.089125','1','Danh_muc object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-03-23 08:56:27.688404','2','Danh_muc object (2)',1,'[{\"added\": {}}]',7,1),(3,'2021-03-23 08:57:03.693482','3','Danh_muc object (3)',1,'[{\"added\": {}}]',7,1),(4,'2021-03-23 08:57:16.942947','4','Danh_muc object (4)',1,'[{\"added\": {}}]',7,1),(5,'2021-03-23 08:57:26.551687','5','Danh_muc object (5)',1,'[{\"added\": {}}]',7,1),(6,'2021-03-23 08:58:15.534213','6','Danh_muc object (6)',1,'[{\"added\": {}}]',7,1),(7,'2021-03-23 08:58:24.815041','6','Danh_muc object (6)',2,'[{\"changed\": {\"fields\": [\"Ten danhmuc\"]}}]',7,1),(8,'2021-03-23 08:58:57.693983','7','Danh_muc object (7)',1,'[{\"added\": {}}]',7,1),(9,'2021-03-23 08:59:33.892996','8','Danh_muc object (8)',1,'[{\"added\": {}}]',7,1),(10,'2021-03-23 09:04:05.476654','1','NhaXuatBan object (1)',1,'[{\"added\": {}}]',9,1),(11,'2021-03-23 09:04:11.337965','2','NhaXuatBan object (2)',1,'[{\"added\": {}}]',9,1),(12,'2021-03-23 09:04:14.014893','3','NhaXuatBan object (3)',1,'[{\"added\": {}}]',9,1),(13,'2021-03-23 09:04:20.595033','4','NhaXuatBan object (4)',1,'[{\"added\": {}}]',9,1),(14,'2021-03-23 09:04:24.350042','5','NhaXuatBan object (5)',1,'[{\"added\": {}}]',9,1),(15,'2021-03-23 09:04:37.804916','6','NhaXuatBan object (6)',1,'[{\"added\": {}}]',9,1),(16,'2021-03-23 09:04:45.778482','7','NhaXuatBan object (7)',1,'[{\"added\": {}}]',9,1),(17,'2021-03-23 09:05:01.840463','1','NhaPhatHanh object (1)',1,'[{\"added\": {}}]',8,1),(18,'2021-03-23 09:05:05.321001','2','NhaPhatHanh object (2)',1,'[{\"added\": {}}]',8,1),(19,'2021-03-23 09:05:08.165771','3','NhaPhatHanh object (3)',1,'[{\"added\": {}}]',8,1),(20,'2021-03-23 09:05:13.053401','4','NhaPhatHanh object (4)',1,'[{\"added\": {}}]',8,1),(21,'2021-03-23 09:05:15.268923','5','NhaPhatHanh object (5)',1,'[{\"added\": {}}]',8,1),(22,'2021-03-23 09:05:18.197630','6','NhaPhatHanh object (6)',1,'[{\"added\": {}}]',8,1),(23,'2021-03-23 09:09:00.820854','1','Sach object (1)',1,'[{\"added\": {}}]',11,1),(24,'2021-03-23 09:10:11.854089','2','Sach object (2)',1,'[{\"added\": {}}]',11,1),(25,'2021-03-23 09:10:27.451868','7','NhaXuatBan object (7)',3,'',9,1),(26,'2021-03-23 09:10:37.887956','1','NhaXuatBan object (1)',3,'',9,1),(27,'2021-03-23 09:10:48.932486','8','NhaXuatBan object (8)',1,'[{\"added\": {}}]',9,1),(28,'2021-03-23 09:11:16.241340','9','Danh_muc object (9)',1,'[{\"added\": {}}]',7,1),(29,'2021-03-23 09:13:36.592985','3','Sach object (3)',1,'[{\"added\": {}}]',11,1),(30,'2021-03-23 09:14:49.545137','4','Sach object (4)',1,'[{\"added\": {}}]',11,1),(31,'2021-03-23 09:17:44.432630','5','Sach object (5)',1,'[{\"added\": {}}]',11,1),(32,'2021-03-23 09:19:04.099468','6','Sach object (6)',1,'[{\"added\": {}}]',11,1),(33,'2021-03-23 09:20:28.595444','7','Sach object (7)',1,'[{\"added\": {}}]',11,1),(34,'2021-03-23 09:21:30.456747','8','Sach object (8)',1,'[{\"added\": {}}]',11,1),(35,'2021-03-23 09:22:44.307026','9','Sach object (9)',1,'[{\"added\": {}}]',11,1),(36,'2021-03-23 09:23:53.354602','10','Sach object (10)',1,'[{\"added\": {}}]',11,1),(37,'2021-03-23 09:25:00.300953','11','Sach object (11)',1,'[{\"added\": {}}]',11,1),(38,'2021-03-23 09:26:57.045495','12','Sach object (12)',1,'[{\"added\": {}}]',11,1),(39,'2021-03-23 09:28:26.087811','13','Sach object (13)',1,'[{\"added\": {}}]',11,1),(40,'2021-03-23 09:29:18.955105','14','Sach object (14)',1,'[{\"added\": {}}]',11,1),(41,'2021-03-23 09:30:18.943170','9','NhaXuatBan object (9)',1,'[{\"added\": {}}]',9,1),(42,'2021-03-23 10:45:45.426283','15','Sach object (15)',1,'[{\"added\": {}}]',11,1),(43,'2021-03-23 10:46:50.949103','16','Sach object (16)',1,'[{\"added\": {}}]',11,1),(44,'2021-03-23 10:48:01.924034','17','Sach object (17)',1,'[{\"added\": {}}]',11,1),(45,'2021-03-23 10:49:45.512006','18','Sach object (18)',1,'[{\"added\": {}}]',11,1),(46,'2021-03-23 10:50:52.976939','19','Sach object (19)',1,'[{\"added\": {}}]',11,1),(47,'2021-03-23 10:52:11.197156','20','Sach object (20)',1,'[{\"added\": {}}]',11,1),(48,'2021-03-23 10:53:15.313076','21','Sach object (21)',1,'[{\"added\": {}}]',11,1),(49,'2021-03-23 10:54:29.292264','22','Sach object (22)',1,'[{\"added\": {}}]',11,1),(50,'2021-03-23 10:55:35.430013','23','Sach object (23)',1,'[{\"added\": {}}]',11,1),(51,'2021-03-23 10:55:47.523945','7','Sach object (7)',2,'[]',11,1),(52,'2021-03-23 10:55:50.676218','7','Sach object (7)',2,'[]',11,1),(53,'2021-03-23 10:55:53.446343','7','Sach object (7)',2,'[]',11,1),(54,'2021-03-23 10:55:56.630201','7','Sach object (7)',2,'[]',11,1),(55,'2021-03-23 10:56:00.071243','7','Sach object (7)',2,'[]',11,1),(56,'2021-03-23 10:56:03.661611','7','Sach object (7)',2,'[]',11,1),(57,'2021-03-23 10:56:06.475633','7','Sach object (7)',2,'[]',11,1),(58,'2021-03-23 10:56:14.328381','7','Sach object (7)',2,'[]',11,1),(59,'2021-03-23 13:31:32.947333','1','Tag object (1)',1,'[{\"added\": {}}]',13,1),(60,'2021-03-23 13:31:46.119943','2','Tag object (2)',1,'[{\"added\": {}}]',13,1),(61,'2021-03-23 13:31:53.599411','3','Tag object (3)',1,'[{\"added\": {}}]',13,1),(62,'2021-03-23 13:32:41.044076','4','Tag object (4)',1,'[{\"added\": {}}]',13,1),(63,'2021-03-23 13:32:49.351032','5','Tag object (5)',1,'[{\"added\": {}}]',13,1),(64,'2021-03-23 13:32:59.324536','6','Tag object (6)',1,'[{\"added\": {}}]',13,1),(65,'2021-03-23 13:33:07.575415','7','Tag object (7)',1,'[{\"added\": {}}]',13,1),(66,'2021-03-23 13:33:12.755610','8','Tag object (8)',1,'[{\"added\": {}}]',13,1),(67,'2021-03-23 13:33:21.509759','9','Tag object (9)',1,'[{\"added\": {}}]',13,1),(68,'2021-03-23 13:33:39.461232','10','Tag object (10)',1,'[{\"added\": {}}]',13,1),(69,'2021-03-23 13:35:38.023393','11','Tag object (11)',1,'[{\"added\": {}}]',13,1),(70,'2021-03-23 13:35:47.719235','12','Tag object (12)',1,'[{\"added\": {}}]',13,1),(71,'2021-03-23 13:35:51.803414','13','Tag object (13)',1,'[{\"added\": {}}]',13,1),(72,'2021-03-23 13:35:55.996553','14','Tag object (14)',1,'[{\"added\": {}}]',13,1),(73,'2021-03-23 13:36:12.732349','15','Tag object (15)',1,'[{\"added\": {}}]',13,1),(74,'2021-03-23 13:36:16.784775','16','Tag object (16)',1,'[{\"added\": {}}]',13,1),(75,'2021-03-23 13:36:35.792781','17','Tag object (17)',1,'[{\"added\": {}}]',13,1),(76,'2021-03-23 13:36:43.042337','18','Tag object (18)',1,'[{\"added\": {}}]',13,1),(77,'2021-03-23 13:36:57.185720','19','Tag object (19)',1,'[{\"added\": {}}]',13,1),(78,'2021-03-23 14:54:57.030591','1','Sach object (1)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(79,'2021-03-23 14:55:13.089247','2','Sach object (2)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(80,'2021-03-23 14:55:25.337579','3','Sach object (3)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(81,'2021-03-23 14:55:41.278284','4','Sach object (4)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(82,'2021-03-23 14:58:12.137687','2','Sach object (2)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(83,'2021-03-23 14:58:45.611891','3','Sach object (3)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(84,'2021-03-23 14:59:07.299531','4','Sach object (4)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(85,'2021-03-23 15:00:48.985266','1','Sach object (1)',2,'[]',11,1),(86,'2021-03-23 15:01:05.573581','2','Sach object (2)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(87,'2021-03-23 15:02:09.597796','3','Sach object (3)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(88,'2021-03-23 15:02:35.551098','4','Sach object (4)',2,'[{\"changed\": {\"fields\": [\"Img sach\"]}}]',11,1),(89,'2021-03-24 07:05:19.468415','1','Sach object (1)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\"]}}]',11,1),(90,'2021-03-24 07:05:27.521129','2','Sach object (2)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\"]}}]',11,1),(91,'2021-03-24 07:05:41.885123','3','Sach object (3)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\", \"Gia tien sale\"]}}]',11,1),(92,'2021-03-24 07:06:34.261772','4','Sach object (4)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\", \"Gia tien sale\"]}}]',11,1),(93,'2021-03-24 07:06:49.342711','5','Sach object (5)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\"]}}]',11,1),(94,'2021-03-27 15:20:33.082488','1','Sach object (1)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\"]}}]',11,1),(95,'2021-03-27 15:20:38.957180','2','Sach object (2)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\"]}}]',11,1),(96,'2021-03-27 15:20:44.445447','3','Sach object (3)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\"]}}]',11,1),(97,'2021-03-27 15:20:53.044809','3','Sach object (3)',2,'[{\"changed\": {\"fields\": [\"Gia tien sale\"]}}]',11,1),(98,'2021-03-27 15:20:57.860485','2','Sach object (2)',2,'[]',11,1),(99,'2021-03-27 15:21:07.999404','4','Sach object (4)',2,'[{\"changed\": {\"fields\": [\"Gia tien goc\", \"Gia tien sale\"]}}]',11,1),(100,'2021-04-06 06:38:15.005031','24','Sach object (24)',1,'[{\"added\": {}}]',11,1),(101,'2021-04-06 06:39:30.973538','25','Sach object (25)',1,'[{\"added\": {}}]',11,1),(102,'2021-04-06 06:40:55.453314','26','Sach object (26)',1,'[{\"added\": {}}]',11,1),(103,'2021-04-06 06:42:17.152353','27','Sach object (27)',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'home','book_tag'),(7,'home','danh_muc'),(8,'home','nhaphathanh'),(9,'home','nhaxuatban'),(11,'home','sach'),(10,'home','tac_gia'),(13,'home','tag'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-03-23 08:30:49.017769'),(2,'auth','0001_initial','2021-03-23 08:30:49.229948'),(3,'admin','0001_initial','2021-03-23 08:30:50.003033'),(4,'admin','0002_logentry_remove_auto_add','2021-03-23 08:30:50.163744'),(5,'admin','0003_logentry_add_action_flag_choices','2021-03-23 08:30:50.171798'),(6,'contenttypes','0002_remove_content_type_name','2021-03-23 08:30:50.316291'),(7,'auth','0002_alter_permission_name_max_length','2021-03-23 08:30:50.522749'),(8,'auth','0003_alter_user_email_max_length','2021-03-23 08:30:50.620363'),(9,'auth','0004_alter_user_username_opts','2021-03-23 08:30:50.632987'),(10,'auth','0005_alter_user_last_login_null','2021-03-23 08:30:50.743793'),(11,'auth','0006_require_contenttypes_0002','2021-03-23 08:30:50.751850'),(12,'auth','0007_alter_validators_add_error_messages','2021-03-23 08:30:50.767816'),(13,'auth','0008_alter_user_username_max_length','2021-03-23 08:30:50.858359'),(14,'auth','0009_alter_user_last_name_max_length','2021-03-23 08:30:50.949177'),(15,'auth','0010_alter_group_name_max_length','2021-03-23 08:30:50.974283'),(16,'auth','0011_update_proxy_permissions','2021-03-23 08:30:50.982242'),(17,'auth','0012_alter_user_first_name_max_length','2021-03-23 08:30:51.069178'),(18,'sessions','0001_initial','2021-03-23 08:30:51.120188'),(19,'home','0001_initial','2021-03-23 08:41:27.918186'),(20,'home','0002_nhaphathanh_nhaxuatban_tac_gia','2021-03-23 08:41:28.043980'),(21,'home','0003_sach','2021-03-23 08:41:28.118884'),(22,'home','0004_book_tag_tag','2021-03-23 08:41:28.204464'),(23,'home','0005_auto_20210323_1553','2021-03-23 08:54:00.364360');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6yz39zop50faiue1fckfsn1nni94589r','.eJx1kU1uwyAQha-CWEfWYEyws-wm3eQGkdBgxj91gCq2F1aUuxenVhUvugHBvPneG3hwg_PUmXmku-kdP3HBD-93FuuBwlpwXxjamNUxTPfeZqsk26pjdomObh-bdgfocOxSd4VO5UgFUlMoXbkKVeW0PuYVQelsbkVupVNgj1qCqgvZlGTLWmpHjUW5Qs99TLTQ8tODi2JdA3pK7Mt1BqB8SZq2RzP1FPipUACQwYH3PnVwj4spYci-vtskG2_bpFNceZv2eeBCvnE_V25TeBZwYeRZ_TpLdp0FORXY0P0KQrtzLmHn3EVvEsCQN3U0MZihS6b_h9na1zDwFub8GhKYfe1VTClACJHeg1ncj673AVo0lqJxSZq-czF653z8e4R8M34-fwD0iKK8:1lV7uK:ofGB4bdGn_AxBTdGllsGdYzzfMa9kwbIuo5VlvnvthQ','2021-04-24 07:19:52.475757');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_book_tag`
--

DROP TABLE IF EXISTS `home_book_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_book_tag` (
  `id_bat` int NOT NULL AUTO_INCREMENT,
  `id_sach` int NOT NULL,
  `id_tag` int NOT NULL,
  PRIMARY KEY (`id_bat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_book_tag`
--

LOCK TABLES `home_book_tag` WRITE;
/*!40000 ALTER TABLE `home_book_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_book_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaphathanh`
--

DROP TABLE IF EXISTS `nhaphathanh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaphathanh` (
  `id_NPH` int NOT NULL AUTO_INCREMENT,
  `Ten_NPH` varchar(255) NOT NULL,
  PRIMARY KEY (`id_NPH`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaphathanh`
--

LOCK TABLES `nhaphathanh` WRITE;
/*!40000 ALTER TABLE `nhaphathanh` DISABLE KEYS */;
INSERT INTO `nhaphathanh` VALUES (1,'SkyBooks'),(2,'Nhã Nam'),(3,'McBooks'),(4,'Royal Books'),(5,'1980 Books'),(6,'OwllBooks');
/*!40000 ALTER TABLE `nhaphathanh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaxuatban`
--

DROP TABLE IF EXISTS `nhaxuatban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaxuatban` (
  `id_NXB` int NOT NULL AUTO_INCREMENT,
  `Ten_NXB` varchar(255) NOT NULL,
  PRIMARY KEY (`id_NXB`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaxuatban`
--

LOCK TABLES `nhaxuatban` WRITE;
/*!40000 ALTER TABLE `nhaxuatban` DISABLE KEYS */;
INSERT INTO `nhaxuatban` VALUES (2,'NXB Văn Học'),(3,'NXB Tuổi trẻ'),(4,'NXB Giáo Dục'),(5,'NXB Hà Nội'),(6,'NXB Hội nhà văn'),(8,'NXB Phụ Nữ'),(9,'NXB Kim Đồng');
/*!40000 ALTER TABLE `nhaxuatban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `id_sach` int NOT NULL AUTO_INCREMENT,
  `Ten_sach` varchar(200) NOT NULL,
  `Ten_tac_gia` varchar(100) NOT NULL,
  `id_danhmuc` int NOT NULL,
  `id_NXB` int NOT NULL,
  `id_NPH` int NOT NULL,
  `img_sach` varchar(500) NOT NULL,
  `gia_tien_goc` double NOT NULL,
  `gia_tien_sale` double NOT NULL,
  `so_luong` int NOT NULL,
  `mo_ta` longtext NOT NULL,
  `status` smallint NOT NULL,
  `ngay_tao` date NOT NULL,
  PRIMARY KEY (`id_sach`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES (1,'Sao em buồn đến thế','Trịnh Nam Trần - Kỳ Nam Trần',2,3,1,'sao-em-buon-den-the.jpg',80000,-1,20,'ko co gi mo ta ;-;',2,'2021-03-23'),(2,'Tuyển tập truyện tranh ngắn Ếch ộp','Nguyễn Hưng',5,3,1,'ech_op.jpg',80000,-1,25,'cuoi ia',0,'2021-03-23'),(3,'Quên một người là chuyện của thời gian','A tồn',2,8,3,'quen_mot_nguoi.jpg',100000,88000,22,'kho\'k',3,'2021-03-23'),(4,'Cứ khóc, cứ tan vỡ và trưởng thành','Yến Nhi',8,2,4,'cu_khoc_cu_tan_vo.jpg',100000,80000,30,'he',3,'2021-03-23'),(5,'Bé tập tô chữ số','NXB giáo dục',1,4,3,'be_tap_to_chu_so_7k.jpg',7,-1,100,'zz',2,'2021-03-23'),(6,'Con chim xanh biếc bay về','Nguyễn Nhật Ánh',2,3,2,'Con_chim_xanh_biec_bay_ve.jpg',45000,25000,52,'zz',3,'2021-03-23'),(7,'Dám bị ghét','Kishimi ichiro & Kogo Fumitake',8,2,5,'dam_bi_ghet_100k.jpg',100000,80000,12,'zz',3,'2021-03-23'),(8,'Đừng nhạt nữa','Ngoa',5,5,6,'Dung_nhat_nua_90k.jpg',90000,-1,22,'zz',2,'2021-03-23'),(9,'Em thấy chúng ta trong một mùa hè','Kim Ae-ran',2,6,4,'em_thay_chung_ta_trong_mot_mua_he_45k.jpg',45000,-1,22,'zz',2,'2021-03-23'),(10,'Gà béo đang bay','Suni',3,5,6,'ga_beo_dang_bay_70k.jpg',70000,-1,12,'zz',0,'2021-03-23'),(11,'Giải tích - tập 1','James Stewart',1,4,5,'gt1_-_1.jpg',455000,455000,120,'zz',2,'2021-03-23'),(12,'Hai người ngồi bên nhau','Ploy - Đến mùa yêu thương',2,3,3,'hai_nguoi_ngoi_ben_nhau_99k.jpg',120000,99000,31,'z',3,'2021-03-23'),(13,'Hôm nay em có ổn không','Hall of Dreamers',3,5,1,'hom_nay_em_co_on_khong_80k.jpg',80000,-1,0,'z',1,'2021-03-23'),(14,'Mây','Nguyễn Bảo Trung',3,3,2,'may_80k.jpg',80000,45000,11,'z',3,'2021-03-23'),(15,'Naruto - tập 53','Masashi Kishimoto',9,9,3,'naruto-tap-53_22k.jpg',22000,22000,50,'z',0,'2021-03-23'),(16,'Người trong lưới','Chan Ho Kei',4,3,2,'nguoi-trong-luoi-_180k.jpg',180000,150000,23,'z',3,'2021-03-23'),(17,'Những giấc mơ ở hiệu sách morisaki','Yagisara Satoshi',2,3,6,'nhung_giac_mo_o_hieu_sach_morisaki_48k.jpg',48000,48000,12,'z',2,'2021-03-23'),(18,'Nỗi buồn chiến tranh','Bảo Ninh',2,3,5,'noibuonchientranh.jpg',120000,-1,23,'z',2,'2021-03-23'),(19,'Phải lòng với cô đơn','Kul 25s',3,3,1,'phai_long_voi_co_don_80k.jpg',80000,-1,22,'z',2,'2021-03-23'),(20,'Sức mạnh của ngôn từ','Yum Maru',8,5,6,'suc_manh_cua_ngon_tu_90k.jpg',100000,90000,34,'z',3,'2021-03-23'),(21,'Thị Trấn Mèo','Neko maki',9,9,1,'thi_tran_meo_t6_70k.jpg',70000,-1,22,'z',0,'2021-03-23'),(22,'Totto-chan bên cửa sổ','Kuro Tetsuko',2,2,2,'Totto_chan_ben_cua_so.jpg',80000,-1,2,'z',2,'2021-03-23'),(23,'Trạng Quỳnh','Truyện cười dân gian',5,2,5,'trang_quynh_30k.jpg',30000,-1,12,'z',2,'2021-03-23'),(24,'Và từ hôm ấy, lá thu vẫn tiếp tục rơi','Hà Minh Quang',2,6,6,'va_tu_hom_ay_la_thu_van_tiep_tuc_roi_72k.jpg',72000,-1,12,'zz',2,'2021-04-06'),(25,'Tận đáy cảm xúc','Patricia Highsmith',2,3,3,'tan_day_cam_xuc_125k.jpg',125000,100000,22,'zz',3,'2021-04-06'),(26,'Ngàn nụ hôn cho em','Tillie Cole',3,2,5,'ngan_nu_hon_cho_em_120k.jpg',120000,100000,22,'zz',3,'2021-04-06'),(27,'Cây cam ngọt của tôi','Jose Nauro de Vasconcelos',2,2,2,'cay_cam_ngot_cua_toi_108k.jpg',108000,92000,10,'zz',0,'2021-04-06');
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tac_gia`
--

DROP TABLE IF EXISTS `tac_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tac_gia` (
  `id_tacgia` int NOT NULL AUTO_INCREMENT,
  `Ten_tacgia` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tacgia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tac_gia`
--

LOCK TABLES `tac_gia` WRITE;
/*!40000 ALTER TABLE `tac_gia` DISABLE KEYS */;
/*!40000 ALTER TABLE `tac_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id_tag` int NOT NULL AUTO_INCREMENT,
  `Ten_tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Văn học việt'),(2,'Văn học nước ngoài'),(3,'Tiểu thuyết'),(4,'Truyện ngắn'),(5,'Tản văn'),(6,'Manga'),(7,'Comic'),(8,'Truyện tranh'),(9,'Khoa học'),(10,'Ẩm thực'),(11,'Tâm lý'),(12,'Trinh thám'),(13,'Công việc'),(14,'Cuộc sống'),(15,'Ký sự'),(16,'Nhật báo'),(17,'Tình cảm'),(18,'Hài hước'),(19,'Self-help');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 23:16:52
