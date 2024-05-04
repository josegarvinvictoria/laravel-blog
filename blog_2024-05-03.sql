# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.6.12-MariaDB-1:10.6.12+maria~ubu2004)
# Base de datos: blog
# Tiempo de Generación: 2024-05-03 13:57:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;

INSERT INTO `cache` (`key`, `value`, `expiration`)
VALUES
	('333|192.168.65.1','i:1;',1711991940),
	('333|192.168.65.1:timer','i:1711991940;',1711991940),
	('360b747aa2d2c642dfa58f6b3baf51de','i:2;',1712951733),
	('360b747aa2d2c642dfa58f6b3baf51de:timer','i:1712951733;',1712951733),
	('4908a82abce1fc8dfc2ada3767d1fa65','i:1;',1711991921),
	('4908a82abce1fc8dfc2ada3767d1fa65:timer','i:1711991921;',1711991921),
	('6c2827422c5c3125d95a4a18134b12ef','i:2;',1711991940),
	('6c2827422c5c3125d95a4a18134b12ef:timer','i:1711991940;',1711991940),
	('6edea5d5844edbcdb4adbd7f05f8f20e','i:1;',1712951209),
	('6edea5d5844edbcdb4adbd7f05f8f20e:timer','i:1712951209;',1712951209),
	('aaa3480d4e7205cf2225e266b3831578','i:2;',1714743087),
	('aaa3480d4e7205cf2225e266b3831578:timer','i:1714743087;',1714743087),
	('b8062a18121c600ffe34185fc54e2674','i:1;',1711991857),
	('b8062a18121c600ffe34185fc54e2674:timer','i:1711991857;',1711991857),
	('user@gggg.com|192.168.65.1','i:1;',1711991921),
	('user@gggg.com|192.168.65.1:timer','i:1711991921;',1711991921),
	('user@mail.com|192.168.65.1','i:1;',1712951737),
	('user@mail.com|192.168.65.1:timer','i:1712951737;',1712951737);

/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla cache_locks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla job_batches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'0001_01_01_000000_create_users_table',1),
	(2,'0001_01_01_000001_create_cache_table',1),
	(3,'0001_01_01_000002_create_jobs_table',1),
	(4,'2024_03_27_170426_create_posts_table',1),
	(5,'2024_03_27_184608_create_personal_access_tokens_table',1),
	(6,'2024_04_01_145514_add_two_factor_columns_to_users_table',2);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla password_reset_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla personal_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `teaser` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `uuid`, `title`, `slug`, `body`, `teaser`, `published`, `created_at`, `updated_at`)
