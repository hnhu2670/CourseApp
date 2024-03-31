-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.3.0

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
  `name` varchar(150) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
  `name` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add category',6,'add_category'),(22,'Can change category',6,'change_category'),(23,'Can delete category',6,'delete_category'),(24,'Can view category',6,'view_category'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add course',8,'add_course'),(30,'Can change course',8,'change_course'),(31,'Can delete course',8,'delete_course'),(32,'Can view course',8,'view_course'),(33,'Can add tag',9,'add_tag'),(34,'Can change tag',9,'change_tag'),(35,'Can delete tag',9,'delete_tag'),(36,'Can view tag',9,'view_tag'),(37,'Can add lesson',10,'add_lesson'),(38,'Can change lesson',10,'change_lesson'),(39,'Can delete lesson',10,'delete_lesson'),(40,'Can view lesson',10,'view_lesson'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment'),(45,'Can add like',12,'add_like'),(46,'Can change like',12,'change_like'),(47,'Can delete like',12,'delete_like'),(48,'Can view like',12,'view_like'),(49,'Can add rating',13,'add_rating'),(50,'Can change rating',13,'change_rating'),(51,'Can delete rating',13,'delete_rating'),(52,'Can view rating',13,'view_rating'),(53,'Can add application',14,'add_application'),(54,'Can change application',14,'change_application'),(55,'Can delete application',14,'delete_application'),(56,'Can view application',14,'view_application'),(57,'Can add access token',15,'add_accesstoken'),(58,'Can change access token',15,'change_accesstoken'),(59,'Can delete access token',15,'delete_accesstoken'),(60,'Can view access token',15,'view_accesstoken'),(61,'Can add grant',16,'add_grant'),(62,'Can change grant',16,'change_grant'),(63,'Can delete grant',16,'delete_grant'),(64,'Can view grant',16,'view_grant'),(65,'Can add refresh token',17,'add_refreshtoken'),(66,'Can change refresh token',17,'change_refreshtoken'),(67,'Can delete refresh token',17,'delete_refreshtoken'),(68,'Can view refresh token',17,'view_refreshtoken'),(69,'Can add id token',18,'add_idtoken'),(70,'Can change id token',18,'change_idtoken'),(71,'Can delete id token',18,'delete_idtoken'),(72,'Can view id token',18,'view_idtoken');
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
  `object_id` longtext COLLATE utf8mb4_vi_0900_as_cs,
  `object_repr` varchar(200) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_ManagementCourseApp_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_ManagementCourseApp_user_id` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-21 12:59:15.123129','1','Tag1',1,'[{\"added\": {}}]',9,1),(2,'2024-03-21 12:59:21.974292','2','Tag2',1,'[{\"added\": {}}]',9,1),(3,'2024-03-21 13:23:26.073939','1','C1',1,'[{\"added\": {}}]',6,1),(4,'2024-03-21 13:24:45.473554','1','Course1',1,'[{\"added\": {}}]',8,1),(5,'2024-03-21 14:18:16.779351','2','Course2',1,'[{\"added\": {}}]',8,1),(6,'2024-03-21 14:18:42.698875','4','Lesson object (4)',1,'[{\"added\": {}}]',10,1),(7,'2024-03-21 14:32:57.467823','2','Categorys1',1,'[{\"added\": {}}]',6,1),(8,'2024-03-21 14:33:05.427097','3','Categorys2',1,'[{\"added\": {}}]',6,1),(9,'2024-03-21 14:33:11.331167','4','Categorys3',1,'[{\"added\": {}}]',6,1),(10,'2024-03-21 14:42:33.974938','5','Lesson object (5)',1,'[{\"added\": {}}]',10,1);
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
  `app_label` varchar(100) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'ManagementCourseApp','category'),(11,'ManagementCourseApp','comment'),(8,'ManagementCourseApp','course'),(10,'ManagementCourseApp','lesson'),(12,'ManagementCourseApp','like'),(13,'ManagementCourseApp','rating'),(9,'ManagementCourseApp','tag'),(7,'ManagementCourseApp','user'),(15,'oauth2_provider','accesstoken'),(14,'oauth2_provider','application'),(16,'oauth2_provider','grant'),(18,'oauth2_provider','idtoken'),(17,'oauth2_provider','refreshtoken'),(5,'sessions','session');
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
  `app` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-21 02:28:57.773994'),(2,'contenttypes','0002_remove_content_type_name','2024-03-21 02:28:57.947670'),(3,'auth','0001_initial','2024-03-21 02:28:58.629270'),(4,'auth','0002_alter_permission_name_max_length','2024-03-21 02:28:58.763012'),(5,'auth','0003_alter_user_email_max_length','2024-03-21 02:28:58.776656'),(6,'auth','0004_alter_user_username_opts','2024-03-21 02:28:58.793441'),(7,'auth','0005_alter_user_last_login_null','2024-03-21 02:28:58.808793'),(8,'auth','0006_require_contenttypes_0002','2024-03-21 02:28:58.815203'),(9,'auth','0007_alter_validators_add_error_messages','2024-03-21 02:28:58.828056'),(10,'auth','0008_alter_user_username_max_length','2024-03-21 02:28:58.841527'),(11,'auth','0009_alter_user_last_name_max_length','2024-03-21 02:28:58.855039'),(12,'auth','0010_alter_group_name_max_length','2024-03-21 02:28:58.888043'),(13,'auth','0011_update_proxy_permissions','2024-03-21 02:28:58.906198'),(14,'auth','0012_alter_user_first_name_max_length','2024-03-21 02:28:58.919225'),(15,'ManagementCourseApp','0001_initial','2024-03-21 02:28:59.815000'),(16,'ManagementCourseApp','0002_category_active_category_create_date_and_more','2024-03-21 02:29:00.129128'),(17,'ManagementCourseApp','0003_tag_alter_course_category_alter_course_image_and_more','2024-03-21 02:29:01.440050'),(18,'ManagementCourseApp','0004_alter_course_image_alter_lesson_image','2024-03-21 02:29:01.748367'),(19,'ManagementCourseApp','0005_user_avatar_alter_course_category_and_more','2024-03-21 02:29:01.821236'),(20,'ManagementCourseApp','0006_comment','2024-03-21 02:29:02.152456'),(21,'ManagementCourseApp','0007_like_rating','2024-03-21 02:29:02.838423'),(22,'ManagementCourseApp','0008_alter_like_active_alter_like_unique_together','2024-03-21 02:29:02.898138'),(23,'ManagementCourseApp','0009_user_role','2024-03-21 02:29:02.945486'),(24,'ManagementCourseApp','0010_user_address_user_gender_alter_user_role','2024-03-21 02:29:03.109076'),(25,'ManagementCourseApp','0011_course_user','2024-03-21 02:29:03.501158'),(26,'admin','0001_initial','2024-03-21 02:29:03.885223'),(27,'admin','0002_logentry_remove_auto_add','2024-03-21 02:29:03.902555'),(28,'admin','0003_logentry_add_action_flag_choices','2024-03-21 02:29:03.919481'),(29,'oauth2_provider','0001_initial','2024-03-21 02:29:05.956631'),(30,'oauth2_provider','0002_auto_20190406_1805','2024-03-21 02:29:06.079185'),(31,'oauth2_provider','0003_auto_20201211_1314','2024-03-21 02:29:06.216981'),(32,'oauth2_provider','0004_auto_20200902_2022','2024-03-21 02:29:07.298379'),(33,'oauth2_provider','0005_auto_20211222_2352','2024-03-21 02:29:07.432144'),(34,'oauth2_provider','0006_alter_application_client_secret','2024-03-21 02:29:07.482523'),(35,'oauth2_provider','0007_application_post_logout_redirect_uris','2024-03-21 02:29:07.791219'),(36,'sessions','0001_initial','2024-03-21 02:29:07.871631'),(37,'ManagementCourseApp','0012_alter_user_role','2024-03-21 03:00:59.394055'),(38,'ManagementCourseApp','0013_alter_course_tags_alter_course_user','2024-03-21 03:17:26.450452'),(39,'ManagementCourseApp','0014_alter_user_role','2024-03-21 12:51:07.011191'),(40,'ManagementCourseApp','0015_alter_lesson_image','2024-03-31 04:28:00.255233'),(41,'ManagementCourseApp','0016_alter_course_image','2024-03-31 05:01:29.922422');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `session_data` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3ivnmf5tg4pvg9wbr10dx0jflg4bq8kp','.eJxVjDkOwjAUBe_iGll2sBObkj5niP5KAsiWslSIu0OkFNC-mXkvM8C2jsO2yDxMbC7Gm9PvhkAPKTvgO5RbtVTLOk9od8UedLF9ZXleD_fvYIRl_NY5JkCkhAQZlRiDQNQIrmtIuRNtQRpHIWByMTXqXcxy1pbZt51XMu8PLJ85UQ:1rnHm4:P135H_3hf3_iCTEGZZ2Mw3GAVULpQN3w0C0tHi3MRM4','2024-04-04 12:44:00.141027'),('3zx8c381e2sxt9erfw9oh0zbpswsky8q','.eJxVjDkOwjAUBe_iGll2sBObkj5niP5KAsiWslSIu0OkFNC-mXkvM8C2jsO2yDxMbC7Gm9PvhkAPKTvgO5RbtVTLOk9od8UedLF9ZXleD_fvYIRl_NY5JkCkhAQZlRiDQNQIrmtIuRNtQRpHIWByMTXqXcxy1pbZt51XMu8PLJ85UQ:1rn8SG:Q729WJNj7a8ssgP-mZtPo_pYafT4-RV_jOnLNqDO8JM','2024-04-04 02:46:56.852751'),('69kiraewnf9iw8ad8tmx6k0gjtsnfro4','.eJxVjDsOwjAQBe_iGllJHH-Wkj5niNa7axxAtpRPhbg7iZQC2jcz761G3NY8bovM48Tqqry6_G4R6SnlAPzAcq-aalnnKepD0Sdd9FBZXrfT_TvIuOS97gVNalwkBmscRbbAyCm0DAQdm5DAiITWg6Cn3jbgDHW77MijIa8-XwysOIo:1rn8es:9-H5fzOKU2JT_jf68yuJ3oNlXHibjXB0rvuNI5dnSFQ','2024-04-04 02:59:58.350846'),('oyv8m2k6yly05rb00k230b2u31ft1yqs','.eJxVjMsOwiAQRf-FtSEM5enSvd9ABgakaiAp7cr479qkC93ec859sYDbWsM28hJmYmfm2Ol3i5geue2A7thunafe1mWOfFf4QQe_dsrPy-H-HVQc9VsDgdRACE4pUaxLDoVW0oMpsegJJu-kESILNwnUngwUpEje2mKjsZq9P7j3Nuo:1rn8hQ:Itxg37gvLQY6Wb9s8VGi7FxjP8J1oSeDpe10wXgi3ms','2024-04-04 03:02:36.063691');
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
  `name` varchar(50) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_category`
--

LOCK TABLES `managementcourseapp_category` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_category` DISABLE KEYS */;
INSERT INTO `managementcourseapp_category` VALUES (1,'C1',1,'2024-03-21','2024-03-21'),(2,'Categorys1',1,'2024-03-21','2024-03-21'),(3,'Categorys2',1,'2024-03-21','2024-03-21'),(4,'Categorys3',1,'2024-03-21','2024-03-21');
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
  `content` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `lesson_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ManagementCourseApp__lesson_id_ce0dd7f7_fk_Managemen` (`lesson_id`),
  KEY `ManagementCourseApp__user_id_d89d6083_fk_Managemen` (`user_id`),
  CONSTRAINT `ManagementCourseApp__lesson_id_ce0dd7f7_fk_Managemen` FOREIGN KEY (`lesson_id`) REFERENCES `managementcourseapp_lesson` (`id`),
  CONSTRAINT `ManagementCourseApp__user_id_d89d6083_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_comment`
--

LOCK TABLES `managementcourseapp_comment` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_comment` DISABLE KEYS */;
INSERT INTO `managementcourseapp_comment` VALUES (1,'2024-03-25','2024-03-25',1,'Hello',3,1);
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
  `subject` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `description` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_course_subject_category_id_5ecd67a9_uniq` (`subject`,`category_id`),
  KEY `ManagementCourseApp__category_id_aff02ed0_fk_Managemen` (`category_id`),
  CONSTRAINT `ManagementCourseApp__category_id_aff02ed0_fk_Managemen` FOREIGN KEY (`category_id`) REFERENCES `managementcourseapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_course`
--

LOCK TABLES `managementcourseapp_course` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_course` DISABLE KEYS */;
INSERT INTO `managementcourseapp_course` VALUES (1,'2024-03-21','2024-03-21',1,'Course1','1','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711860363/courseapp/qbb02va5zotuil8f1qpq.jpg',1),(2,'2024-03-21','2024-03-21',1,'Course2','2','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711334976/courseapp/lgdkxuktbuj76pjzmntm.jpg',1),(3,'2024-03-21','2024-03-21',1,'Course3','2','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711334976/courseapp/lgdkxuktbuj76pjzmntm.jpg',1),(4,'2024-03-21','2024-03-21',1,'Course4','2','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711334976/courseapp/lgdkxuktbuj76pjzmntm.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_course_tags`
--

LOCK TABLES `managementcourseapp_course_tags` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_course_tags` DISABLE KEYS */;
INSERT INTO `managementcourseapp_course_tags` VALUES (1,1,1),(2,2,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_course_user`
--

LOCK TABLES `managementcourseapp_course_user` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_course_user` DISABLE KEYS */;
INSERT INTO `managementcourseapp_course_user` VALUES (3,1,1),(1,1,4),(2,2,3),(4,3,3),(5,4,4);
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
  `subject` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `content` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ManagementCourseApp_lesson_subject_course_id_f8015a22_uniq` (`subject`,`course_id`),
  KEY `ManagementCourseApp__course_id_7862bcaa_fk_Managemen` (`course_id`),
  CONSTRAINT `ManagementCourseApp__course_id_7862bcaa_fk_Managemen` FOREIGN KEY (`course_id`) REFERENCES `managementcourseapp_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_lesson`
--

LOCK TABLES `managementcourseapp_lesson` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_lesson` DISABLE KEYS */;
INSERT INTO `managementcourseapp_lesson` VALUES (3,'2024-03-21','2024-03-21',1,'11111','1','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711860363/courseapp/qbb02va5zotuil8f1qpq.jpg',1),(4,'2024-03-21','2024-03-21',1,'Course2','nội dùng 4','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711860363/courseapp/qbb02va5zotuil8f1qpq.jpg',1),(5,'2024-03-21','2024-03-21',1,'Lesson1','nội dung 5','https://res.cloudinary.com/dhdca9ibd/image/upload/v1711860363/courseapp/qbb02va5zotuil8f1qpq.jpg',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_lesson_tags`
--

LOCK TABLES `managementcourseapp_lesson_tags` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_lesson_tags` DISABLE KEYS */;
INSERT INTO `managementcourseapp_lesson_tags` VALUES (1,4,2),(2,5,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_like`
--

LOCK TABLES `managementcourseapp_like` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_like` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
  `name` varchar(50) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_tag`
--

LOCK TABLES `managementcourseapp_tag` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_tag` DISABLE KEYS */;
INSERT INTO `managementcourseapp_tag` VALUES (1,'2024-03-21','2024-03-21',1,'Tag1'),(2,'2024-03-21','2024-03-21',1,'Tag2');
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
  `password` varchar(128) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_vi_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managementcourseapp_user`
--

LOCK TABLES `managementcourseapp_user` WRITE;
/*!40000 ALTER TABLE `managementcourseapp_user` DISABLE KEYS */;
INSERT INTO `managementcourseapp_user` VALUES (1,'pbkdf2_sha256$720000$qnyQBiVS3TxmAjy1qTWu99$0zQ8xRLCFlA22mDR7NeZPCW/6MPqVPxnjxEvEOC+EyQ=','2024-03-21 12:44:00.135680',1,'admin','admin','admin','admin@gmail.com',1,1,'2024-03-21 02:39:05.892964',NULL,'admin',NULL,NULL),(3,'pbkdf2_sha256$720000$h9y7oMNGuQNid1Kqcs46DD$3o7hDFDFItG9qkjP8ihgOcOZmdCr5kowv+HKGo23K8M=',NULL,0,'nhu','Huỳnh','Như','',0,1,'2024-03-21 02:48:02.060871','image/upload/https://res.cloudinary.com/dhdca9ibd/image/upload/v1711334976/courseapp/lgdkxuktbuj76pjzmntm.jpg','admin',NULL,NULL),(4,'pbkdf2_sha256$720000$bIvqfkiw75RctXVfKnjGbj$8qVA9KClgNTVReSbp2jfQBTrS/0uL1kmkZ0BgPGELp8=',NULL,0,'user1','Huỳnh','Như','',0,1,'2024-03-21 02:48:15.604708',NULL,'user',NULL,NULL),(5,'pbkdf2_sha256$720000$3z5o1tODbcfuGlmF4QYPZH$0KQH1JF3UCS7AXb9ORvEIxFzv9iJ5+YOP79TtDTf8rg=',NULL,0,'user2','Huỳnh','Như','',0,1,'2024-03-21 02:48:20.478191',NULL,'user',NULL,NULL),(6,'pbkdf2_sha256$720000$3AWWluUgtZMzbCMx9EulYM$lJS0WRkovGkmniInfCs9LQ2Lps8hnKEEZW5mnN9aRFc=',NULL,0,'user3','Huỳnh','Như','',0,1,'2024-03-21 02:48:24.704830',NULL,'user',NULL,NULL),(8,'pbkdf2_sha256$720000$Z0HmZhwRwZLX70JvoBf3lB$iyfrNgAYLF1MeT+cXqFpLDjKPqt/n+rHwH/QsswYwug=','2024-03-21 03:08:39.612668',1,'Admin','Admin','Admin','a@gmail.com',1,1,'2024-03-21 03:02:08.031293',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
  `token` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'unLc0A39Ya8cj2F7paMVrW9jnDiGaA','2024-03-21 13:06:26.663356','read write',1,1,'2024-03-21 03:06:26.664863','2024-03-21 03:06:26.664863',NULL,NULL),(2,'nMZ21A9Bd6sx1R6iTljl8fzOyHetHN','2024-03-21 13:07:59.954782','read write',1,8,'2024-03-21 03:07:59.954782','2024-03-21 03:07:59.954782',NULL,NULL),(3,'gA3s9LDjiLIbDjFZutOY1hMMet5AhY','2024-03-22 13:39:52.047888','read write',1,1,'2024-03-22 03:39:52.049840','2024-03-22 03:39:52.049840',NULL,NULL),(4,'kNzxH4SaIYv5AfI1fjUglzZj4wmRPA','2024-03-25 13:17:54.667468','read write',1,3,'2024-03-25 03:17:54.675904','2024-03-25 03:17:54.675904',NULL,NULL),(5,'o2LQ0B4mbtoGfdVw9KAcU7uTD9K7EE','2024-03-25 13:21:05.380788','read write',1,3,'2024-03-25 03:21:05.380788','2024-03-25 03:21:05.380788',NULL,NULL),(6,'Dpo0vVy08qLfW9JZBaOYqBcjUwWj3P','2024-03-25 13:47:06.868147','read write',1,1,'2024-03-25 03:47:06.868147','2024-03-25 03:47:06.868147',NULL,NULL),(7,'k80QrnVqox9OtQ3i6eQj441w2rg2ts','2024-03-25 14:08:58.622910','read write',1,1,'2024-03-25 04:08:58.622910','2024-03-25 04:08:58.622910',NULL,NULL),(8,'9dk0CSA0gV1qumdM8utaI330bsvHZc','2024-03-25 14:15:13.290348','read write',1,1,'2024-03-25 04:15:13.290348','2024-03-25 04:15:13.290348',NULL,NULL),(9,'zl6Rchub4zq5DQUL1Bh9YQedXz2pBn','2024-03-25 14:16:04.188945','read write',1,1,'2024-03-25 04:16:04.188945','2024-03-25 04:16:04.188945',NULL,NULL),(10,'rB1t9xFI76qUmCyEplnwIcqRaqIXdq','2024-03-26 01:10:35.488027','read write',1,1,'2024-03-25 15:10:35.495389','2024-03-25 15:10:35.495389',NULL,NULL),(11,'EBw1Unxyunxn3GyAHpycX0BbrhoHCg','2024-03-26 01:40:16.568527','read write',1,3,'2024-03-25 15:40:16.572479','2024-03-25 15:40:16.572479',NULL,NULL),(12,'Xdrk9y9DNPJTx6lLv8sCZIQw2VabdH','2024-03-26 12:37:01.157870','read write',1,3,'2024-03-26 02:37:01.158938','2024-03-26 02:37:01.158938',NULL,NULL),(13,'fi68gaHFClHsslZ6xWg57EPRZTQpw6','2024-03-26 13:00:34.337771','read write',1,3,'2024-03-26 03:00:34.337771','2024-03-26 03:00:34.337771',NULL,NULL),(14,'8MUrEAZs2zt7cUUqdJLvVIpasWdWNJ','2024-03-26 14:07:26.718988','read write',1,3,'2024-03-26 04:07:26.724164','2024-03-26 04:07:26.724164',NULL,NULL),(15,'WhHJXPtbrwZuWvoUsjbdedEygmJGsT','2024-03-26 14:16:22.270530','read write',1,3,'2024-03-26 04:16:22.270530','2024-03-26 04:16:22.270530',NULL,NULL),(16,'q1dGHKZx0RqHZIV0Ss4UwGGFLWEJsr','2024-03-26 14:17:51.836023','read write',1,3,'2024-03-26 04:17:51.836023','2024-03-26 04:17:51.836023',NULL,NULL),(17,'GWOYpo6y2Nyr6KBHHmOsWb1Ik0Nejh','2024-03-26 14:22:59.303994','read write',1,3,'2024-03-26 04:22:59.303994','2024-03-26 04:22:59.303994',NULL,NULL),(18,'XVO1yyB8HrWQJ7nCcrtwqmJYNAGtE0','2024-03-26 14:24:03.831004','read write',1,3,'2024-03-26 04:24:03.831004','2024-03-26 04:24:03.831004',NULL,NULL),(19,'E1kFZ8bVMwfRSDZ3Vu9ZvAAje6kA7r','2024-03-26 14:40:09.653587','read write',1,3,'2024-03-26 04:40:09.653587','2024-03-26 04:40:09.653587',NULL,NULL),(20,'42IcAKDodJ1VL5mAllPlFAToqUHAdO','2024-03-26 19:30:50.937619','read write',1,3,'2024-03-26 09:30:50.937619','2024-03-26 09:30:50.937619',NULL,NULL),(21,'uo7CF21UVJ9KFvqK0zqV9dO8PUrqiG','2024-03-26 20:02:33.405133','read write',1,3,'2024-03-26 10:02:33.405133','2024-03-26 10:02:33.405133',NULL,NULL),(22,'vnisMvehZQ2pfXO754Be2D4OOw2hgQ','2024-03-28 01:11:20.515725','read write',1,3,'2024-03-27 15:11:20.525073','2024-03-27 15:11:20.525073',NULL,NULL),(23,'BRh6YTOVMfARkeDCzssadGCNAmticW','2024-03-31 13:20:42.608198','read write',1,3,'2024-03-31 03:20:42.608198','2024-03-31 03:20:42.608198',NULL,NULL),(24,'fxuJUd1VBbRB4QOp4ZSQsek76BcmDp','2024-03-31 13:28:04.645358','read write',1,3,'2024-03-31 03:28:04.645358','2024-03-31 03:28:04.645358',NULL,NULL),(25,'7Y2ak9QLYub0x5P5UBvbkc05gq60Qa','2024-03-31 13:30:56.738090','read write',1,3,'2024-03-31 03:30:56.738594','2024-03-31 03:30:56.738594',NULL,NULL),(26,'1EaI3dxUBmz0jCaNeEeprktCKwLiBc','2024-03-31 13:31:24.731020','read write',1,3,'2024-03-31 03:31:24.731020','2024-03-31 03:31:24.731020',NULL,NULL),(27,'aMSNdSnuuDgLyLhi4IXZaeKqguV00Q','2024-03-31 13:39:14.250863','read write',1,3,'2024-03-31 03:39:14.253276','2024-03-31 03:39:14.253276',NULL,NULL),(28,'9Y5cTtFbKKhNiM3jniWFyfJf5UFuY2','2024-03-31 13:39:38.429374','read write',1,3,'2024-03-31 03:39:38.430454','2024-03-31 03:39:38.430454',NULL,NULL),(29,'HrUmoSbs4aKSWEE1BAN1jfoilFJc2E','2024-03-31 13:41:00.219105','read write',1,3,'2024-03-31 03:41:00.219105','2024-03-31 03:41:00.219105',NULL,NULL),(30,'y63mhSJ6GRKouIHEBCTSHjJoWvcaQF','2024-03-31 13:43:07.132058','read write',1,3,'2024-03-31 03:43:07.133128','2024-03-31 03:43:07.133128',NULL,NULL),(31,'CZKVDWznfu5tL93WxA8YnrqmlLoA9T','2024-03-31 13:44:03.834559','read write',1,3,'2024-03-31 03:44:03.834559','2024-03-31 03:44:03.834559',NULL,NULL),(32,'RGGSgWiI7g6fR5ZU5mQf8b1yGFVEfg','2024-03-31 13:44:13.730148','read write',1,3,'2024-03-31 03:44:13.730148','2024-03-31 03:44:13.730148',NULL,NULL),(33,'Yelh5IyaakMFZwOgEhtcvKgQ1SRL5y','2024-03-31 13:46:31.593573','read write',1,3,'2024-03-31 03:46:31.593573','2024-03-31 03:46:31.593573',NULL,NULL),(34,'rsDvRRFnkq9GcvB28xFTX9EBecuKpT','2024-03-31 14:53:03.404551','read write',1,3,'2024-03-31 04:53:03.405587','2024-03-31 04:53:03.405587',NULL,NULL),(35,'j4LSyXZAfVAdZ6goIq7yxY0oNCXr6f','2024-03-31 14:57:27.996944','read write',1,3,'2024-03-31 04:57:27.998002','2024-03-31 04:57:27.998002',NULL,NULL),(36,'tDr16l643lHETfwws07dE4lA4Y2TqE','2024-03-31 14:58:49.004890','read write',1,3,'2024-03-31 04:58:49.004890','2024-03-31 04:58:49.004890',NULL,NULL),(37,'N7WYTzUNUcjnsZNF62JXqOFHL4GKih','2024-03-31 15:02:54.056805','read write',1,3,'2024-03-31 05:02:54.057230','2024-03-31 05:02:54.057230',NULL,NULL),(38,'hqvYcv1gTQtYiPig05MCH7wfm5A87B','2024-03-31 15:04:58.959122','read write',1,3,'2024-03-31 05:04:58.960176','2024-03-31 05:04:58.960176',NULL,NULL);
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
  `client_id` varchar(100) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `post_logout_redirect_uris` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_Managemen` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'1AiXXkVfi9qbUKx1DyOgZsctavNp41KtQ5cYyRR8','','confidential','password','pbkdf2_sha256$720000$FoYIYNKbJFt5O1CUNXxIZ9$PXUd/lsCrYUHEMm4mQU8mfrvxPWNe200cR4Sxz8EP2s=','Admin',8,0,'2024-03-21 03:05:57.545117','2024-03-21 03:05:57.545117','','');
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
  `code` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `scope` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `claims` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_gran_user_id_e8f62af8_fk_Managemen` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_gran_user_id_e8f62af8_fk_Managemen` FOREIGN KEY (`user_id`) REFERENCES `managementcourseapp_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
  `jti` char(32) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
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
  `token` varchar(255) COLLATE utf8mb4_vi_0900_as_cs NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vi_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'97ER8Ljnr0ke2xQipCakKoFoeTBYlD',1,1,1,'2024-03-21 03:06:26.719450','2024-03-21 03:06:26.719450',NULL),(2,'LOg7KNBtg5TTIV2lvhHkZeHynjCpGP',2,1,8,'2024-03-21 03:07:59.958839','2024-03-21 03:07:59.958839',NULL),(3,'XRB9VlQv6MWO4Ld3TCRll6HWBFFwth',3,1,1,'2024-03-22 03:39:52.069309','2024-03-22 03:39:52.069309',NULL),(4,'QP6aS0UHu7fkNckmb4LM0VruwDUiWu',4,1,3,'2024-03-25 03:17:54.695582','2024-03-25 03:17:54.695582',NULL),(5,'iPIjDIrVWf9IY9FR76TrXm8FUCxcDl',5,1,3,'2024-03-25 03:21:05.384770','2024-03-25 03:21:05.384770',NULL),(6,'hHV01tKF7TEjprCMy3hAUHI3O8y9wc',6,1,1,'2024-03-25 03:47:06.871874','2024-03-25 03:47:06.871874',NULL),(7,'TpIceEEHDptDGebmrHNSM1VHX7q0hO',7,1,1,'2024-03-25 04:08:58.639977','2024-03-25 04:08:58.639977',NULL),(8,'zaXzKcuh5kAulKS8n3iQc0mafljgYi',8,1,1,'2024-03-25 04:15:13.293607','2024-03-25 04:15:13.293607',NULL),(9,'1wZtUQkxs0VIfACWxG2AqCtfzPx4BO',9,1,1,'2024-03-25 04:16:04.190858','2024-03-25 04:16:04.190858',NULL),(10,'05niAKrXWkO9cR3eSmasyTZQunVclG',10,1,1,'2024-03-25 15:10:35.516159','2024-03-25 15:10:35.516159',NULL),(11,'I60xlSqCBjWPiCs7rUdQMfuoVI3nN2',11,1,3,'2024-03-25 15:40:16.576480','2024-03-25 15:40:16.576480',NULL),(12,'GU8Y4QBEc7e3IY2VAy03yo2SbcJPYz',12,1,3,'2024-03-26 02:37:01.181520','2024-03-26 02:37:01.181520',NULL),(13,'PPqBZOlZPYEATpcGWElfp58qisEyYp',13,1,3,'2024-03-26 03:00:34.340877','2024-03-26 03:00:34.340877',NULL),(14,'5U1i1CNzXwupob2FFx9U3NETIKfL4s',14,1,3,'2024-03-26 04:07:26.728679','2024-03-26 04:07:26.728679',NULL),(15,'CzWzYXxxUlMANzi6qqQBpLOGxZzjLX',15,1,3,'2024-03-26 04:16:22.272045','2024-03-26 04:16:22.272045',NULL),(16,'AawMNHLg9Po68R2WOAfiWbVAb3uSZp',16,1,3,'2024-03-26 04:17:51.836023','2024-03-26 04:17:51.836023',NULL),(17,'T61VJzjCiQwdEgUT71QWpbEJ6R2UcT',17,1,3,'2024-03-26 04:22:59.303994','2024-03-26 04:22:59.303994',NULL),(18,'rS33E7ohg4dISVvJExkES3xWNgsC88',18,1,3,'2024-03-26 04:24:03.834106','2024-03-26 04:24:03.834106',NULL),(19,'gCObEVfoMnMNRdh6N95glqFUGztCjn',19,1,3,'2024-03-26 04:40:09.655597','2024-03-26 04:40:09.655597',NULL),(20,'rkKuf0ZaEMsanqj5nEIWsrOkaQG9YI',20,1,3,'2024-03-26 09:30:50.969013','2024-03-26 09:30:50.969013',NULL),(21,'kW5vgZkABK8vvLnBDB5hNNkGpABsSa',21,1,3,'2024-03-26 10:02:33.405133','2024-03-26 10:02:33.405133',NULL),(22,'yWwr40xfSqtyd0nHnvHHIDsDO2HCBt',22,1,3,'2024-03-27 15:11:20.557325','2024-03-27 15:11:20.557325',NULL),(23,'aYceoobNKT41gbnKuIk6VcMT6KG0dY',23,1,3,'2024-03-31 03:20:42.623839','2024-03-31 03:20:42.623839',NULL),(24,'cy0A6Sz30bdS3c3OWA5HzFFtL4wxaz',24,1,3,'2024-03-31 03:28:04.648858','2024-03-31 03:28:04.648858',NULL),(25,'Usq9WtEOsB6gbmW1S0BbcUuOG4QAjy',25,1,3,'2024-03-31 03:30:56.741593','2024-03-31 03:30:56.741593',NULL),(26,'U2plpb2nQKVzUerNyB8Ex7lgE5KMae',26,1,3,'2024-03-31 03:31:24.734312','2024-03-31 03:31:24.734312',NULL),(27,'AfQEO0miXiZqTGhEvguSiGKGTf3FJ4',27,1,3,'2024-03-31 03:39:14.254189','2024-03-31 03:39:14.254189',NULL),(28,'6v5RM8ImplPlJl6Zo16PZ7egYldlnj',28,1,3,'2024-03-31 03:39:38.431692','2024-03-31 03:39:38.431692',NULL),(29,'xNMFHdfP7nrRHuG2Nlh1AxEwZ050C0',29,1,3,'2024-03-31 03:41:00.220295','2024-03-31 03:41:00.220295',NULL),(30,'EsaO5vUu1Mwu3XIORawG4rKJtKon6w',30,1,3,'2024-03-31 03:43:07.134214','2024-03-31 03:43:07.134214',NULL),(31,'wC7E2IvcV63wBdhSvox7krMc9xsy5o',31,1,3,'2024-03-31 03:44:03.835618','2024-03-31 03:44:03.835618',NULL),(32,'4cl7m64XrJz6LIkmUs4NXBrhhQLfzI',32,1,3,'2024-03-31 03:44:13.732307','2024-03-31 03:44:13.732307',NULL),(33,'Yu40FJVbJdEDxNM9RDIAn0BiQ8rqrE',33,1,3,'2024-03-31 03:46:31.609225','2024-03-31 03:46:31.609225',NULL),(34,'7onUoFL2hmScvwKpL9Awj6m1KrvRY7',34,1,3,'2024-03-31 04:53:03.410290','2024-03-31 04:53:03.410290',NULL),(35,'8yd4yTC1RlebNyRIfp7O87tjfpo8Jb',35,1,3,'2024-03-31 04:57:28.000144','2024-03-31 04:57:28.000144',NULL),(36,'a98b0gc1wDnYBrJ5AEgxzA0tS5WWyq',36,1,3,'2024-03-31 04:58:49.006972','2024-03-31 04:58:49.006972',NULL),(37,'1Y3BUnuHO8oq0Uz4cLLF5rffsnyJWr',37,1,3,'2024-03-31 05:02:54.058232','2024-03-31 05:02:54.058232',NULL),(38,'jn7zfYk1VFWm9aI0KxrzrxluLMkxE2',38,1,3,'2024-03-31 05:04:58.962383','2024-03-31 05:04:58.962383',NULL);
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

-- Dump completed on 2024-03-31 12:10:05
