-- MySQL dump 10.13  Distrib 5.7.27, for osx10.14 (x86_64)
--
-- Host: localhost    Database: glints_test
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (11,'2018_04_30_000000_create_roles_table',1),(12,'2018_04_30_000010_create_users_table',1),(13,'2018_04_30_000011_create_password_resets_table',1),(14,'2018_04_30_000020_create_user_roles_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_11_01_121449_create_transaction_controllers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('17426e36-5994-40a8-b5b7-1b6863d3d4ae','debitis','Autem veniam consectetur et rerum eius ducimus esse.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('2061c15d-27cd-4c9f-8e9a-8e8683d99c21','suscipit','Ea quo dignissimos sequi quasi architecto.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('2586d656-1d22-4fc2-b579-807fdfae4212','non','Quae et perferendis adipisci quidem praesentium eveniet.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('2f2fc67f-d218-4543-8e7e-a6a8bda4793d','voluptatem','Nihil aut velit est ut culpa fugit beatae nihil.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('37c4d186-2079-4863-ae79-f67e0a7a6cca','voluptas','Sed repellendus est porro praesentium.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('42ae3eb4-5666-4398-880c-afddff844975','fuga','Praesentium est placeat perspiciatis porro ea.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('472ed4df-7015-4852-a4c0-d7e4fbbcf72b','at','Enim omnis aliquam voluptas qui tempore.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('4b6641d2-6f10-41a2-a50b-63a038f7f0e2','ut','Dolorem aut rerum corporis ipsum.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('5b18561c-ae28-4673-b4fa-19524510b0b1','in','Atque fugiat et perferendis vel.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('60a6ea39-e630-46f6-bcf4-98500bd7f929','aperiam','Eum nobis fugit hic ab.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('62d40ee3-7695-40d7-a70d-d6c66d51b010','magnam','Laboriosam unde similique cupiditate natus ullam.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('705d341c-8cce-4fc2-9dd1-993244c6617c','eius','Expedita qui et vero voluptatem.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('74566de3-bd0b-497b-8498-2dec996bfe05','nihil','Omnis rem libero quia sit nemo.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('7cc4ef23-e375-49ec-94ec-567bb26da1f2','quia','Voluptatem consequatur ipsa exercitationem quo.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('8c9d8ecd-21a7-42b6-91e2-9f54072cdee2','regular','Regular Users','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('959ada46-5f08-4288-b7c0-2f9826f2f7d6','ab','Id ipsam ea enim totam harum quod sit quia.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('a40dc94c-2661-4349-a892-2fcb3e727fe0','ratione','Voluptas quos sit esse voluptas in beatae nulla.','2019-11-01 20:38:09','2019-11-01 20:38:09',NULL),('b9750e16-2dbe-4d7f-b385-c508026cdc0d','admin','Administrator Users','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('d836fbba-7f66-4c4f-84b5-18d61ff1a083','quidem','Quia numquam quod aut.','2019-11-01 20:38:10','2019-11-01 20:38:10',NULL),('d8da2bc2-c5d2-44de-97c6-80ee85d8fcfb','natus','Quisquam et earum tempore qui dolores nulla perferendis ea.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('dfd51655-ae15-4b59-8fcf-8e4dae5be8c0','ea','Eveniet eos aliquam qui fugiat qui veritatis et.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL),('f5622840-c45e-44f6-bc72-792f75805aa9','adipisci','Qui est deleniti provident quaerat voluptas inventore sed.','2019-11-01 20:36:49','2019-11-01 20:36:49',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_controllers`
--

DROP TABLE IF EXISTS `transaction_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_controllers` (
  `_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_item` int(11) NOT NULL,
  `supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `transaction_controllers_created_by_foreign` (`created_by`),
  CONSTRAINT `transaction_controllers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_controllers`
--

LOCK TABLES `transaction_controllers` WRITE;
/*!40000 ALTER TABLE `transaction_controllers` DISABLE KEYS */;
INSERT INTO `transaction_controllers` VALUES ('3be0a01f-09a0-42e3-9661-93c180df0012','c1a9170d-9a22-4635-99d4-e0841006a379','How to Become A Programmer','How to Become A Programmer',10,'Gramedia','2019-11-01','2019-11-01 21:43:29','2019-11-01 21:43:29',NULL),('454f6aa1-5867-462b-8e52-a38e41715111','c1a9170d-9a22-4635-99d4-e0841006a379','Buku Harian si Doel','Buku Harian si Doel deskripsi',5,'Jaya','2019-11-01','2019-11-01 22:17:29','2019-11-01 22:17:29',NULL),('abdd946c-64d8-43b2-9e0b-d0412940fa5a','c1a9170d-9a22-4635-99d4-e0841006a379','Android Native Guide Book','Android Native Guide Book',10,'Yudhistira','2019-11-01','2019-11-01 21:19:35','2019-11-01 21:19:35',NULL);
/*!40000 ALTER TABLE `transaction_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('5fd1d60a-9cc8-4de7-840b-e05feb0f99c3','37c4d186-2079-4863-ae79-f67e0a7a6cca',NULL,NULL,NULL),('5fd1d60a-9cc8-4de7-840b-e05feb0f99c3','5b18561c-ae28-4673-b4fa-19524510b0b1',NULL,NULL,NULL),('f1b3599e-a5e7-47e8-97e7-1e4a823439ea','17426e36-5994-40a8-b5b7-1b6863d3d4ae',NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_role` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_primary_role_foreign` (`primary_role`),
  CONSTRAINT `users_primary_role_foreign` FOREIGN KEY (`primary_role`) REFERENCES `roles` (`role_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1b84ee11-5216-4f49-a99f-af7765dd5fcb','Noemi Schroeder','adell93@example.com','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','62d40ee3-7695-40d7-a70d-d6c66d51b010','QKRYEuuczJ','2019-11-01 20:38:10','2019-11-01 20:38:10'),('523c7e92-3a67-4332-8108-da17f8eeea21','Tyree Grant','zmayert@example.net','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','a40dc94c-2661-4349-a892-2fcb3e727fe0','FYE601S1EQ','2019-11-01 20:38:10','2019-11-01 20:38:10'),('5e642ef2-4b5f-4d51-8b61-da8b35609d1d','Dr. Savanna Braun PhD','zritchie@example.net','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','74566de3-bd0b-497b-8498-2dec996bfe05','JhrXcqn99l','2019-11-01 20:38:10','2019-11-01 20:38:10'),('5fd1d60a-9cc8-4de7-840b-e05feb0f99c3','Prof. Naomie Aufderhar','kaelyn.harvey@example.com','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','dfd51655-ae15-4b59-8fcf-8e4dae5be8c0','9trXigoOMh','2019-11-01 20:38:10','2019-11-01 20:38:10'),('c1a9170d-9a22-4635-99d4-e0841006a379','Admin','admin@admin.com','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','b9750e16-2dbe-4d7f-b385-c508026cdc0d','g8KsE8On7k','2019-11-01 20:38:10','2019-11-01 20:38:10'),('f1af10b3-9479-4a8c-b6fe-ac8478fc7c83','Bob','bob@bob.com','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8c9d8ecd-21a7-42b6-91e2-9f54072cdee2','CEFLVeXn7T','2019-11-01 20:38:10','2019-11-01 20:38:10'),('f1b3599e-a5e7-47e8-97e7-1e4a823439ea','Dr. Terrell Bartoletti IV','mac.kris@example.com','2019-11-01 20:38:10','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','8c9d8ecd-21a7-42b6-91e2-9f54072cdee2','IUzYnJbWa5','2019-11-01 20:38:10','2019-11-01 20:38:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-02 12:50:39
