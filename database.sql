-- MySQL dump 10.13  Distrib 8.2.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'uqwyWcpC95LemOX4oo6avHhb3y9mZHIK',1,'2024-02-25 19:15:06','2024-02-25 19:15:06','2024-02-25 19:15:06'),(2,2,'MGaNGjmT8qQq8VpqEp788xk0lvHaqCS7',1,'2024-02-25 19:15:06','2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2029-02-26 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(2,'Top Slider Image 2','2029-02-26 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(3,'Homepage middle 1','2029-02-26 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(4,'Homepage middle 2','2029-02-26 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(5,'Homepage middle 3','2029-02-26 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(6,'Homepage big 1','2029-02-26 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(7,'Homepage bottom small','2029-02-26 00:00:00','not_set','ZGPVFJJIEO1S','promotion/7.jpg','/products',0,7,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(8,'Product sidebar','2029-02-26 00:00:00','product-sidebar','ZTX9VWHVMZ56','promotion/8.jpg','/products',0,8,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL),(9,'Homepage big 2','2029-02-26 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Voluptatem nostrum sit similique iusto assumenda. Sint suscipit dolor optio cumque amet accusantium consequatur voluptas.','published',2,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(2,'Fashion',0,'Optio quis qui eius fugiat. Sit magni iusto alias. Animi cumque maxime inventore facilis.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(3,'Electronic',0,'Error quam eligendi doloribus. Deserunt quod fuga dolor consequuntur. Exercitationem natus soluta nihil culpa qui dolores. Ratione voluptatem vero dolores quisquam.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(4,'Commercial',0,'Ut maiores assumenda facilis maiores ut eaque rerum. Nihil nemo quidem beatae officia vel reiciendis itaque. Mollitia repellat in non dolorem.','published',2,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-02-25 19:15:07','2024-02-25 19:15:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Dr. Katrina Senger','jast.tiara@example.net','+1-757-992-3948','269 Ashleigh Falls Apt. 138\nBogisichmouth, CA 24185','Nemo nostrum quia quam cumque nemo eaque.','Sit rem ipsam provident sed cupiditate. Error facilis accusamus et aut fuga. Dolores eos provident non enim magnam repellat. Dolores cum debitis nam praesentium autem ut. Nesciunt veritatis optio aperiam sit aperiam numquam facilis. Ea esse voluptatum enim nobis. Beatae ex ipsam omnis ipsam impedit cumque id. Voluptatum culpa molestias commodi aliquam dolorem placeat velit minus. Explicabo placeat rerum quo perferendis. Nobis cupiditate qui et sint beatae ad.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(2,'Tamara Bins','jules.ferry@example.org','+1-947-883-4196','36266 Marie Radial Apt. 864\nNorth Donniemouth, PA 72901-1022','Accusamus sit corrupti ea earum veniam aut.','Voluptas fugiat minus et tempora molestiae neque. Recusandae nemo nemo et est nulla ex et. Voluptas esse ea aut ipsum sapiente praesentium unde. Omnis voluptas assumenda et ab aperiam voluptas quo harum. Cum saepe cum delectus assumenda. Id ut ut corrupti magnam voluptas. Non optio necessitatibus ab. Sit rerum qui natus et unde. Consequatur quae nostrum libero ut dolor fuga sed quia. Laborum eius consequatur quas voluptatem a ut ipsa.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(3,'Prof. Giovanny Baumbach I','ardith20@example.net','+1-970-402-3830','4838 Isabel Well Apt. 246\nCamilleview, NV 48165-4207','Quod et reiciendis aut necessitatibus blanditiis.','Expedita omnis esse maxime quisquam id nam sint. Vel animi recusandae velit ab eaque quis distinctio. Distinctio enim laudantium deserunt cumque repudiandae quia voluptatem. Cumque consequatur asperiores accusantium ut dolores quibusdam. Asperiores et cupiditate voluptatem quae dolor molestias. Consequuntur laborum velit nisi. Placeat impedit enim ut dignissimos. Beatae sint officiis repellendus nulla ullam eveniet. Molestiae nostrum corrupti illo numquam fugiat. Aperiam alias provident eaque.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(4,'Macey Blanda','ramona61@example.org','267.559.5046','5240 Kiehn Radial Apt. 019\nBettymouth, TN 05345-7567','Quasi non aut cumque beatae.','Autem molestiae consequatur aut totam fuga reprehenderit. Occaecati repudiandae est nisi dolorem vitae natus rerum ut. Nobis neque quod ad modi consequuntur expedita autem. Veritatis non vel commodi rem excepturi aut. Perspiciatis earum deleniti quasi et. Fuga tempora deleniti tenetur nostrum nostrum. Reprehenderit dolorum perspiciatis tempora aliquid qui. Earum dolor dolores omnis velit non est iste.','read','2024-02-25 19:15:06','2024-02-25 19:15:06'),(5,'Brando Morissette','boehm.glenna@example.org','+1.520.410.7909','23400 Rachel Stream\nNorth Myrtis, OR 62199-0440','Exercitationem rem et itaque ut laborum suscipit.','Ut omnis omnis quos doloribus atque dolore. Rerum quos reiciendis necessitatibus sit officiis quis. Natus labore minus possimus quo. Eius rerum ex hic est ab laborum ea neque. Consequatur voluptate repellendus ut cupiditate. In velit provident optio. Eos accusantium sit beatae velit ut omnis velit. Laborum adipisci quaerat aut animi sunt. Voluptatem ab et veniam autem tempora nemo.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(6,'Gilberto Brown','russ52@example.org','(551) 405-0724','62783 Maria Oval Suite 110\nKovacekhaven, TN 73172','Ut libero iure eos ipsam.','Tempore assumenda perspiciatis error nulla. Molestiae itaque velit maxime vitae et. Voluptatem quod quidem ea eius at quisquam. Eos repudiandae reiciendis iure eius ut. Aperiam porro ex et debitis. Porro nihil qui totam voluptates. Neque perferendis delectus necessitatibus quia repellendus doloremque eveniet. Et error veritatis animi. Aperiam tempore aut odit est. Et aut ut est.','read','2024-02-25 19:15:06','2024-02-25 19:15:06'),(7,'Baylee Ernser MD','cmetz@example.net','512.632.8652','564 Stoltenberg Stream Suite 831\nPort Troyview, MA 25003-1151','Sed officiis accusantium non commodi sit quidem.','Sed enim repellendus et sit excepturi officiis. Cupiditate eum voluptas iste voluptatibus ipsam. Autem eos consequatur iure molestiae sit et. Illo rerum ipsum non consectetur quod quibusdam nobis officia. Tempore dolores deserunt dolorem minus quidem. Ex aut sint veniam vel ut asperiores similique quaerat. Esse dolores deserunt eligendi quia tenetur sapiente at minima. Voluptas excepturi est non dolorem voluptatem eaque et.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(8,'Korey Fritsch','wbuckridge@example.com','386.412.5079','81098 Ebert Crossing Apt. 674\nSouth Marialand, UT 37380','Quasi nostrum et blanditiis ipsum.','Ea consectetur et quis itaque quia aliquam non. Quo blanditiis illum consequuntur odio quo placeat. Excepturi quam illum iure cum delectus. Esse odio sequi quia dolorem maiores sapiente incidunt. Odio autem voluptatem voluptatibus et distinctio est quas. Enim quasi dolorum placeat. Cum suscipit non tempore vero est qui. Nisi veniam quis dolorum laboriosam voluptatem. Recusandae temporibus sit ullam mollitia qui. Et iure et odio est optio et.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(9,'Dr. Coy Donnelly','hritchie@example.net','+1-812-789-3807','8432 Nyah Springs Apt. 013\nEast Vernfort, NC 20865-2660','Optio nesciunt sint dolore odio accusamus.','Velit repellendus sed ipsum quo. Maxime odit inventore perferendis nulla doloremque et. Dolorem omnis eos doloremque sit aut dignissimos excepturi. Sit quae quidem voluptatem deserunt facilis aliquam. Labore eligendi molestias aut consequuntur quo. Nihil et itaque et sit distinctio veritatis eos. Accusamus minima voluptates autem eos aperiam. Iste aperiam excepturi maiores excepturi. Vero voluptates labore aut sequi pariatur.','unread','2024-02-25 19:15:06','2024-02-25 19:15:06'),(10,'Dr. Colt Bernhard V','royal.carroll@example.net','(704) 923-6446','27405 Gleason Brook\nDibbertville, OR 39635-3581','Nisi temporibus et minima.','Neque amet cum labore neque itaque hic provident harum. Sint recusandae soluta nobis nihil nemo modi. Officia esse totam magni. Delectus quo numquam harum ea expedita accusamus. Odio accusantium reprehenderit voluptatibus corporis id rem. Molestiae beatae nihil quasi modi eveniet. Labore et reprehenderit dolores labore maiores aut. In sit voluptates veniam officia eius sint ratione.','read','2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2024-02-25 19:14:56','2024-02-25 19:14:56');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(2,'EUR','€',0,2,1,0,0.84,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(3,'VND','₫',0,0,2,0,23203,'2024-02-25 19:14:56','2024-02-25 19:14:56'),(4,'NGN','₦',1,2,2,0,895.52,'2024-02-25 19:14:56','2024-02-25 19:14:56');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dion Pfannerstill','customer@botble.com','+15186038079','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',1,1,'2024-02-25 19:15:03','2024-02-25 19:15:03','51102-0126'),(2,'Dion Pfannerstill','customer@botble.com','+14327311763','GG','Virginia','Deionton','870 O\'Connell Field Apt. 144',1,0,'2024-02-25 19:15:03','2024-02-25 19:15:03','53695'),(3,'Dr. Bria Runte Jr.','vendor@botble.com','+12407703017','FK','Rhode Island','Grahamhaven','4392 Rodriguez Shores Apt. 883',2,1,'2024-02-25 19:15:03','2024-02-25 19:15:03','59716-2612'),(4,'Dr. Bria Runte Jr.','vendor@botble.com','+14752772234','SG','Hawaii','Lake Domenicaport','29738 Marvin Crescent Apt. 311',2,0,'2024-02-25 19:15:03','2024-02-25 19:15:03','35829-9977'),(5,'Dusty Hansen','yazmin64@example.com','+14253565990','VU','New Jersey','Jarodtown','1297 Damion Forest Apt. 589',3,1,'2024-02-25 19:15:03','2024-02-25 19:15:03','22161-1810'),(6,'Isaiah Hintz','arnulfo56@example.com','+12409948936','VU','South Carolina','Flatleyburgh','236 Lesch Loaf Suite 878',4,1,'2024-02-25 19:15:04','2024-02-25 19:15:04','90644'),(7,'Dolores Sipes','wadams@example.org','+16292012722','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',5,1,'2024-02-25 19:15:04','2024-02-25 19:15:04','57656-6733'),(8,'Mr. Levi Koch II','bethany.watsica@example.com','+16126984680','MC','Missouri','Port Martina','186 Trantow View',6,1,'2024-02-25 19:15:04','2024-02-25 19:15:04','02249-9402'),(9,'Ashton Quigley','eriberto.metz@example.org','+19127989103','GE','District of Columbia','Hermistonmouth','20218 Kira Road Apt. 761',7,1,'2024-02-25 19:15:05','2024-02-25 19:15:05','99390-8790'),(10,'Dr. Tate Jast IV','batz.deondre@example.com','+16572946388','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',8,1,'2024-02-25 19:15:05','2024-02-25 19:15:05','20703-8504'),(11,'Miss Makayla Gleichner II','cremin.giovanny@example.net','+19365475711','GF','Rhode Island','Lake Traceychester','4191 Berge Drive',9,1,'2024-02-25 19:15:05','2024-02-25 19:15:05','56499'),(12,'Anne Spencer','weber.benton@example.org','+12513811915','TC','West Virginia','Lake Dianabury','2692 Tillman Trail',10,1,'2024-02-25 19:15:05','2024-02-25 19:15:05','89652');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dion Pfannerstill','customer@botble.com','$2y$12$aX0pEMnNIbkaGz.47IrjQefXREbAq8ltqlFJZ0blnMAEOrrsRiWqa','customers/8.jpg','1994-02-14','+14048627834',NULL,'2024-02-25 19:15:03','2024-02-25 19:15:03','2024-02-26 02:15:03',NULL,'activated',NULL,0,NULL),(2,'Dr. Bria Runte Jr.','vendor@botble.com','$2y$12$ujUJpeCY.x9EP5tE1opAyONxh/MaeDbbPw0QJBXg6kEDuVe2IlW/6','customers/10.jpg','1992-02-16','+15718754334',NULL,'2024-02-25 19:15:03','2024-02-25 19:15:10','2024-02-26 02:15:03',NULL,'activated',NULL,1,'2024-02-26 02:15:10'),(3,'Dusty Hansen','yazmin64@example.com','$2y$12$ZDJQyqg1hG5YHfL7dyJqIOhF74aq1bu3.9tyFC2IQg5ZsOu5miV/S','customers/1.jpg','2000-02-22','+19284190321',NULL,'2024-02-25 19:15:03','2024-02-25 19:15:10','2024-02-26 02:15:03',NULL,'activated',NULL,1,'2024-02-26 02:15:10'),(4,'Isaiah Hintz','arnulfo56@example.com','$2y$12$vqBRHc4aY6N/Fa4FzXkXcOFqf0vZWqu6sfkpDHF2tzSblwOUE5txu','customers/2.jpg','2004-02-09','+13235213019',NULL,'2024-02-25 19:15:04','2024-02-25 19:15:11','2024-02-26 02:15:04',NULL,'activated',NULL,1,'2024-02-26 02:15:11'),(5,'Dolores Sipes','wadams@example.org','$2y$12$/k0s6qGa4y8zxaov5hrSVuqGyj.ik3KNl07qmQNFGkpt0bJpHOnMy','customers/3.jpg','1985-02-24','+15183151069',NULL,'2024-02-25 19:15:04','2024-02-25 19:15:04','2024-02-26 02:15:04',NULL,'activated',NULL,0,NULL),(6,'Mr. Levi Koch II','bethany.watsica@example.com','$2y$12$DFu/Q78c0kT4a14cV7XgAel48ywmFPihw.p3t2kwz4fLochzibtzW','customers/4.jpg','2003-01-28','+14759840140',NULL,'2024-02-25 19:15:04','2024-02-25 19:15:04','2024-02-26 02:15:04',NULL,'activated',NULL,0,NULL),(7,'Ashton Quigley','eriberto.metz@example.org','$2y$12$dkPizhHZTzwiQqME06pHM..Y8AAogmlzKOroiF8zU7QA9mI3pFmGm','customers/5.jpg','1985-02-25','+13476624544',NULL,'2024-02-25 19:15:05','2024-02-25 19:15:11','2024-02-26 02:15:05',NULL,'activated',NULL,1,'2024-02-26 02:15:11'),(8,'Dr. Tate Jast IV','batz.deondre@example.com','$2y$12$EQh780bG2s6yyS2UHLtkyeHT4n1LFRx0EWP/EhbmLsZ4UTNPZVv8G','customers/6.jpg','1982-01-28','+15164557418',NULL,'2024-02-25 19:15:05','2024-02-25 19:15:05','2024-02-26 02:15:05',NULL,'activated',NULL,0,NULL),(9,'Miss Makayla Gleichner II','cremin.giovanny@example.net','$2y$12$z2bPQWcsABdacEWfZX0y7uonK0CImHUSRhmBpx68u8ho0KOCr9jv2','customers/7.jpg','1991-02-12','+14408305553',NULL,'2024-02-25 19:15:05','2024-02-25 19:15:05','2024-02-26 02:15:05',NULL,'activated',NULL,0,NULL),(10,'Anne Spencer','weber.benton@example.org','$2y$12$Vh07HbzreG2kc1ktRTMlmOeYC7rb1WeWLDn3sWNdOB4BKsFD0RmeK','customers/8.jpg','1991-01-29','+14637438019',NULL,'2024-02-25 19:15:05','2024-02-25 19:15:11','2024-02-26 02:15:05',NULL,'activated',NULL,1,'2024-02-26 02:15:11');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,37.7175,11,3),(1,2,24.705,10,2),(1,3,6.8,15,3),(1,4,290.5632,6,3),(1,5,337.06,16,1),(1,6,170.43,8,4),(1,7,486.64,11,3),(1,8,310.9392,9,4),(1,9,272.32,18,4),(1,10,674.96,6,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-03-27 00:00:00','published','2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(1,2,'2 Year',10,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(1,3,'3 Year',20,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,4,'4GB',0,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,5,'8GB',10,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,6,'16GB',20,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,7,'Core i5',0,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,8,'Core i7',10,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,9,'Core i9',20,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,10,'128GB',0,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,11,'256GB',10,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,12,'512GB',20,9999,0,'2024-02-25 19:15:09','2024-02-25 19:15:09');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-02-25 19:15:09','2024-02-25 19:15:09');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',1,543.00,543.00,0.00,0.00,543.00,'{\"sku\":\"SW-175-A0\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-25 19:15:12','2024-02-25 19:15:12'),(2,2,'Botble\\Ecommerce\\Models\\Product',71,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21.jpg',3,902.00,2706.00,0.00,0.00,2706.00,'{\"sku\":\"SW-195-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-25 19:15:12','2024-02-25 19:15:12'),(3,3,'Botble\\Ecommerce\\Models\\Product',26,'Smart Watches',NULL,'products/2-1.jpg',3,40.50,121.50,0.00,0.00,121.50,'{\"sku\":\"SW-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-25 19:15:12','2024-02-25 19:15:12'),(4,4,'Botble\\Ecommerce\\Models\\Product',49,'EPSION Plaster Printer',NULL,'products/12.jpg',3,591.00,1773.00,0.00,0.00,1773.00,'{\"sku\":\"SW-184-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:12','2024-02-25 19:15:12'),(5,5,'Botble\\Ecommerce\\Models\\Product',60,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',2,543.00,1086.00,0.00,0.00,1086.00,'{\"sku\":\"SW-175-A0-A3\",\"attributes\":\"(Color: Green, Size: XXL)\"}','2024-02-25 19:15:12','2024-02-25 19:15:12'),(6,6,'Botble\\Ecommerce\\Models\\Product',73,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22-1.jpg',3,467.00,1401.00,0.00,0.00,1401.00,'{\"sku\":\"SW-150-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(7,7,'Botble\\Ecommerce\\Models\\Product',41,'Smart Televisions',NULL,'products/8-1.jpg',3,1208.00,3624.00,0.00,0.00,3624.00,'{\"sku\":\"SW-115-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(8,7,'Botble\\Ecommerce\\Models\\Product',65,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-3.jpg',1,973.00,973.00,0.00,0.00,973.00,'{\"sku\":\"SW-178-A0-A3\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(9,8,'Botble\\Ecommerce\\Models\\Product',44,'Samsung Smart Phone (Digital)',NULL,'products/9-2.jpg',1,592.00,592.00,0.00,0.00,592.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(10,9,'Botble\\Ecommerce\\Models\\Product',71,'MVMTH Classical Leather Watch In Black (Digital)',NULL,'products/21.jpg',1,902.00,902.00,0.00,0.00,902.00,'{\"sku\":\"SW-195-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(11,10,'Botble\\Ecommerce\\Models\\Product',31,'Beat Headphone',NULL,'products/3.jpg',2,20.00,40.00,0.00,0.00,40.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(12,10,'Botble\\Ecommerce\\Models\\Product',41,'Smart Televisions',NULL,'products/8-1.jpg',1,1208.00,1208.00,0.00,0.00,1208.00,'{\"sku\":\"SW-115-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-25 19:15:13','2024-02-25 19:15:13'),(13,11,'Botble\\Ecommerce\\Models\\Product',72,'Baxter Care Hair Kit For Bearded Mens',NULL,'products/22.jpg',1,467.00,467.00,0.00,0.00,467.00,'{\"sku\":\"SW-150-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-25 19:15:14','2024-02-25 19:15:14'),(14,12,'Botble\\Ecommerce\\Models\\Product',78,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-3.jpg',2,642.00,1284.00,0.00,0.00,1284.00,'{\"sku\":\"SW-188-A0-A3\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-25 19:15:14','2024-02-25 19:15:14'),(15,13,'Botble\\Ecommerce\\Models\\Product',43,'Samsung Smart Phone (Digital)',NULL,'products/9-1.jpg',1,592.00,592.00,0.00,0.00,592.00,'{\"sku\":\"SW-194-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-25 19:15:14','2024-02-25 19:15:14'),(16,14,'Botble\\Ecommerce\\Models\\Product',65,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-3.jpg',3,973.00,2919.00,0.00,0.00,2919.00,'{\"sku\":\"SW-178-A0-A3\",\"attributes\":\"(Size: L, Color: Black)\"}','2024-02-25 19:15:14','2024-02-25 19:15:14'),(17,15,'Botble\\Ecommerce\\Models\\Product',42,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',2,592.00,1184.00,0.00,0.00,1184.00,'{\"sku\":\"SW-194-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-25 19:15:14','2024-02-25 19:15:14'),(18,16,'Botble\\Ecommerce\\Models\\Product',49,'EPSION Plaster Printer',NULL,'products/12.jpg',1,591.00,591.00,0.00,0.00,591.00,'{\"sku\":\"SW-184-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(19,16,'Botble\\Ecommerce\\Models\\Product',67,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/19-1.jpg',3,1265.00,3795.00,0.00,0.00,3795.00,'{\"sku\":\"SW-101-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(20,16,'Botble\\Ecommerce\\Models\\Product',70,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-2.jpg',3,776.00,2328.00,0.00,0.00,2328.00,'{\"sku\":\"SW-110-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(21,17,'Botble\\Ecommerce\\Models\\Product',43,'Samsung Smart Phone (Digital)',NULL,'products/9-1.jpg',3,592.00,1776.00,0.00,0.00,1776.00,'{\"sku\":\"SW-194-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(22,18,'Botble\\Ecommerce\\Models\\Product',70,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-2.jpg',2,776.00,1552.00,0.00,0.00,1552.00,'{\"sku\":\"SW-110-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(23,19,'Botble\\Ecommerce\\Models\\Product',75,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23.jpg',3,642.00,1926.00,0.00,0.00,1926.00,'{\"sku\":\"SW-188-A0\",\"attributes\":\"(Color: Green, Size: S)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(24,20,'Botble\\Ecommerce\\Models\\Product',28,'Smart Watches',NULL,'products/2-3.jpg',1,40.50,40.50,0.00,0.00,40.50,'{\"sku\":\"SW-117-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(25,20,'Botble\\Ecommerce\\Models\\Product',36,'Nikon HD camera',NULL,'products/6.jpg',2,437.00,874.00,0.00,0.00,874.00,'{\"sku\":\"SW-159-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(26,21,'Botble\\Ecommerce\\Models\\Product',31,'Beat Headphone',NULL,'products/3.jpg',1,20.00,20.00,0.00,0.00,20.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(27,21,'Botble\\Ecommerce\\Models\\Product',67,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/19-1.jpg',2,1265.00,2530.00,0.00,0.00,2530.00,'{\"sku\":\"SW-101-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-25 19:15:15','2024-02-25 19:15:15'),(28,22,'Botble\\Ecommerce\\Models\\Product',58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',1,543.00,543.00,0.00,0.00,543.00,'{\"sku\":\"SW-175-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(29,23,'Botble\\Ecommerce\\Models\\Product',52,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13.jpg',1,590.00,590.00,0.00,0.00,590.00,'{\"sku\":\"SW-187-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(30,24,'Botble\\Ecommerce\\Models\\Product',63,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',3,973.00,2919.00,0.00,0.00,2919.00,'{\"sku\":\"SW-178-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(31,25,'Botble\\Ecommerce\\Models\\Product',31,'Beat Headphone',NULL,'products/3.jpg',3,20.00,60.00,0.00,0.00,60.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(32,25,'Botble\\Ecommerce\\Models\\Product',63,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-1.jpg',1,973.00,973.00,0.00,0.00,973.00,'{\"sku\":\"SW-178-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(33,25,'Botble\\Ecommerce\\Models\\Product',69,'NYX Beauty Couton Pallete Makeup 12',NULL,'products/20-1.jpg',1,776.00,776.00,0.00,0.00,776.00,'{\"sku\":\"SW-110-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(34,26,'Botble\\Ecommerce\\Models\\Product',77,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-2.jpg',1,642.00,642.00,0.00,0.00,642.00,'{\"sku\":\"SW-188-A0-A2\",\"attributes\":\"(Color: Green, Size: L)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(35,27,'Botble\\Ecommerce\\Models\\Product',27,'Smart Watches',NULL,'products/2-2.jpg',2,40.50,81.00,0.00,0.00,81.00,'{\"sku\":\"SW-117-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}','2024-02-25 19:15:16','2024-02-25 19:15:16'),(36,28,'Botble\\Ecommerce\\Models\\Product',30,'Beat Headphone',NULL,'products/3.jpg',1,20.00,20.00,0.00,0.00,20.00,'{\"sku\":\"SW-157-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(37,28,'Botble\\Ecommerce\\Models\\Product',48,'Xbox One Wireless Controller Black Color',NULL,'products/11-1.jpg',1,1203.00,1203.00,0.00,0.00,1203.00,'{\"sku\":\"SW-152-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(38,29,'Botble\\Ecommerce\\Models\\Product',31,'Beat Headphone',NULL,'products/3.jpg',3,20.00,60.00,0.00,0.00,60.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(39,29,'Botble\\Ecommerce\\Models\\Product',47,'Xbox One Wireless Controller Black Color',NULL,'products/11.jpg',3,1203.00,3609.00,0.00,0.00,3609.00,'{\"sku\":\"SW-152-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(40,30,'Botble\\Ecommerce\\Models\\Product',36,'Nikon HD camera',NULL,'products/6.jpg',2,437.00,874.00,0.00,0.00,874.00,'{\"sku\":\"SW-159-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(41,31,'Botble\\Ecommerce\\Models\\Product',54,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,588.00,588.00,0.00,0.00,588.00,'{\"sku\":\"SW-169-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(42,32,'Botble\\Ecommerce\\Models\\Product',43,'Samsung Smart Phone (Digital)',NULL,'products/9-1.jpg',3,592.00,1776.00,0.00,0.00,1776.00,'{\"sku\":\"SW-194-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(43,33,'Botble\\Ecommerce\\Models\\Product',64,'Aveeno Moisturizing Body Shower 450ml',NULL,'products/18-2.jpg',3,973.00,2919.00,0.00,0.00,2919.00,'{\"sku\":\"SW-178-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}','2024-02-25 19:15:17','2024-02-25 19:15:17'),(44,34,'Botble\\Ecommerce\\Models\\Product',28,'Smart Watches',NULL,'products/2-3.jpg',1,40.50,40.50,0.00,0.00,40.50,'{\"sku\":\"SW-117-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(45,35,'Botble\\Ecommerce\\Models\\Product',31,'Beat Headphone',NULL,'products/3.jpg',2,20.00,40.00,0.00,0.00,40.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(46,36,'Botble\\Ecommerce\\Models\\Product',45,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',2,592.00,1184.00,0.00,0.00,1184.00,'{\"sku\":\"SW-194-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(47,36,'Botble\\Ecommerce\\Models\\Product',54,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',1,588.00,588.00,0.00,0.00,588.00,'{\"sku\":\"SW-169-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(48,37,'Botble\\Ecommerce\\Models\\Product',26,'Smart Watches',NULL,'products/2-1.jpg',3,40.50,121.50,0.00,0.00,121.50,'{\"sku\":\"SW-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(49,38,'Botble\\Ecommerce\\Models\\Product',30,'Beat Headphone',NULL,'products/3.jpg',1,20.00,20.00,0.00,0.00,20.00,'{\"sku\":\"SW-157-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(50,38,'Botble\\Ecommerce\\Models\\Product',40,'Smart Televisions',NULL,'products/8.jpg',3,1208.00,3624.00,0.00,0.00,3624.00,'{\"sku\":\"SW-115-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}','2024-02-25 19:15:18','2024-02-25 19:15:18'),(51,39,'Botble\\Ecommerce\\Models\\Product',52,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13.jpg',2,590.00,1180.00,0.00,0.00,1180.00,'{\"sku\":\"SW-187-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(52,40,'Botble\\Ecommerce\\Models\\Product',28,'Smart Watches',NULL,'products/2-3.jpg',1,40.50,40.50,0.00,0.00,40.50,'{\"sku\":\"SW-117-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(53,41,'Botble\\Ecommerce\\Models\\Product',45,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',3,592.00,1776.00,0.00,0.00,1776.00,'{\"sku\":\"SW-194-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(54,41,'Botble\\Ecommerce\\Models\\Product',53,'B&amp;O Play Mini Bluetooth Speaker',NULL,'products/14.jpg',2,588.00,1176.00,0.00,0.00,1176.00,'{\"sku\":\"SW-169-A0\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(55,42,'Botble\\Ecommerce\\Models\\Product',29,'Beat Headphone',NULL,'products/3.jpg',1,20.00,20.00,0.00,0.00,20.00,'{\"sku\":\"SW-157-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(56,43,'Botble\\Ecommerce\\Models\\Product',45,'Samsung Smart Phone (Digital)',NULL,'products/9.jpg',1,592.00,592.00,0.00,0.00,592.00,'{\"sku\":\"SW-194-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(57,43,'Botble\\Ecommerce\\Models\\Product',55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,'products/15.jpg',3,595.00,1785.00,0.00,0.00,1785.00,'{\"sku\":\"SW-154-A0\",\"attributes\":\"(Color: Brown, Size: XXL)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(58,44,'Botble\\Ecommerce\\Models\\Product',52,'Sound Intone I65 Earphone White Version (Digital)',NULL,'products/13.jpg',2,590.00,1180.00,0.00,0.00,1180.00,'{\"sku\":\"SW-187-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-25 19:15:19','2024-02-25 19:15:19'),(59,45,'Botble\\Ecommerce\\Models\\Product',46,'Herschel Leather Duffle Bag In Brown Color',NULL,'products/10.jpg',1,1144.00,1144.00,0.00,0.00,1144.00,'{\"sku\":\"SW-191-A0\",\"attributes\":\"(Size: M, Color: Red)\"}','2024-02-25 19:15:20','2024-02-25 19:15:20'),(60,46,'Botble\\Ecommerce\\Models\\Product',48,'Xbox One Wireless Controller Black Color',NULL,'products/11-1.jpg',2,1203.00,2406.00,0.00,0.00,2406.00,'{\"sku\":\"SW-152-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}','2024-02-25 19:15:20','2024-02-25 19:15:20'),(61,47,'Botble\\Ecommerce\\Models\\Product',57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,'products/16.jpg',1,543.00,543.00,0.00,0.00,543.00,'{\"sku\":\"SW-175-A0\",\"attributes\":\"(Color: Green, Size: M)\"}','2024-02-25 19:15:20','2024-02-25 19:15:20'),(62,48,'Botble\\Ecommerce\\Models\\Product',76,'Ciate Palemore Lipstick Bold Red Color',NULL,'products/23-1.jpg',3,642.00,1926.00,0.00,0.00,1926.00,'{\"sku\":\"SW-188-A0-A1\",\"attributes\":\"(Size: XL, Color: Brown)\"}','2024-02-25 19:15:20','2024-02-25 19:15:20');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,543.00,0.00,0.00,0.00,'1','default',NULL,NULL,543.00,NULL,1,'completed','2024-02-25 19:15:12','2024-02-14 03:15:12','2024-02-25 19:15:12'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,2706.00,0.00,0.00,0.00,NULL,'',NULL,NULL,2706.00,NULL,2,'pending',NULL,'2024-02-14 03:15:12','2024-02-25 19:15:12'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,121.50,0.00,0.00,0.00,'1','default',NULL,NULL,121.50,NULL,3,'pending',NULL,'2024-02-13 03:15:12','2024-02-25 19:15:12'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1773.00,0.00,0.00,0.00,'1','default',NULL,NULL,1773.00,NULL,4,'completed','2024-02-25 19:15:12','2024-02-16 07:15:12','2024-02-25 19:15:12'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1086.00,0.00,0.00,0.00,'1','default',NULL,NULL,1086.00,NULL,5,'completed','2024-02-25 19:15:12','2024-02-19 11:15:12','2024-02-25 19:15:12'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1401.00,0.00,0.00,0.00,'1','default',NULL,NULL,1401.00,NULL,6,'completed','2024-02-25 19:15:13','2024-02-24 05:15:13','2024-02-25 19:15:13'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,4597.00,0.00,0.00,0.00,'1','default',NULL,NULL,4597.00,NULL,7,'pending',NULL,'2024-02-21 07:15:13','2024-02-25 19:15:13'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,592.00,0.00,0.00,0.00,NULL,'',NULL,NULL,592.00,NULL,8,'completed','2024-02-25 19:15:13','2024-02-16 19:15:13','2024-02-25 19:15:13'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,902.00,0.00,0.00,0.00,NULL,'',NULL,NULL,902.00,NULL,9,'completed','2024-02-25 19:15:13','2024-02-10 19:15:13','2024-02-25 19:15:13'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,1248.00,0.00,0.00,0.00,'1','default',NULL,NULL,1248.00,NULL,10,'completed','2024-02-25 19:15:13','2024-02-17 07:15:13','2024-02-25 19:15:13'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,467.00,0.00,0.00,0.00,'1','default',NULL,NULL,467.00,NULL,11,'completed','2024-02-25 19:15:14','2024-02-20 03:15:14','2024-02-25 19:15:14'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,1284.00,0.00,0.00,0.00,'1','default',NULL,NULL,1284.00,NULL,12,'completed','2024-02-25 19:15:14','2024-02-22 23:15:14','2024-02-25 19:15:14'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,592.00,0.00,0.00,0.00,NULL,'',NULL,NULL,592.00,NULL,13,'completed','2024-02-25 19:15:14','2024-02-12 11:15:14','2024-02-25 19:15:14'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,2919.00,0.00,0.00,0.00,'1','default',NULL,NULL,2919.00,NULL,14,'completed','2024-02-25 19:15:14','2024-02-24 11:15:14','2024-02-25 19:15:14'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,1184.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1184.00,NULL,15,'completed','2024-02-25 19:15:14','2024-02-17 01:15:14','2024-02-25 19:15:14'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,6714.00,0.00,0.00,0.00,'1','default',NULL,NULL,6714.00,NULL,16,'completed','2024-02-25 19:15:15','2024-02-20 19:15:14','2024-02-25 19:15:15'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1776.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1776.00,NULL,17,'pending',NULL,'2024-02-24 15:15:15','2024-02-25 19:15:15'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1552.00,0.00,0.00,0.00,'1','default',NULL,NULL,1552.00,NULL,18,'pending',NULL,'2024-02-15 07:15:15','2024-02-25 19:15:15'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1926.00,0.00,0.00,0.00,'1','default',NULL,NULL,1926.00,NULL,19,'completed','2024-02-25 19:15:15','2024-02-16 11:15:15','2024-02-25 19:15:15'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,914.50,0.00,0.00,0.00,'1','default',NULL,NULL,914.50,NULL,20,'pending',NULL,'2024-02-18 05:15:15','2024-02-25 19:15:15'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,2550.00,0.00,0.00,0.00,'1','default',NULL,NULL,2550.00,NULL,21,'completed','2024-02-25 19:15:15','2024-02-24 19:15:15','2024-02-25 19:15:15'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,543.00,0.00,0.00,0.00,'1','default',NULL,NULL,543.00,NULL,22,'pending',NULL,'2024-02-15 19:15:15','2024-02-25 19:15:16'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,590.00,0.00,0.00,0.00,NULL,'',NULL,NULL,590.00,NULL,23,'completed','2024-02-25 19:15:16','2024-02-23 23:15:16','2024-02-25 19:15:16'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Dion Pfannerstill','',NULL,'customer@botble.com','+15186038079','869 Okuneva Ridges Suite 462, Port Jakayla, Alabama, NO',NULL,2919.00,0.00,0.00,0.00,'1','default',NULL,NULL,2919.00,NULL,24,'completed','2024-02-25 19:15:16','2024-02-23 23:15:16','2024-02-25 19:15:16'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1809.00,0.00,0.00,0.00,'1','default',NULL,NULL,1809.00,NULL,25,'completed','2024-02-25 19:15:16','2024-02-21 15:15:16','2024-02-25 19:15:16'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,642.00,0.00,0.00,0.00,'1','default',NULL,NULL,642.00,NULL,26,'pending',NULL,'2024-02-20 19:15:16','2024-02-25 19:15:16'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,81.00,0.00,0.00,0.00,'1','default',NULL,NULL,81.00,NULL,27,'completed','2024-02-25 19:15:16','2024-02-22 01:15:16','2024-02-25 19:15:16'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,1223.00,0.00,0.00,0.00,'1','default',NULL,NULL,1223.00,NULL,28,'completed','2024-02-25 19:15:17','2024-02-22 19:15:17','2024-02-25 19:15:17'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,3669.00,0.00,0.00,0.00,'1','default',NULL,NULL,3669.00,NULL,29,'completed','2024-02-25 19:15:17','2024-02-23 19:15:17','2024-02-25 19:15:17'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,874.00,0.00,0.00,0.00,'1','default',NULL,NULL,874.00,NULL,30,'completed','2024-02-25 19:15:17','2024-02-23 19:15:17','2024-02-25 19:15:17'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,588.00,0.00,0.00,0.00,'1','default',NULL,NULL,588.00,NULL,31,'completed','2024-02-25 19:15:17','2024-02-19 03:15:17','2024-02-25 19:15:17'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Miss Makayla Gleichner II','',NULL,'cremin.giovanny@example.net','+19365475711','4191 Berge Drive, Lake Traceychester, Rhode Island, GF',NULL,1776.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1776.00,NULL,32,'completed','2024-02-25 19:15:17','2024-02-25 05:15:17','2024-02-25 19:15:17'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Miss Makayla Gleichner II','',NULL,'cremin.giovanny@example.net','+19365475711','4191 Berge Drive, Lake Traceychester, Rhode Island, GF',NULL,2919.00,0.00,0.00,0.00,'1','default',NULL,NULL,2919.00,NULL,33,'completed','2024-02-25 19:15:17','2024-02-24 01:15:17','2024-02-25 19:15:17'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,40.50,0.00,0.00,0.00,'1','default',NULL,NULL,40.50,NULL,34,'completed','2024-02-25 19:15:18','2024-02-21 19:15:18','2024-02-25 19:15:18'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,40.00,0.00,0.00,0.00,'1','default',NULL,NULL,40.00,NULL,35,'completed','2024-02-25 19:15:18','2024-02-25 07:15:18','2024-02-25 19:15:18'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,1772.00,0.00,0.00,0.00,'1','default',NULL,NULL,1772.00,NULL,36,'completed','2024-02-25 19:15:18','2024-02-24 19:15:18','2024-02-25 19:15:18'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,121.50,0.00,0.00,0.00,'1','default',NULL,NULL,121.50,NULL,37,'completed','2024-02-25 19:15:18','2024-02-24 23:15:18','2024-02-25 19:15:18'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,3644.00,0.00,0.00,0.00,'1','default',NULL,NULL,3644.00,NULL,38,'completed','2024-02-25 19:15:18','2024-02-22 21:15:18','2024-02-25 19:15:18'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,1180.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1180.00,NULL,39,'completed','2024-02-25 19:15:19','2024-02-23 17:15:19','2024-02-25 19:15:19'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,40.50,0.00,0.00,0.00,'1','default',NULL,NULL,40.50,NULL,40,'pending',NULL,'2024-02-23 11:15:19','2024-02-25 19:15:19'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,2952.00,0.00,0.00,0.00,'1','default',NULL,NULL,2952.00,NULL,41,'pending',NULL,'2024-02-23 19:15:19','2024-02-25 19:15:19'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,20.00,0.00,0.00,0.00,'1','default',NULL,NULL,20.00,NULL,42,'completed','2024-02-25 19:15:19','2024-02-23 07:15:19','2024-02-25 19:15:19'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,2377.00,0.00,0.00,0.00,'1','default',NULL,NULL,2377.00,NULL,43,'completed','2024-02-25 19:15:19','2024-02-25 01:15:19','2024-02-25 19:15:19'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Mr. Levi Koch II','',NULL,'bethany.watsica@example.com','+16126984680','186 Trantow View, Port Martina, Missouri, MC',NULL,1180.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1180.00,NULL,44,'completed','2024-02-25 19:15:19','2024-02-24 13:15:19','2024-02-25 19:15:19'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,1144.00,0.00,0.00,0.00,'1','default',NULL,NULL,1144.00,NULL,45,'pending',NULL,'2024-02-24 03:15:20','2024-02-25 19:15:20'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Dr. Tate Jast IV','',NULL,'batz.deondre@example.com','+16572946388','91417 Swaniawski Plains Suite 372, Rolandofort, Washington, GE',NULL,2406.00,0.00,0.00,0.00,'1','default',NULL,NULL,2406.00,NULL,46,'completed','2024-02-25 19:15:20','2024-02-24 03:15:20','2024-02-25 19:15:20'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,543.00,0.00,0.00,0.00,'1','default',NULL,NULL,543.00,NULL,47,'completed','2024-02-25 19:15:20','2024-02-25 05:15:20','2024-02-25 19:15:20'),(48,'Botble\\Ecommerce\\Models\\Order',48,'INV-48','Dolores Sipes','',NULL,'wadams@example.org','+16292012722','3380 Mohr Grove Suite 423, West Mollyland, Oregon, AS',NULL,1926.00,0.00,0.00,0.00,'1','default',NULL,NULL,1926.00,NULL,48,'completed','2024-02-25 19:15:20','2024-02-25 13:15:20','2024-02-25 19:15:20');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',1,'02249-9402','shipping_address'),(2,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',2,'02249-9402','shipping_address'),(3,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',3,'02249-9402','shipping_address'),(4,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',4,'02249-9402','shipping_address'),(5,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',5,'02249-9402','shipping_address'),(6,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',6,'02249-9402','shipping_address'),(7,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',7,'57656-6733','shipping_address'),(8,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',8,'57656-6733','shipping_address'),(9,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',9,'57656-6733','shipping_address'),(10,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',10,'51102-0126','shipping_address'),(11,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',11,'51102-0126','shipping_address'),(12,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',12,'51102-0126','shipping_address'),(13,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',13,'02249-9402','shipping_address'),(14,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',14,'02249-9402','shipping_address'),(15,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',15,'51102-0126','shipping_address'),(16,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',16,'51102-0126','shipping_address'),(17,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',17,'02249-9402','shipping_address'),(18,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',18,'02249-9402','shipping_address'),(19,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',19,'02249-9402','shipping_address'),(20,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',20,'02249-9402','shipping_address'),(21,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',21,'20703-8504','shipping_address'),(22,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',22,'20703-8504','shipping_address'),(23,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',23,'51102-0126','shipping_address'),(24,'Dion Pfannerstill','+15186038079','customer@botble.com','NO','Alabama','Port Jakayla','869 Okuneva Ridges Suite 462',24,'51102-0126','shipping_address'),(25,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',25,'02249-9402','shipping_address'),(26,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',26,'02249-9402','shipping_address'),(27,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',27,'20703-8504','shipping_address'),(28,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',28,'20703-8504','shipping_address'),(29,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',29,'57656-6733','shipping_address'),(30,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',30,'57656-6733','shipping_address'),(31,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',31,'57656-6733','shipping_address'),(32,'Miss Makayla Gleichner II','+19365475711','cremin.giovanny@example.net','GF','Rhode Island','Lake Traceychester','4191 Berge Drive',32,'56499','shipping_address'),(33,'Miss Makayla Gleichner II','+19365475711','cremin.giovanny@example.net','GF','Rhode Island','Lake Traceychester','4191 Berge Drive',33,'56499','shipping_address'),(34,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',34,'57656-6733','shipping_address'),(35,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',35,'57656-6733','shipping_address'),(36,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',36,'57656-6733','shipping_address'),(37,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',37,'20703-8504','shipping_address'),(38,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',38,'20703-8504','shipping_address'),(39,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',39,'20703-8504','shipping_address'),(40,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',40,'20703-8504','shipping_address'),(41,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',41,'20703-8504','shipping_address'),(42,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',42,'02249-9402','shipping_address'),(43,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',43,'02249-9402','shipping_address'),(44,'Mr. Levi Koch II','+16126984680','bethany.watsica@example.com','MC','Missouri','Port Martina','186 Trantow View',44,'02249-9402','shipping_address'),(45,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',45,'20703-8504','shipping_address'),(46,'Dr. Tate Jast IV','+16572946388','batz.deondre@example.com','GE','Washington','Rolandofort','91417 Swaniawski Plains Suite 372',46,'20703-8504','shipping_address'),(47,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',47,'57656-6733','shipping_address'),(48,'Dolores Sipes','+16292012722','wadams@example.org','AS','Oregon','West Mollyland','3380 Mohr Grove Suite 423',48,'57656-6733','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-02-14 03:15:12','2024-02-14 03:15:12'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-02-14 03:15:12','2024-02-14 03:15:12'),(3,'confirm_payment','Payment was confirmed (amount $543.00) by %user_name%',0,1,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-02-14 03:15:12','2024-02-14 03:15:12'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-02-14 03:15:12','2024-02-14 03:15:12'),(7,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-02-13 03:15:12','2024-02-13 03:15:12'),(8,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-02-13 03:15:12','2024-02-13 03:15:12'),(9,'create_shipment','Created shipment for order',0,3,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-02-16 07:15:12','2024-02-16 07:15:12'),(11,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-02-16 07:15:12','2024-02-16 07:15:12'),(12,'confirm_payment','Payment was confirmed (amount $1,773.00) by %user_name%',0,4,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12'),(13,'create_shipment','Created shipment for order',0,4,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-02-19 11:15:12','2024-02-19 11:15:12'),(15,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-02-19 11:15:12','2024-02-19 11:15:12'),(16,'confirm_payment','Payment was confirmed (amount $1,086.00) by %user_name%',0,5,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12'),(17,'create_shipment','Created shipment for order',0,5,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-02-24 05:15:13','2024-02-24 05:15:13'),(20,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-02-24 05:15:13','2024-02-24 05:15:13'),(21,'confirm_payment','Payment was confirmed (amount $1,401.00) by %user_name%',0,6,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(22,'create_shipment','Created shipment for order',0,6,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(23,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-02-21 07:15:13','2024-02-21 07:15:13'),(24,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-02-21 07:15:13','2024-02-21 07:15:13'),(25,'create_shipment','Created shipment for order',0,7,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,7,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-02-16 19:15:13','2024-02-16 19:15:13'),(28,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-02-16 19:15:13','2024-02-16 19:15:13'),(29,'confirm_payment','Payment was confirmed (amount $592.00) by %user_name%',0,8,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(30,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,8,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-02-10 19:15:13','2024-02-10 19:15:13'),(32,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-02-10 19:15:13','2024-02-10 19:15:13'),(33,'confirm_payment','Payment was confirmed (amount $902.00) by %user_name%',0,9,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(34,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,9,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-02-17 07:15:13','2024-02-17 07:15:13'),(36,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-02-17 07:15:13','2024-02-17 07:15:13'),(37,'confirm_payment','Payment was confirmed (amount $1,248.00) by %user_name%',0,10,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13'),(38,'create_shipment','Created shipment for order',0,10,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-02-20 03:15:14','2024-02-20 03:15:14'),(40,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-02-20 03:15:14','2024-02-20 03:15:14'),(41,'confirm_payment','Payment was confirmed (amount $467.00) by %user_name%',0,11,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(42,'create_shipment','Created shipment for order',0,11,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-02-22 23:15:14','2024-02-22 23:15:14'),(45,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-02-22 23:15:14','2024-02-22 23:15:14'),(46,'confirm_payment','Payment was confirmed (amount $1,284.00) by %user_name%',0,12,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(47,'create_shipment','Created shipment for order',0,12,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-02-12 11:15:14','2024-02-12 11:15:14'),(49,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-02-12 11:15:14','2024-02-12 11:15:14'),(50,'confirm_payment','Payment was confirmed (amount $592.00) by %user_name%',0,13,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(51,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,13,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-02-24 11:15:14','2024-02-24 11:15:14'),(53,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-02-24 11:15:14','2024-02-24 11:15:14'),(54,'confirm_payment','Payment was confirmed (amount $2,919.00) by %user_name%',0,14,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(55,'create_shipment','Created shipment for order',0,14,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-02-17 01:15:14','2024-02-17 01:15:14'),(57,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-02-17 01:15:14','2024-02-17 01:15:14'),(58,'confirm_payment','Payment was confirmed (amount $1,184.00) by %user_name%',0,15,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(59,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,15,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-02-20 19:15:14','2024-02-20 19:15:14'),(61,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-02-20 19:15:14','2024-02-20 19:15:14'),(62,'confirm_payment','Payment was confirmed (amount $6,714.00) by %user_name%',0,16,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14'),(63,'create_shipment','Created shipment for order',0,16,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-02-24 15:15:15','2024-02-24 15:15:15'),(65,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-02-24 15:15:15','2024-02-24 15:15:15'),(66,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-02-15 07:15:15','2024-02-15 07:15:15'),(67,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-02-15 07:15:15','2024-02-15 07:15:15'),(68,'create_shipment','Created shipment for order',0,18,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-02-16 11:15:15','2024-02-16 11:15:15'),(70,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-02-16 11:15:15','2024-02-16 11:15:15'),(71,'confirm_payment','Payment was confirmed (amount $1,926.00) by %user_name%',0,19,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(72,'create_shipment','Created shipment for order',0,19,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-02-18 05:15:15','2024-02-18 05:15:15'),(74,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-02-18 05:15:15','2024-02-18 05:15:15'),(75,'create_shipment','Created shipment for order',0,20,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-02-24 19:15:15','2024-02-24 19:15:15'),(77,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-02-24 19:15:15','2024-02-24 19:15:15'),(78,'confirm_payment','Payment was confirmed (amount $2,550.00) by %user_name%',0,21,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(79,'create_shipment','Created shipment for order',0,21,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2024-02-15 19:15:15','2024-02-15 19:15:15'),(81,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2024-02-15 19:15:15','2024-02-15 19:15:15'),(82,'create_shipment','Created shipment for order',0,22,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2024-02-23 23:15:16','2024-02-23 23:15:16'),(84,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2024-02-23 23:15:16','2024-02-23 23:15:16'),(85,'confirm_payment','Payment was confirmed (amount $590.00) by %user_name%',0,23,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(86,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,23,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2024-02-23 23:15:16','2024-02-23 23:15:16'),(88,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2024-02-23 23:15:16','2024-02-23 23:15:16'),(89,'confirm_payment','Payment was confirmed (amount $2,919.00) by %user_name%',0,24,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(90,'create_shipment','Created shipment for order',0,24,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(91,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2024-02-21 15:15:16','2024-02-21 15:15:16'),(92,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2024-02-21 15:15:16','2024-02-21 15:15:16'),(93,'confirm_payment','Payment was confirmed (amount $1,809.00) by %user_name%',0,25,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(94,'create_shipment','Created shipment for order',0,25,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(95,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(96,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-02-20 19:15:16','2024-02-20 19:15:16'),(97,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-02-20 19:15:16','2024-02-20 19:15:16'),(98,'create_shipment','Created shipment for order',0,26,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-02-22 01:15:16','2024-02-22 01:15:16'),(100,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-02-22 01:15:16','2024-02-22 01:15:16'),(101,'confirm_payment','Payment was confirmed (amount $81.00) by %user_name%',0,27,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16'),(102,'create_shipment','Created shipment for order',0,27,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(103,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-02-22 19:15:17','2024-02-22 19:15:17'),(105,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-02-22 19:15:17','2024-02-22 19:15:17'),(106,'confirm_payment','Payment was confirmed (amount $1,223.00) by %user_name%',0,28,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(107,'create_shipment','Created shipment for order',0,28,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2024-02-23 19:15:17','2024-02-23 19:15:17'),(110,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2024-02-23 19:15:17','2024-02-23 19:15:17'),(111,'confirm_payment','Payment was confirmed (amount $3,669.00) by %user_name%',0,29,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(112,'create_shipment','Created shipment for order',0,29,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(113,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2024-02-23 19:15:17','2024-02-23 19:15:17'),(115,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2024-02-23 19:15:17','2024-02-23 19:15:17'),(116,'confirm_payment','Payment was confirmed (amount $874.00) by %user_name%',0,30,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(117,'create_shipment','Created shipment for order',0,30,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-02-19 03:15:17','2024-02-19 03:15:17'),(119,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-02-19 03:15:17','2024-02-19 03:15:17'),(120,'confirm_payment','Payment was confirmed (amount $588.00) by %user_name%',0,31,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(121,'create_shipment','Created shipment for order',0,31,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2024-02-25 05:15:17','2024-02-25 05:15:17'),(123,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2024-02-25 05:15:17','2024-02-25 05:15:17'),(124,'confirm_payment','Payment was confirmed (amount $1,776.00) by %user_name%',0,32,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(125,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,32,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-02-24 01:15:17','2024-02-24 01:15:17'),(127,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-02-24 01:15:17','2024-02-24 01:15:17'),(128,'confirm_payment','Payment was confirmed (amount $2,919.00) by %user_name%',0,33,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17'),(129,'create_shipment','Created shipment for order',0,33,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(130,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(131,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-02-21 19:15:18','2024-02-21 19:15:18'),(132,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-02-21 19:15:18','2024-02-21 19:15:18'),(133,'confirm_payment','Payment was confirmed (amount $40.50) by %user_name%',0,34,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(134,'create_shipment','Created shipment for order',0,34,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2024-02-25 07:15:18','2024-02-25 07:15:18'),(136,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2024-02-25 07:15:18','2024-02-25 07:15:18'),(137,'confirm_payment','Payment was confirmed (amount $40.00) by %user_name%',0,35,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(138,'create_shipment','Created shipment for order',0,35,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(139,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-02-24 19:15:18','2024-02-24 19:15:18'),(141,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-02-24 19:15:18','2024-02-24 19:15:18'),(142,'confirm_payment','Payment was confirmed (amount $1,772.00) by %user_name%',0,36,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(143,'create_shipment','Created shipment for order',0,36,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(144,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-02-24 23:15:18','2024-02-24 23:15:18'),(146,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-02-24 23:15:18','2024-02-24 23:15:18'),(147,'confirm_payment','Payment was confirmed (amount $121.50) by %user_name%',0,37,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(148,'create_shipment','Created shipment for order',0,37,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-02-22 21:15:18','2024-02-22 21:15:18'),(150,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-02-22 21:15:18','2024-02-22 21:15:18'),(151,'confirm_payment','Payment was confirmed (amount $3,644.00) by %user_name%',0,38,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18'),(152,'create_shipment','Created shipment for order',0,38,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(153,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-02-23 17:15:19','2024-02-23 17:15:19'),(154,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-02-23 17:15:19','2024-02-23 17:15:19'),(155,'confirm_payment','Payment was confirmed (amount $1,180.00) by %user_name%',0,39,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(156,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,39,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(157,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-02-23 11:15:19','2024-02-23 11:15:19'),(158,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-02-23 11:15:19','2024-02-23 11:15:19'),(159,'create_shipment','Created shipment for order',0,40,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(160,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-02-23 19:15:19','2024-02-23 19:15:19'),(161,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-02-23 19:15:19','2024-02-23 19:15:19'),(162,'create_shipment','Created shipment for order',0,41,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-02-23 07:15:19','2024-02-23 07:15:19'),(164,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-02-23 07:15:19','2024-02-23 07:15:19'),(165,'confirm_payment','Payment was confirmed (amount $20.00) by %user_name%',0,42,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(166,'create_shipment','Created shipment for order',0,42,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(167,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-02-25 01:15:19','2024-02-25 01:15:19'),(169,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-02-25 01:15:19','2024-02-25 01:15:19'),(170,'confirm_payment','Payment was confirmed (amount $2,377.00) by %user_name%',0,43,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(171,'create_shipment','Created shipment for order',0,43,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(172,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-02-24 13:15:19','2024-02-24 13:15:19'),(174,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-02-24 13:15:19','2024-02-24 13:15:19'),(175,'confirm_payment','Payment was confirmed (amount $1,180.00) by %user_name%',0,44,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19'),(176,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,44,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(177,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-02-24 03:15:20','2024-02-24 03:15:20'),(178,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-02-24 03:15:20','2024-02-24 03:15:20'),(179,'create_shipment','Created shipment for order',0,45,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(180,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(181,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2024-02-24 03:15:20','2024-02-24 03:15:20'),(182,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2024-02-24 03:15:20','2024-02-24 03:15:20'),(183,'confirm_payment','Payment was confirmed (amount $2,406.00) by %user_name%',0,46,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(184,'create_shipment','Created shipment for order',0,46,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(185,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,46,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2024-02-25 05:15:20','2024-02-25 05:15:20'),(187,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2024-02-25 05:15:20','2024-02-25 05:15:20'),(188,'confirm_payment','Payment was confirmed (amount $543.00) by %user_name%',0,47,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(189,'create_shipment','Created shipment for order',0,47,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2024-02-25 13:15:20','2024-02-25 13:15:20'),(191,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2024-02-25 13:15:20','2024-02-25 13:15:20'),(192,'confirm_payment','Payment was confirmed (amount $1,926.00) by %user_name%',0,48,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(193,'create_shipment','Created shipment for order',0,48,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(194,'update_status','Order confirmed by %user_name%',0,5,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20'),(195,'update_status','Order confirmed by %user_name%',0,11,NULL,'2024-02-25 19:15:21','2024-02-25 19:15:21'),(196,'update_status','Order confirmed by %user_name%',0,25,NULL,'2024-02-25 19:15:21','2024-02-25 19:15:21'),(197,'update_status','Order confirmed by %user_name%',0,27,NULL,'2024-02-25 19:15:22','2024-02-25 19:15:22'),(198,'update_status','Order confirmed by %user_name%',0,28,NULL,'2024-02-25 19:15:23','2024-02-25 19:15:23'),(199,'update_status','Order confirmed by %user_name%',0,29,NULL,'2024-02-25 19:15:23','2024-02-25 19:15:23'),(200,'update_status','Order confirmed by %user_name%',0,33,NULL,'2024-02-25 19:15:24','2024-02-25 19:15:24'),(201,'update_status','Order confirmed by %user_name%',0,35,NULL,'2024-02-25 19:15:24','2024-02-25 19:15:24'),(202,'update_status','Order confirmed by %user_name%',0,36,NULL,'2024-02-25 19:15:25','2024-02-25 19:15:25'),(203,'update_status','Order confirmed by %user_name%',0,42,NULL,'2024-02-25 19:15:25','2024-02-25 19:15:25'),(204,'update_status','Order confirmed by %user_name%',0,43,NULL,'2024-02-25 19:15:26','2024-02-25 19:15:26'),(205,'update_status','Order confirmed by %user_name%',0,46,NULL,'2024-02-25 19:15:26','2024-02-25 19:15:26');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,543.00,0.00,'{\"sku\":\"SW-175-A0\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',834.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','physical',0,NULL),(2,2,3,902.00,0.00,'{\"sku\":\"SW-195-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,71,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',2067.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','digital',10,NULL),(3,3,3,40.50,0.00,'{\"sku\":\"SW-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,26,'Smart Watches','products/2-1.jpg',2220.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','physical',0,NULL),(4,4,3,591.00,0.00,'{\"sku\":\"SW-184-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,49,'EPSION Plaster Printer','products/12.jpg',1848.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','physical',0,NULL),(5,5,2,543.00,0.00,'{\"sku\":\"SW-175-A0-A3\",\"attributes\":\"(Color: Green, Size: XXL)\"}',NULL,60,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',1668.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','physical',0,NULL),(6,6,3,467.00,0.00,'{\"sku\":\"SW-150-A0-A1\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,73,'Baxter Care Hair Kit For Bearded Mens','products/22-1.jpg',2286.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','physical',0,NULL),(7,7,3,1208.00,0.00,'{\"sku\":\"SW-115-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,41,'Smart Televisions','products/8-1.jpg',2667.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','physical',0,NULL),(8,7,1,973.00,0.00,'{\"sku\":\"SW-178-A0-A3\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,65,'Aveeno Moisturizing Body Shower 450ml','products/18-3.jpg',606.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','physical',0,NULL),(9,8,1,592.00,0.00,'{\"sku\":\"SW-194-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,44,'Samsung Smart Phone (Digital)','products/9-2.jpg',763.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','digital',0,NULL),(10,9,1,902.00,0.00,'{\"sku\":\"SW-195-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,71,'MVMTH Classical Leather Watch In Black (Digital)','products/21.jpg',689.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','digital',5,NULL),(11,10,2,20.00,0.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,31,'Beat Headphone','products/3.jpg',1206.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','physical',0,NULL),(12,10,1,1208.00,0.00,'{\"sku\":\"SW-115-A0-A1\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,41,'Smart Televisions','products/8-1.jpg',889.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','physical',0,NULL),(13,11,1,467.00,0.00,'{\"sku\":\"SW-150-A0\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,72,'Baxter Care Hair Kit For Bearded Mens','products/22.jpg',762.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','physical',0,NULL),(14,12,2,642.00,0.00,'{\"sku\":\"SW-188-A0-A3\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,78,'Ciate Palemore Lipstick Bold Red Color','products/23-3.jpg',1670.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','physical',0,NULL),(15,13,1,592.00,0.00,'{\"sku\":\"SW-194-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,43,'Samsung Smart Phone (Digital)','products/9-1.jpg',763.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','digital',5,NULL),(16,14,3,973.00,0.00,'{\"sku\":\"SW-178-A0-A3\",\"attributes\":\"(Size: L, Color: Black)\"}',NULL,65,'Aveeno Moisturizing Body Shower 450ml','products/18-3.jpg',1818.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','physical',0,NULL),(17,15,2,592.00,0.00,'{\"sku\":\"SW-194-A0\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,42,'Samsung Smart Phone (Digital)','products/9.jpg',1526.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','digital',9,NULL),(18,16,1,591.00,0.00,'{\"sku\":\"SW-184-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,49,'EPSION Plaster Printer','products/12.jpg',616.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','physical',0,NULL),(19,16,3,1265.00,0.00,'{\"sku\":\"SW-101-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,67,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',2358.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','physical',0,NULL),(20,16,3,776.00,0.00,'{\"sku\":\"SW-110-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,70,'NYX Beauty Couton Pallete Makeup 12','products/20-2.jpg',2169.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','physical',0,NULL),(21,17,3,592.00,0.00,'{\"sku\":\"SW-194-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,43,'Samsung Smart Phone (Digital)','products/9-1.jpg',2289.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','digital',4,NULL),(22,18,2,776.00,0.00,'{\"sku\":\"SW-110-A0-A2\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,70,'NYX Beauty Couton Pallete Makeup 12','products/20-2.jpg',1446.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','physical',0,NULL),(23,19,3,642.00,0.00,'{\"sku\":\"SW-188-A0\",\"attributes\":\"(Color: Green, Size: S)\"}',NULL,75,'Ciate Palemore Lipstick Bold Red Color','products/23.jpg',2505.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','physical',0,NULL),(24,20,1,40.50,0.00,'{\"sku\":\"SW-117-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,28,'Smart Watches','products/2-3.jpg',740.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','physical',0,NULL),(25,20,2,437.00,0.00,'{\"sku\":\"SW-159-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,36,'Nikon HD camera','products/6.jpg',1748.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','physical',0,NULL),(26,21,1,20.00,0.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,31,'Beat Headphone','products/3.jpg',603.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','physical',0,NULL),(27,21,2,1265.00,0.00,'{\"sku\":\"SW-101-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,67,'NYX Beauty Couton Pallete Makeup 12','products/19-1.jpg',1572.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','physical',0,NULL),(28,22,1,543.00,0.00,'{\"sku\":\"SW-175-A0-A1\",\"attributes\":\"(Color: Red, Size: XL)\"}',NULL,58,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',834.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(29,23,1,590.00,0.00,'{\"sku\":\"SW-187-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,52,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',857.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','digital',4,NULL),(30,24,3,973.00,0.00,'{\"sku\":\"SW-178-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,63,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',1818.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(31,25,3,20.00,0.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,31,'Beat Headphone','products/3.jpg',1809.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(32,25,1,973.00,0.00,'{\"sku\":\"SW-178-A0-A1\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,63,'Aveeno Moisturizing Body Shower 450ml','products/18-1.jpg',606.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(33,25,1,776.00,0.00,'{\"sku\":\"SW-110-A0-A1\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,69,'NYX Beauty Couton Pallete Makeup 12','products/20-1.jpg',723.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(34,26,1,642.00,0.00,'{\"sku\":\"SW-188-A0-A2\",\"attributes\":\"(Color: Green, Size: L)\"}',NULL,77,'Ciate Palemore Lipstick Bold Red Color','products/23-2.jpg',835.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(35,27,2,40.50,0.00,'{\"sku\":\"SW-117-A0-A2\",\"attributes\":\"(Size: S, Color: Black)\"}',NULL,27,'Smart Watches','products/2-2.jpg',1480.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','physical',0,NULL),(36,28,1,20.00,0.00,'{\"sku\":\"SW-157-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,30,'Beat Headphone','products/3.jpg',603.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(37,28,1,1203.00,0.00,'{\"sku\":\"SW-152-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,48,'Xbox One Wireless Controller Black Color','products/11-1.jpg',526.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(38,29,3,20.00,0.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,31,'Beat Headphone','products/3.jpg',1809.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(39,29,3,1203.00,0.00,'{\"sku\":\"SW-152-A0\",\"attributes\":\"(Color: Blue, Size: L)\"}',NULL,47,'Xbox One Wireless Controller Black Color','products/11.jpg',1578.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(40,30,2,437.00,0.00,'{\"sku\":\"SW-159-A0\",\"attributes\":\"(Color: Blue, Size: XXL)\"}',NULL,36,'Nikon HD camera','products/6.jpg',1748.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(41,31,1,588.00,0.00,'{\"sku\":\"SW-169-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,54,'B&O Play Mini Bluetooth Speaker','products/14.jpg',806.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(42,32,3,592.00,0.00,'{\"sku\":\"SW-194-A0-A1\",\"attributes\":\"(Size: L, Color: Brown)\"}',NULL,43,'Samsung Smart Phone (Digital)','products/9-1.jpg',2289.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','digital',2,NULL),(43,33,3,973.00,0.00,'{\"sku\":\"SW-178-A0-A2\",\"attributes\":\"(Size: M, Color: Black)\"}',NULL,64,'Aveeno Moisturizing Body Shower 450ml','products/18-2.jpg',1818.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','physical',0,NULL),(44,34,1,40.50,0.00,'{\"sku\":\"SW-117-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,28,'Smart Watches','products/2-3.jpg',740.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','physical',0,NULL),(45,35,2,20.00,0.00,'{\"sku\":\"SW-157-A0-A2\",\"attributes\":\"(Color: Black, Size: XL)\"}',NULL,31,'Beat Headphone','products/3.jpg',1206.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','physical',0,NULL),(46,36,2,592.00,0.00,'{\"sku\":\"SW-194-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,45,'Samsung Smart Phone (Digital)','products/9.jpg',1526.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','digital',9,NULL),(47,36,1,588.00,0.00,'{\"sku\":\"SW-169-A0-A1\",\"attributes\":\"(Color: Green, Size: XL)\"}',NULL,54,'B&O Play Mini Bluetooth Speaker','products/14.jpg',806.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','physical',0,NULL),(48,37,3,40.50,0.00,'{\"sku\":\"SW-117-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,26,'Smart Watches','products/2-1.jpg',2220.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','physical',0,NULL),(49,38,1,20.00,0.00,'{\"sku\":\"SW-157-A0-A1\",\"attributes\":\"(Color: Black, Size: XXL)\"}',NULL,30,'Beat Headphone','products/3.jpg',603.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','physical',0,NULL),(50,38,3,1208.00,0.00,'{\"sku\":\"SW-115-A0\",\"attributes\":\"(Size: M, Color: Brown)\"}',NULL,40,'Smart Televisions','products/8.jpg',2667.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','physical',0,NULL),(51,39,2,590.00,0.00,'{\"sku\":\"SW-187-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,52,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',1714.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','digital',1,NULL),(52,40,1,40.50,0.00,'{\"sku\":\"SW-117-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,28,'Smart Watches','products/2-3.jpg',740.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','physical',0,NULL),(53,41,3,592.00,0.00,'{\"sku\":\"SW-194-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,45,'Samsung Smart Phone (Digital)','products/9.jpg',2289.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','digital',3,NULL),(54,41,2,588.00,0.00,'{\"sku\":\"SW-169-A0\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,53,'B&O Play Mini Bluetooth Speaker','products/14.jpg',1612.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','physical',0,NULL),(55,42,1,20.00,0.00,'{\"sku\":\"SW-157-A0\",\"attributes\":\"(Size: S, Color: Blue)\"}',NULL,29,'Beat Headphone','products/3.jpg',603.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','physical',0,NULL),(56,43,1,592.00,0.00,'{\"sku\":\"SW-194-A0-A3\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,45,'Samsung Smart Phone (Digital)','products/9.jpg',763.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','digital',5,NULL),(57,43,3,595.00,0.00,'{\"sku\":\"SW-154-A0\",\"attributes\":\"(Color: Brown, Size: XXL)\"}',NULL,55,'Apple MacBook Air Retina 13.3-Inch Laptop','products/15.jpg',2307.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','physical',0,NULL),(58,44,2,590.00,0.00,'{\"sku\":\"SW-187-A0-A2\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,52,'Sound Intone I65 Earphone White Version (Digital)','products/13.jpg',1714.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','digital',0,NULL),(59,45,1,1144.00,0.00,'{\"sku\":\"SW-191-A0\",\"attributes\":\"(Size: M, Color: Red)\"}',NULL,46,'Herschel Leather Duffle Bag In Brown Color','products/10.jpg',557.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','physical',0,NULL),(60,46,2,1203.00,0.00,'{\"sku\":\"SW-152-A0-A1\",\"attributes\":\"(Color: Red, Size: XXL)\"}',NULL,48,'Xbox One Wireless Controller Black Color','products/11-1.jpg',1052.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','physical',0,NULL),(61,47,1,543.00,0.00,'{\"sku\":\"SW-175-A0\",\"attributes\":\"(Color: Green, Size: M)\"}',NULL,57,'Apple MacBook Air Retina 12-Inch Laptop','products/16.jpg',834.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','physical',0,NULL),(62,48,3,642.00,0.00,'{\"sku\":\"SW-188-A0-A1\",\"attributes\":\"(Size: XL, Color: Brown)\"}',NULL,76,'Ciate Palemore Lipstick Bold Red Color','products/23-1.jpg',2505.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','physical',0,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',6,'1','default','pending',543.00,0.00,0.00,NULL,NULL,0.00,543.00,1,NULL,1,NULL,'i1imxlhYI332G32cGb2ahgIcy58Vr',1,'2024-02-14 03:15:12','2024-02-25 19:15:12',NULL,5),(2,'#10000002',6,NULL,'','pending',2706.00,0.00,0.00,NULL,NULL,0.00,2706.00,1,NULL,1,NULL,'z2yaJduxAqAGqNxW8lRD8RnDhy8qc',2,'2024-02-14 03:15:12','2024-02-25 19:15:12',NULL,3),(3,'#10000003',6,'1','default','pending',121.50,0.00,0.00,NULL,NULL,0.00,121.50,1,NULL,1,NULL,'9IiowM9MvHWWjdkHDwQxjjPFdKPsY',3,'2024-02-13 03:15:12','2024-02-25 19:15:12',NULL,4),(4,'#10000004',6,'1','default','pending',1773.00,0.00,0.00,NULL,NULL,0.00,1773.00,1,NULL,1,NULL,'YGszOn2NKh1LDdca5SsxuixGABh9n',4,'2024-02-16 07:15:12','2024-02-25 19:15:12',NULL,2),(5,'#10000005',6,'1','default','completed',1086.00,0.00,0.00,NULL,NULL,0.00,1086.00,1,NULL,1,'2024-02-25 19:15:20','JpgeSYYboCk9M1DMQWMfdHtkEVSPL',5,'2024-02-19 11:15:12','2024-02-25 19:15:20',NULL,5),(6,'#10000006',6,'1','default','pending',1401.00,0.00,0.00,NULL,NULL,0.00,1401.00,1,NULL,1,NULL,'axzlE5H2N4lmuVx8FjVWt7khfiX5X',6,'2024-02-24 05:15:13','2024-02-25 19:15:13',NULL,3),(7,'#10000007',5,'1','default','completed',4597.00,0.00,0.00,NULL,NULL,0.00,4597.00,1,NULL,1,'2024-02-25 19:15:13','PFQxuUQ6x7EGeFNTHMRyG3ogO9Dmp',7,'2024-02-21 07:15:13','2024-02-25 19:15:13',NULL,2),(8,'#10000008',5,NULL,'','completed',592.00,0.00,0.00,NULL,NULL,0.00,592.00,1,NULL,1,'2024-02-25 19:15:13','2eBfbV3SQzHu55X6zbfxqmdsQCy5d',8,'2024-02-16 19:15:13','2024-02-25 19:15:13',NULL,5),(9,'#10000009',5,NULL,'','completed',902.00,0.00,0.00,NULL,NULL,0.00,902.00,1,NULL,1,'2024-02-25 19:15:13','iXKvPi1dK1C34dxjfQ4sshHFaqdWW',9,'2024-02-10 19:15:13','2024-02-25 19:15:13',NULL,3),(10,'#10000010',1,'1','default','pending',1248.00,0.00,0.00,NULL,NULL,0.00,1248.00,1,NULL,1,NULL,'VTYaoxd9d4JgF1Y43nRKV3dKtZrKx',10,'2024-02-17 07:15:13','2024-02-25 19:15:13',NULL,2),(11,'#10000011',1,'1','default','completed',467.00,0.00,0.00,NULL,NULL,0.00,467.00,1,NULL,1,'2024-02-25 19:15:21','ftZTR1sDJtWRR3b6kFOswrXGqTwjP',11,'2024-02-20 03:15:14','2024-02-25 19:15:21',NULL,3),(12,'#10000012',1,'1','default','pending',1284.00,0.00,0.00,NULL,NULL,0.00,1284.00,1,NULL,1,NULL,'OyeAKpvPPz2wfZGCMWaqvGXxJBcD1',12,'2024-02-22 23:15:14','2024-02-25 19:15:14',NULL,1),(13,'#10000013',6,NULL,'','completed',592.00,0.00,0.00,NULL,NULL,0.00,592.00,1,NULL,1,'2024-02-25 19:15:14','Bkh2SpcQSVY97apGpN0I7l2znRiCJ',13,'2024-02-12 11:15:14','2024-02-25 19:15:14',NULL,5),(14,'#10000014',6,'1','default','pending',2919.00,0.00,0.00,NULL,NULL,0.00,2919.00,1,NULL,1,NULL,'gbU7umb6zULLsFCdQszzQIVNwSGG9',14,'2024-02-24 11:15:14','2024-02-25 19:15:14',NULL,2),(15,'#10000015',1,NULL,'','completed',1184.00,0.00,0.00,NULL,NULL,0.00,1184.00,1,NULL,1,'2024-02-25 19:15:14','fPLZx8CJUvM9ZbnOvXEOn817IFyHr',15,'2024-02-17 01:15:14','2024-02-25 19:15:14',NULL,5),(16,'#10000016',1,'1','default','pending',6714.00,0.00,0.00,NULL,NULL,0.00,6714.00,1,NULL,1,NULL,'epf3Mw0buCwuFMTbKl9S1j2ZJdw0p',16,'2024-02-20 19:15:14','2024-02-25 19:15:15',NULL,2),(17,'#10000017',6,NULL,'','pending',1776.00,0.00,0.00,NULL,NULL,0.00,1776.00,1,NULL,1,NULL,'ZMLof2Ru1eApA2dyy1euZ56P7g9nB',17,'2024-02-24 15:15:15','2024-02-25 19:15:15',NULL,5),(18,'#10000018',6,'1','default','pending',1552.00,0.00,0.00,NULL,NULL,0.00,1552.00,1,NULL,1,NULL,'wEDeQqUbfRrKFMJopVb1WRQTWWWCS',18,'2024-02-15 07:15:15','2024-02-25 19:15:15',NULL,2),(19,'#10000019',6,'1','default','pending',1926.00,0.00,0.00,NULL,NULL,0.00,1926.00,1,NULL,1,NULL,'JepRjD04gT4bCk76Doh8gexPjnqP4',19,'2024-02-16 11:15:15','2024-02-25 19:15:15',NULL,1),(20,'#10000020',6,'1','default','pending',914.50,0.00,0.00,NULL,NULL,0.00,914.50,1,NULL,1,NULL,'97WCuXR2HcpGHS4lgEpTU84Fe9wOr',20,'2024-02-18 05:15:15','2024-02-25 19:15:15',NULL,4),(21,'#10000021',8,'1','default','pending',2550.00,0.00,0.00,NULL,NULL,0.00,2550.00,1,NULL,1,NULL,'U9SO2UoLlWwOmvltDHDAAltWpBPP8',21,'2024-02-24 19:15:15','2024-02-25 19:15:15',NULL,2),(22,'#10000022',8,'1','default','pending',543.00,0.00,0.00,NULL,NULL,0.00,543.00,1,NULL,1,NULL,'H9pGDU1fxAbybVBHHtTw2AzyumIMV',22,'2024-02-15 19:15:15','2024-02-25 19:15:16',NULL,5),(23,'#10000023',1,NULL,'','completed',590.00,0.00,0.00,NULL,NULL,0.00,590.00,1,NULL,1,'2024-02-25 19:15:16','JAICFjHYBIdgzPd4KZBqsZOZDlnK7',23,'2024-02-23 23:15:16','2024-02-25 19:15:16',NULL,3),(24,'#10000024',1,'1','default','pending',2919.00,0.00,0.00,NULL,NULL,0.00,2919.00,1,NULL,1,NULL,'4Xbden22SeygijMRNSMmHtUkgmYeK',24,'2024-02-23 23:15:16','2024-02-25 19:15:16',NULL,2),(25,'#10000025',6,'1','default','completed',1809.00,0.00,0.00,NULL,NULL,0.00,1809.00,1,NULL,1,'2024-02-25 19:15:21','g1Y551AE5HzZJ9vYjj31hl3JfgdIL',25,'2024-02-21 15:15:16','2024-02-25 19:15:21',NULL,2),(26,'#10000026',6,'1','default','pending',642.00,0.00,0.00,NULL,NULL,0.00,642.00,1,NULL,1,NULL,'9i2GA89kl4qi9dDrfKjoJXvQIwb3z',26,'2024-02-20 19:15:16','2024-02-25 19:15:16',NULL,1),(27,'#10000027',8,'1','default','completed',81.00,0.00,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'2024-02-25 19:15:22','7QyLav6PNnlUr0oOKy6BCrg9Ju3nB',27,'2024-02-22 01:15:16','2024-02-25 19:15:22',NULL,4),(28,'#10000028',8,'1','default','completed',1223.00,0.00,0.00,NULL,NULL,0.00,1223.00,1,NULL,1,'2024-02-25 19:15:23','JaIk4iL1SLR9ORJmOGmGMJQnyYoNf',28,'2024-02-22 19:15:17','2024-02-25 19:15:23',NULL,2),(29,'#10000029',5,'1','default','completed',3669.00,0.00,0.00,NULL,NULL,0.00,3669.00,1,NULL,1,'2024-02-25 19:15:23','4Kgbn8S6aEFkmI8iQx2QwIh2YdzHA',29,'2024-02-23 19:15:17','2024-02-25 19:15:23',NULL,2),(30,'#10000030',5,'1','default','pending',874.00,0.00,0.00,NULL,NULL,0.00,874.00,1,NULL,1,NULL,'rJFAbKA23OE3CQwm5hW7HMA1AjZ90',30,'2024-02-23 19:15:17','2024-02-25 19:15:17',NULL,4),(31,'#10000031',5,'1','default','pending',588.00,0.00,0.00,NULL,NULL,0.00,588.00,1,NULL,1,NULL,'8Y4HnEA6xocfVwSgCOFOfmZHapz5w',31,'2024-02-19 03:15:17','2024-02-25 19:15:17',NULL,5),(32,'#10000032',9,NULL,'','completed',1776.00,0.00,0.00,NULL,NULL,0.00,1776.00,1,NULL,1,'2024-02-25 19:15:17','TCH8jsWcEhCG8DTfV5YU0VIeXxj3q',32,'2024-02-25 05:15:17','2024-02-25 19:15:17',NULL,5),(33,'#10000033',9,'1','default','completed',2919.00,0.00,0.00,NULL,NULL,0.00,2919.00,1,NULL,1,'2024-02-25 19:15:24','S2Zzx5nM8S6jDpX19HdnyBMPTGFEM',33,'2024-02-24 01:15:17','2024-02-25 19:15:24',NULL,2),(34,'#10000034',5,'1','default','pending',40.50,0.00,0.00,NULL,NULL,0.00,40.50,1,NULL,1,NULL,'HWbV3BRZesY0ln71h1HHmJydt6lNg',34,'2024-02-21 19:15:18','2024-02-25 19:15:18',NULL,4),(35,'#10000035',5,'1','default','completed',40.00,0.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'2024-02-25 19:15:24','YNdjwIyLbhU77p6LN62S606yEMKYi',35,'2024-02-25 07:15:18','2024-02-25 19:15:24',NULL,2),(36,'#10000036',5,'1','default','completed',1772.00,0.00,0.00,NULL,NULL,0.00,1772.00,1,NULL,1,'2024-02-25 19:15:25','hR6iSSdmYiWJDj2hyfe2GaecKobZS',36,'2024-02-24 19:15:18','2024-02-25 19:15:25',NULL,5),(37,'#10000037',8,'1','default','pending',121.50,0.00,0.00,NULL,NULL,0.00,121.50,1,NULL,1,NULL,'KedO4czcuG3Van31eCZ31qtsequaR',37,'2024-02-24 23:15:18','2024-02-25 19:15:18',NULL,4),(38,'#10000038',8,'1','default','pending',3644.00,0.00,0.00,NULL,NULL,0.00,3644.00,1,NULL,1,NULL,'uQnZ8xlAwan4rDop0xL0zyH3eYDUL',38,'2024-02-22 21:15:18','2024-02-25 19:15:18',NULL,2),(39,'#10000039',8,NULL,'','completed',1180.00,0.00,0.00,NULL,NULL,0.00,1180.00,1,NULL,1,'2024-02-25 19:15:19','SXZs3ganjnxaJY0Nl87gMMgvhQo17',39,'2024-02-23 17:15:19','2024-02-25 19:15:19',NULL,3),(40,'#10000040',8,'1','default','pending',40.50,0.00,0.00,NULL,NULL,0.00,40.50,1,NULL,1,NULL,'01VtfRadiVUmpBUKJGJInZhLjVhCJ',40,'2024-02-23 11:15:19','2024-02-25 19:15:19',NULL,4),(41,'#10000041',8,'1','default','pending',2952.00,0.00,0.00,NULL,NULL,0.00,2952.00,1,NULL,1,NULL,'4BKT7sFlAn1MZJbhz0WCSS5W2zvoB',41,'2024-02-23 19:15:19','2024-02-25 19:15:19',NULL,5),(42,'#10000042',6,'1','default','completed',20.00,0.00,0.00,NULL,NULL,0.00,20.00,1,NULL,1,'2024-02-25 19:15:25','TGQCoEABzFNSYxiFnnQsA50QDHqFC',42,'2024-02-23 07:15:19','2024-02-25 19:15:25',NULL,2),(43,'#10000043',6,'1','default','completed',2377.00,0.00,0.00,NULL,NULL,0.00,2377.00,1,NULL,1,'2024-02-25 19:15:26','zzSuxDeUMiIKKhgwAKKxhFVZTRNTz',43,'2024-02-25 01:15:19','2024-02-25 19:15:26',NULL,5),(44,'#10000044',6,NULL,'','completed',1180.00,0.00,0.00,NULL,NULL,0.00,1180.00,1,NULL,1,'2024-02-25 19:15:20','AwnKqiRnpfDWLk2y0JmUr3FFbSmqI',44,'2024-02-24 13:15:19','2024-02-25 19:15:20',NULL,3),(45,'#10000045',8,'1','default','completed',1144.00,0.00,0.00,NULL,NULL,0.00,1144.00,1,NULL,1,'2024-02-25 19:15:20','D3CbJeThuT8OjzdzMZebhhJeyowRt',45,'2024-02-24 03:15:20','2024-02-25 19:15:20',NULL,4),(46,'#10000046',8,'1','default','completed',2406.00,0.00,0.00,NULL,NULL,0.00,2406.00,1,NULL,1,'2024-02-25 19:15:26','Svt3gqyxq9wS2uDuZ7SFScCTLelop',46,'2024-02-24 03:15:20','2024-02-25 19:15:26',NULL,2),(47,'#10000047',5,'1','default','pending',543.00,0.00,0.00,NULL,NULL,0.00,543.00,1,NULL,1,NULL,'YNretCQepaszRLWAJ2bqcB3hy1ZZM',47,'2024-02-25 05:15:20','2024-02-25 19:15:20',NULL,5),(48,'#10000048',5,'1','default','pending',1926.00,0.00,0.00,NULL,NULL,0.00,1926.00,1,NULL,1,NULL,'9R80P0xvT4jxS59ImojGG84SgwoYA',48,'2024-02-25 13:15:20','2024-02-25 19:15:20',NULL,1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-02-25 19:15:02','2024-02-25 19:15:02',0),(2,'Size','size','text',1,1,1,'published',1,'2024-02-25 19:15:02','2024-02-25 19:15:02',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(6,2,'S','s',NULL,NULL,1,1,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(7,2,'M','m',NULL,NULL,0,2,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(8,2,'L','l',NULL,NULL,0,3,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-02-25 19:15:02','2024-02-25 19:15:02'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-02-25 19:15:02','2024-02-25 19:15:02');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(8,'Headphones',3,NULL,'published',4,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(9,'Videos games',3,NULL,'published',5,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(15,'Batteries',12,NULL,'published',2,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(20,'Laptop',18,NULL,'published',1,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(21,'Monitors',18,NULL,'published',2,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(23,'Networking',17,NULL,'published',1,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(27,'Accessories',23,NULL,'published',3,NULL,0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL,NULL),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL,NULL),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL,NULL),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL,NULL),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL,NULL),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL,NULL),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,5),(1,7),(1,11),(1,19),(1,23),(2,19),(5,1),(5,9),(5,13),(5,22),(6,1),(7,5),(7,6),(7,15),(7,16),(8,18),(9,1),(9,13),(10,8),(10,11),(10,22),(11,14),(12,4),(13,7),(13,18),(13,21),(13,22),(14,5),(14,20),(15,12),(15,16),(16,11),(17,2),(17,3),(17,12),(19,3),(19,9),(19,15),(20,4),(20,10),(20,13),(21,14),(21,17),(21,19),(22,4),(22,6),(22,12),(22,13),(23,1),(23,8),(24,3),(24,14),(24,20),(26,3),(26,20),(27,10),(27,21),(28,7),(28,11),(28,23),(29,6),(29,8),(29,19),(30,2),(30,6),(30,7),(30,15),(30,21),(30,23),(31,2),(31,4),(31,21),(32,9),(32,22),(32,23),(33,5),(34,15),(34,17),(35,9),(36,8),(36,10),(36,12),(36,20),(37,14),(37,16),(37,18);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,5),(1,12),(1,15),(1,16),(1,17),(1,18),(2,1),(2,3),(2,4),(2,8),(2,9),(2,11),(2,13),(2,14),(2,19),(2,20),(2,21),(2,22),(2,23),(3,6),(3,7),(3,10);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-02-25 19:14:57','2024-02-25 19:14:57',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-02-25 19:14:57','2024-02-25 19:14:57',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-02-25 19:14:57','2024-02-25 19:14:57',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,2,0,0.00,'fixed',1),(1,3,0,0.00,'fixed',1),(1,8,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(1,15,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,7,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,16,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,13,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(3,18,0,0.00,'fixed',1),(3,19,0,0.00,'fixed',1),(3,20,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,11,0,0.00,'fixed',1),(4,13,0,0.00,'fixed',1),(4,19,0,0.00,'fixed',1),(5,4,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,10,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,5,0,0.00,'fixed',1),(7,11,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,14,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,6,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,11,0,0.00,'fixed',1),(8,14,0,0.00,'fixed',1),(8,19,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,10,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,12,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,19,0,0.00,'fixed',1),(10,1,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,19,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,4,0,0.00,'fixed',1),(11,9,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(11,19,0,0.00,'fixed',1),(11,20,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,7,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(13,1,0,0.00,'fixed',1),(13,6,0,0.00,'fixed',1),(13,9,0,0.00,'fixed',1),(13,11,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(14,3,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,6,0,0.00,'fixed',1),(14,9,0,0.00,'fixed',1),(14,11,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(15,2,0,0.00,'fixed',1),(15,4,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,11,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,18,0,0.00,'fixed',1),(16,6,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,13,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(17,2,0,0.00,'fixed',1),(17,4,0,0.00,'fixed',1),(17,9,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,13,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,16,0,0.00,'fixed',1),(18,2,0,0.00,'fixed',1),(18,3,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,12,0,0.00,'fixed',1),(18,13,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,17,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,2,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,9,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,5,0,0.00,'fixed',1),(20,8,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,13,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,18,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,8,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,16,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(2,33,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(3,33,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(4,33,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(5,33,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(6,34,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(7,34,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(8,34,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(9,34,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(10,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(11,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(12,35,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(13,35,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(14,42,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(15,42,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(16,42,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(17,43,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(18,43,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(19,43,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(20,44,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(21,44,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(22,44,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(23,45,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(24,45,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(25,45,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(26,50,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(27,50,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:01\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:01','2024-02-25 19:15:01'),(28,51,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(29,51,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(30,52,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(31,52,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(32,61,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(33,61,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(34,61,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(35,61,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(36,71,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(37,71,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02'),(38,71,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-02-26 02:15:02\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2024-02-25 19:15:02','2024-02-25 19:15:02');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,9),(1,15),(2,18),(3,12),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-02-25 19:14:57','2024-02-25 19:14:57'),(2,'New','#02856e','published','2024-02-25 19:14:57','2024-02-25 19:14:57'),(3,'Sale','#fe9931','published','2024-02-25 19:14:57','2024-02-25 19:14:57');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,5),(2,1),(2,2),(2,6),(3,2),(3,3),(4,1),(4,2),(5,1),(5,4),(6,1),(6,4),(6,6),(7,2),(7,4),(8,2),(8,6),(9,4),(9,5),(9,6),(10,2),(10,4),(10,6),(11,1),(11,5),(11,6),(12,3),(12,5),(12,6),(13,1),(13,4),(13,5),(14,1),(14,3),(15,1),(15,2),(15,3),(16,2),(16,5),(17,2),(17,5),(17,6),(18,3),(18,4),(18,6),(19,2),(19,4),(20,1),(20,3),(20,4),(21,1),(21,2),(21,5),(22,1),(22,3),(22,4),(23,2),(23,3),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(2,'Mobile',NULL,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(3,'Iphone',NULL,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(4,'Printer',NULL,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(5,'Office',NULL,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(6,'IT',NULL,'published','2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (19,1,10),(35,1,18),(59,1,30),(61,1,31),(67,1,34),(73,1,37),(101,1,51),(103,1,52),(107,1,54),(3,2,2),(11,2,6),(25,2,13),(47,2,24),(55,2,28),(85,2,43),(95,2,48),(5,3,3),(9,3,5),(17,3,9),(21,3,11),(27,3,14),(37,3,19),(43,3,22),(45,3,23),(49,3,25),(51,3,26),(53,3,27),(69,3,35),(93,3,47),(97,3,49),(1,4,1),(7,4,4),(13,4,7),(15,4,8),(23,4,12),(29,4,15),(31,4,16),(41,4,21),(65,4,33),(75,4,38),(81,4,41),(83,4,42),(99,4,50),(33,5,17),(39,5,20),(57,5,29),(63,5,32),(71,5,36),(77,5,39),(79,5,40),(87,5,44),(89,5,45),(91,5,46),(105,5,53),(109,5,55),(4,6,2),(8,6,4),(12,6,6),(20,6,10),(30,6,15),(72,6,36),(104,6,52),(10,7,5),(34,7,17),(36,7,18),(42,7,21),(44,7,22),(46,7,23),(52,7,26),(60,7,30),(68,7,34),(80,7,40),(82,7,41),(88,7,44),(94,7,47),(100,7,50),(24,8,12),(28,8,14),(40,8,20),(48,8,24),(54,8,27),(56,8,28),(66,8,33),(76,8,38),(78,8,39),(84,8,42),(86,8,43),(90,8,45),(96,8,48),(102,8,51),(108,8,54),(16,9,8),(58,9,29),(62,9,31),(70,9,35),(98,9,49),(106,9,53),(110,9,55),(2,10,1),(6,10,3),(14,10,7),(18,10,9),(22,10,11),(26,10,13),(32,10,16),(38,10,19),(50,10,25),(64,10,32),(74,10,37),(92,10,46);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,2,1),(3,26,2,0),(4,27,2,0),(5,28,2,0),(6,29,3,1),(7,30,3,0),(8,31,3,0),(9,32,4,1),(10,33,5,1),(11,34,5,0),(12,35,5,0),(13,36,6,1),(14,37,6,0),(15,38,7,1),(16,39,7,0),(17,40,8,1),(18,41,8,0),(19,42,9,1),(20,43,9,0),(21,44,9,0),(22,45,9,0),(23,46,10,1),(24,47,11,1),(25,48,11,0),(26,49,12,1),(27,50,13,1),(28,51,13,0),(29,52,13,0),(30,53,14,1),(31,54,14,0),(32,55,15,1),(33,56,15,0),(34,57,16,1),(35,58,16,0),(36,59,16,0),(37,60,16,0),(38,61,17,1),(39,62,18,1),(40,63,18,0),(41,64,18,0),(42,65,18,0),(43,66,19,1),(44,67,19,0),(45,68,20,1),(46,69,20,0),(47,70,20,0),(48,71,21,1),(49,72,22,1),(50,73,22,0),(51,74,22,0),(52,75,23,1),(53,76,23,0),(54,77,23,0),(55,78,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-02-26',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-156-A0',0,20,0,1,1,1,0,0,80.25,NULL,NULL,NULL,10.00,20.00,15.00,697.00,NULL,172989,'2024-02-25 19:15:00','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,5,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-117-A0',0,16,0,1,1,1,0,0,40.5,NULL,NULL,NULL,10.00,19.00,11.00,740.00,NULL,7691,'2024-02-25 19:15:00','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-157-A0',0,20,0,1,1,1,0,0,20,NULL,NULL,NULL,20.00,15.00,11.00,603.00,NULL,18563,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(4,'Red &amp; Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-184-A0',0,11,0,1,1,5,0,0,531,403.56,NULL,NULL,10.00,11.00,13.00,582.00,NULL,55364,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-166-A0',0,11,0,1,1,3,0,0,887,NULL,NULL,NULL,18.00,16.00,17.00,571.00,NULL,16485,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-159-A0',0,16,0,1,1,3,0,0,437,NULL,NULL,NULL,16.00,18.00,16.00,874.00,NULL,12812,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-162-A0',0,18,0,1,1,4,0,0,553,NULL,NULL,NULL,17.00,14.00,12.00,866.00,NULL,76906,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-115-A0',0,19,0,1,1,5,0,0,1208,942.24,NULL,NULL,16.00,17.00,14.00,889.00,NULL,104449,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-194-A0',0,14,0,1,1,3,0,0,592,NULL,NULL,NULL,19.00,12.00,19.00,763.00,NULL,84238,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,5,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-191-A0',0,16,0,1,0,6,0,0,1144,NULL,NULL,NULL,17.00,12.00,11.00,557.00,NULL,97129,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-152-A0',0,16,0,1,0,3,0,0,1203,NULL,NULL,NULL,16.00,16.00,13.00,526.00,NULL,26421,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-184-A0',0,20,0,1,0,3,0,0,591,425.52,NULL,NULL,20.00,14.00,10.00,616.00,NULL,22600,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-187-A0',0,12,0,1,0,6,0,0,590,NULL,NULL,NULL,15.00,20.00,12.00,857.00,NULL,139092,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-169-A0',0,16,0,1,0,5,0,0,588,NULL,NULL,NULL,12.00,19.00,12.00,806.00,NULL,111245,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-154-A0',0,12,0,1,0,5,0,0,595,NULL,NULL,NULL,17.00,10.00,19.00,769.00,NULL,19246,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-175-A0',0,18,0,1,0,4,0,0,543,450.69,NULL,NULL,14.00,19.00,15.00,834.00,NULL,29106,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,5,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-164-A0',0,10,0,1,0,5,0,0,515,NULL,NULL,NULL,20.00,14.00,18.00,597.00,NULL,170576,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,2,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-178-A0',0,12,0,1,0,6,0,0,973,NULL,NULL,NULL,10.00,18.00,17.00,606.00,NULL,82487,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-101-A0',0,20,0,1,0,6,0,0,1265,NULL,NULL,NULL,11.00,16.00,17.00,786.00,NULL,83713,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-110-A0',0,14,0,1,0,4,0,0,776,659.6,NULL,NULL,13.00,18.00,10.00,723.00,NULL,33382,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-195-A0',0,18,0,1,0,2,0,0,902,NULL,NULL,NULL,15.00,10.00,14.00,689.00,NULL,38242,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-150-A0',0,20,0,1,0,4,0,0,467,NULL,NULL,NULL,11.00,13.00,15.00,762.00,NULL,12520,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-188-A0',0,16,0,1,0,5,0,0,642,NULL,NULL,NULL,19.00,13.00,10.00,835.00,NULL,14600,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-156-A0',0,20,0,1,0,1,1,0,80.25,NULL,NULL,NULL,10.00,20.00,15.00,697.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(25,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-117-A0',0,16,0,1,0,1,1,0,40.5,NULL,NULL,NULL,10.00,19.00,11.00,740.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-117-A0-A1',0,16,0,1,0,1,1,0,40.5,NULL,NULL,NULL,10.00,19.00,11.00,740.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-117-A0-A2',0,16,0,1,0,1,1,0,40.5,NULL,NULL,NULL,10.00,19.00,11.00,740.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-3.jpg\"]','SW-117-A0-A3',0,16,0,1,0,1,1,0,40.5,NULL,NULL,NULL,10.00,19.00,11.00,740.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-157-A0',0,20,0,1,0,1,1,0,20,NULL,NULL,NULL,20.00,15.00,11.00,603.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-157-A0-A1',0,20,0,1,0,1,1,0,20,NULL,NULL,NULL,20.00,15.00,11.00,603.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(31,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-157-A0-A2',0,20,0,1,0,1,1,0,20,NULL,NULL,NULL,20.00,15.00,11.00,603.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-184-A0',0,11,0,1,0,5,1,0,531,403.56,NULL,NULL,10.00,11.00,13.00,582.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-166-A0',0,11,0,1,0,3,1,0,887,NULL,NULL,NULL,18.00,16.00,17.00,571.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(34,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-166-A0-A1',0,11,0,1,0,3,1,0,887,NULL,NULL,NULL,18.00,16.00,17.00,571.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(35,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-166-A0-A2',0,11,0,1,0,3,1,0,887,NULL,NULL,NULL,18.00,16.00,17.00,571.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-159-A0',0,16,0,1,0,3,1,0,437,NULL,NULL,NULL,16.00,18.00,16.00,874.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-159-A0-A1',0,16,0,1,0,3,1,0,437,NULL,NULL,NULL,16.00,18.00,16.00,874.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-162-A0',0,18,0,1,0,4,1,0,553,NULL,NULL,NULL,17.00,14.00,12.00,866.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-162-A0-A1',0,18,0,1,0,4,1,0,553,NULL,NULL,NULL,17.00,14.00,12.00,866.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-115-A0',0,19,0,1,0,5,1,0,1208,942.24,NULL,NULL,16.00,17.00,14.00,889.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-115-A0-A1',0,19,0,1,0,5,1,0,1208,990.56,NULL,NULL,16.00,17.00,14.00,889.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-194-A0',0,14,0,1,0,3,1,0,592,NULL,NULL,NULL,19.00,12.00,19.00,763.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(43,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-194-A0-A1',0,14,0,1,0,3,1,0,592,NULL,NULL,NULL,19.00,12.00,19.00,763.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(44,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-194-A0-A2',0,14,0,1,0,3,1,0,592,NULL,NULL,NULL,19.00,12.00,19.00,763.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(45,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-194-A0-A3',0,14,0,1,0,3,1,0,592,NULL,NULL,NULL,19.00,12.00,19.00,763.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-191-A0',0,16,0,1,0,6,1,0,1144,NULL,NULL,NULL,17.00,12.00,11.00,557.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(47,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-152-A0',0,16,0,1,0,3,1,0,1203,NULL,NULL,NULL,16.00,16.00,13.00,526.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(48,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-152-A0-A1',0,16,0,1,0,3,1,0,1203,NULL,NULL,NULL,16.00,16.00,13.00,526.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(49,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-184-A0',0,20,0,1,0,3,1,0,591,425.52,NULL,NULL,20.00,14.00,10.00,616.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-187-A0',0,12,0,1,0,6,1,0,590,NULL,NULL,NULL,15.00,20.00,12.00,857.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(51,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-187-A0-A1',0,12,0,1,0,6,1,0,590,NULL,NULL,NULL,15.00,20.00,12.00,857.00,NULL,0,'2024-02-25 19:15:01','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(52,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-187-A0-A2',0,12,0,1,0,6,1,0,590,NULL,NULL,NULL,15.00,20.00,12.00,857.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(53,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-169-A0',0,16,0,1,0,5,1,0,588,NULL,NULL,NULL,12.00,19.00,12.00,806.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-169-A0-A1',0,16,0,1,0,5,1,0,588,NULL,NULL,NULL,12.00,19.00,12.00,806.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(55,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-154-A0',0,12,0,1,0,5,1,0,595,NULL,NULL,NULL,17.00,10.00,19.00,769.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(56,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-154-A0-A1',0,12,0,1,0,5,1,0,595,NULL,NULL,NULL,17.00,10.00,19.00,769.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(57,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-175-A0',0,18,0,1,0,4,1,0,543,450.69,NULL,NULL,14.00,19.00,15.00,834.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(58,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-175-A0-A1',0,18,0,1,0,4,1,0,543,428.97,NULL,NULL,14.00,19.00,15.00,834.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(59,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-175-A0-A2',0,18,0,1,0,4,1,0,543,412.68,NULL,NULL,14.00,19.00,15.00,834.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-175-A0-A3',0,18,0,1,0,4,1,0,543,488.7,NULL,NULL,14.00,19.00,15.00,834.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(61,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-164-A0',0,10,0,1,0,5,1,0,515,NULL,NULL,NULL,20.00,14.00,18.00,597.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(62,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-178-A0',0,12,0,1,0,6,1,0,973,NULL,NULL,NULL,10.00,18.00,17.00,606.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(63,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-178-A0-A1',0,12,0,1,0,6,1,0,973,NULL,NULL,NULL,10.00,18.00,17.00,606.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(64,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-178-A0-A2',0,12,0,1,0,6,1,0,973,NULL,NULL,NULL,10.00,18.00,17.00,606.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]','SW-178-A0-A3',0,12,0,1,0,6,1,0,973,NULL,NULL,NULL,10.00,18.00,17.00,606.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-101-A0',0,20,0,1,0,6,1,0,1265,NULL,NULL,NULL,11.00,16.00,17.00,786.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-101-A0-A1',0,20,0,1,0,6,1,0,1265,NULL,NULL,NULL,11.00,16.00,17.00,786.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(68,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-110-A0',0,14,0,1,0,4,1,0,776,659.6,NULL,NULL,13.00,18.00,10.00,723.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-110-A0-A1',0,14,0,1,0,4,1,0,776,682.88,NULL,NULL,13.00,18.00,10.00,723.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','SW-110-A0-A2',0,14,0,1,0,4,1,0,776,682.88,NULL,NULL,13.00,18.00,10.00,723.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(71,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-195-A0',0,18,0,1,0,2,1,0,902,NULL,NULL,NULL,15.00,10.00,14.00,689.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(72,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-150-A0',0,20,0,1,0,4,1,0,467,NULL,NULL,NULL,11.00,13.00,15.00,762.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-150-A0-A1',0,20,0,1,0,4,1,0,467,NULL,NULL,NULL,11.00,13.00,15.00,762.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(74,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-150-A0-A2',0,20,0,1,0,4,1,0,467,NULL,NULL,NULL,11.00,13.00,15.00,762.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(75,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-188-A0',0,16,0,1,0,5,1,0,642,NULL,NULL,NULL,19.00,13.00,10.00,835.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(76,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-188-A0-A1',0,16,0,1,0,5,1,0,642,NULL,NULL,NULL,19.00,13.00,10.00,835.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-188-A0-A2',0,16,0,1,0,5,1,0,642,NULL,NULL,NULL,19.00,13.00,10.00,835.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-3.jpg\"]','SW-188-A0-A3',0,16,0,1,0,5,1,0,642,NULL,NULL,NULL,19.00,13.00,10.00,835.00,NULL,0,'2024-02-25 19:15:02','2024-02-25 19:15:11','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,6,12,4.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/18.jpg\"]'),(2,7,19,5.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/9.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/22-3.jpg\"]'),(3,7,23,1.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\",\"products\\/10-2.jpg\",\"products\\/23.jpg\"]'),(4,8,20,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/15-1.jpg\",\"products\\/21.jpg\"]'),(5,2,11,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/18-3.jpg\",\"products\\/20-3.jpg\"]'),(6,2,15,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/16.jpg\"]'),(7,5,23,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/18-2.jpg\"]'),(8,4,5,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/22-1.jpg\"]'),(9,6,9,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/15.jpg\",\"products\\/17-3.jpg\"]'),(10,4,12,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/7.jpg\"]'),(11,3,7,2.00,'Good app, good backup service and support. Good documentation.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/9-1.jpg\",\"products\\/12-2.jpg\"]'),(12,4,13,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/15.jpg\"]'),(13,9,16,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17-1.jpg\",\"products\\/22-3.jpg\"]'),(14,6,6,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/1.jpg\",\"products\\/8-1.jpg\",\"products\\/17.jpg\"]'),(15,7,3,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5.jpg\"]'),(16,6,4,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17.jpg\",\"products\\/19.jpg\",\"products\\/20-3.jpg\",\"products\\/21-1.jpg\"]'),(17,8,9,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-1.jpg\"]'),(18,8,7,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\",\"products\\/22.jpg\",\"products\\/23-2.jpg\"]'),(19,7,11,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/8-3.jpg\",\"products\\/13.jpg\",\"products\\/17-2.jpg\"]'),(20,2,1,4.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/23.jpg\"]'),(21,8,15,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/19-3.jpg\",\"products\\/21-1.jpg\"]'),(22,4,10,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11-3.jpg\",\"products\\/12.jpg\",\"products\\/13.jpg\",\"products\\/15-1.jpg\"]'),(23,6,18,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/10.jpg\",\"products\\/12.jpg\",\"products\\/20-3.jpg\"]'),(24,8,17,4.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/10-2.jpg\"]'),(25,7,18,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/14.jpg\",\"products\\/23.jpg\"]'),(26,4,17,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-3.jpg\",\"products\\/10-1.jpg\"]'),(27,8,23,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/13-1.jpg\"]'),(28,4,2,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8.jpg\",\"products\\/17.jpg\"]'),(29,4,1,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2.jpg\",\"products\\/19.jpg\"]'),(30,1,5,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/15-1.jpg\"]'),(31,6,19,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17.jpg\",\"products\\/18-2.jpg\",\"products\\/20-1.jpg\"]'),(33,8,4,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/20-2.jpg\",\"products\\/20-3.jpg\",\"products\\/23.jpg\"]'),(34,6,1,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/12.jpg\",\"products\\/17-2.jpg\",\"products\\/19-2.jpg\"]'),(35,9,15,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-1.jpg\",\"products\\/11-3.jpg\",\"products\\/12.jpg\",\"products\\/22-2.jpg\"]'),(36,2,17,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/7.jpg\",\"products\\/23-3.jpg\"]'),(37,1,4,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/8-3.jpg\",\"products\\/11.jpg\",\"products\\/12-2.jpg\"]'),(38,5,10,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10-2.jpg\",\"products\\/18-1.jpg\",\"products\\/19-1.jpg\"]'),(39,8,8,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/9-2.jpg\",\"products\\/22-1.jpg\"]'),(40,3,17,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\"]'),(42,3,10,4.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-2.jpg\",\"products\\/12.jpg\"]'),(44,6,22,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/4.jpg\",\"products\\/17-2.jpg\"]'),(45,1,3,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-1.jpg\",\"products\\/10.jpg\",\"products\\/18-1.jpg\"]'),(46,3,9,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\",\"products\\/20-3.jpg\"]'),(47,7,16,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\",\"products\\/8.jpg\",\"products\\/13-1.jpg\",\"products\\/13.jpg\"]'),(48,9,13,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17.jpg\"]'),(50,6,13,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/10.jpg\",\"products\\/14.jpg\",\"products\\/22-1.jpg\"]'),(51,5,8,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-3.jpg\",\"products\\/8.jpg\",\"products\\/22-3.jpg\"]'),(52,7,10,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/18-2.jpg\",\"products\\/20-2.jpg\",\"products\\/20.jpg\",\"products\\/21-1.jpg\"]'),(53,3,8,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2.jpg\",\"products\\/22-2.jpg\",\"products\\/23-3.jpg\"]'),(54,10,15,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11.jpg\",\"products\\/22.jpg\"]'),(55,10,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/9-2.jpg\",\"products\\/15.jpg\",\"products\\/20.jpg\"]'),(56,1,13,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/6.jpg\",\"products\\/20-3.jpg\"]'),(57,4,22,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/15.jpg\",\"products\\/19-1.jpg\"]'),(58,1,18,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/18.jpg\",\"products\\/20-2.jpg\"]'),(59,3,16,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/11-3.jpg\"]'),(60,10,4,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/15.jpg\",\"products\\/17-1.jpg\"]'),(63,3,6,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\"]'),(64,6,17,5.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\"]'),(65,8,22,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-2.jpg\"]'),(67,10,10,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/16.jpg\",\"products\\/19.jpg\",\"products\\/22.jpg\"]'),(68,10,19,4.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/12-1.jpg\",\"products\\/20-1.jpg\",\"products\\/21-2.jpg\"]'),(69,1,15,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/18-1.jpg\",\"products\\/21-2.jpg\",\"products\\/21.jpg\"]'),(70,8,11,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\",\"products\\/9-1.jpg\",\"products\\/17-2.jpg\",\"products\\/20.jpg\"]'),(73,4,6,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4.jpg\",\"products\\/12-1.jpg\",\"products\\/20-2.jpg\",\"products\\/22-2.jpg\"]'),(74,6,7,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/16.jpg\",\"products\\/18-1.jpg\"]'),(78,7,1,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/20.jpg\"]'),(79,9,11,2.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-1.jpg\"]'),(80,7,14,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21-1.jpg\"]'),(81,4,3,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-2.jpg\",\"products\\/21-1.jpg\"]'),(83,3,13,4.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4.jpg\",\"products\\/21-1.jpg\"]'),(85,5,9,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/20-3.jpg\",\"products\\/21-1.jpg\"]'),(86,3,11,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/1.jpg\",\"products\\/3.jpg\",\"products\\/11-2.jpg\"]'),(87,2,8,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\",\"products\\/18-3.jpg\"]'),(88,2,16,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21-1.jpg\",\"products\\/23-1.jpg\"]'),(89,3,4,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17-1.jpg\"]'),(90,10,13,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/13.jpg\"]'),(91,3,3,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/15-1.jpg\",\"products\\/22-3.jpg\",\"products\\/23-2.jpg\"]'),(92,3,2,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\"]'),(96,7,12,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/18.jpg\",\"products\\/19-1.jpg\"]'),(97,2,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21.jpg\"]'),(98,5,6,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\"]'),(99,1,7,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/18-3.jpg\",\"products\\/18.jpg\",\"products\\/22-3.jpg\"]'),(100,7,9,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/22-2.jpg\"]'),(105,7,21,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10-2.jpg\",\"products\\/18-2.jpg\"]'),(106,10,14,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4.jpg\"]'),(107,4,18,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/9-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20-2.jpg\"]'),(108,8,12,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/11-2.jpg\",\"products\\/20.jpg\"]'),(109,7,2,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\"]'),(111,5,17,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/11-1.jpg\"]'),(116,9,23,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\"]'),(119,3,14,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2.jpg\",\"products\\/8-1.jpg\",\"products\\/16.jpg\",\"products\\/17-3.jpg\"]'),(122,3,22,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/15-1.jpg\"]'),(123,3,19,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17-2.jpg\",\"products\\/20-1.jpg\"]'),(125,10,3,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/22.jpg\",\"products\\/23-1.jpg\"]'),(126,8,16,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-1.jpg\",\"products\\/16.jpg\",\"products\\/18-3.jpg\",\"products\\/19-2.jpg\"]'),(127,3,1,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\",\"products\\/12-1.jpg\",\"products\\/18-1.jpg\"]'),(129,2,6,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17-1.jpg\"]'),(131,4,7,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/1.jpg\",\"products\\/2-3.jpg\",\"products\\/4-2.jpg\",\"products\\/12.jpg\"]'),(132,7,13,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\"]'),(135,8,2,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11-3.jpg\",\"products\\/15-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20-1.jpg\"]'),(136,10,22,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\",\"products\\/12.jpg\"]'),(139,10,9,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-2.jpg\",\"products\\/12.jpg\",\"products\\/18-1.jpg\"]'),(142,8,13,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\",\"products\\/17-3.jpg\",\"products\\/19-2.jpg\",\"products\\/20.jpg\"]'),(143,10,20,4.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/14.jpg\"]'),(146,8,14,1.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12.jpg\",\"products\\/15.jpg\",\"products\\/19-1.jpg\",\"products\\/22-3.jpg\"]'),(148,5,22,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12.jpg\",\"products\\/19-1.jpg\",\"products\\/20-1.jpg\"]'),(149,1,19,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-2.jpg\"]'),(151,1,1,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-2.jpg\",\"products\\/20-1.jpg\"]'),(152,2,9,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10.jpg\",\"products\\/16.jpg\"]'),(154,2,14,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11-3.jpg\",\"products\\/18.jpg\"]'),(159,2,20,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/5-2.jpg\",\"products\\/8-3.jpg\",\"products\\/17.jpg\"]'),(161,3,18,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/10-1.jpg\",\"products\\/19-2.jpg\",\"products\\/23-1.jpg\"]'),(164,9,19,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-3.jpg\",\"products\\/8-2.jpg\",\"products\\/12-1.jpg\",\"products\\/18.jpg\"]'),(165,1,2,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\",\"products\\/8-2.jpg\"]'),(168,6,2,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/8-1.jpg\",\"products\\/8.jpg\"]'),(171,2,13,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/7.jpg\",\"products\\/20-2.jpg\"]'),(175,5,5,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\",\"products\\/11.jpg\",\"products\\/22-1.jpg\"]'),(176,6,21,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-3.jpg\",\"products\\/15.jpg\",\"products\\/19-3.jpg\"]'),(178,5,20,4.00,'Good app, good backup service and support. Good documentation.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/9.jpg\",\"products\\/17-3.jpg\"]'),(179,8,18,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/19-2.jpg\",\"products\\/23-1.jpg\"]'),(181,5,7,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/9-1.jpg\",\"products\\/9.jpg\",\"products\\/14.jpg\",\"products\\/20-1.jpg\"]'),(184,8,1,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/23-1.jpg\"]'),(185,9,14,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/7.jpg\"]'),(186,4,23,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\"]'),(189,7,20,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\"]'),(190,4,21,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/13-1.jpg\",\"products\\/13.jpg\",\"products\\/20-3.jpg\"]'),(191,2,19,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\",\"products\\/10.jpg\",\"products\\/18-3.jpg\"]'),(192,1,20,2.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2.jpg\",\"products\\/14.jpg\",\"products\\/20-2.jpg\",\"products\\/21-1.jpg\"]'),(195,9,21,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-1.jpg\",\"products\\/10.jpg\"]'),(198,9,9,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/19.jpg\"]'),(200,9,5,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/7.jpg\",\"products\\/9-2.jpg\",\"products\\/18.jpg\"]'),(202,5,15,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\"]'),(206,10,1,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\"]'),(209,3,15,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/13-1.jpg\",\"products\\/22-1.jpg\"]'),(210,4,4,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-1.jpg\",\"products\\/21-1.jpg\"]'),(213,7,8,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4.jpg\",\"products\\/19-3.jpg\",\"products\\/23-3.jpg\"]'),(214,3,23,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\",\"products\\/10-1.jpg\",\"products\\/11-3.jpg\",\"products\\/23-3.jpg\"]'),(216,1,22,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-3.jpg\",\"products\\/16.jpg\",\"products\\/18.jpg\"]'),(217,2,4,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-3.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\"]'),(218,7,17,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/10-2.jpg\"]'),(220,10,18,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/9.jpg\"]'),(224,9,8,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-1.jpg\",\"products\\/18.jpg\"]'),(227,4,20,2.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(234,7,5,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/11-2.jpg\",\"products\\/17-3.jpg\"]'),(237,3,21,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/7.jpg\",\"products\\/20-3.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\"]'),(241,10,21,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10-1.jpg\"]'),(242,4,15,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/9-2.jpg\"]'),(245,8,19,4.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/13.jpg\",\"products\\/15.jpg\",\"products\\/23-1.jpg\"]'),(248,9,17,1.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21.jpg\"]'),(249,9,10,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/4.jpg\"]'),(250,4,16,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/9-1.jpg\",\"products\\/23-1.jpg\"]'),(251,5,11,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/12-2.jpg\",\"products\\/14.jpg\"]'),(253,1,23,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-1.jpg\",\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/20.jpg\"]'),(254,1,16,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-2.jpg\",\"products\\/5-3.jpg\",\"products\\/10.jpg\"]'),(259,6,23,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\",\"products\\/10-2.jpg\",\"products\\/12-2.jpg\",\"products\\/23.jpg\"]'),(262,8,5,4.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\"]'),(263,10,16,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/8-2.jpg\",\"products\\/17-2.jpg\",\"products\\/18.jpg\"]'),(265,5,14,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\",\"products\\/17-3.jpg\",\"products\\/18.jpg\"]'),(266,1,14,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4.jpg\",\"products\\/8.jpg\",\"products\\/10-1.jpg\"]'),(267,10,23,1.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/1.jpg\",\"products\\/2-3.jpg\",\"products\\/22-1.jpg\"]'),(268,3,12,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-2.jpg\",\"products\\/21-2.jpg\"]'),(269,1,21,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\",\"products\\/11-1.jpg\"]'),(271,9,7,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11-2.jpg\"]'),(275,1,9,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-3.jpg\",\"products\\/20.jpg\",\"products\\/22-3.jpg\"]'),(276,5,21,3.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/10.jpg\",\"products\\/21-1.jpg\"]'),(277,1,12,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21-2.jpg\"]'),(280,7,7,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/18-1.jpg\"]'),(284,6,14,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/1.jpg\",\"products\\/22-2.jpg\"]'),(287,5,1,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-1.jpg\",\"products\\/19-1.jpg\"]'),(294,4,19,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/18-2.jpg\"]'),(295,10,17,1.00,'Good app, good backup service and support. Good documentation.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10-2.jpg\"]'),(298,8,3,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/15-1.jpg\"]'),(299,5,12,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21.jpg\",\"products\\/22-1.jpg\",\"products\\/22.jpg\"]'),(309,6,20,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-3.jpg\",\"products\\/8.jpg\",\"products\\/9-2.jpg\"]'),(311,5,16,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17-2.jpg\",\"products\\/21-1.jpg\"]'),(313,9,1,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/22.jpg\"]'),(318,9,2,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\",\"products\\/5.jpg\",\"products\\/23-1.jpg\"]'),(321,1,17,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/14.jpg\",\"products\\/21.jpg\"]'),(337,4,9,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/5.jpg\",\"products\\/8-3.jpg\",\"products\\/12-3.jpg\"]'),(338,6,10,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11-3.jpg\",\"products\\/22-2.jpg\"]'),(341,5,19,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/5-3.jpg\",\"products\\/8.jpg\",\"products\\/23.jpg\"]'),(342,2,5,3.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/18-3.jpg\",\"products\\/21-1.jpg\"]'),(348,9,18,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/4-3.jpg\",\"products\\/11-2.jpg\",\"products\\/20-1.jpg\"]'),(349,6,8,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\",\"products\\/18-3.jpg\",\"products\\/20.jpg\"]'),(354,3,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-2.jpg\",\"products\\/23.jpg\"]'),(359,6,11,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-2.jpg\",\"products\\/11-2.jpg\",\"products\\/18-1.jpg\"]'),(360,6,5,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/8.jpg\"]'),(369,5,3,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/6.jpg\",\"products\\/10-2.jpg\",\"products\\/20.jpg\"]'),(394,6,15,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/13-1.jpg\",\"products\\/15-1.jpg\",\"products\\/18-1.jpg\",\"products\\/23-2.jpg\"]'),(396,9,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/12.jpg\",\"products\\/19-3.jpg\",\"products\\/21-2.jpg\"]'),(400,9,12,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/12-2.jpg\",\"products\\/19-2.jpg\"]'),(401,6,3,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\",\"products\\/21.jpg\",\"products\\/22-2.jpg\"]'),(418,1,11,2.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-3.jpg\",\"products\\/21-2.jpg\"]'),(433,8,6,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-3.jpg\"]'),(435,2,12,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21.jpg\"]'),(436,3,20,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/19-1.jpg\",\"products\\/22-3.jpg\"]'),(440,5,2,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/19-1.jpg\",\"products\\/22.jpg\"]'),(444,10,11,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-3.jpg\",\"products\\/12-2.jpg\",\"products\\/21-2.jpg\"]'),(447,7,6,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10.jpg\"]'),(456,10,7,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/6.jpg\"]'),(462,2,2,2.00,'Clean & perfect source code','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5.jpg\",\"products\\/11-1.jpg\",\"products\\/15-1.jpg\",\"products\\/22.jpg\"]'),(463,10,8,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/21-1.jpg\"]'),(477,1,10,5.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/11-1.jpg\",\"products\\/13.jpg\"]'),(482,5,13,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/12-2.jpg\",\"products\\/19-2.jpg\"]'),(494,10,6,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-1.jpg\",\"products\\/22-2.jpg\",\"products\\/23-1.jpg\"]'),(495,4,14,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\",\"products\\/17.jpg\",\"products\\/18-1.jpg\",\"products\\/20.jpg\"]'),(496,2,22,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/20.jpg\"]'),(500,1,6,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/11.jpg\",\"products\\/19.jpg\"]'),(502,2,23,5.00,'Best ecommerce CMS online store!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-1.jpg\",\"products\\/11-2.jpg\"]'),(511,8,10,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2-2.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\"]'),(515,8,21,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-2.jpg\",\"products\\/6.jpg\",\"products\\/23-1.jpg\"]'),(536,9,3,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/9.jpg\",\"products\\/11.jpg\",\"products\\/21-2.jpg\"]'),(549,2,18,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/5-3.jpg\",\"products\\/13-1.jpg\"]'),(564,7,15,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/3.jpg\",\"products\\/10-1.jpg\",\"products\\/11.jpg\",\"products\\/19-1.jpg\"]'),(618,2,21,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/13-1.jpg\",\"products\\/16.jpg\"]'),(630,2,10,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-2.jpg\",\"products\\/18-2.jpg\",\"products\\/19-1.jpg\",\"products\\/22-1.jpg\"]'),(636,7,4,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-3.jpg\",\"products\\/18-3.jpg\",\"products\\/20-1.jpg\",\"products\\/22-3.jpg\"]'),(695,5,18,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10.jpg\",\"products\\/14.jpg\",\"products\\/20.jpg\"]'),(723,9,4,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4.jpg\"]'),(763,9,6,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/10.jpg\",\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/20-3.jpg\"]'),(767,2,7,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/20-3.jpg\",\"products\\/21-1.jpg\"]'),(816,4,11,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/8-1.jpg\",\"products\\/12-2.jpg\",\"products\\/19-2.jpg\",\"products\\/20-1.jpg\"]'),(845,7,22,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/2.jpg\",\"products\\/19.jpg\"]'),(848,1,8,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/9.jpg\",\"products\\/13.jpg\",\"products\\/14.jpg\"]'),(881,6,16,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/23-1.jpg\"]'),(886,5,4,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-02-25 19:15:05','2024-02-25 19:15:05','[\"products\\/4-1.jpg\",\"products\\/12-1.jpg\",\"products\\/19-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2024-02-14 03:15:12','2024-02-14 03:15:12','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2024-02-24 03:15:12','2024-02-25 19:15:12','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,3,'2024-02-13 03:15:12','2024-02-13 03:15:12','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,3,'2024-02-24 05:15:12','2024-02-25 19:15:12','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,4,'2024-02-16 07:15:12','2024-02-16 07:15:12','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,4,'2024-02-24 05:15:12','2024-02-25 19:15:12','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,5,'2024-02-19 11:15:12','2024-02-19 11:15:12','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,5,'2024-02-24 05:15:13','2024-02-25 19:15:13','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,5,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\ACL\\Models\\User'),(10,'create_from_order','Shipping was created from order %order_id%',0,5,6,'2024-02-24 05:15:13','2024-02-24 05:15:13','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,6,'2024-02-24 05:15:13','2024-02-25 19:15:13','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,7,'2024-02-21 07:15:13','2024-02-21 07:15:13','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,7,'2024-02-24 07:15:13','2024-02-25 19:15:13','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,7,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\ACL\\Models\\User'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,10,'2024-02-17 07:15:13','2024-02-17 07:15:13','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,10,'2024-02-24 09:15:14','2024-02-25 19:15:14','Botble\\ACL\\Models\\User'),(17,'create_from_order','Shipping was created from order %order_id%',0,8,11,'2024-02-20 03:15:14','2024-02-20 03:15:14','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,11,'2024-02-24 09:15:14','2024-02-25 19:15:14','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,11,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,12,'2024-02-22 23:15:14','2024-02-22 23:15:14','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,12,'2024-02-24 09:15:14','2024-02-25 19:15:14','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,10,14,'2024-02-24 11:15:14','2024-02-24 11:15:14','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,14,'2024-02-24 11:15:14','2024-02-25 19:15:14','Botble\\ACL\\Models\\User'),(24,'create_from_order','Shipping was created from order %order_id%',0,11,16,'2024-02-20 19:15:14','2024-02-20 19:15:14','Botble\\ACL\\Models\\User'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,16,'2024-02-24 13:15:15','2024-02-25 19:15:15','Botble\\ACL\\Models\\User'),(26,'create_from_order','Shipping was created from order %order_id%',0,12,18,'2024-02-15 07:15:15','2024-02-15 07:15:15','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,18,'2024-02-24 15:15:15','2024-02-25 19:15:15','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,13,19,'2024-02-16 11:15:15','2024-02-16 11:15:15','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,19,'2024-02-24 15:15:15','2024-02-25 19:15:15','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,14,20,'2024-02-18 05:15:15','2024-02-18 05:15:15','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,20,'2024-02-24 17:15:15','2024-02-25 19:15:15','Botble\\ACL\\Models\\User'),(32,'create_from_order','Shipping was created from order %order_id%',0,15,21,'2024-02-24 19:15:15','2024-02-24 19:15:15','Botble\\ACL\\Models\\User'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,21,'2024-02-24 19:15:15','2024-02-25 19:15:15','Botble\\ACL\\Models\\User'),(34,'create_from_order','Shipping was created from order %order_id%',0,16,22,'2024-02-15 19:15:15','2024-02-15 19:15:15','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,22,'2024-02-24 19:15:16','2024-02-25 19:15:16','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,17,24,'2024-02-23 23:15:16','2024-02-23 23:15:16','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,24,'2024-02-24 21:15:16','2024-02-25 19:15:16','Botble\\ACL\\Models\\User'),(38,'create_from_order','Shipping was created from order %order_id%',0,18,25,'2024-02-21 15:15:16','2024-02-21 15:15:16','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,25,'2024-02-24 23:15:16','2024-02-25 19:15:16','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,25,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,19,26,'2024-02-20 19:15:16','2024-02-20 19:15:16','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,26,'2024-02-24 23:15:16','2024-02-25 19:15:16','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,20,27,'2024-02-22 01:15:16','2024-02-22 01:15:16','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,27,'2024-02-25 01:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,27,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(46,'create_from_order','Shipping was created from order %order_id%',0,21,28,'2024-02-22 19:15:17','2024-02-22 19:15:17','Botble\\ACL\\Models\\User'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,28,'2024-02-25 01:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,28,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(49,'create_from_order','Shipping was created from order %order_id%',0,22,29,'2024-02-23 19:15:17','2024-02-23 19:15:17','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,29,'2024-02-25 03:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,29,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(52,'create_from_order','Shipping was created from order %order_id%',0,23,30,'2024-02-23 19:15:17','2024-02-23 19:15:17','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,30,'2024-02-25 03:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,24,31,'2024-02-19 03:15:17','2024-02-19 03:15:17','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,31,'2024-02-25 03:15:17','2024-02-25 19:15:17','Botble\\ACL\\Models\\User'),(56,'create_from_order','Shipping was created from order %order_id%',0,25,33,'2024-02-24 01:15:17','2024-02-24 01:15:17','Botble\\ACL\\Models\\User'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,33,'2024-02-25 05:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,33,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(59,'create_from_order','Shipping was created from order %order_id%',0,26,34,'2024-02-21 19:15:18','2024-02-21 19:15:18','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,34,'2024-02-25 07:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,27,35,'2024-02-25 07:15:18','2024-02-25 07:15:18','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,35,'2024-02-25 07:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,27,35,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(64,'create_from_order','Shipping was created from order %order_id%',0,28,36,'2024-02-24 19:15:18','2024-02-24 19:15:18','Botble\\ACL\\Models\\User'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,36,'2024-02-25 07:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,36,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(67,'create_from_order','Shipping was created from order %order_id%',0,29,37,'2024-02-24 23:15:18','2024-02-24 23:15:18','Botble\\ACL\\Models\\User'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,37,'2024-02-25 09:15:18','2024-02-25 19:15:18','Botble\\ACL\\Models\\User'),(69,'create_from_order','Shipping was created from order %order_id%',0,30,38,'2024-02-22 21:15:18','2024-02-22 21:15:18','Botble\\ACL\\Models\\User'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,38,'2024-02-25 09:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(71,'create_from_order','Shipping was created from order %order_id%',0,31,40,'2024-02-23 11:15:19','2024-02-23 11:15:19','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,40,'2024-02-25 11:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(73,'create_from_order','Shipping was created from order %order_id%',0,32,41,'2024-02-23 19:15:19','2024-02-23 19:15:19','Botble\\ACL\\Models\\User'),(74,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,41,'2024-02-25 11:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(75,'create_from_order','Shipping was created from order %order_id%',0,33,42,'2024-02-23 07:15:19','2024-02-23 07:15:19','Botble\\ACL\\Models\\User'),(76,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,42,'2024-02-25 13:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(77,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,42,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(78,'create_from_order','Shipping was created from order %order_id%',0,34,43,'2024-02-25 01:15:19','2024-02-25 01:15:19','Botble\\ACL\\Models\\User'),(79,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,43,'2024-02-25 13:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(80,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,34,43,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\ACL\\Models\\User'),(81,'create_from_order','Shipping was created from order %order_id%',0,35,45,'2024-02-24 03:15:20','2024-02-24 03:15:20','Botble\\ACL\\Models\\User'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,45,'2024-02-25 15:15:20','2024-02-25 19:15:20','Botble\\ACL\\Models\\User'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,45,'2024-02-25 19:15:20','2024-02-25 19:15:20','Botble\\ACL\\Models\\User'),(84,'create_from_order','Shipping was created from order %order_id%',0,36,46,'2024-02-24 03:15:20','2024-02-24 03:15:20','Botble\\ACL\\Models\\User'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,46,'2024-02-25 15:15:20','2024-02-25 19:15:20','Botble\\ACL\\Models\\User'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,46,'2024-02-25 19:15:20','2024-02-25 19:15:20','Botble\\ACL\\Models\\User'),(87,'create_from_order','Shipping was created from order %order_id%',0,37,47,'2024-02-25 05:15:20','2024-02-25 05:15:20','Botble\\ACL\\Models\\User'),(88,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,47,'2024-02-25 17:15:20','2024-02-25 19:15:20','Botble\\ACL\\Models\\User'),(89,'create_from_order','Shipping was created from order %order_id%',0,38,48,'2024-02-25 13:15:20','2024-02-25 13:15:20','Botble\\ACL\\Models\\User'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,48,'2024-02-25 17:15:20','2024-02-25 19:15:20','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,834.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','JJD0011539811','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 02:15:12',NULL,NULL,NULL),(2,3,NULL,2220.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','JJD0048183459','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 02:15:12',NULL,NULL,NULL),(3,4,NULL,1848.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:12','2024-02-25 19:15:12','JJD0081841026','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 02:15:12',NULL,NULL,NULL),(4,5,NULL,1668.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','JJD0023483357','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 02:15:13','2024-02-26 02:15:13',NULL,NULL),(5,6,NULL,2286.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','JJD0067064314','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 02:15:13',NULL,NULL,NULL),(6,7,NULL,3273.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:13','2024-02-25 19:15:13','JJD0095284324','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 02:15:13','2024-02-26 02:15:13',NULL,NULL),(7,10,NULL,2095.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','JJD0074859309','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:14',NULL,NULL,NULL),(8,11,NULL,762.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','JJD0060248858','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 02:15:14','2024-02-26 02:15:14',NULL,NULL),(9,12,NULL,1670.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','JJD0010860179','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 02:15:14',NULL,NULL,NULL),(10,14,NULL,1818.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:14','2024-02-25 19:15:14','JJD0049835737','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 02:15:14',NULL,NULL,NULL),(11,16,NULL,5143.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','JJD0086785325','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 02:15:15',NULL,NULL,NULL),(12,18,NULL,1446.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','JJD0038468298','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 02:15:15',NULL,NULL,NULL),(13,19,NULL,2505.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','JJD0025210322','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 02:15:15',NULL,NULL,NULL),(14,20,NULL,2488.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','JJD0059319134','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 02:15:15',NULL,NULL,NULL),(15,21,NULL,2175.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:15','2024-02-25 19:15:15','JJD0046253415','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 02:15:15',NULL,NULL,NULL),(16,22,NULL,834.00,NULL,NULL,'','approved',543.00,'pending','pending',0.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','JJD009218167','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:16',NULL,NULL,NULL),(17,24,NULL,1818.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','JJD0048698475','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:16',NULL,NULL,NULL),(18,25,NULL,3138.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','JJD0066466685','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-04 02:15:16','2024-02-26 02:15:16',NULL,NULL),(19,26,NULL,835.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:16','2024-02-25 19:15:16','JJD0080658938','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 02:15:16',NULL,NULL,NULL),(20,27,NULL,1480.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','JJD0051305561','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-28 02:15:17','2024-02-26 02:15:17',NULL,NULL),(21,28,NULL,1129.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','JJD0040319316','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 02:15:17','2024-02-26 02:15:17',NULL,NULL),(22,29,NULL,3387.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','JJD0055691293','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:17','2024-02-26 02:15:17',NULL,NULL),(23,30,NULL,1748.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','JJD0044366067','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:17',NULL,NULL,NULL),(24,31,NULL,806.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:17','2024-02-25 19:15:17','JJD0024101654','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 02:15:17',NULL,NULL,NULL),(25,33,NULL,1818.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','JJD0029694252','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-05 02:15:18','2024-02-26 02:15:18',NULL,NULL),(26,34,NULL,740.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','JJD0010325961','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-27 02:15:18',NULL,NULL,NULL),(27,35,NULL,1206.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','JJD0017004665','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 02:15:18','2024-02-26 02:15:18',NULL,NULL),(28,36,NULL,2332.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','JJD0035889897','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 02:15:18','2024-02-26 02:15:18',NULL,NULL),(29,37,NULL,2220.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:18','2024-02-25 19:15:18','JJD0084607066','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-02 02:15:18',NULL,NULL,NULL),(30,38,NULL,3270.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','JJD0069858354','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 02:15:19',NULL,NULL,NULL),(31,40,NULL,740.00,NULL,NULL,'','approved',40.50,'pending','pending',0.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','JJD0048454024','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:19',NULL,NULL,NULL),(32,41,NULL,3901.00,NULL,NULL,'','approved',2952.00,'pending','pending',0.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','JJD0076739188','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-03 02:15:19',NULL,NULL,NULL),(33,42,NULL,603.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','JJD0095833030','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-01 02:15:19','2024-02-26 02:15:19',NULL,NULL),(34,43,NULL,3070.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:19','2024-02-25 19:15:19','JJD0076198598','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 02:15:19','2024-02-26 02:15:19',NULL,NULL),(35,45,NULL,557.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','JJD0081842061','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 02:15:20','2024-02-26 02:15:20',NULL,NULL),(36,46,NULL,1052.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','JJD0094241166','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-06 02:15:20','2024-02-26 02:15:20',NULL,NULL),(37,47,NULL,834.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','JJD0020349554','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-03-07 02:15:20',NULL,NULL,NULL),(38,48,NULL,2505.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-02-25 19:15:20','2024-02-25 19:15:20','JJD009872447','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-29 02:15:20',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-02-25 19:15:08','2024-02-25 19:15:08');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(2,'None',0.000000,2,'published','2024-02-25 19:15:06','2024-02-25 19:15:06'),(3,'Import Tax',15.000000,3,'published','2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(2,'PAYMENT',1,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-02-25 19:15:08','2024-02-25 19:15:08');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','f3af7aadb70fa28882107d01d7a3f8ba',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','c94cfffc7451a1c2f3e0a781c7821869',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','2654af596947e5f60f95551c1c72bc4d',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','6803748bed37bec9b812c64a1e646964',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','e7e3326b17663f641576cfb6b2033c8d',3,'Botble\\Menu\\Models\\Menu'),(6,'en_US','9d542330b00d8f4c06e097b35878dc8c',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',1613,'brands/1.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(2,0,'2','2',1,'image/jpeg',1613,'brands/2.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(3,0,'3','3',1,'image/jpeg',1613,'brands/3.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(4,0,'4','4',1,'image/jpeg',1613,'brands/4.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(5,0,'5','5',1,'image/jpeg',1613,'brands/5.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(6,0,'6','6',1,'image/jpeg',1613,'brands/6.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(7,0,'7','7',1,'image/jpeg',1613,'brands/7.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(8,0,'1','1',2,'image/jpeg',9803,'product-categories/1.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(9,0,'2','2',2,'image/jpeg',9803,'product-categories/2.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(10,0,'3','3',2,'image/jpeg',9803,'product-categories/3.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(11,0,'4','4',2,'image/jpeg',9803,'product-categories/4.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(12,0,'5','5',2,'image/jpeg',9803,'product-categories/5.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(13,0,'6','6',2,'image/jpeg',9803,'product-categories/6.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(14,0,'7','7',2,'image/jpeg',9803,'product-categories/7.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(15,0,'8','8',2,'image/jpeg',9803,'product-categories/8.jpg','[]','2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(16,0,'1','1',3,'image/jpeg',9803,'products/1.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(17,0,'10-1','10-1',3,'image/jpeg',9803,'products/10-1.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(18,0,'10-2','10-2',3,'image/jpeg',9803,'products/10-2.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(19,0,'10','10',3,'image/jpeg',9803,'products/10.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(20,0,'11-1','11-1',3,'image/jpeg',9803,'products/11-1.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(21,0,'11-2','11-2',3,'image/jpeg',9803,'products/11-2.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(22,0,'11-3','11-3',3,'image/jpeg',9803,'products/11-3.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(23,0,'11','11',3,'image/jpeg',9803,'products/11.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(24,0,'12-1','12-1',3,'image/jpeg',9803,'products/12-1.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(25,0,'12-2','12-2',3,'image/jpeg',9803,'products/12-2.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(26,0,'12-3','12-3',3,'image/jpeg',9803,'products/12-3.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(27,0,'12','12',3,'image/jpeg',9803,'products/12.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(28,0,'13-1','13-1',3,'image/jpeg',9803,'products/13-1.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(29,0,'13','13',3,'image/jpeg',9803,'products/13.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(30,0,'14','14',3,'image/jpeg',9803,'products/14.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(31,0,'15-1','15-1',3,'image/jpeg',9803,'products/15-1.jpg','[]','2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(32,0,'15','15',3,'image/jpeg',9803,'products/15.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(33,0,'16','16',3,'image/jpeg',9803,'products/16.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(34,0,'17-1','17-1',3,'image/jpeg',9803,'products/17-1.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(35,0,'17-2','17-2',3,'image/jpeg',9803,'products/17-2.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(36,0,'17-3','17-3',3,'image/jpeg',9803,'products/17-3.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(37,0,'17','17',3,'image/jpeg',9803,'products/17.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(38,0,'18-1','18-1',3,'image/jpeg',9803,'products/18-1.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(39,0,'18-2','18-2',3,'image/jpeg',9803,'products/18-2.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(40,0,'18-3','18-3',3,'image/jpeg',9803,'products/18-3.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(41,0,'18','18',3,'image/jpeg',9803,'products/18.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(42,0,'19-1','19-1',3,'image/jpeg',9803,'products/19-1.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(43,0,'19-2','19-2',3,'image/jpeg',9803,'products/19-2.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(44,0,'19-3','19-3',3,'image/jpeg',9803,'products/19-3.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(45,0,'19','19',3,'image/jpeg',9803,'products/19.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(46,0,'2-1','2-1',3,'image/jpeg',9803,'products/2-1.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(47,0,'2-2','2-2',3,'image/jpeg',9803,'products/2-2.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(48,0,'2-3','2-3',3,'image/jpeg',9803,'products/2-3.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(49,0,'2','2',3,'image/jpeg',9803,'products/2.jpg','[]','2024-02-25 19:14:58','2024-02-25 19:14:58',NULL),(50,0,'20-1','20-1',3,'image/jpeg',9803,'products/20-1.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(51,0,'20-2','20-2',3,'image/jpeg',9803,'products/20-2.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(52,0,'20-3','20-3',3,'image/jpeg',9803,'products/20-3.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(53,0,'20','20',3,'image/jpeg',9803,'products/20.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(54,0,'21-1','21-1',3,'image/jpeg',9803,'products/21-1.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(55,0,'21-2','21-2',3,'image/jpeg',9803,'products/21-2.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(56,0,'21','21',3,'image/jpeg',9803,'products/21.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(57,0,'22-1','22-1',3,'image/jpeg',9803,'products/22-1.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(58,0,'22-2','22-2',3,'image/jpeg',9803,'products/22-2.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(59,0,'22-3','22-3',3,'image/jpeg',9803,'products/22-3.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(60,0,'22','22',3,'image/jpeg',9803,'products/22.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(61,0,'23-1','23-1',3,'image/jpeg',9803,'products/23-1.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(62,0,'23-2','23-2',3,'image/jpeg',9803,'products/23-2.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(63,0,'23-3','23-3',3,'image/jpeg',9803,'products/23-3.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(64,0,'23','23',3,'image/jpeg',9803,'products/23.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(65,0,'3','3',3,'image/jpeg',9803,'products/3.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(66,0,'4-1','4-1',3,'image/jpeg',9803,'products/4-1.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(67,0,'4-2','4-2',3,'image/jpeg',9803,'products/4-2.jpg','[]','2024-02-25 19:14:59','2024-02-25 19:14:59',NULL),(68,0,'4-3','4-3',3,'image/jpeg',9803,'products/4-3.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(69,0,'4','4',3,'image/jpeg',9803,'products/4.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(70,0,'5-1','5-1',3,'image/jpeg',9803,'products/5-1.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(71,0,'5-2','5-2',3,'image/jpeg',9803,'products/5-2.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(72,0,'5-3','5-3',3,'image/jpeg',9803,'products/5-3.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(73,0,'5','5',3,'image/jpeg',9803,'products/5.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(74,0,'6','6',3,'image/jpeg',9803,'products/6.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(75,0,'7','7',3,'image/jpeg',9803,'products/7.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(76,0,'8-1','8-1',3,'image/jpeg',9803,'products/8-1.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(77,0,'8-2','8-2',3,'image/jpeg',9803,'products/8-2.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(78,0,'8-3','8-3',3,'image/jpeg',9803,'products/8-3.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(79,0,'8','8',3,'image/jpeg',9803,'products/8.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(80,0,'9-1','9-1',3,'image/jpeg',9803,'products/9-1.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(81,0,'9-2','9-2',3,'image/jpeg',9803,'products/9-2.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(82,0,'9','9',3,'image/jpeg',9803,'products/9.jpg','[]','2024-02-25 19:15:00','2024-02-25 19:15:00',NULL),(83,0,'1','1',4,'image/jpeg',9803,'customers/1.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(84,0,'10','10',4,'image/jpeg',9803,'customers/10.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(85,0,'2','2',4,'image/jpeg',9803,'customers/2.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(86,0,'3','3',4,'image/jpeg',9803,'customers/3.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(87,0,'4','4',4,'image/jpeg',9803,'customers/4.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(88,0,'5','5',4,'image/jpeg',9803,'customers/5.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(89,0,'6','6',4,'image/jpeg',9803,'customers/6.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(90,0,'7','7',4,'image/jpeg',9803,'customers/7.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(91,0,'8','8',4,'image/jpeg',9803,'customers/8.jpg','[]','2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(92,0,'9','9',4,'image/jpeg',9803,'customers/9.jpg','[]','2024-02-25 19:15:03','2024-02-25 19:15:03',NULL),(93,0,'1','1',5,'image/jpeg',9803,'news/1.jpg','[]','2024-02-25 19:15:06','2024-02-25 19:15:06',NULL),(94,0,'10','10',5,'image/jpeg',9803,'news/10.jpg','[]','2024-02-25 19:15:06','2024-02-25 19:15:06',NULL),(95,0,'11','11',5,'image/jpeg',9803,'news/11.jpg','[]','2024-02-25 19:15:06','2024-02-25 19:15:06',NULL),(96,0,'2','2',5,'image/jpeg',9803,'news/2.jpg','[]','2024-02-25 19:15:06','2024-02-25 19:15:06',NULL),(97,0,'3','3',5,'image/jpeg',9803,'news/3.jpg','[]','2024-02-25 19:15:06','2024-02-25 19:15:06',NULL),(98,0,'4','4',5,'image/jpeg',9803,'news/4.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(99,0,'5','5',5,'image/jpeg',9803,'news/5.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(100,0,'6','6',5,'image/jpeg',9803,'news/6.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(101,0,'7','7',5,'image/jpeg',9803,'news/7.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(102,0,'8','8',5,'image/jpeg',9803,'news/8.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(103,0,'9','9',5,'image/jpeg',9803,'news/9.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(104,0,'1-lg','1-lg',6,'image/jpeg',8828,'sliders/1-lg.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(105,0,'1-md','1-md',6,'image/jpeg',8828,'sliders/1-md.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(106,0,'1-sm','1-sm',6,'image/jpeg',8828,'sliders/1-sm.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(107,0,'2-lg','2-lg',6,'image/jpeg',8828,'sliders/2-lg.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(108,0,'2-md','2-md',6,'image/jpeg',8828,'sliders/2-md.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(109,0,'2-sm','2-sm',6,'image/jpeg',8828,'sliders/2-sm.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(110,0,'3-lg','3-lg',6,'image/jpeg',8828,'sliders/3-lg.jpg','[]','2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(111,0,'3-md','3-md',6,'image/jpeg',8828,'sliders/3-md.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(112,0,'3-sm','3-sm',6,'image/jpeg',8828,'sliders/3-sm.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(113,0,'1','1',7,'image/jpeg',3613,'promotion/1.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(114,0,'2','2',7,'image/jpeg',3613,'promotion/2.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(115,0,'3','3',7,'image/jpeg',5391,'promotion/3.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(116,0,'4','4',7,'image/jpeg',5391,'promotion/4.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(117,0,'5','5',7,'image/jpeg',5391,'promotion/5.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(118,0,'6','6',7,'image/jpeg',5391,'promotion/6.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(119,0,'7','7',7,'image/jpeg',5391,'promotion/7.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(120,0,'8','8',7,'image/jpeg',5391,'promotion/8.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(121,0,'9','9',7,'image/jpeg',5391,'promotion/9.jpg','[]','2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(122,0,'app','app',8,'image/png',8667,'general/app.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(123,0,'coming-soon','coming-soon',8,'image/jpeg',22253,'general/coming-soon.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(124,0,'favicon','favicon',8,'image/png',5060,'general/favicon.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(125,0,'logo-dark','logo-dark',8,'image/png',1484,'general/logo-dark.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(126,0,'logo-light','logo-light',8,'image/png',1572,'general/logo-light.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(127,0,'logo','logo',8,'image/png',1363,'general/logo.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(128,0,'newsletter','newsletter',8,'image/jpeg',9778,'general/newsletter.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(129,0,'payment-method-1','payment-method-1',8,'image/jpeg',1128,'general/payment-method-1.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(130,0,'payment-method-2','payment-method-2',8,'image/jpeg',1184,'general/payment-method-2.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(131,0,'payment-method-3','payment-method-3',8,'image/jpeg',1109,'general/payment-method-3.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(132,0,'payment-method-4','payment-method-4',8,'image/jpeg',944,'general/payment-method-4.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(133,0,'payment-method-5','payment-method-5',8,'image/jpeg',964,'general/payment-method-5.jpg','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(134,0,'1','1',9,'image/png',9133,'stores/1.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(135,0,'10','10',9,'image/png',4263,'stores/10.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(136,0,'11','11',9,'image/png',4420,'stores/11.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(137,0,'12','12',9,'image/png',4908,'stores/12.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(138,0,'13','13',9,'image/png',3441,'stores/13.png','[]','2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(139,0,'14','14',9,'image/png',4209,'stores/14.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(140,0,'15','15',9,'image/png',5113,'stores/15.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(141,0,'16','16',9,'image/png',4563,'stores/16.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(142,0,'17','17',9,'image/png',4896,'stores/17.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(143,0,'2','2',9,'image/png',9008,'stores/2.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(144,0,'3','3',9,'image/png',8006,'stores/3.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(145,0,'4','4',9,'image/png',8728,'stores/4.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(146,0,'5','5',9,'image/png',10689,'stores/5.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(147,0,'6','6',9,'image/png',10989,'stores/6.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(148,0,'7','7',9,'image/png',3730,'stores/7.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(149,0,'8','8',9,'image/png',4030,'stores/8.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL),(150,0,'9','9',9,'image/png',3810,'stores/9.png','[]','2024-02-25 19:15:10','2024-02-25 19:15:10',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-02-25 19:14:56','2024-02-25 19:14:56',NULL),(3,0,'products',NULL,'products',0,'2024-02-25 19:14:57','2024-02-25 19:14:57',NULL),(4,0,'customers',NULL,'customers',0,'2024-02-25 19:15:02','2024-02-25 19:15:02',NULL),(5,0,'news',NULL,'news',0,'2024-02-25 19:15:06','2024-02-25 19:15:06',NULL),(6,0,'sliders',NULL,'sliders',0,'2024-02-25 19:15:07','2024-02-25 19:15:07',NULL),(7,0,'promotion',NULL,'promotion',0,'2024-02-25 19:15:08','2024-02-25 19:15:08',NULL),(8,0,'general',NULL,'general',0,'2024-02-25 19:15:09','2024-02-25 19:15:09',NULL),(9,0,'stores',NULL,'stores',0,'2024-02-25 19:15:09','2024-02-25 19:15:09',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-02-25 19:15:09','2024-02-25 19:15:09');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2024-02-25 19:15:09','2024-02-25 19:15:09');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,'Quick links','quick-links','published','2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,'Company','company','published','2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,'Business','business','published','2024-02-25 19:15:09','2024-02-25 19:15:09');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:56','2024-02-25 19:14:56'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2024-02-25 19:14:57','2024-02-25 19:14:57'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:00','2024-02-25 19:15:00'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:00','2024-02-25 19:15:00'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2024-02-25 19:15:01','2024-02-25 19:15:01'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-25 19:15:08','2024-02-25 19:15:08'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-25 19:15:08','2024-02-25 19:15:08'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-25 19:15:08','2024-02-25 19:15:08'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-25 19:15:08','2024-02-25 19:15:08'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-25 19:15:08','2024-02-25 19:15:08'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-02-25 19:15:08','2024-02-25 19:15:08');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_06_100448_change_random_hash_for_media',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2020_11_18_150916_ads_create_ads_table',2),(35,'2021_12_02_035301_add_ads_translations_table',2),(36,'2023_04_17_062645_add_open_in_new_tab',2),(37,'2023_11_07_023805_add_tablet_mobile_image',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2015_06_18_033822_create_blog_table',4),(41,'2021_02_16_092633_remove_default_value_for_author_type',4),(42,'2021_12_03_030600_create_blog_translations',4),(43,'2022_04_19_113923_add_index_to_table_posts',4),(44,'2023_08_29_074620_make_column_author_id_nullable',4),(45,'2016_06_17_091537_create_contacts_table',5),(46,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(47,'2020_03_05_041139_create_ecommerce_tables',6),(48,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(49,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(50,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(51,'2021_02_18_073505_update_table_ec_reviews',6),(52,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(53,'2021_03_10_025153_change_column_tax_amount',6),(54,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(55,'2021_04_28_074008_ecommerce_create_product_label_table',6),(56,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(57,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(58,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(59,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(60,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(61,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(62,'2021_11_23_071403_correct_languages_for_product_variations',6),(63,'2021_11_28_031808_add_product_tags_translations',6),(64,'2021_12_01_031123_add_featured_image_to_ec_products',6),(65,'2022_01_01_033107_update_table_ec_shipments',6),(66,'2022_02_16_042457_improve_product_attribute_sets',6),(67,'2022_03_22_075758_correct_product_name',6),(68,'2022_04_19_113334_add_index_to_ec_products',6),(69,'2022_04_28_144405_remove_unused_table',6),(70,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(71,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(72,'2022_06_16_095633_add_index_to_some_tables',6),(73,'2022_06_30_035148_create_order_referrals_table',6),(74,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(75,'2022_08_14_032836_create_ec_order_returns_table',6),(76,'2022_08_14_033554_create_ec_order_return_items_table',6),(77,'2022_08_15_040324_add_billing_address',6),(78,'2022_08_30_091114_support_digital_products_table',6),(79,'2022_09_13_095744_create_options_table',6),(80,'2022_09_13_104347_create_option_value_table',6),(81,'2022_10_05_163518_alter_table_ec_order_product',6),(82,'2022_10_12_041517_create_invoices_table',6),(83,'2022_10_12_142226_update_orders_table',6),(84,'2022_10_13_024916_update_table_order_returns',6),(85,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(86,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(87,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(88,'2022_11_19_041643_add_ec_tax_product_table',6),(89,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(90,'2022_12_17_041532_fix_address_in_order_invoice',6),(91,'2022_12_26_070329_create_ec_product_views_table',6),(92,'2023_01_04_033051_fix_product_categories',6),(93,'2023_01_09_050400_add_ec_global_options_translations_table',6),(94,'2023_01_10_093754_add_missing_option_value_id',6),(95,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(96,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(97,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(98,'2023_02_27_095752_remove_duplicate_reviews',6),(99,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(100,'2023_04_21_082427_create_ec_product_categorizables_table',6),(101,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(102,'2023_05_17_025812_fix_invoice_issue',6),(103,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(104,'2023_05_27_144611_fix_exchange_rate_setting',6),(105,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(106,'2023_06_30_042512_create_ec_order_tax_information_table',6),(107,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(108,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(109,'2023_08_15_064505_create_ec_tax_rules_table',6),(110,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(111,'2023_08_22_094114_drop_unique_for_barcode',6),(112,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(113,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(114,'2023_09_19_024955_create_discount_product_categories_table',6),(115,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(116,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(117,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(118,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(119,'2023_12_25_040604_ec_create_review_replies_table',6),(120,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(121,'2024_01_16_070706_fix_translation_tables',6),(122,'2024_01_23_075227_add_proof_file_to_ec_orders_table',6),(123,'2018_07_09_221238_create_faq_table',7),(124,'2021_12_03_082134_create_faq_translations',7),(125,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(126,'2016_10_03_032336_create_languages_table',8),(127,'2023_09_14_022423_add_index_for_language_table',8),(128,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(129,'2021_12_03_075608_create_page_translations',9),(130,'2023_07_06_011444_create_slug_translations_table',9),(131,'2019_11_18_061011_create_country_table',10),(132,'2021_12_03_084118_create_location_translations',10),(133,'2021_12_03_094518_migrate_old_location_data',10),(134,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(135,'2022_01_16_085908_improve_plugin_location',10),(136,'2022_08_04_052122_delete_location_backup_tables',10),(137,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(138,'2023_07_26_041451_add_more_columns_to_location_table',10),(139,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(140,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(141,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(142,'2021_07_06_030002_create_marketplace_table',11),(143,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(144,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(145,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(146,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(147,'2021_12_06_031304_update_table_mp_customer_revenues',11),(148,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(149,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(150,'2022_11_02_071413_add_more_info_for_store',11),(151,'2022_11_02_080444_add_tax_info',11),(152,'2023_02_01_062030_add_store_translations',11),(153,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(154,'2023_02_17_023648_fix_store_prefix',11),(155,'2017_10_24_154832_create_newsletter_table',12),(156,'2017_05_18_080441_create_payment_tables',13),(157,'2021_03_27_144913_add_customer_type_into_table_payments',13),(158,'2021_05_24_034720_make_column_currency_nullable',13),(159,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(160,'2021_10_19_020859_update_metadata_field',13),(161,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(162,'2022_07_07_153354_update_charge_id_in_table_payments',13),(163,'2017_07_11_140018_create_simple_slider_table',14),(164,'2016_10_07_193005_create_translations_table',15),(165,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,10,5,1086.00,0.00,1086.00,0.00,'USD',NULL,'2024-02-24 19:15:20','2024-02-24 19:15:20',0,'add-amount'),(2,4,11,467.00,0.00,467.00,0.00,'USD',NULL,'2024-02-23 19:15:21','2024-02-23 19:15:21',0,'add-amount'),(3,3,25,1809.00,0.00,1809.00,0.00,'USD',NULL,'2024-02-10 15:15:21','2024-02-10 15:15:21',0,'add-amount'),(4,7,27,81.00,0.00,81.00,0.00,'USD',NULL,'2024-02-18 19:15:22','2024-02-18 19:15:22',0,'add-amount'),(5,3,28,1223.00,0.00,1223.00,1809.00,'USD',NULL,'2024-02-06 11:15:23','2024-02-06 11:15:23',0,'add-amount'),(6,3,29,3669.00,0.00,3669.00,3032.00,'USD',NULL,'2024-02-13 07:15:23','2024-02-13 07:15:23',0,'add-amount'),(7,3,33,2919.00,0.00,2919.00,6701.00,'USD',NULL,'2024-02-08 19:15:24','2024-02-08 19:15:24',0,'add-amount'),(8,3,35,40.00,0.00,40.00,9620.00,'USD',NULL,'2024-02-19 19:15:24','2024-02-19 19:15:24',0,'add-amount'),(9,10,36,1772.00,0.00,1772.00,1086.00,'USD',NULL,'2024-02-13 11:15:25','2024-02-13 11:15:25',0,'add-amount'),(10,3,42,20.00,0.00,20.00,9660.00,'USD',NULL,'2024-01-20 23:15:25','2024-01-20 23:15:25',0,'add-amount'),(11,10,43,2377.00,0.00,2377.00,2858.00,'USD',NULL,'2024-02-14 19:15:26','2024-02-14 19:15:26',0,'add-amount'),(12,3,46,2406.00,0.00,2406.00,9680.00,'USD',NULL,'2024-02-06 05:15:26','2024-02-06 05:15:26',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,3,0.00,1458.00,12086.00,'USD','','{\"name\":\"Ms. Celine Braun\",\"number\":\"+15515141612\",\"full_name\":\"Moises Kunze\",\"description\":\"Laney Swaniawski\"}',NULL,0,'processing',NULL,'2024-02-25 19:15:27','2024-02-25 19:15:27',NULL),(2,3,0.00,907.00,10628.00,'USD','','{\"name\":\"Ms. Celine Braun\",\"number\":\"+15515141612\",\"full_name\":\"Moises Kunze\",\"description\":\"Laney Swaniawski\"}',NULL,0,'pending',NULL,'2024-02-25 19:15:27','2024-02-25 19:15:27',NULL),(3,4,0.00,43.00,467.00,'USD','','{\"name\":\"Terrill Hirthe\",\"number\":\"+19474010171\",\"full_name\":\"Miss Brooke Quitzon\",\"description\":\"Vicenta Homenick\"}',NULL,0,'pending',NULL,'2024-02-25 19:15:28','2024-02-25 19:15:28',NULL),(4,4,0.00,78.00,424.00,'USD','','{\"name\":\"Terrill Hirthe\",\"number\":\"+19474010171\",\"full_name\":\"Miss Brooke Quitzon\",\"description\":\"Vicenta Homenick\"}',NULL,0,'processing',NULL,'2024-02-25 19:15:28','2024-02-25 19:15:28',NULL),(5,4,0.00,46.00,346.00,'USD','','{\"name\":\"Terrill Hirthe\",\"number\":\"+19474010171\",\"full_name\":\"Miss Brooke Quitzon\",\"description\":\"Vicenta Homenick\"}',NULL,0,'processing',NULL,'2024-02-25 19:15:29','2024-02-25 19:15:29',NULL),(6,4,0.00,45.00,300.00,'USD','','{\"name\":\"Terrill Hirthe\",\"number\":\"+19474010171\",\"full_name\":\"Miss Brooke Quitzon\",\"description\":\"Vicenta Homenick\"}',NULL,0,'completed',NULL,'2024-02-25 19:15:29','2024-02-25 19:15:29',NULL),(7,7,0.00,11.00,81.00,'USD','','{\"name\":\"Lizzie Kub\",\"number\":\"+17074171571\",\"full_name\":\"Cathryn Renner\",\"description\":\"Juwan Walker\"}',NULL,0,'pending',NULL,'2024-02-25 19:15:30','2024-02-25 19:15:30',NULL),(8,7,0.00,10.00,70.00,'USD','','{\"name\":\"Lizzie Kub\",\"number\":\"+17074171571\",\"full_name\":\"Cathryn Renner\",\"description\":\"Juwan Walker\"}',NULL,0,'pending',NULL,'2024-02-25 19:15:30','2024-02-25 19:15:30',NULL),(9,7,0.00,3.00,60.00,'USD','','{\"name\":\"Lizzie Kub\",\"number\":\"+17074171571\",\"full_name\":\"Cathryn Renner\",\"description\":\"Juwan Walker\"}',NULL,0,'processing',NULL,'2024-02-25 19:15:31','2024-02-25 19:15:31',NULL),(10,10,0.00,1373.00,5235.00,'USD','','{\"name\":\"Keanu Lindgren\",\"number\":\"+19862672859\",\"full_name\":\"Kim Veum\",\"description\":\"Eve Yost\"}',NULL,0,'processing',NULL,'2024-02-25 19:15:31','2024-02-25 19:15:31',NULL),(11,10,0.00,1111.00,3862.00,'USD','','{\"name\":\"Keanu Lindgren\",\"number\":\"+19862672859\",\"full_name\":\"Kim Veum\",\"description\":\"Eve Yost\"}',NULL,0,'completed',NULL,'2024-02-25 19:15:32','2024-02-25 19:15:32',NULL),(12,10,0.00,586.00,2751.00,'USD','','{\"name\":\"Keanu Lindgren\",\"number\":\"+19862672859\",\"full_name\":\"Kim Veum\",\"description\":\"Eve Yost\"}',NULL,0,'completed',NULL,'2024-02-25 19:15:32','2024-02-25 19:15:32',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','zachary28@example.com','+19137670225','6576 Vivian Alley Suite 711','ER','Rhode Island','Farrellborough',2,'stores/1.png','Aut est doloribus voluptate sed.','At et tenetur voluptatibus odio enim dolor sint. Neque inventore harum dolores possimus.','published',NULL,'2024-02-25 19:15:11','2024-02-25 19:15:11',NULL,NULL),(2,'Global Office','schaefer.peter@example.org','+13478883264','440 Mertz Avenue','AO','Maine','Sandyberg',3,'stores/2.png','Qui optio enim quo voluptate et.','Ullam similique alias eligendi eaque voluptas praesentium. Expedita cumque distinctio aut quia.','published',NULL,'2024-02-25 19:15:11','2024-02-25 19:15:11',NULL,NULL),(3,'Young Shop','pbalistreri@example.com','+15745892387','5299 Rodriguez Mill Apt. 086','EC','Indiana','Percyville',4,'stores/3.png','Qui rerum quis eos.','Qui ratione quaerat perferendis nesciunt adipisci ducimus. Corporis enim qui libero laboriosam. Similique sit ut ipsum fugiat repellendus.','published',NULL,'2024-02-25 19:15:11','2024-02-25 19:15:11',NULL,NULL),(4,'Global Store','nhuel@example.com','+13302053736','97855 Schoen Greens','FI','Michigan','South Janashire',7,'stores/4.png','Eos soluta nemo soluta odit.','Sapiente occaecati qui est laborum sit fugit aut. Et nostrum temporibus nulla quae qui.','published',NULL,'2024-02-25 19:15:11','2024-02-25 19:15:11',NULL,NULL),(5,'Robert’s Store','keenan99@example.org','+12106886522','2656 Goodwin Key Suite 579','PR','Nevada','North Sandy',10,'stores/5.png','Vel amet dolorem sapiente nostrum qui cupiditate.','Vel et blanditiis voluptas libero quo. Autem autem ea eligendi nobis commodi rerum. Illum recusandae quis suscipit ut.','published',NULL,'2024-02-25 19:15:11','2024-02-25 19:15:11',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$w56nIA518MSSevJyGEN64uMlctBtbVEi43tXZ0HEUk2BOUR7GqyYa','{\"name\":\"Marcel Buckridge\",\"number\":\"+18136359808\",\"full_name\":\"Corbin Schuster\",\"description\":\"Prof. Liana Bailey III\"}','2024-02-25 19:15:10','2024-02-25 19:15:10','bank_transfer',NULL),(2,3,9721.00,0.00,12086.00,'$2y$12$ilU3iMGKvQHnKbjAfEA82uoHwHO0ow3P4UMNThwkGMr3D12lgbwny','{\"name\":\"Ms. Celine Braun\",\"number\":\"+15515141612\",\"full_name\":\"Moises Kunze\",\"description\":\"Laney Swaniawski\"}','2024-02-25 19:15:11','2024-02-25 19:15:28','bank_transfer',NULL),(3,4,255.00,0.00,467.00,'$2y$12$70hDAKvWcfBTWxtc8I10yeggsQDxIS5r6S7C641Y8htP1mc1nwbea','{\"name\":\"Terrill Hirthe\",\"number\":\"+19474010171\",\"full_name\":\"Miss Brooke Quitzon\",\"description\":\"Vicenta Homenick\"}','2024-02-25 19:15:11','2024-02-25 19:15:30','bank_transfer',NULL),(4,7,57.00,0.00,81.00,'$2y$12$8ktHcTlaRVawkK10hcD8Be3D2fGbLldTwBjN2LXjY.ZLqMbVVvH96','{\"name\":\"Lizzie Kub\",\"number\":\"+17074171571\",\"full_name\":\"Cathryn Renner\",\"description\":\"Juwan Walker\"}','2024-02-25 19:15:11','2024-02-25 19:15:31','bank_transfer',NULL),(5,10,2165.00,0.00,5235.00,'$2y$12$vwSLzo0XFYkgotakwAj4yOf5ZCI2sJiJiIyjXwaTMQK6zUUnR6ywm','{\"name\":\"Keanu Lindgren\",\"number\":\"+19862672859\",\"full_name\":\"Kim Veum\",\"description\":\"Eve Yost\"}','2024-02-25 19:15:11','2024-02-25 19:15:33','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(2,'About us','<p>Bill, I fancy--Who\'s to go on till you come to the garden at once; but, alas for poor Alice! when she first saw the White Rabbit, jumping up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t write it, and behind them a railway station.) However, she did not like to be a footman in livery, with a smile. There was exactly three inches high). \'But I\'m not particular as to prevent its undoing itself,) she carried it out to sea as you can--\' \'Swim after them!\' screamed the.</p><p>She had quite a commotion in the back. At last the Caterpillar angrily, rearing itself upright as it was too small, but at the proposal. \'Then the words did not look at them--\'I wish they\'d get the trial one way up as the doubled-up soldiers were silent, and looked at it gloomily: then he dipped it into one of the table, but there was nothing on it (as she had felt quite unhappy at the mouth with strings: into this they slipped the guinea-pig, head first, and then, \'we went to school every.</p><p>Said his father; \'don\'t give yourself airs! Do you think you could draw treacle out of the gloves, and she drew herself up closer to Alice\'s side as she ran. \'How surprised he\'ll be when he sneezes: He only does it to the end: then stop.\' These were the verses on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old conger-eel, that used to say.\' \'So he did, so he did,\' said the Mock Turtle went on, without attending to her; \'but those.</p><p>No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here with me! There are no mice in the same height as herself; and when she caught it, and talking over its head. \'Very uncomfortable for the hot day made her look up in spite of all her fancy, that: they never executes nobody, you know. Come on!\' So they sat down, and the Dormouse go on with the game,\' the Queen jumped up and walking off to the rose-tree, she went back to the door, and tried to say a word, but slowly followed her.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(3,'Terms Of Use','<p>King. \'When did you manage on the bank, and of having the sentence first!\' \'Hold your tongue!\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King added in an offended tone, and everybody else. \'Leave off that!\' screamed the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, raising its voice to its feet, ran round the hall, but they began solemnly dancing round and.</p><p>Cat\'s head began fading away the moment she quite forgot you didn\'t sign it,\' said Alice. \'Off with his tea spoon at the sudden change, but very glad to do THAT in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be so stingy about it, you know.\' It was, no doubt: only Alice did not get dry again: they had a large dish of tarts upon it: they looked so grave and anxious.) Alice could see, as she said to herself, \'I don\'t see,\' said the Hatter. \'I.</p><p>Antipathies, I think--\' (for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was up to her feet in a minute. Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice sadly. \'Hand it over here,\' said the others. \'Are their heads off?\' shouted the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to live. \'I\'ve seen a cat without a moment\'s.</p><p>Alice; \'that\'s not at all like the look of things at all, at all!\' \'Do as I was thinking I should understand that better,\' Alice said with some surprise that the cause of this was of very little way forwards each time and a sad tale!\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the sage, as he came, \'Oh! the Duchess, \'as pigs have to fly; and the baby with some surprise that the Mouse to Alice again. \'No, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(4,'Terms &amp; Conditions','<p>She was walking hand in hand, in couples: they were mine before. If I or she should meet the real Mary Ann, what ARE you talking to?\' said one of these cakes,\' she thought, \'and hand round the hall, but they all stopped and looked at them with the day and night! You see the earth takes twenty-four hours to turn into a small passage, not much surprised at her own courage. \'It\'s no business there, at any rate I\'ll never go THERE again!\' said Alice to herself, and nibbled a little of her little.</p><p>Alice: \'allow me to sell you a couple?\' \'You are old,\' said the Caterpillar. \'Well, perhaps you were never even spoke to Time!\' \'Perhaps not,\' Alice replied eagerly, for she felt certain it must be Mabel after all, and I shall have to fly; and the pattern on their slates, and then turned to the other, and growing sometimes taller and sometimes shorter, until she made it out loud. \'Thinking again?\' the Duchess was sitting next to no toys to play croquet.\' Then they both sat silent for a minute.</p><p>King said gravely, \'and go on with the edge with each hand. \'And now which is which?\' she said this, she looked up and said, without opening its eyes, \'Of course, of course; just what I eat\" is the same solemn tone, only changing the order of the garden: the roses growing on it but tea. \'I don\'t think it\'s at all know whether it was indeed: she was quite pale (with passion, Alice thought), and it sat down a jar from one minute to another! However, I\'ve got to see anything; then she heard one.</p><p>Alice. \'Did you say it.\' \'That\'s nothing to do.\" Said the mouse to the conclusion that it was labelled \'ORANGE MARMALADE\', but to get rather sleepy, and went back for a moment that it was certainly English. \'I don\'t know where Dinn may be,\' said the Cat. \'Do you play croquet?\' The soldiers were always getting up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the distance, and she tried to look at a reasonable pace,\' said the Caterpillar. \'Is that all?\' said the Dormouse, and.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(5,'Refund Policy','<p>THAT in a tone of great dismay, and began to get to,\' said the White Rabbit hurried by--the frightened Mouse splashed his way through the wood. \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think it was,\' he said. \'Fifteenth,\' said the Pigeon had finished. \'As if it please your Majesty,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest of my own. I\'m a hatter.\' Here the other side. The further off from England the nearer is to France-- Then turn not pale.</p><p>And the Gryphon in an encouraging opening for a little startled when she turned the corner, but the Dormouse turned out, and, by the soldiers, who of course was, how to set them free, Exactly as we were. My notion was that it might happen any minute, \'and then,\' thought Alice, \'it\'ll never do to hold it. As soon as look at them--\'I wish they\'d get the trial done,\' she thought, \'it\'s sure to kill it in less than a rat-hole: she knelt down and looked at Alice, as the Lory positively refused to.</p><p>Then came a little before she found a little faster?\" said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen was in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'or perhaps they won\'t walk the way the people that walk with their heads down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the glass table and the turtles.</p><p>Five! Don\'t go splashing paint over me like a stalk out of sight, they were filled with tears again as quickly as she spoke. Alice did not wish to offend the Dormouse said--\' the Hatter began, in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea,\' the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s over!\' thought Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the Hatter, and, just as she picked up a little of it?\' said the.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(10,'Affiliate','<p>King. \'Shan\'t,\' said the Mock Turtle went on in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this Alice would not join the dance? \"You can really have no notion how long ago anything had happened.) So she called softly after it, and kept doubling itself up very sulkily and crossed over to the door, she ran off at once: one old Magpie began wrapping itself up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Footman, and began to get in?\' asked Alice again, for.</p><p>Alice; \'but a grin without a cat! It\'s the most curious thing I ever was at in all my limbs very supple By the use of this was not even room for this, and after a minute or two, looking for them, and all would change (she knew) to the end of his great wig.\' The judge, by the time he had to do with this creature when I get it home?\' when it saw mine coming!\' \'How do you call it purring, not growling,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon replied rather impatiently: \'any.</p><p>I have done just as I\'d taken the highest tree in front of them, and the other guinea-pig cheered, and was looking about for it, you know--\' (pointing with his nose Trims his belt and his friends shared their never-ending meal, and the Hatter said, tossing his head contemptuously. \'I dare say there may be different,\' said Alice; \'that\'s not at all fairly,\' Alice began, in rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have been changed in the lap of her voice.</p><p>Then it got down off the fire, and at last turned sulky, and would only say, \'I am older than I am in the other. In the very middle of the sort!\' said Alice. The King and Queen of Hearts, she made her look up and down looking for it, he was speaking, so that by the way, and then she walked off, leaving Alice alone with the words don\'t FIT you,\' said the Caterpillar. \'Well, I shan\'t go, at any rate, there\'s no use going back to the game. CHAPTER IX. The Mock Turtle is.\' \'It\'s the first.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(11,'Career','<p>Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a dispute going on rather better now,\' she said, as politely as she could. \'The game\'s going on shrinking rapidly: she soon made out the words: \'Where\'s the other side of the song, she kept fanning herself all the other side. The further off from England the nearer is to do it?\' \'In my youth,\' Father William replied to his ear. Alice considered a little now and then; such as, \'Sure, I don\'t believe you do lessons?\' said Alice, and she.</p><p>The baby grunted again, and the others looked round also, and all the first to speak. \'What size do you know about it, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of one,\' said Alice, and tried to look over their heads. She felt that it might belong to one of the thing at all. \'But perhaps it was quite a commotion in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess asked, with.</p><p>The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare. \'He denies it,\' said Alice loudly. \'The idea of having nothing to do.\" Said the mouse to the cur, \"Such a trial, dear Sir, With no jury or judge, would be a LITTLE larger, sir, if you hold it too long; and that he had never seen such a tiny little thing!\' It did so indeed, and much sooner than she had to stop and untwist it. After a.</p><p>Said his father; \'don\'t give yourself airs! Do you think, at your age, it is I hate cats and dogs.\' It was so small as this is May it won\'t be raving mad--at least not so mad as it went. So she swallowed one of the sea.\' \'I couldn\'t help it,\' said the Gryphon, \'she wants for to know when the Rabbit just under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Pigeon; \'but if you\'ve seen them so shiny?\' Alice looked at the end of the.</p>',1,NULL,'default',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"2025-02-26 02:15:08\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2024-02-25 19:15:08','2024-02-25 19:15:08');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'F2ARVU2ZC2','paypal',NULL,543.00,1,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'9TXIMIOMMK','bank_transfer',NULL,2706.00,2,'pending','confirm',6,NULL,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'IZDXFKGIX9','bank_transfer',NULL,121.50,3,'pending','confirm',6,NULL,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'4WVF8QHVNG','sslcommerz',NULL,1773.00,4,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'BDZ85GS459','paypal',NULL,1086.00,5,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:12','2024-02-25 19:15:12','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'VG8UE1WNLL','sslcommerz',NULL,1401.00,6,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'FS4UBKULVJ','bank_transfer',NULL,4597.00,7,'pending','confirm',5,NULL,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'SZLGVOWOVF','paypal',NULL,592.00,8,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'VUKRIH9VCK','razorpay',NULL,902.00,9,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'WMQK97BSTH','mollie',NULL,1248.00,10,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:13','2024-02-25 19:15:13','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'XHXIQGEKR0','mollie',NULL,467.00,11,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'QLYG5NIFMJ','paystack',NULL,1284.00,12,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'4ZDHOAUBB2','stripe',NULL,592.00,13,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'E3YDDCVNY0','stripe',NULL,2919.00,14,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'BRWX9XIAS9','razorpay',NULL,1184.00,15,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'90Z35ELYZI','mollie',NULL,6714.00,16,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:14','2024-02-25 19:15:14','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'XCM1NTRAQR','cod',NULL,1776.00,17,'pending','confirm',6,NULL,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'F931UEIOMG','bank_transfer',NULL,1552.00,18,'pending','confirm',6,NULL,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'XTLPAAMRXO','razorpay',NULL,1926.00,19,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'XQZHZJ3NKJ','bank_transfer',NULL,914.50,20,'pending','confirm',6,NULL,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'HHCZDIFU6S','paypal',NULL,2550.00,21,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:15','2024-02-25 19:15:15','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'CKNXFO1NUT','cod',NULL,543.00,22,'pending','confirm',8,NULL,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'0TFG8PLBBL','paypal',NULL,590.00,23,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'A1PIVNB5OA','mollie',NULL,2919.00,24,'completed','confirm',1,NULL,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'YSHSYJ2UFY','sslcommerz',NULL,1809.00,25,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'YAYTC19AFP','bank_transfer',NULL,642.00,26,'pending','confirm',6,NULL,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'SLL3MQKV3G','paypal',NULL,81.00,27,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:16','2024-02-25 19:15:16','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'GC2OWEPNDV','sslcommerz',NULL,1223.00,28,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'6BHBJNTCD2','paypal',NULL,3669.00,29,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'RDDXQC6VHF','paypal',NULL,874.00,30,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'V7A6WGTD7W','paypal',NULL,588.00,31,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'PMOAOOPZ0T','razorpay',NULL,1776.00,32,'completed','confirm',9,NULL,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'5NGRSSVB1H','paystack',NULL,2919.00,33,'completed','confirm',9,NULL,NULL,'2024-02-25 19:15:17','2024-02-25 19:15:17','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'7JLSD0HIVQ','mollie',NULL,40.50,34,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'AL3I4R17RP','mollie',NULL,40.00,35,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'W2DLVHBFPP','sslcommerz',NULL,1772.00,36,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'ZS6ZJUS1VI','paystack',NULL,121.50,37,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'I9MUD03HM6','sslcommerz',NULL,3644.00,38,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:18','2024-02-25 19:15:18','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'PU4RBRMM1S','paystack',NULL,1180.00,39,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'CPMA4PDVZY','cod',NULL,40.50,40,'pending','confirm',8,NULL,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'FUTZJWHIAU','cod',NULL,2952.00,41,'pending','confirm',8,NULL,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'HW1YTJ4E7Y','paystack',NULL,20.00,42,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'CWMBM3FVP3','mollie',NULL,2377.00,43,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'CIPEFTZGN9','paypal',NULL,1180.00,44,'completed','confirm',6,NULL,NULL,'2024-02-25 19:15:19','2024-02-25 19:15:19','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'IPQEXZEQJE','bank_transfer',NULL,1144.00,45,'pending','confirm',8,NULL,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'FK7XLRLCFV','paystack',NULL,2406.00,46,'completed','confirm',8,NULL,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'MXMFI6WYRO','stripe',NULL,543.00,47,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'AE0IK1EMI3','sslcommerz',NULL,1926.00,48,'completed','confirm',5,NULL,NULL,'2024-02-25 19:15:20','2024-02-25 19:15:20','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(3,1),(2,2),(4,2),(1,3),(4,3),(1,4),(3,4),(2,5),(3,5),(2,6),(3,6),(1,7),(3,7),(2,8),(4,8),(1,9),(4,9),(1,10),(4,10),(2,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1430,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2254,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1219,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1765,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/5.jpg',747,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1726,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1975,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/8.jpg',571,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1215,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1931,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',2,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2181,NULL,'2024-02-25 19:15:07','2024-02-25 19:15:07');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-02-25 19:15:06','2024-02-25 19:15:06');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-02-25 19:15:09'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-02-25 19:15:09'),(8,'language_hide_default','1',NULL,'2024-02-25 19:15:09'),(9,'language_switcher_display','dropdown',NULL,'2024-02-25 19:15:09'),(10,'language_display','all',NULL,'2024-02-25 19:15:09'),(11,'language_hide_languages','[]',NULL,'2024-02-25 19:15:09'),(12,'simple_slider_using_assets','0',NULL,NULL),(13,'media_random_hash','5f4fe2a58a92eb62ba04e741bbce180d',NULL,'2024-02-25 19:15:09'),(14,'payment_cod_status','1',NULL,'2024-02-25 19:15:09'),(15,'payment_bank_transfer_status','1',NULL,'2024-02-25 19:15:09'),(16,'theme','martfury',NULL,'2024-02-25 19:15:09'),(17,'show_admin_bar','1',NULL,'2024-02-25 19:15:09'),(18,'admin_favicon','general/favicon.png',NULL,'2024-02-25 19:15:09'),(19,'admin_logo','general/logo-light.png',NULL,'2024-02-25 19:15:09'),(20,'permalink-botble-blog-models-post','blog',NULL,'2024-02-25 19:15:09'),(21,'permalink-botble-blog-models-category','blog',NULL,'2024-02-25 19:15:09'),(22,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-02-25 19:15:09'),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-02-25 19:15:09'),(24,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-02-25 19:15:09'),(25,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-02-25 19:15:09'),(26,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-02-25 19:15:09'),(27,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-02-25 19:15:09'),(28,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-02-25 19:15:09'),(29,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-02-25 19:15:09'),(30,'ecommerce_product_sku_format','MF-2443-[%S]',NULL,'2024-02-25 19:15:09'),(31,'ecommerce_store_name','Martfury',NULL,NULL),(32,'ecommerce_store_phone','1800979769',NULL,NULL),(33,'ecommerce_store_address','502 New Street',NULL,NULL),(34,'ecommerce_store_state','Brighton VIC',NULL,NULL),(35,'ecommerce_store_city','Brighton VIC',NULL,NULL),(36,'ecommerce_store_country','AU',NULL,NULL),(37,'theme-martfury-site_title','MartFury - Laravel Ecommerce system',NULL,NULL),(38,'theme-martfury-seo_description','MartFury is a clean & modern Laravel Ecommerce System for multipurpose online stores. With design clean and trendy, MartFury will make your online store look more impressive and attractive to viewers.',NULL,NULL),(39,'theme-martfury-copyright','© 2024 MartFury. All Rights Reserved.',NULL,NULL),(40,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(41,'theme-martfury-logo','general/logo.png',NULL,NULL),(42,'theme-martfury-welcome_message','Welcome to MartFury Online Shopping Store!',NULL,NULL),(43,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(44,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(45,'theme-martfury-email','contact@martfury.co',NULL,NULL),(46,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(47,'theme-martfury-homepage_id','1',NULL,NULL),(48,'theme-martfury-blog_page_id','6',NULL,NULL),(49,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(50,'theme-martfury-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(51,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(52,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(53,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(54,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(55,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(56,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(57,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(58,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(59,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(60,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(61,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(62,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(63,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(64,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(65,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, South bank, Melbourne 10560, Australia',NULL,NULL),(66,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(67,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(68,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(69,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(70,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(71,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(72,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(73,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(74,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(75,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(76,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(77,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(78,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(79,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(80,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(81,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(82,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(83,'theme-martfury-primary_font','Work Sans',NULL,NULL),(84,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(85,'theme-martfury-social-name-1','Facebook',NULL,NULL),(86,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(87,'theme-martfury-social-icon-1','fab fa-facebook',NULL,NULL),(88,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(89,'theme-martfury-social-name-2','Twitter',NULL,NULL),(90,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(91,'theme-martfury-social-icon-2','fab fa-twitter',NULL,NULL),(92,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(93,'theme-martfury-social-name-3','Instagram',NULL,NULL),(94,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(95,'theme-martfury-social-icon-3','fab fa-instagram',NULL,NULL),(96,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(97,'theme-martfury-social-name-4','Youtube',NULL,NULL),(98,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(99,'theme-martfury-social-icon-4','fab fa-youtube',NULL,NULL),(100,'theme-martfury-social-color-4','#FF0000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2024-02-25 19:15:08','2024-02-25 19:15:08'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2024-02-25 19:15:08','2024-02-25 19:15:08'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2024-02-25 19:15:08','2024-02-25 19:15:08');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-02-25 19:15:08','2024-02-25 19:15:08');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-02-25 19:14:56','2024-02-25 19:14:56'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:56','2024-02-25 19:14:56'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-02-25 19:14:57','2024-02-25 19:14:57'),(45,'dual-camera-20mp-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:00','2024-02-25 19:15:33'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:00','2024-02-25 19:15:00'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(49,'smart-watch-external-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:33'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(53,'samsung-smart-phone-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:33'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(57,'sound-intone-i65-earphone-white-version-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:33'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(61,'samsung-gear-vr-virtual-reality-headset-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:33'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(65,'mvmth-classical-leather-watch-in-black-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:33'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:01','2024-02-25 19:15:01'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-25 19:15:06','2024-02-25 19:15:06'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-25 19:15:06','2024-02-25 19:15:06'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-25 19:15:06','2024-02-25 19:15:06'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-25 19:15:06','2024-02-25 19:15:06'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-25 19:15:06','2024-02-25 19:15:06'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-02-25 19:15:06','2024-02-25 19:15:06'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-02-25 19:15:07','2024-02-25 19:15:07'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-02-25 19:15:07','2024-02-25 19:15:07'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-02-25 19:15:07','2024-02-25 19:15:07'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-02-25 19:15:07','2024-02-25 19:15:07'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-02-25 19:15:07','2024-02-25 19:15:07'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-02-25 19:15:07','2024-02-25 19:15:08'),(94,'home',1,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(104,'career',11,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-02-25 19:15:08','2024-02-25 19:15:08'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-02-25 19:15:11','2024-02-25 19:15:11'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-02-25 19:15:11','2024-02-25 19:15:11'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-02-25 19:15:11','2024-02-25 19:15:11'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-02-25 19:15:11','2024-02-25 19:15:11'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-02-25 19:15:11','2024-02-25 19:15:11'),(111,'dual-camera-20mp-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(112,'smart-watches',25,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(113,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(114,'smart-watches',27,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(115,'smart-watches',28,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(116,'beat-headphone',29,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(117,'beat-headphone',30,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(118,'beat-headphone',31,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(119,'red-black-headphone',32,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(120,'smart-watch-external-digital',33,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(121,'smart-watch-external-digital',34,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(122,'smart-watch-external-digital',35,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(123,'nikon-hd-camera',36,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(124,'nikon-hd-camera',37,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(125,'audio-equipment',38,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(126,'audio-equipment',39,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(127,'smart-televisions',40,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(128,'smart-televisions',41,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(129,'samsung-smart-phone-digital',42,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(130,'samsung-smart-phone-digital',43,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(131,'samsung-smart-phone-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(132,'samsung-smart-phone-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(133,'herschel-leather-duffle-bag-in-brown-color',46,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(134,'xbox-one-wireless-controller-black-color',47,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(135,'xbox-one-wireless-controller-black-color',48,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(136,'epsion-plaster-printer',49,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(137,'sound-intone-i65-earphone-white-version-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(138,'sound-intone-i65-earphone-white-version-digital',51,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(139,'sound-intone-i65-earphone-white-version-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(140,'bo-play-mini-bluetooth-speaker',53,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(141,'bo-play-mini-bluetooth-speaker',54,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(142,'apple-macbook-air-retina-133-inch-laptop',55,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(143,'apple-macbook-air-retina-133-inch-laptop',56,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(144,'apple-macbook-air-retina-12-inch-laptop',57,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(145,'apple-macbook-air-retina-12-inch-laptop',58,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(146,'apple-macbook-air-retina-12-inch-laptop',59,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(147,'apple-macbook-air-retina-12-inch-laptop',60,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(148,'samsung-gear-vr-virtual-reality-headset-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(149,'aveeno-moisturizing-body-shower-450ml',62,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(150,'aveeno-moisturizing-body-shower-450ml',63,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(151,'aveeno-moisturizing-body-shower-450ml',64,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(152,'aveeno-moisturizing-body-shower-450ml',65,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(153,'nyx-beauty-couton-pallete-makeup-12',66,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(154,'nyx-beauty-couton-pallete-makeup-12',67,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(155,'nyx-beauty-couton-pallete-makeup-12',68,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(156,'nyx-beauty-couton-pallete-makeup-12',69,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(157,'nyx-beauty-couton-pallete-makeup-12',70,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(158,'mvmth-classical-leather-watch-in-black-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(159,'baxter-care-hair-kit-for-bearded-mens',72,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(160,'baxter-care-hair-kit-for-bearded-mens',73,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(161,'baxter-care-hair-kit-for-bearded-mens',74,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(162,'ciate-palemore-lipstick-bold-red-color',75,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(163,'ciate-palemore-lipstick-bold-red-color',76,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(164,'ciate-palemore-lipstick-bold-red-color',77,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33'),(165,'ciate-palemore-lipstick-bold-red-color',78,'Botble\\Ecommerce\\Models\\Product','products','2024-02-25 19:15:33','2024-02-25 19:15:33');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2024-02-25 19:15:07','2024-02-25 19:15:07'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2024-02-25 19:15:07','2024-02-25 19:15:07'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2024-02-25 19:15:07','2024-02-25 19:15:07'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2024-02-25 19:15:07','2024-02-25 19:15:07'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2024-02-25 19:15:07','2024-02-25 19:15:07');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jason25@schneider.com',NULL,'$2y$12$kgcr3hwFCPXmfcej8mLRg.VISaWphshr2Mh/Ri/Bi8225Aapcdtuu',NULL,'2024-02-25 19:15:06','2024-02-25 19:15:06','Abagail','Schamberger','botble',NULL,1,1,NULL,NULL),(2,'ocorkery@nikolaus.biz',NULL,'$2y$12$qIH73jf8GFxx2vTBo2uuW.RpAezn6Cxl/VCpleqxLyeh.XFoctbAC',NULL,'2024-02-25 19:15:06','2024-02-25 19:15:06','Camilla','Paucek','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2024-02-25 19:15:09','2024-02-25 19:15:09'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2024-02-25 19:15:09','2024-02-25 19:15:09');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-26  9:15:34
