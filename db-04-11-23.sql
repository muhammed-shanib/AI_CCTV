/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.31 : Database - ai_cctv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ai_cctv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ai_cctv`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add course',7,'add_course'),
(26,'Can change course',7,'change_course'),
(27,'Can delete course',7,'delete_course'),
(28,'Can view course',7,'view_course'),
(29,'Can add department',8,'add_department'),
(30,'Can change department',8,'change_department'),
(31,'Can delete department',8,'delete_department'),
(32,'Can view department',8,'view_department'),
(33,'Can add login',9,'add_login'),
(34,'Can change login',9,'change_login'),
(35,'Can delete login',9,'delete_login'),
(36,'Can view login',9,'view_login'),
(37,'Can add student',10,'add_student'),
(38,'Can change student',10,'change_student'),
(39,'Can delete student',10,'delete_student'),
(40,'Can view student',10,'view_student'),
(41,'Can add violence',11,'add_violence'),
(42,'Can change violence',11,'change_violence'),
(43,'Can delete violence',11,'delete_violence'),
(44,'Can view violence',11,'view_violence'),
(45,'Can add violencesub',12,'add_violencesub'),
(46,'Can change violencesub',12,'change_violencesub'),
(47,'Can delete violencesub',12,'delete_violencesub'),
(48,'Can view violencesub',12,'view_violencesub'),
(49,'Can add staff',13,'add_staff'),
(50,'Can change staff',13,'change_staff'),
(51,'Can delete staff',13,'delete_staff'),
(52,'Can view staff',13,'view_staff'),
(53,'Can add outpass',14,'add_outpass'),
(54,'Can change outpass',14,'change_outpass'),
(55,'Can delete outpass',14,'delete_outpass'),
(56,'Can view outpass',14,'view_outpass'),
(57,'Can add complaint',15,'add_complaint'),
(58,'Can change complaint',15,'change_complaint'),
(59,'Can delete complaint',15,'delete_complaint'),
(60,'Can view complaint',15,'view_complaint'),
(61,'Can add checkin_checkout',16,'add_checkin_checkout'),
(62,'Can change checkin_checkout',16,'change_checkin_checkout'),
(63,'Can delete checkin_checkout',16,'delete_checkin_checkout'),
(64,'Can view checkin_checkout',16,'view_checkin_checkout'),
(65,'Can add chat',17,'add_chat'),
(66,'Can change chat',17,'change_chat'),
(67,'Can delete chat',17,'delete_chat'),
(68,'Can view chat',17,'view_chat'),
(69,'Can add authority',18,'add_authority'),
(70,'Can change authority',18,'change_authority'),
(71,'Can delete authority',18,'delete_authority'),
(72,'Can view authority',18,'view_authority');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

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
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(2,'auth','permission'),
(3,'auth','group'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session'),
(7,'myapp','course'),
(8,'myapp','department'),
(9,'myapp','login'),
(10,'myapp','student'),
(11,'myapp','violence'),
(12,'myapp','violencesub'),
(13,'myapp','staff'),
(14,'myapp','outpass'),
(15,'myapp','complaint'),
(16,'myapp','checkin_checkout'),
(17,'myapp','chat'),
(18,'myapp','authority');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2023-10-07 06:43:28.704034'),
(2,'auth','0001_initial','2023-10-07 06:43:29.891927'),
(3,'admin','0001_initial','2023-10-07 06:43:30.345463'),
(4,'admin','0002_logentry_remove_auto_add','2023-10-07 06:43:30.376722'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-10-07 06:43:30.392336'),
(6,'contenttypes','0002_remove_content_type_name','2023-10-07 06:43:30.564207'),
(7,'auth','0002_alter_permission_name_max_length','2023-10-07 06:43:30.642330'),
(8,'auth','0003_alter_user_email_max_length','2023-10-07 06:43:30.751703'),
(9,'auth','0004_alter_user_username_opts','2023-10-07 06:43:30.767329'),
(10,'auth','0005_alter_user_last_login_null','2023-10-07 06:43:30.845451'),
(11,'auth','0006_require_contenttypes_0002','2023-10-07 06:43:30.861072'),
(12,'auth','0007_alter_validators_add_error_messages','2023-10-07 06:43:30.861072'),
(13,'auth','0008_alter_user_username_max_length','2023-10-07 06:43:30.939200'),
(14,'auth','0009_alter_user_last_name_max_length','2023-10-07 06:43:31.017319'),
(15,'auth','0010_alter_group_name_max_length','2023-10-07 06:43:31.095444'),
(16,'auth','0011_update_proxy_permissions','2023-10-07 06:43:31.111067'),
(17,'auth','0012_alter_user_first_name_max_length','2023-10-07 06:43:31.205238'),
(18,'myapp','0001_initial','2023-10-07 06:43:33.205090'),
(19,'sessions','0001_initial','2023-10-07 06:43:33.298841'),
(20,'myapp','0002_student_status','2023-10-10 08:10:20.954285'),
(21,'myapp','0003_remove_student_status','2023-10-10 08:32:03.374468');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('whdqq2689qxjtdzxhd4633x9yssfl9l8','eyJsaWQiOjEsImFfaWQiOiIzIn0:1qzAu8:P4rwa-6FyapvmPh_7KGtOeddWI3MDX-zwTnjZE-Fcy0','2023-11-18 07:17:12.942083');

/*Table structure for table `myapp_authority` */

DROP TABLE IF EXISTS `myapp_authority`;

CREATE TABLE `myapp_authority` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `authority_name` varchar(100) NOT NULL,
  `upload_a_photo` varchar(500) NOT NULL,
  `house_name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `LOGIN_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_authority_LOGIN_id_edd5b446` (`LOGIN_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_authority` */

insert  into `myapp_authority`(`id`,`authority_name`,`upload_a_photo`,`house_name`,`place`,`city`,`state`,`LOGIN_id`) values 
(2,'majeed','/media/20231010-124732.jpg','somewhere','somewhere','somewhere','Andhra Pradesh',6),
(3,'hashir','/media/20231010-121703.jpg','mannuparambil,kodakal,aalillatha naad','thirunavaya','kuttipuram','Kerala',7),
(4,'abhilash shankar','/media/20231021-152449.jpg','oolampara \r\nahsd','vfvfc','dvdc','Andhra Pradesh',11);

/*Table structure for table `myapp_chat` */

DROP TABLE IF EXISTS `myapp_chat`;

CREATE TABLE `myapp_chat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `FROM_ID_id` bigint NOT NULL,
  `TO_ID_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_chat_FROM_ID_id_5f9a9a6e` (`FROM_ID_id`),
  KEY `myapp_chat_TO_ID_id_f7e35f53` (`TO_ID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_chat` */

/*Table structure for table `myapp_checkin_checkout` */

DROP TABLE IF EXISTS `myapp_checkin_checkout`;

CREATE TABLE `myapp_checkin_checkout` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `STUDENT_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_checkin_checkout_STUDENT_id_b4d3c93a` (`STUDENT_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_checkin_checkout` */

insert  into `myapp_checkin_checkout`(`id`,`date`,`time`,`type`,`STUDENT_id`) values 
(1,'2023-10-06','9.30','in',2),
(2,'2023-09-12','9.55','n',1);

/*Table structure for table `myapp_complaint` */

DROP TABLE IF EXISTS `myapp_complaint`;

CREATE TABLE `myapp_complaint` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `complaint` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `replay` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `STUDENT_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_complaint_STUDENT_id_06b7b3d6` (`STUDENT_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_complaint` */

/*Table structure for table `myapp_course` */

DROP TABLE IF EXISTS `myapp_course`;

CREATE TABLE `myapp_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `total_semester` varchar(100) NOT NULL,
  `DEPARTMENT_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_course_DEPARTMENT_id_9a598a92` (`DEPARTMENT_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_course` */

insert  into `myapp_course`(`id`,`course_name`,`total_semester`,`DEPARTMENT_id`) values 
(1,'Bcom Co','6',4),
(4,'BCA','6',2),
(5,'BSW','6',3),
(6,'BA','6',4),
(7,'micro biology','6',6);

/*Table structure for table `myapp_department` */

DROP TABLE IF EXISTS `myapp_department`;

CREATE TABLE `myapp_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_department` */

insert  into `myapp_department`(`id`,`department_name`) values 
(8,'security'),
(2,'Computer Science'),
(3,'Social Work'),
(4,'English'),
(5,'multi media'),
(6,'Science'),
(7,'Commerce dep');

/*Table structure for table `myapp_login` */

DROP TABLE IF EXISTS `myapp_login`;

CREATE TABLE `myapp_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_login` */

insert  into `myapp_login`(`id`,`username`,`password`,`type`) values 
(1,'admin','5432','admin'),
(2,'yahkoobpopz@gmail.com','8765787656','staff'),
(3,'cutieeswapna@gmail.com','6789540932','staff'),
(4,'abilash sankar','9818',''),
(5,'yahkoobpopz@gmail.com','8765787656','staff'),
(6,'majeed','5435',''),
(7,'sudh','4221',''),
(8,'madhu34@gmail.com','678957678','staff'),
(9,'saidu233@gmail.com','2275','student'),
(10,'manumohan@gmail.com','9133','student'),
(11,'abhilash shankar','4321','authority'),
(12,'hamza109@gmail.com','+919744781791','staff'),
(13,'sana123@gmail.com','12214567','staff');

/*Table structure for table `myapp_outpass` */

DROP TABLE IF EXISTS `myapp_outpass`;

CREATE TABLE `myapp_outpass` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `from_time` varchar(100) NOT NULL,
  `to_time` varchar(100) NOT NULL,
  `app_status` varchar(100) NOT NULL,
  `check_status` varchar(100) NOT NULL,
  `STUDENT_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_outpass_STUDENT_id_83c74976` (`STUDENT_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_outpass` */

insert  into `myapp_outpass`(`id`,`date`,`from_time`,`to_time`,`app_status`,`check_status`,`STUDENT_id`) values 
(1,'2023-10-06','9.30','2.30','hjhjhj','approved',2),
(2,'2023-10-27','kjklj',',mkj','jhkj','rejected',1);

/*Table structure for table `myapp_staff` */

DROP TABLE IF EXISTS `myapp_staff`;

CREATE TABLE `myapp_staff` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `upload_a_photo` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `houseno_name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `DEPARTMENT_id` bigint NOT NULL,
  `LOGIN_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_staff_DEPARTMENT_id_1ae2ea1b` (`DEPARTMENT_id`),
  KEY `myapp_staff_LOGIN_id_73bde0f5` (`LOGIN_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_staff` */

insert  into `myapp_staff`(`id`,`staff_name`,`gender`,`date_of_birth`,`upload_a_photo`,`email`,`phone`,`houseno_name`,`place`,`city`,`state`,`DEPARTMENT_id`,`LOGIN_id`) values 
(2,'swapna','FEMALE','1954-09-05','/media/20231007-134058.jpg','cutieeswapna@gmail.com','6789540932','dream villa\r\nsomewhere under the sky','somewhere','under the sky','Kerala',2,3),
(4,'hamza','MALE','1970-04-03','/media/20231028-131309.jpg','hamza109@gmail.com','+919744781791','hamzappurakkal(h)thrissure,kerala,india','melepeedika','thrissure','Kerala',8,12),
(3,'madhu','FEMALE','1994-08-12','/media/20231010-125631.jpg','madhu34@gmail.com','678957678','madhu house,kollam','kollam','kollam','Kerala',6,8),
(5,'sana','FEMALE','1999-10-03','/media/20231028-131901.jpg','sana123@gmail.com','12214567','sanadd','kollam','thrissure','Kerala',8,13);

/*Table structure for table `myapp_student` */

DROP TABLE IF EXISTS `myapp_student`;

CREATE TABLE `myapp_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `upload_a_photo` varchar(500) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `guardian_phone_number` varchar(100) NOT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `house_name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `COURSE_id` bigint NOT NULL,
  `LOGIN_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_student_COURSE_id_5fe98c90` (`COURSE_id`),
  KEY `myapp_student_LOGIN_id_d3327a2f` (`LOGIN_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_student` */

insert  into `myapp_student`(`id`,`student_name`,`gender`,`date_of_birth`,`upload_a_photo`,`guardian_name`,`guardian_phone_number`,`guardian_email`,`house_name`,`place`,`city`,`state`,`semester`,`COURSE_id`,`LOGIN_id`) values 
(1,'sejla','FEMALE','2003-02-11','/media/20231010-125821.jpg','saidu','7890864535','saidu233@gmail.com','ammayath','kadakassery','kutt','Andhra Pradesh','6',4,9),
(2,'manu','MALE','2003-05-31','/media/20231010-131156.jpg','manohar','9786578907','manumohan@gmail.com','madathil','valanchery','valanchery','Kerala','6',1,10);

/*Table structure for table `myapp_violence` */

DROP TABLE IF EXISTS `myapp_violence`;

CREATE TABLE `myapp_violence` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `photo` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_violence` */

insert  into `myapp_violence`(`id`,`date`,`photo`) values 
(1,'2023-10-06','/media/20231010-125821.jpg');

/*Table structure for table `myapp_violencesub` */

DROP TABLE IF EXISTS `myapp_violencesub`;

CREATE TABLE `myapp_violencesub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `STUDENT_id` bigint NOT NULL,
  `VIOLENCE_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_violencesub_STUDENT_id_418eb8e6` (`STUDENT_id`),
  KEY `myapp_violencesub_VIOLENCE_id_e9d57447` (`VIOLENCE_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `myapp_violencesub` */

insert  into `myapp_violencesub`(`id`,`STUDENT_id`,`VIOLENCE_id`) values 
(1,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