VALUES
	(1,'4e9b7c8b-4156-4f70-a8a8-a6c92b7f3a45','Descubre las Maravillas del Mundo Moderno 1','descubre-las-maravillas-del-mundo-moderno','El mundo está lleno de maravillas modernas que desafían nuestra imaginación. Desde la arquitectura innovadora hasta los avances tecnológicos, exploramos algunas de las creaciones <strong>más impresionantes de la humanidad</strong>.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus cursus congue urna luctus volutpat. Suspendisse nisi odio, vestibulum ut nibh non, convallis vulputate massa. Aliquam facilisis arcu ante, ac lacinia tellus tempus in. Nunc vulputate turpis a tristique rutrum. Suspendisse tempus sagittis vestibulum. Morbi lobortis blandit augue ut viverra. Nullam sed nunc laoreet, dapibus nisi eu, condimentum augue.\n\n<p>Apollo astronauts:</p>\n<ul>\n  <li>Neil Armstrong</li>\n  <li>Alan Bean</li>\n  <li>Peter Conrad</li>\n  <li>Edgar Mitchell</li>\n  <li>Alan Shepard</li>\n</ul>\n\n\nCras ac tincidunt nulla, fermentum consequat nisl. Nulla vitae erat mauris. Maecenas orci tellus, hendrerit at tellus quis, convallis mattis nibh. Etiam at ipsum nec turpis lobortis aliquet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam sit amet elit nec nunc bibendum volutpat non id lorem. Nullam id ultricies metus. Praesent eget aliquet eros. Nam dignissim fermentum ipsum quis facilisis.\n\nPraesent hendrerit, lectus et scelerisque volutpat, mauris erat pellentesque leo, vitae sagittis magna ligula in neque. Donec varius sapien sed ipsum tempus condimentum. Pellentesque tempor odio felis, et maximus nisi pharetra at. Sed faucibus vehicula odio, at convallis tortor suscipit vitae. Curabitur sagittis tincidunt odio, eget faucibus tortor porttitor id. Morbi tincidunt placerat condimentum. Mauris vel lacus eleifend, porttitor nunc a, euismod ex. Donec consectetur magna pharetra, elementum est ac, rutrum ipsum. Suspendisse ullamcorper augue et pellentesque bibendum. Curabitur nec augue massa. Morbi commodo eros ac eros vestibulum suscipit. In quam est, blandit vel malesuada vel, luctus vel tortor. Curabitur leo leo, maximus in neque et, facilisis viverra neque.','Explorando las maravillas modernas del mundo.',1,'2023-03-25 10:00:00','2024-05-01 18:25:43'),
	(2,'5a3b7c8d-4166-4d70-b8b8-b7d92c7f4b56','Cocina mediterránia','guia-para-principiantes-en-la-cocina-mediterranea','La cocina mediterránea es apreciada por su sabor y sus beneficios para la salud. En esta guía para principiantes, te mostraremos cómo preparar platos simples pero deliciosos que encantarán a tu paladar.','Introducción a los sabores de la cocina mediterránea.',1,'2023-04-15 15:00:00','2024-05-01 19:05:25'),
	(3,'6b4c8d9e-4277-5e81-c9c9-c8e93d8g6d67','Esto es el titulo','los-mejores-consejos-para-viajeros-solitarios','Viajar solo puede ser una de las experiencias más gratificantes. Aquí te dejamos algunos consejos para hacer de tu viaje una aventura segura, fácil y memorable.','Consejos de viaje para aventureros independientes.',0,'2023-05-20 20:30:00','2024-04-20 11:17:14'),
	(4,'7c5d9eaf-5388-6f92-da1a-d9f1a4e9a7f8','Innovaciones en la Industria Tecnológica para el 2023','innovaciones-en-la-industria-tecnologica-para-el-2023','<p>This is the first paragrahps. dfsthis is my postdsdsdsss</p><p>hello evetyhoneefwrerewrwer</p><h2>heading 2</h2><p><a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://tiptap.dev/pricing\">THis is a link</a></p><h3>heading 3</h3><ul><li><p>Example</p></li><li><p>Example 1</p></li></ul><h3>heading 5</h3><ol><li><p>One Two</p></li><li><p><strong>BOLD</strong></p></li></ol><p></p>','This is the first paragrahps. dfsthis is my postdsdsdsss',0,'2023-06-30 12:45:00','2024-05-02 17:32:28'),
	(5,'8d6ea1bg-6499-7ha3-eb2b-ea2g5f1b8g9h','Hola que tal!','la-evolucion-del-arte-contemporaneo','El arte contemporáneo está constantemente evolucionando, reflejando y desafiando la sociedad en la que vivimos. Este artículo explora algunas de las corrientes más influyentes en el arte de hoy.','Explorando las corrientes actuales del arte contemporáneo.',0,'2023-08-15 18:00:00','2024-04-20 11:23:10'),
	(10,'72ff00ee-b84c-403a-ac38-6f6c74652420','AAAAAA','72ff00ee-b84c-403a-ac38-6f6c74652420',NULL,NULL,0,'2024-05-01 18:17:22','2024-05-01 18:17:22'),
	(13,'a298afe8-f7ac-45cc-8f94-ccc6eb877e84','Untitled','a298afe8-f7ac-45cc-8f94-ccc6eb877e84',NULL,NULL,0,'2024-05-01 18:21:57','2024-05-01 18:21:57'),
	(14,'a380ac9b-208d-4098-bce3-4d3623842091','Untitled','a380ac9b-208d-4098-bce3-4d3623842091',NULL,NULL,0,'2024-05-01 18:25:04','2024-05-01 18:25:04'),
	(15,'155e328e-a409-4087-a7ed-5e2f27f2bd12','El nuevo articulo!','155e328e-a409-4087-a7ed-5e2f27f2bd12',NULL,NULL,0,'2024-05-01 18:26:06','2024-05-01 18:26:18'),
	(18,'91249269-2649-47c7-902e-b111c330df9e','Untitledfdfsd!sas!','91249269-2649-47c7-902e-b111c330df9e',NULL,NULL,0,'2024-05-01 19:25:27','2024-05-02 14:34:00'),
	(20,'f62afe27-9147-4204-889b-7aa88f30db04','Untitled1','f62afe27-9147-4204-889b-7aa88f30db04',NULL,NULL,0,'2024-05-02 14:36:19','2024-05-02 14:36:23'),
	(22,'ecceaeb9-0249-43db-b93f-8d53eb44ad92','Untitled','ecceaeb9-0249-43db-b93f-8d53eb44ad92',NULL,NULL,0,'2024-05-02 18:20:54','2024-05-02 18:20:54'),
	(23,'fcf6a675-6e57-42ca-8eae-0d12da2edf97','Untitled','fcf6a675-6e57-42ca-8eae-0d12da2edf97',NULL,NULL,0,'2024-05-02 18:25:30','2024-05-02 18:25:30'),
	(24,'38999214-e7b5-4ca6-b629-1e06afacc96e','Untitled','38999214-e7b5-4ca6-b629-1e06afacc96e',NULL,NULL,0,'2024-05-02 18:26:50','2024-05-02 18:26:50'),
	(25,'2b66e95e-f0af-4422-8c79-343f2141d0ff','Untitled','2b66e95e-f0af-4422-8c79-343f2141d0ff',NULL,NULL,0,'2024-05-03 13:41:01','2024-05-03 13:41:01');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`)
VALUES
	('2m4ouwzhZc1CQdF0zUKCfLHJJAz8GClseo4hM1t3',NULL,'192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHNqcG42QzdBdXJRS3o2cGRKUGhFbEdLRk9IcjdHZ1ZGNTc2ODV1SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODA6Imh0dHA6Ly9sb2NhbGhvc3QvYXBpL3Bvc3RzL2lubm92YWNpb25lcy1lbi1sYS1pbmR1c3RyaWEtdGVjbm9sb2dpY2EtcGFyYS1lbC0yMDIzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1714743900),
	('E5yVlz10KRthkiPLjD0HoDGQ9RVPQjjNa2MsuOVC',1,'192.168.65.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRTlTWkdFY1N4WXhDQ0FmOFc2TDFqaWdTa3VNTkhZekVJN1J5QlJyNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYXBpL2FkbWluL3Bvc3RzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEFyQ2lFYnoxMzdwbElsVjBwUEx6Z2VpVTJEVmtGTHJ3bHBoQTVmVXc5a29iZkdwNW9ZM1NpIjt9',1714743910);

/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'user','user@mail.com','2024-04-01 16:23:33','$2y$12$ArCiEbz137plIlV0pPLzgeiU2DVkFLrwlphA5fUw9kobfGp5oY3Si',NULL,NULL,NULL,'wdnYopXXYL','2024-04-01 16:23:33','2024-04-01 16:23:33');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
