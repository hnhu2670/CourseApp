-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.0.31

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
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add lesson',10,'add_lesson'),(38,'Can change lesson',10,'change_lesson'),(39,'Can delete lesson',10,'delete_lesson'),(40,'Can view lesson',10,'view_lesson'),(41,'Can add application',11,'add_application'),(42,'Can change application',11,'change_application'),(43,'Can delete application',11,'delete_application'),(44,'Can view application',11,'view_application'),(45,'Can add access token',12,'add_accesstoken'),(46,'Can change access token',12,'change_accesstoken'),(47,'Can delete access token',12,'delete_accesstoken'),(48,'Can view access token',12,'view_accesstoken'),(49,'Can add grant',13,'add_grant'),(50,'Can change grant',13,'change_grant'),(51,'Can delete grant',13,'delete_grant'),(52,'Can view grant',13,'view_grant'),(53,'Can add refresh token',14,'add_refreshtoken'),(54,'Can change refresh token',14,'change_refreshtoken'),(55,'Can delete refresh token',14,'delete_refreshtoken'),(56,'Can view refresh token',14,'view_refreshtoken'),(57,'Can add id token',15,'add_idtoken'),(58,'Can change id token',15,'change_idtoken'),(59,'Can delete id token',15,'delete_idtoken'),(60,'Can view id token',15,'view_idtoken'),(61,'Can add comment',16,'add_comment'),(62,'Can change comment',16,'change_comment'),(63,'Can delete comment',16,'delete_comment'),(64,'Can view comment',16,'view_comment'),(65,'Can add like',17,'add_like'),(66,'Can change like',17,'change_like'),(67,'Can delete like',17,'delete_like'),(68,'Can view like',17,'view_like'),(69,'Can add rating',18,'add_rating'),(70,'Can change rating',18,'change_rating'),(71,'Can delete rating',18,'delete_rating'),(72,'Can view rating',18,'view_rating');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_ManagementCourseApp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_ManagementCourseApp_user_id` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-02 15:30:52.470860','4','Khóa học 4',1,'[{\"added\": {}}]',6,1),(2,'2024-03-03 04:47:11.637099','1','Tag object (1)',1,'[{\"added\": {}}]',9,1),(3,'2024-03-03 04:47:18.516455','2','Tag object (2)',1,'[{\"added\": {}}]',9,1),(4,'2024-03-03 04:47:23.714808','3','Tag object (3)',1,'[{\"added\": {}}]',9,1),(5,'2024-03-03 04:47:52.720575','1','Môn 1',1,'[{\"added\": {}}]',8,1),(6,'2024-03-03 04:48:17.985655','2','Môn 2',1,'[{\"added\": {}}]',8,1),(7,'2024-03-03 04:48:31.661575','3','Môn 3',1,'[{\"added\": {}}]',8,1),(8,'2024-03-03 04:48:53.119137','1','Lesson object (1)',1,'[{\"added\": {}}]',10,1),(9,'2024-03-03 04:49:09.374617','2','Lesson object (2)',1,'[{\"added\": {}}]',10,1),(10,'2024-03-03 05:05:15.284357','4','Tag 4',1,'[{\"added\": {}}]',9,1),(11,'2024-03-03 05:05:19.966220','4','Môn 4',1,'[{\"added\": {}}]',8,1),(12,'2024-03-03 05:12:12.084011','4','Môn 4',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(13,'2024-03-03 05:12:23.144319','4','Môn 4',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(14,'2024-03-03 05:29:27.758683','5','Môn 5',1,'[{\"added\": {}}]',8,1);
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
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'ManagementCourseApp','category'),(16,'ManagementCourseApp','comment'),(8,'ManagementCourseApp','course'),(10,'ManagementCourseApp','lesson'),(17,'ManagementCourseApp','like'),(18,'ManagementCourseApp','rating'),(9,'ManagementCourseApp','tag'),(7,'ManagementCourseApp','user'),(12,'oauth2_provider','accesstoken'),(11,'oauth2_provider','application'),(13,'oauth2_provider','grant'),(15,'oauth2_provider','idtoken'),(14,'oauth2_provider','refreshtoken'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-02 15:20:37.064949'),(2,'contenttypes','0002_remove_content_type_name','2024-03-02 15:20:37.162396'),(3,'auth','0001_initial','2024-03-02 15:20:37.534423'),(4,'auth','0002_alter_permission_name_max_length','2024-03-02 15:20:37.605411'),(5,'auth','0003_alter_user_email_max_length','2024-03-02 15:20:37.613583'),(6,'auth','0004_alter_user_username_opts','2024-03-02 15:20:37.622006'),(7,'auth','0005_alter_user_last_login_null','2024-03-02 15:20:37.631532'),(8,'auth','0006_require_contenttypes_0002','2024-03-02 15:20:37.650203'),(9,'auth','0007_alter_validators_add_error_messages','2024-03-02 15:20:37.659166'),(10,'auth','0008_alter_user_username_max_length','2024-03-02 15:20:37.669516'),(11,'auth','0009_alter_user_last_name_max_length','2024-03-02 15:20:37.681065'),(12,'auth','0010_alter_group_name_max_length','2024-03-02 15:20:37.706899'),(13,'auth','0011_update_proxy_permissions','2024-03-02 15:20:37.713427'),(14,'auth','0012_alter_user_first_name_max_length','2024-03-02 15:20:37.717995'),(15,'ManagementCourseApp','0001_initial','2024-03-02 15:20:38.013719'),(16,'admin','0001_initial','2024-03-02 15:20:38.134633'),(17,'admin','0002_logentry_remove_auto_add','2024-03-02 15:20:38.142213'),(18,'admin','0003_logentry_add_action_flag_choices','2024-03-02 15:20:38.149865'),(19,'sessions','0001_initial','2024-03-02 15:20:38.183819'),(20,'ManagementCourseApp','0002_category_active_category_create_date_and_more','2024-03-02 15:54:15.676499'),(21,'ManagementCourseApp','0003_tag_alter_course_category_alter_course_image_and_more','2024-03-03 04:41:58.310770'),(22,'ManagementCourseApp','0004_alter_course_image_alter_lesson_image','2024-03-03 05:28:17.062004'),(23,'ManagementCourseApp','0005_user_avatar_alter_course_category_and_more','2024-03-06 06:06:59.336523'),(24,'oauth2_provider','0001_initial','2024-03-06 15:12:37.898805'),(25,'oauth2_provider','0002_auto_20190406_1805','2024-03-06 15:12:38.055073'),(26,'oauth2_provider','0003_auto_20201211_1314','2024-03-06 15:12:38.134100'),(27,'oauth2_provider','0004_auto_20200902_2022','2024-03-06 15:12:38.541367'),(28,'oauth2_provider','0005_auto_20211222_2352','2024-03-06 15:12:38.604019'),(29,'oauth2_provider','0006_alter_application_client_secret','2024-03-06 15:12:38.651201'),(30,'oauth2_provider','0007_application_post_logout_redirect_uris','2024-03-06 15:12:38.776597'),(31,'ManagementCourseApp','0006_comment','2024-03-07 02:22:34.424902'),(32,'ManagementCourseApp','0007_like_rating','2024-03-07 02:25:32.548771'),(33,'ManagementCourseApp','0008_alter_like_active_alter_like_unique_together','2024-03-08 05:38:09.010079'),(34,'ManagementCourseApp','0009_user_role','2024-03-10 09:16:21.820505'),(35,'ManagementCourseApp','0010_user_address_user_gender_alter_user_role','2024-03-10 09:25:20.777512'),(36,'ManagementCourseApp','0011_course_user','2024-03-15 04:10:05.002447');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('s4o41z7kskxwbsnzjz3mxa3j92bppmsu','.eJxVjEEOwiAQRe_C2hCgM4x16b5nIDCMUjU0Ke3KeHdD0oVu_3vvv1WI-1bC3mQNc1YXZdXpd0uRn1I7yI9Y74vmpW7rnHRX9EGbnpYsr-vh_h2U2Eqv8UbsRiASIYgs3gs7cJjYgxkteB4iypAQWCzZnM4W0AiQIUKP6vMF5Wc3Sw:1rgRHR:ipCPV0Nm0WRX_P-pzYljwHNqadL3dMzFh-pQRCkmPuY','2024-03-16 15:28:05.806405');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_category`
--

DROP TABLE IF EXISTS `managementcourseapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_category`
--

LOCK TABLES `managementcourseapp_category` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_category` DISABLE KEYS */;
INSERT INTO `managementcourseapp_category` VALUES (1,'Khóa học 1',1,'2024-03-02','2024-03-02'),(2,'Khóa học 2',1,'2024-03-02','2024-03-02'),(3,'Khóa học 3',1,'2024-03-02','2024-03-02'),(4,'Khóa học 4',1,'2024-03-02','2024-03-02');
/*!40000 ALTER TABLE `managementcourseapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_comment`
--

DROP TABLE IF EXISTS `managementcourseapp_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ManagementCourseApp__lesson_id_ce0dd7f7_fk_Managemen` (`lesson_id`),
  KEY `ManagementCourseApp__user_id_d89d6083_fk_Managemen` (`user_id`),
  CONSTRAINT `ManagementCourseApp__lesson_id_ce0dd7f7_fk_Managemen` FOREIGN KEY (`lesson_id`) REFERENCES `managementcourseapp_lesson` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_d89d6083_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_comment`
--

LOCK TABLES `managementcourseapp_comment` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_comment` DISABLE KEYS */;
INSERT INTO `managementcourseapp_comment` VALUES (3,'2024-03-07','2024-03-07',1,'string',1,3),(4,'2024-03-07','2024-03-07',1,'string',1,3),(5,'2024-03-07','2024-03-07',1,'string',1,3),(9,'2024-03-10','2024-03-10',1,'comment của user1',1,5),(10,'2024-03-10','2024-03-10',1,'comment của user1',1,5),(11,'2024-03-10','2024-03-10',1,'comment của user1',1,3),(12,'2024-03-10','2024-03-10',1,'comment của user1',1,3),(13,'2024-03-10','2024-03-10',1,'comment của user1',1,3),(14,'2024-03-10','2024-03-10',1,'comment của user1',1,3),(15,'2024-03-10','2024-03-10',1,'comment của nhu',1,5),(16,'2024-03-10','2024-03-10',1,'comment của nhu',1,5),(17,'2024-03-10','2024-03-10',1,'comment của nhu',1,5),(18,'2024-03-10','2024-03-10',1,'comment của nhu',1,5),(19,'2024-03-10','2024-03-10',1,'comment của nhu',1,5),(20,'2024-03-10','2024-03-10',1,'comment của nhu',1,5),(21,'2024-03-12','2024-03-12',1,'comment của nhu',2,5),(22,'2024-03-12','2024-03-12',1,'Comment mới',1,5);
/*!40000 ALTER TABLE `managementcourseapp_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_course`
--

DROP TABLE IF EXISTS `managementcourseapp_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_course_subject_category_id_5ecd67a9_uniq` (`subject`,`category_id`),
  KEY `ManagementCourseApp__category_id_aff02ed0_fk_Managemen` (`category_id`),
  CONSTRAINT `ManagementCourseApp__category_id_aff02ed0_fk_Managemen` FOREIGN KEY (`category_id`) REFERENCES `managementcourseapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_course`
--

LOCK TABLES `managementcourseapp_course` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_course` DISABLE KEYS */;
INSERT INTO `managementcourseapp_course` VALUES (1,'2024-03-03','2024-03-03',1,'Môn 1','1','courses/2024/03/384750660_850131526487706_8434182028893077682_n.jpg',1),(2,'2024-03-03','2024-03-03',1,'Môn 2','2','courses/2024/03/384750660_850131526487706_8434182028893077682_n_MvOKgFF.jpg',2),(3,'2024-03-03','2024-03-03',1,'Môn 3','3','courses/2024/03/384750660_850131526487706_8434182028893077682_n_1GyB0zS.jpg',3),(4,'2024-03-03','2024-03-03',1,'Môn 4','4','courses/2024/03/384750660_850131526487706_8434182028893077682_n_9HBdVhI.jpg',4),(5,'2024-03-03','2024-03-03',1,'Môn 5','5','courses/2024/03/384750660_850131526487706_8434182028893077682_n_rJYpjlZ.jpg',4),(6,'2024-03-15','2024-03-15',1,'string','string','',1),(7,'2024-03-15','2024-03-15',1,'string','string','',2),(8,'2024-03-15','2024-03-15',1,'string1','string','',2);
/*!40000 ALTER TABLE `managementcourseapp_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_course_tags`
--

DROP TABLE IF EXISTS `managementcourseapp_course_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_course_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_course_tags_course_id_tag_id_e43550d6_uniq` (`course_id`,`tag_id`),
  KEY `ManagementCourseApp__tag_id_d0abd330_fk_Managemen` (`tag_id`),
  CONSTRAINT `ManagementCourseApp__course_id_efc7c6aa_fk_Managemen` FOREIGN KEY (`course_id`) REFERENCES `managementcourseapp_course` (`id`),
  CONSTRAINT `ManagementCourseApp__tag_id_d0abd330_fk_Managemen` FOREIGN KEY (`tag_id`) REFERENCES `managementcourseapp_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_course_tags`
--

LOCK TABLES `managementcourseapp_course_tags` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_course_tags` DISABLE KEYS */;
INSERT INTO `managementcourseapp_course_tags` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,4);
/*!40000 ALTER TABLE `managementcourseapp_course_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_course_user`
--

DROP TABLE IF EXISTS `managementcourseapp_course_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_course_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_course_user_course_id_user_id_6e962bef_uniq` (`course_id`,`user_id`),
  KEY `ManagementCourseApp__user_id_d22a0b90_fk_Managemen` (`user_id`),
  CONSTRAINT `ManagementCourseApp__course_id_06ccd577_fk_Managemen` FOREIGN KEY (`course_id`) REFERENCES `managementcourseapp_course` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_d22a0b90_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_course_user`
--

LOCK TABLES `managementcourseapp_course_user` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_course_user` DISABLE KEYS */;
INSERT INTO `managementcourseapp_course_user` VALUES (1,1,1),(8,1,2),(5,1,3),(2,2,1),(3,3,3),(7,4,2),(4,4,3);
/*!40000 ALTER TABLE `managementcourseapp_course_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_lesson`
--

DROP TABLE IF EXISTS `managementcourseapp_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_lesson_subject_course_id_f8015a22_uniq` (`subject`,`course_id`),
  KEY `ManagementCourseApp__course_id_7862bcaa_fk_Managemen` (`course_id`),
  CONSTRAINT `ManagementCourseApp__course_id_7862bcaa_fk_Managemen` FOREIGN KEY (`course_id`) REFERENCES `managementcourseapp_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_lesson`
--

LOCK TABLES `managementcourseapp_lesson` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_lesson` DISABLE KEYS */;
INSERT INTO `managementcourseapp_lesson` VALUES (1,'2024-03-03','2024-03-03',1,'Bài giảng 1','1','lessons/2024/03/384750660_850131526487706_8434182028893077682_n.jpg',1),(2,'2024-03-03','2024-03-03',1,'Bài giảng 2','2','lessons/2024/03/384750660_850131526487706_8434182028893077682_n_aaLFSPw.jpg',2);
/*!40000 ALTER TABLE `managementcourseapp_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_lesson_tags`
--

DROP TABLE IF EXISTS `managementcourseapp_lesson_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_lesson_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lesson_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_lesson_tags_lesson_id_tag_id_8f719b40_uniq` (`lesson_id`,`tag_id`),
  KEY `ManagementCourseApp__tag_id_818ab677_fk_Managemen` (`tag_id`),
  CONSTRAINT `ManagementCourseApp__lesson_id_a3a772b8_fk_Managemen` FOREIGN KEY (`lesson_id`) REFERENCES `managementcourseapp_lesson` (`id`),
  CONSTRAINT `ManagementCourseApp__tag_id_818ab677_fk_Managemen` FOREIGN KEY (`tag_id`) REFERENCES `managementcourseapp_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_lesson_tags`
--

LOCK TABLES `managementcourseapp_lesson_tags` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_lesson_tags` DISABLE KEYS */;
INSERT INTO `managementcourseapp_lesson_tags` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `managementcourseapp_lesson_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_like`
--

DROP TABLE IF EXISTS `managementcourseapp_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_like_user_id_lesson_id_cbd5c03f_uniq` (`user_id`,`lesson_id`),
  KEY `ManagementCourseApp__lesson_id_1d1ebf64_fk_Managemen` (`lesson_id`),
  CONSTRAINT `ManagementCourseApp__lesson_id_1d1ebf64_fk_Managemen` FOREIGN KEY (`lesson_id`) REFERENCES `managementcourseapp_lesson` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_aff4f195_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_like`
--

LOCK TABLES `managementcourseapp_like` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_like` DISABLE KEYS */;
INSERT INTO `managementcourseapp_like` VALUES (1,'2024-03-08','2024-03-08',0,1,3),(2,'2024-03-08','2024-03-08',1,1,2),(3,'2024-03-08','2024-03-08',0,2,3),(4,'2024-03-08','2024-03-08',1,1,1),(5,'2024-03-08','2024-03-08',1,2,1);
/*!40000 ALTER TABLE `managementcourseapp_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_rating`
--

DROP TABLE IF EXISTS `managementcourseapp_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_rating` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `rate` smallint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ManagementCourseApp__lesson_id_bf38af83_fk_Managemen` (`lesson_id`),
  KEY `ManagementCourseApp__user_id_70468b5c_fk_Managemen` (`user_id`),
  CONSTRAINT `ManagementCourseApp__lesson_id_bf38af83_fk_Managemen` FOREIGN KEY (`lesson_id`) REFERENCES `managementcourseapp_lesson` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_70468b5c_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_rating`
--

LOCK TABLES `managementcourseapp_rating` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `managementcourseapp_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_tag`
--

DROP TABLE IF EXISTS `managementcourseapp_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_tag`
--

LOCK TABLES `managementcourseapp_tag` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_tag` DISABLE KEYS */;
INSERT INTO `managementcourseapp_tag` VALUES (1,'2024-03-03','2024-03-03',1,'Tag 1'),(2,'2024-03-03','2024-03-03',1,'Tag 2'),(3,'2024-03-03','2024-03-03',1,'Tag 3'),(4,'2024-03-03','2024-03-03',1,'Tag 4');
/*!40000 ALTER TABLE `managementcourseapp_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_user`
--

DROP TABLE IF EXISTS `managementcourseapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_user`
--

LOCK TABLES `managementcourseapp_user` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_user` DISABLE KEYS */;
INSERT INTO `managementcourseapp_user` VALUES (1,'pbkdf2_sha256$720000$s7CtGiiCiqbl42597xElj9$TiLIqjXibbmeUVFLWzAy2zlPe/hfI7xJZz8/CAWmoTc=','2024-03-02 15:28:05.803356',1,'admin','','','admin@gmail.com',1,1,'2024-03-02 15:27:17.118058',NULL,NULL,NULL,NULL),(2,'string',NULL,0,'6Aru+Gvygkx.sJJF2+lzsYnAOWtj7ej1ltwjtn75u4k@3cJFL6q18jXALq_M-PgSMJrLr3UJO4Jp9Yb8jfW4e2kWfu','string','string','user@example.com',0,1,'2024-03-06 04:21:40.144273',NULL,NULL,NULL,NULL),(3,'pbkdf2_sha256$720000$ehLVRl2J3UCZu5zeSaMjk5$AyfPCmUQhvh4rfkBH+/GvJmvdjQ7UqiHufOXVTKx/CA=',NULL,0,'user1','string','string','user@example.com',0,1,'2024-03-06 04:29:11.372458',NULL,'user',NULL,NULL),(4,'pbkdf2_sha256$720000$6lccsg6U9ixcNAdUj1KSns$kFHsVGqzLwd1AVBVzJ4lLIuM1FgBCRioXKYADiBXwjk=',NULL,0,'user2','string','string','user@example.com',0,1,'2024-03-06 04:33:22.450128',NULL,'user',NULL,NULL),(5,'pbkdf2_sha256$720000$q0eOwRy5k46uCMnQIIoVS2$dd7koDl80Ha4pUiNHS6N/uhJoR7cIa0CVW18F9igXuA=',NULL,0,'nhu','Như','Huỳnh','',0,1,'2024-03-06 06:07:27.116587','image/upload/v1709705251/vsq2te1ccar0bkvvhwna.jpg','admin',NULL,NULL),(6,'pbkdf2_sha256$720000$LlvLnq3HXKremekvDVynMi$VeNf8KgL+wCt+5PzIiiIzkNPkmF8naYGBNIOg1enmEI=',NULL,0,'nhunhu','user6','nhu','nhu@gmail.com',0,1,'2024-03-10 09:20:55.169745',NULL,'admin',NULL,NULL),(7,'pbkdf2_sha256$720000$Fc1lgCJkRYxYesVSh6w6RB$71ZJ3zWFBEJWbhc4b2GQdf04Vo64fxhoB20HLjNyDVo=',NULL,0,'an','an','Như','nhu@gmail.com',0,1,'2024-03-12 05:17:10.768447',NULL,'user',NULL,NULL);
/*!40000 ALTER TABLE `managementcourseapp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_user_groups`
--

DROP TABLE IF EXISTS `managementcourseapp_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_user_groups_user_id_group_id_dfe7ffb2_uniq` (`user_id`,`group_id`),
  KEY `ManagementCourseApp__group_id_de68008d_fk_auth_grou` (`group_id`),
  CONSTRAINT `ManagementCourseApp__group_id_de68008d_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_15711006_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_user_groups`
--

LOCK TABLES `managementcourseapp_user_groups` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `managementcourseapp_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managementcourseapp_user_user_permissions`
--

DROP TABLE IF EXISTS `managementcourseapp_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managementcourseapp_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_user_user_id_permission_id_5c08c5a8_uniq` (`user_id`,`permission_id`),
  KEY `ManagementCourseApp__permission_id_a8220081_fk_auth_perm` (`permission_id`),
  CONSTRAINT `ManagementCourseApp__permission_id_a8220081_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_1945731b_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_user_user_permissions`
--

LOCK TABLES `managementcourseapp_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `managementcourseapp_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_Managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'Gprf8OrvSFA2sXBSiHUiiASYyv1nlo','2024-03-07 01:26:33.622496','read write',1,3,'2024-03-06 15:26:33.623476','2024-03-06 15:26:33.623476',NULL,NULL),(2,'IgCy8arJFq16PcOOUwPwWhRFUrpRl4','2024-03-07 01:39:04.772893','read write',1,3,'2024-03-06 15:39:04.773893','2024-03-06 15:39:04.773893',NULL,NULL),(3,'R6iWqzanEKkCIgwwcbXOop3hlWOmBA','2024-03-07 12:45:16.875789','read write',1,1,'2024-03-07 02:45:16.876794','2024-03-07 02:45:16.876794',NULL,NULL),(4,'PWCtUZycmpMdL15EjgRewQCvUL7ggT','2024-03-07 12:46:06.928822','read write',1,3,'2024-03-07 02:46:06.929847','2024-03-07 02:46:06.929847',NULL,NULL),(5,'Y8MacsPEsIAMF2hRmG5ybhGPi4RO4g','2024-03-07 15:48:28.133031','read write',1,5,'2024-03-07 05:48:28.133031','2024-03-07 05:48:28.133031',NULL,NULL),(6,'HxBugWB43HJcJsrwWn4MpOYsswMsrS','2024-03-07 15:52:49.664712','read write',1,3,'2024-03-07 05:52:49.664712','2024-03-07 05:52:49.664712',NULL,NULL),(7,'Mlg8EEGPFhhJAgCsXNpMqS9Etqz0r0','2024-03-08 14:42:05.732236','read write',1,3,'2024-03-08 04:42:05.732236','2024-03-08 04:42:05.732236',NULL,NULL),(8,'GW4IwjNlfQcsb6vmSiRRz1B9joKAw9','2024-03-08 15:13:28.500516','read write',1,3,'2024-03-08 05:13:28.501548','2024-03-08 05:13:28.501548',NULL,NULL),(9,'AE1NSWdo0dmbYg8mYbz6HFJQpXJ23d','2024-03-08 15:16:18.864958','read write',1,1,'2024-03-08 05:16:18.865962','2024-03-08 05:16:18.865962',NULL,NULL),(10,'G7n4NY7w5FtP4JhFyei6Jt5curycGE','2024-03-10 19:33:29.744127','read write',1,3,'2024-03-10 09:33:29.745144','2024-03-10 09:33:29.745144',NULL,NULL),(11,'6U5e8BnUQneyblmjm5tqBhIj7M5ED1','2024-03-10 19:35:02.598543','read write',1,5,'2024-03-10 09:35:02.599542','2024-03-10 09:35:02.599542',NULL,NULL),(12,'92HcCn8i5wgguB76JlhSwcsdn9TMw5','2024-03-10 19:37:51.081996','read write',1,3,'2024-03-10 09:37:51.083011','2024-03-10 09:37:51.083011',NULL,NULL),(13,'y6gpfJ0wlH82Kvs9dx2UdkdmG1V5g7','2024-03-10 19:40:30.530073','read write',1,5,'2024-03-10 09:40:30.530073','2024-03-10 09:40:30.530073',NULL,NULL),(14,'eISVlBypaRx5UW8MX2mGfg0hLgs5Ox','2024-03-10 19:42:09.622853','read write',1,3,'2024-03-10 09:42:09.622853','2024-03-10 09:42:09.622853',NULL,NULL),(15,'6bBOcdqgvgmS3RV47aezX0vYKmn1og','2024-03-10 19:42:34.547760','read write',1,5,'2024-03-10 09:42:34.547760','2024-03-10 09:42:34.547760',NULL,NULL),(16,'pDKD6WlQEM2uXQuXoBIRx3HgoUPhVj','2024-03-10 19:48:10.738850','read write',1,3,'2024-03-10 09:48:10.739851','2024-03-10 09:48:10.739851',NULL,NULL),(17,'SGDDUNukRFMpr9DzjTq1tPtV1VXEYB','2024-03-10 19:52:57.052199','read write',1,5,'2024-03-10 09:52:57.053201','2024-03-10 09:52:57.053201',NULL,NULL),(18,'So8tP0oHItG0zQWQOih0UITQlKoygL','2024-03-10 20:05:07.176039','read write',1,5,'2024-03-10 10:05:07.176039','2024-03-10 10:05:07.176039',NULL,NULL),(19,'kbzXwgaBUTDHphVn5Cje0nfQyXcfvp','2024-03-10 20:16:36.203218','read write',1,3,'2024-03-10 10:16:36.204246','2024-03-10 10:16:36.204246',NULL,NULL),(20,'tbzgcYgA7AXAKLact2cWe2WP4N3Sn1','2024-03-10 20:30:52.423836','read write',1,5,'2024-03-10 10:30:52.424841','2024-03-10 10:30:52.424841',NULL,NULL),(21,'qkWVHoO0q544xaJgQKxDbeqDgeD1Gu','2024-03-10 20:32:11.741327','read write',1,3,'2024-03-10 10:32:11.742333','2024-03-10 10:32:11.742333',NULL,NULL),(22,'OKVUjCX6pw7DiW5QZI5RQjI2YeyJb0','2024-03-10 20:46:38.683648','read write',1,1,'2024-03-10 10:46:38.684651','2024-03-10 10:46:38.684651',NULL,NULL),(23,'WLr6yzfezzLP7Z3mn0BaKUb3TcOACC','2024-03-10 23:01:26.013077','read write',1,3,'2024-03-10 13:01:26.014071','2024-03-10 13:01:26.014071',NULL,NULL),(24,'5WNOxge7E2CgLqPuNMzmGNs6BE4brM','2024-03-10 23:03:15.141626','read write',1,5,'2024-03-10 13:03:15.141626','2024-03-10 13:03:15.141626',NULL,NULL),(25,'KW4vAwkgjhtuky5Sn7ipDkIrhWm0xS','2024-03-10 23:10:09.471163','read write',1,3,'2024-03-10 13:10:09.471163','2024-03-10 13:10:09.471163',NULL,NULL),(26,'TEUuLIwbLPGUgHCn8I2TU6yPv2kyWf','2024-03-10 23:10:43.714778','read write',1,5,'2024-03-10 13:10:43.716780','2024-03-10 13:10:43.716780',NULL,NULL),(27,'jC2L3lgG9a4COL0oQtsEnVnOQ7SUua','2024-03-12 01:30:53.120505','read write',1,5,'2024-03-11 15:30:53.420666','2024-03-11 15:30:53.420666',NULL,NULL),(28,'IKcQc7wnpWJFLKqw1ooRKXR9k2n7D0','2024-03-12 12:35:57.217843','read write',1,5,'2024-03-12 02:35:57.277439','2024-03-12 02:35:57.277439',NULL,NULL),(29,'Y7z3fLvhZT1uuEOjF2MI4Sy1mfroFI','2024-03-12 12:44:33.982603','read write',1,5,'2024-03-12 02:44:33.983628','2024-03-12 02:44:33.983628',NULL,NULL),(30,'Bj4ZmElDLGGTDaEAyR2exqFlgxX0m7','2024-03-12 12:45:17.703584','read write',1,5,'2024-03-12 02:45:17.704629','2024-03-12 02:45:17.704629',NULL,NULL),(31,'HQkzlzgG5h834XKn8pxjDrUNiHY789','2024-03-12 12:46:22.626371','read write',1,5,'2024-03-12 02:46:22.628432','2024-03-12 02:46:22.628432',NULL,NULL),(32,'adkWQrChI5dbtvUt3M16JIX7Wj7zyV','2024-03-12 13:08:46.352490','read write',1,5,'2024-03-12 03:08:46.355482','2024-03-12 03:08:46.355482',NULL,NULL),(33,'TppWb6VjEQmBRJoLa4YVkM1fziBaZg','2024-03-12 13:11:47.093010','read write',1,5,'2024-03-12 03:11:47.094013','2024-03-12 03:11:47.094013',NULL,NULL),(34,'dUnLvlxs7Dd2Q3Vd1qngchaGPhAx41','2024-03-12 13:35:23.418568','read write',1,5,'2024-03-12 03:35:23.419980','2024-03-12 03:35:23.419980',NULL,NULL),(35,'wJ9XwDE0ZA8TRfOQ2ocpCWCZrctcQl','2024-03-12 13:53:57.248233','read write',1,5,'2024-03-12 03:53:57.250683','2024-03-12 03:53:57.250683',NULL,NULL),(36,'F5TtVpkemDzmobk9sirCSP2PT3aCHo','2024-03-12 14:08:03.908739','read write',1,5,'2024-03-12 04:08:03.909743','2024-03-12 04:08:03.909743',NULL,NULL),(37,'7bb1OG201HChpNangYcRw6tRBmfgPn','2024-03-12 14:25:45.109467','read write',1,5,'2024-03-12 04:25:45.157513','2024-03-12 04:25:45.157513',NULL,NULL),(38,'7qWeTDVJSlaI6qZncklTnDw3DVBXGT','2024-03-12 15:17:25.007978','read write',1,7,'2024-03-12 05:17:25.007978','2024-03-12 05:17:25.007978',NULL,NULL),(39,'o8pA75vsWlKLeAqnXPcHDqgxkZh97S','2024-03-13 14:36:05.802340','read write',1,5,'2024-03-13 04:36:05.803342','2024-03-13 04:36:05.803342',NULL,NULL),(40,'WoGZHktHeB4WObb35c052hk14noAuN','2024-03-13 15:05:28.780471','read write',1,5,'2024-03-13 05:05:28.861476','2024-03-13 05:05:28.861476',NULL,NULL),(41,'lZl494QoYUqOEuWFy91bCG6dHekL2M','2024-03-13 15:06:02.338195','read write',1,5,'2024-03-13 05:06:02.339254','2024-03-13 05:06:02.339254',NULL,NULL),(42,'M4t8Y1YRt9hPWEL4CGx76j5GtrcRtn','2024-03-13 15:16:44.134417','read write',1,5,'2024-03-13 05:16:44.134417','2024-03-13 05:16:44.134417',NULL,NULL),(43,'FgoubXFbWJBZLwcSdVKLC6If3AHFtW','2024-03-13 15:18:02.875820','read write',1,5,'2024-03-13 05:18:02.875820','2024-03-13 05:18:02.875820',NULL,NULL),(44,'fOcLn4bvSi0rZi5znshaz0HZBYsHqP','2024-03-13 16:06:45.334214','read write',1,5,'2024-03-13 06:06:45.350552','2024-03-13 06:06:45.350552',NULL,NULL),(45,'bXbS2CssABbJkAPpigBIYQQXA10Z2B','2024-03-13 16:10:28.562232','read write',1,5,'2024-03-13 06:10:28.562232','2024-03-13 06:10:28.562232',NULL,NULL),(46,'VKXB9CxQc0zuN9fPQNEGFrVrxOop98','2024-03-14 00:54:56.693437','read write',1,5,'2024-03-13 14:54:56.694413','2024-03-13 14:54:56.694413',NULL,NULL),(47,'CGt7cTOxcZsJP781aVQ9rqlioXhOqc','2024-03-14 00:55:47.588721','read write',1,5,'2024-03-13 14:55:47.589721','2024-03-13 14:55:47.589721',NULL,NULL),(48,'7x93JFGWxjXCKM1aPXgFbzIcd2MVFJ','2024-03-14 01:00:11.405420','read write',1,5,'2024-03-13 15:00:11.405537','2024-03-13 15:00:11.405537',NULL,NULL),(49,'FA2FeohgnYwUN5Em37zX83n2798Z5O','2024-03-14 01:03:39.821269','read write',1,5,'2024-03-13 15:03:39.822269','2024-03-13 15:03:39.822269',NULL,NULL),(50,'HoaQyi2nEGdZHcmU4HsdPueQb3f1S6','2024-03-14 01:07:12.659312','read write',1,5,'2024-03-13 15:07:12.659312','2024-03-13 15:07:12.659312',NULL,NULL),(51,'9abaRI3y1AFao9EBIGmJp87m2Toi1D','2024-03-14 01:13:20.352272','read write',1,5,'2024-03-13 15:13:20.352272','2024-03-13 15:13:20.352272',NULL,NULL),(52,'FFfjXL7bNGp3sge1l8oL1H1Oraw4dc','2024-03-14 01:15:12.493900','read write',1,5,'2024-03-13 15:15:12.493900','2024-03-13 15:15:12.493900',NULL,NULL),(53,'mikSH2GrYDikUz7adiF47kFkfoUccj','2024-03-14 01:17:29.857668','read write',1,5,'2024-03-13 15:17:29.857668','2024-03-13 15:17:29.857668',NULL,NULL),(54,'rfjMwjuJG8AXT3Mh1KqhPsVzQP45pD','2024-03-14 01:18:08.425454','read write',1,5,'2024-03-13 15:18:08.426452','2024-03-13 15:18:08.426452',NULL,NULL),(55,'EacMnbjrV6hG5MgLoaYFgfi0vC2WP0','2024-03-14 01:18:32.850361','read write',1,5,'2024-03-13 15:18:32.851361','2024-03-13 15:18:32.851361',NULL,NULL),(56,'yjcJbpK7junw1AO5aPMnwbvQY9VlGJ','2024-03-14 01:22:04.117876','read write',1,5,'2024-03-13 15:22:04.118913','2024-03-13 15:22:04.118913',NULL,NULL),(57,'X6ELkdA6Fw65BOPpQyZNlmsaZsCiR2','2024-03-14 01:22:34.315045','read write',1,5,'2024-03-13 15:22:34.315045','2024-03-13 15:22:34.315045',NULL,NULL),(58,'A5Nbr3Bx9W5KjPeVDfIS8ZtpvvKVBR','2024-03-14 01:24:41.460651','read write',1,5,'2024-03-13 15:24:41.460651','2024-03-13 15:24:41.460651',NULL,NULL),(59,'TFGonXP5bIQYLRSEbfWpO3jCMDzC1l','2024-03-14 01:24:56.822332','read write',1,5,'2024-03-13 15:24:56.822332','2024-03-13 15:24:56.822332',NULL,NULL),(60,'Qxw4bnQLAUNaSSo1rSZtTJovNq7MWM','2024-03-14 01:26:01.025016','read write',1,5,'2024-03-13 15:26:01.025016','2024-03-13 15:26:01.025016',NULL,NULL),(61,'2xccjWD3C78Hxu2fVF89JCmGfJ5YIW','2024-03-14 01:44:16.555677','read write',1,5,'2024-03-13 15:44:17.088686','2024-03-13 15:44:17.088686',NULL,NULL),(62,'aJlUj3V2PwDLGgXWGCaU2K2JrmbrBd','2024-03-14 01:49:00.387862','read write',1,5,'2024-03-13 15:49:00.387862','2024-03-13 15:49:00.387862',NULL,NULL),(63,'NfraNcHQiMpGmUspo1Fgiz7V79u8tN','2024-03-14 01:51:52.129796','read write',1,5,'2024-03-13 15:51:52.130796','2024-03-13 15:51:52.130796',NULL,NULL),(64,'zFYMa3LnqYw9Gak9jJWhVgnqt1IDUx','2024-03-14 01:54:09.976652','read write',1,5,'2024-03-13 15:54:09.977653','2024-03-13 15:54:09.977653',NULL,NULL),(65,'FWJiC1PL6av3LpRaE3Ic5I3sLvdBjO','2024-03-14 23:04:22.588087','read write',1,5,'2024-03-14 13:04:23.055115','2024-03-14 13:04:23.055115',NULL,NULL),(66,'0d1MKs8Y7X2ia6NDDDhlvLYw3H35tE','2024-03-14 23:34:43.398734','read write',1,5,'2024-03-14 13:34:43.474788','2024-03-14 13:34:43.474788',NULL,NULL),(67,'cj6GOIG1Aq6TB5cRyf1ETEaQhkWqRr','2024-03-14 23:37:07.751192','read write',1,5,'2024-03-14 13:37:07.751192','2024-03-14 13:37:07.751192',NULL,NULL),(68,'VkGUbz6qdyxwImkxviT35s3pks2il3','2024-03-14 23:46:22.206950','read write',1,5,'2024-03-14 13:46:22.206950','2024-03-14 13:46:22.206950',NULL,NULL),(69,'hrEBXSjGrSYority5sLfKo7d9yfeim','2024-03-14 23:57:13.603921','read write',1,5,'2024-03-14 13:57:13.603921','2024-03-14 13:57:13.603921',NULL,NULL),(70,'kjgjGgLyIQDgmath6BFPa1qKWSjmYA','2024-03-15 00:16:33.729391','read write',1,5,'2024-03-14 14:16:33.730393','2024-03-14 14:16:33.730393',NULL,NULL),(71,'IMRmNsE4sdTfkPhAllisxA11t9KEPv','2024-03-15 00:32:44.298784','read write',1,5,'2024-03-14 14:32:44.300729','2024-03-14 14:32:44.300729',NULL,NULL),(72,'cRCENDmKa0ApvFz7LB7rsaMHIrUmmM','2024-03-15 00:34:48.372061','read write',1,5,'2024-03-14 14:34:48.372061','2024-03-14 14:34:48.372061',NULL,NULL),(73,'0pac07gklG3AeJqGgnnNMenjAYTNIB','2024-03-15 00:35:57.462419','read write',1,5,'2024-03-14 14:35:57.462419','2024-03-14 14:35:57.462419',NULL,NULL),(74,'DGmQJes9kFLB8MvSJUAUm1puS5BJyr','2024-03-15 00:36:12.739588','read write',1,5,'2024-03-14 14:36:12.739588','2024-03-14 14:36:12.739588',NULL,NULL),(75,'jQ0XJ9i09NXl32qziBDilFcorKRBrJ','2024-03-15 01:04:12.414802','read write',1,5,'2024-03-14 15:04:12.416364','2024-03-14 15:04:12.416364',NULL,NULL),(76,'LnHU8iaSfsA5wePVbzLxSjdV3DCYyb','2024-03-15 01:37:10.008640','read write',1,5,'2024-03-14 15:37:10.053143','2024-03-14 15:37:10.053143',NULL,NULL),(77,'iQF30awle3hIhpN1rmIn8k6My98rfK','2024-03-15 01:47:12.741287','read write',1,5,'2024-03-14 15:47:12.741287','2024-03-14 15:47:12.741287',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_logout_redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_Managemen` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'ykwM7j9N1XXGXZaT8EArPCcpzCVjN0Ya9yCifgTL','','confidential','password','pbkdf2_sha256$720000$bYJ6CyuYxz4KC489O7DOi3$4cwlyH/Jha32+ghYowohh6gRcPvz7kgXPAhI4FW5tZs=','MyApp',1,0,'2024-03-06 15:19:31.194945','2024-03-06 15:19:31.194945','','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_gran_user_id_e8f62af8_fk_Managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_gran_user_id_e8f62af8_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idto_user_id_dd512b59_fk_Managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idto_user_id_dd512b59_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_Managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'2rEwvVtDvJnyeI1boFUl0LBfqrpf1m',1,1,3,'2024-03-06 15:26:33.870358','2024-03-06 15:26:33.870358',NULL),(2,'VyzjxJfyfT8nRFh4gp4bFsNjSlx3VS',2,1,3,'2024-03-06 15:39:04.832781','2024-03-06 15:39:04.832781',NULL),(3,'jBO67nhQpwA618BqGRvJK6QeSkXas1',3,1,1,'2024-03-07 02:45:17.300575','2024-03-07 02:45:17.300575',NULL),(4,'8reViRRZG4PiHD1Pi3NJ7mifm6MGHf',4,1,3,'2024-03-07 02:46:06.975095','2024-03-07 02:46:06.975095',NULL),(5,'otvbhdv3JSqHStrAA25dVIkCJ7id15',5,1,5,'2024-03-07 05:48:28.308478','2024-03-07 05:48:28.308478',NULL),(6,'SL3tHG30ANJtrHoUQVXAnQYHr1EKTd',6,1,3,'2024-03-07 05:52:49.731739','2024-03-07 05:52:49.731739',NULL),(7,'yqcp7EA6QHHeEAEksd1wzV9HIAT1Zt',7,1,3,'2024-03-08 04:42:10.435119','2024-03-08 04:42:10.435119',NULL),(8,'X3PyFOcMbRetpzvbNk1xBD4TZ9QBjq',8,1,3,'2024-03-08 05:13:28.689672','2024-03-08 05:13:28.689672',NULL),(9,'NllDtzFVtKR1QALBeeJkkCQ5XLvOfs',9,1,1,'2024-03-08 05:16:18.904965','2024-03-08 05:16:18.904965',NULL),(10,'8DX6l1eobfwFTtXltfGM0Aop2TxvOc',10,1,3,'2024-03-10 09:33:29.868429','2024-03-10 09:33:29.868429',NULL),(11,'jabufFHkXAL4e2anluUlYWmGZ7Db3E',11,1,5,'2024-03-10 09:35:02.645189','2024-03-10 09:35:02.645189',NULL),(12,'uKxWhqcF06XJyeJS0lt3y77Tiwc5uW',12,1,3,'2024-03-10 09:37:51.162800','2024-03-10 09:37:51.162800',NULL),(13,'1lgbUecXVfzpgJt6xao37oGOUV9i5l',13,1,5,'2024-03-10 09:40:30.533097','2024-03-10 09:40:30.533097',NULL),(14,'lAJWcC7MiKE2cWhdqAsx141WlLon9R',14,1,3,'2024-03-10 09:42:09.694856','2024-03-10 09:42:09.694856',NULL),(15,'cNQIq5iJUFjokctIM4FnmnUO87NjXx',15,1,5,'2024-03-10 09:42:34.608761','2024-03-10 09:42:34.608761',NULL),(16,'xf2T8sOpuaEZRB3UtUL6on4v9Qlzv8',16,1,3,'2024-03-10 09:48:10.744856','2024-03-10 09:48:10.744856',NULL),(17,'cMvKoK7NLdPv6xoMHiyWV1Qkots2HO',17,1,5,'2024-03-10 09:52:57.129465','2024-03-10 09:52:57.129465',NULL),(18,'VzvQHIGqQR1CmFyS0m9qdPR2aK9myK',18,1,5,'2024-03-10 10:05:07.223009','2024-03-10 10:05:07.223009',NULL),(19,'tctfcddgqw8IBF7Q4GkdYMknzm1OA7',19,1,3,'2024-03-10 10:16:36.282620','2024-03-10 10:16:36.282620',NULL),(20,'u4NdNNgbwQzaJ7qsxryFEzcuG448vM',20,1,5,'2024-03-10 10:30:52.501777','2024-03-10 10:30:52.501777',NULL),(21,'rdANiUe6th5OPeHhytF2til5AZAwmW',21,1,3,'2024-03-10 10:32:11.845416','2024-03-10 10:32:11.845416',NULL),(22,'GqV5SHgDXsfumt7MXNsW45HwYbXIVO',22,1,1,'2024-03-10 10:46:38.806576','2024-03-10 10:46:38.806576',NULL),(23,'Uqz8DqKtjP39bOf8CCZa4iNq7Kc5l7',23,1,3,'2024-03-10 13:01:26.459241','2024-03-10 13:01:26.459241',NULL),(24,'yCnM29Ay0qyNxyK3QRYLLfXvZq0z2F',24,1,5,'2024-03-10 13:03:15.532028','2024-03-10 13:03:15.532028',NULL),(25,'7HSw6ib78WVV75V0GrSBzuw2bL6wbc',25,1,3,'2024-03-10 13:10:09.568992','2024-03-10 13:10:09.568992',NULL),(26,'foR9BrYujLKfzwJ0rFBDsz66yduFKR',26,1,5,'2024-03-10 13:10:43.754549','2024-03-10 13:10:43.754549',NULL),(27,'irkH95b3VYYjzj7u0YSNpWAwkqrBaZ',27,1,5,'2024-03-11 15:30:55.481161','2024-03-11 15:30:55.481161',NULL),(28,'YJlTzwHvUyF8FaYa0a426umQ8uRdAw',28,1,5,'2024-03-12 02:35:57.557255','2024-03-12 02:35:57.557255',NULL),(29,'CpeBsW9JhIeZTeq1BrGZwpbUgfbQPN',29,1,5,'2024-03-12 02:44:34.269234','2024-03-12 02:44:34.270232',NULL),(30,'hPXCZIVia92uEnHfFyy2sxOKHLwddm',30,1,5,'2024-03-12 02:45:17.828150','2024-03-12 02:45:17.828150',NULL),(31,'eSu5Zs5KCO2r6CfJjN0dQLHBgCnL4g',31,1,5,'2024-03-12 02:46:22.756519','2024-03-12 02:46:22.756519',NULL),(32,'gUs4jVbh98MpANHRN257oMUajJEfnB',32,1,5,'2024-03-12 03:08:46.580413','2024-03-12 03:08:46.580413',NULL),(33,'LEzPiU7re50kM0jz5ABw4u6flrMgkA',33,1,5,'2024-03-12 03:11:47.367607','2024-03-12 03:11:47.367607',NULL),(34,'34PEhrxB9oQbzITgCkouBsQROEDGes',34,1,5,'2024-03-12 03:35:23.475092','2024-03-12 03:35:23.475092',NULL),(35,'p3KrOZ8NxaUvRcGgISm0ZK0lFJVtSi',35,1,5,'2024-03-12 03:53:57.464065','2024-03-12 03:53:57.464065',NULL),(36,'j7woPPxPm5vTuifl7yF0ecrPl7iD4M',36,1,5,'2024-03-12 04:08:04.017741','2024-03-12 04:08:04.017741',NULL),(37,'RUehmqfh4fjUKjPZSDgKqnB00cYw0Q',37,1,5,'2024-03-12 04:25:45.422679','2024-03-12 04:25:45.422679',NULL),(38,'GdTv4KAN322vEnIjwIOf4h8gcHcoPD',38,1,7,'2024-03-12 05:17:25.133408','2024-03-12 05:17:25.133408',NULL),(39,'8fWColZJyGDsNDfqV7NhF58rZyxZju',39,1,5,'2024-03-13 04:36:05.945609','2024-03-13 04:36:05.945609',NULL),(40,'Bu2RMDi2KaqKoQCglK4fkc0ZcZUF3P',40,1,5,'2024-03-13 05:05:28.995119','2024-03-13 05:05:28.995119',NULL),(41,'g1Thq5ZrTqpYzNhayVFfllCnCKhEQe',41,1,5,'2024-03-13 05:06:02.369336','2024-03-13 05:06:02.369336',NULL),(42,'DlEzw0b3MeVKUHm5T8crp4wFIN3C6i',42,1,5,'2024-03-13 05:16:44.181348','2024-03-13 05:16:44.181348',NULL),(43,'vJD84LlBLkePiPOEeydq6BX98bQXAD',43,1,5,'2024-03-13 05:18:02.922749','2024-03-13 05:18:02.922749',NULL),(44,'4Gs4bGI0leI0ViLKxuzH32rQLb8Wzl',44,1,5,'2024-03-13 06:06:45.442712','2024-03-13 06:06:45.442712',NULL),(45,'0gEU8q6JgX8FR52iGYlZNtmc7DBiNJ',45,1,5,'2024-03-13 06:10:28.604795','2024-03-13 06:10:28.604795',NULL),(46,'yKDGBuaJkGNHyY6hOUKLicKvnzVtZ1',46,1,5,'2024-03-13 14:54:56.867006','2024-03-13 14:54:56.867006',NULL),(47,'iXqzYpXWVvnUHc4Ds6vF4uHwlDFeDL',47,1,5,'2024-03-13 14:55:47.802528','2024-03-13 14:55:47.802528',NULL),(48,'rdr4ONdGbYIdYpTQPg7Gjwv0iD7oEe',48,1,5,'2024-03-13 15:00:11.446287','2024-03-13 15:00:11.446287',NULL),(49,'vTvE9iF0jr6RfnNVMwhKo32l76w6c7',49,1,5,'2024-03-13 15:03:39.887396','2024-03-13 15:03:39.887396',NULL),(50,'9qnUZ4Taxi0fJyNRAmW5P2opjVqxpc',50,1,5,'2024-03-13 15:07:13.070357','2024-03-13 15:07:13.070357',NULL),(51,'EkfruINUCKnoQdNpJ4TtkCcACZsXsg',51,1,5,'2024-03-13 15:13:20.379925','2024-03-13 15:13:20.379925',NULL),(52,'ET4lV8OhkIjOI2oYOAPRAk74jZnqY9',52,1,5,'2024-03-13 15:15:13.151089','2024-03-13 15:15:13.151089',NULL),(53,'xmZhvlho1ZKU6kcz81rPdo4PgRH0iM',53,1,5,'2024-03-13 15:17:29.909954','2024-03-13 15:17:29.909954',NULL),(54,'W6ad4648BxmqIN6SBjONPB4jhWQC5O',54,1,5,'2024-03-13 15:18:08.457555','2024-03-13 15:18:08.457555',NULL),(55,'K2ifrBZpJbFk4AcdumlVyc7Jr0IQr5',55,1,5,'2024-03-13 15:18:32.851361','2024-03-13 15:18:32.851361',NULL),(56,'BzdTwZen1txrKoEldyqgLY2sh4lfIE',56,1,5,'2024-03-13 15:22:04.149506','2024-03-13 15:22:04.149506',NULL),(57,'1oERbws3616tgAhafiewSNLwG3fzfp',57,1,5,'2024-03-13 15:22:34.336494','2024-03-13 15:22:34.336494',NULL),(58,'nxsq6zNFvnuVqTksAQSVGijCpl3BWe',58,1,5,'2024-03-13 15:24:41.500178','2024-03-13 15:24:41.500178',NULL),(59,'gVvxC76xYnRwqGvhDqvDr1BZ5AyLvI',59,1,5,'2024-03-13 15:24:56.861142','2024-03-13 15:24:56.861142',NULL),(60,'3FCvYp6EfuK0bbKj28sxvqGXFl3QFP',60,1,5,'2024-03-13 15:26:01.026017','2024-03-13 15:26:01.027012',NULL),(61,'sOkxozKnB4gvJJw3m0JMC36bxfoPDz',61,1,5,'2024-03-13 15:44:18.130901','2024-03-13 15:44:18.130901',NULL),(62,'Omd5V6XSoDbPBWdCZrzTvpbOrjX02o',62,1,5,'2024-03-13 15:49:00.450966','2024-03-13 15:49:00.450966',NULL),(63,'WT4npp9WVXT1678mey6M5YUkrinUPo',63,1,5,'2024-03-13 15:51:52.228896','2024-03-13 15:51:52.228896',NULL),(64,'xgCqAFyYUCsidpFcwl7FrBMEaEOApX',64,1,5,'2024-03-13 15:54:10.046135','2024-03-13 15:54:10.046135',NULL),(65,'G9CC4XnRl4O4KJxHJiPQxaoPgczywl',65,1,5,'2024-03-14 13:04:23.653127','2024-03-14 13:04:23.653127',NULL),(66,'jEOL8MYradxvComJWnvLPTzInlnL2y',66,1,5,'2024-03-14 13:34:43.655808','2024-03-14 13:34:43.655808',NULL),(67,'qNlMZe3qOm8VraZkAtIVwYM09UU2er',67,1,5,'2024-03-14 13:37:07.796201','2024-03-14 13:37:07.796201',NULL),(68,'zkqOwQtKDAo8tAcTfsBzmXklSPReXN',68,1,5,'2024-03-14 13:46:22.308764','2024-03-14 13:46:22.308764',NULL),(69,'OnCMjNXJDvOMUekiKwWHmFqTyaUiaI',69,1,5,'2024-03-14 13:57:13.704736','2024-03-14 13:57:13.704736',NULL),(70,'aC6WfFqalcDLoMTJrG1V6krepGBq4T',70,1,5,'2024-03-14 14:16:33.779028','2024-03-14 14:16:33.779028',NULL),(71,'KmeZYHkl60QrF5Z4xpMvsu6RnHgnCh',71,1,5,'2024-03-14 14:32:44.434119','2024-03-14 14:32:44.434119',NULL),(72,'M2EHkJxI9IGUvJJn5Xsi30xYqA27ff',72,1,5,'2024-03-14 14:34:48.459687','2024-03-14 14:34:48.459687',NULL),(73,'RaFszEfH2Et5Xzr8Z5BzAXcOJoBmhg',73,1,5,'2024-03-14 14:35:57.480187','2024-03-14 14:35:57.480187',NULL),(74,'eJnXEVnkKqYz6hEYYFcPODvSGKXk4K',74,1,5,'2024-03-14 14:36:12.805473','2024-03-14 14:36:12.805473',NULL),(75,'H0YPXzaG4V7hZ5HqDa0SYkyp9k7T4o',75,1,5,'2024-03-14 15:04:12.465524','2024-03-14 15:04:12.465524',NULL),(76,'ZXDEF5EqfOwv1Mkj8WBDoY2jT1oPvB',76,1,5,'2024-03-14 15:37:10.119649','2024-03-14 15:37:10.119649',NULL),(77,'mXFjSpmA4dLhbdkCg4wyESM9HygWCe',77,1,5,'2024-03-14 15:47:12.781128','2024-03-14 15:47:12.781128',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-15 16:17:46
