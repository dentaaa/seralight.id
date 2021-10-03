/*
SQLyog Ultimate v10.42 
MySQL - 5.5.5-10.1.13-MariaDB : Database - tumbas.id
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`seralight` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `categories` */
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static/dist/img/avatar5.png',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `birthday` date NOT NULL,
  `role` enum('admin','supplier','member') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`photo`,`username`,`email`,`password`,`address`,`phone`,`gender`,`status`,`birthday`,`role`,`remember_token`,`created_at`,`updated_at`) values (1,'didik','static/dist/img/avatar5.png','didik','didik@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Wonogiri','082221060025','L','1','2018-12-13','admin','DXgwulinzPn1XHJ8GvJfLivL86iQlxugHNXvfaZrWUP252O5ulU50XPMGomV','2018-12-25 08:23:16','2018-12-25 08:23:16'),(2,'Dina Aristas','static/dist/img/LaravelLogo.png','Dina','dina@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Wonogiri','0243434','L','1','2018-12-07','member','PytAy9vj7fvVEMGyzqmjLkgHB8J9HdNL84acuSLBYiI6pMrK6Lo7gyEB2R8x','2018-12-26 16:51:44','2018-12-31 09:17:01'),(3,'Roni Lestiawan','static/dist/img/avatar5.png','rono','roni@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Jakarta','09435454','P','1','2018-12-11','supplier',NULL,'2018-12-29 00:49:42','2018-12-29 00:49:42'),(4,'Arif Bintoro','static/dist/img/avatar5.png','arif','arif@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Solo','083435353','L','1','2018-12-19','supplier',NULL,'2018-12-29 00:50:46','2018-12-29 00:50:46'),(5,'Rini kurniawan','static/dist/img/avatar5.png','rini','rini@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Jambi','083434','P','1','2018-12-08','supplier',NULL,'2018-12-29 00:51:26','2018-12-29 00:51:33'),(6,'Farida Astuti','static/dist/img/avatar5.png','Farida','farida@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Bandung','0834353','P','1','2018-12-12','supplier',NULL,'2018-12-29 00:52:26','2018-12-29 00:52:26'),(13,'Surya Pamungkas','static/dist/img/avatar5.png','bento','surya@gmail.com','$2y$10$DmMQU07a4ccjFIQLT2FmtuU8dds703elKo2.zthRp5S3DyBuTp3R2','Jambi','083434','L','0','2018-12-22','supplier','iBGJyNI5tfXNftzfuk20GTSC8nFEVWVhl370A6PW9MjR0iZvmduXtJSJKTHt','2018-12-29 01:53:31','2018-12-29 01:53:31'),(15,'Prabowo','static/dist/img/avatar5.png','prabowo','www.didikprabowo.com@gmail.com','$2y$10$xwzEHODAULnv1HFpcP44ouZKbjPGQpHsjGrqxzr0QmhiYt66R1oDO','Wonogiri','08343554','L','0','1995-10-05','supplier','tEA6SUtAKfHqo4NPIlxvk0vawdpag8hVRq2oaKwgrSU1QPsSUEctBYnoxChj','2019-01-03 11:13:14','2019-01-03 11:13:14');


DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  KEY `categories_user_id_foreign` (`user_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`slug`,`icon`,`name`,`parent_id`,`user_id`,`created_at`,`updated_at`) values (4,'portable-audio','fa','Portable Audio',NULL,1,'2018-12-25 08:32:44','2018-12-25 08:32:44'),(5,'headset','fa','Headset',4,1,'2018-12-25 08:33:07','2018-12-25 08:33:07'),(6,'speaker','fa','Speaker',4,1,'2018-12-25 08:33:31','2018-12-25 08:33:31'),(7,'storage','fa','Storage',NULL,1,'2018-12-25 08:34:30','2018-12-25 08:34:30'),(8,'ssd','fa','SSD',7,1,'2018-12-25 08:34:42','2018-12-25 08:34:42'),(10,'flaskdisk','fa','Flaskdisk',7,1,'2018-12-28 09:51:12','2018-12-28 09:51:12'),(11,'hardisk','fa','Hardisk',7,1,'2018-12-28 09:51:30','2018-12-28 09:51:30'),(12,'input-device','fa','Input Device',NULL,1,'2018-12-28 09:52:56','2018-12-28 09:52:56'),(13,'mouse','fa','Mouse',12,1,'2018-12-28 09:53:15','2018-12-28 09:53:15'),(14,'keyboard','fa','Keywboard',12,1,'2018-12-28 09:53:30','2018-12-28 09:53:30'),(15,'joystick','fa','Joystick',12,1,'2018-12-28 09:54:15','2018-12-28 09:54:15'),(16,'joypad','fa','Joypad',12,1,'2018-12-28 09:54:41','2018-12-28 09:54:41');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (21,'2014_10_12_000000_create_users_table',1),(22,'2014_10_12_100000_create_password_resets_table',1),(23,'2018_12_22_092841_table_category',1),(24,'2018_12_22_193348_table_products',1),(25,'2018_12_22_195312_table_transaction',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`photo`,`name`,`slug`,`description`,`stock`,`weight`,`price`,`category_id`,`user_id`,`created_at`,`updated_at`) values (5,'static/dist/img/5996973e57bdc.jpg','JABRA Pro 935 UC Single Connectivity','jabra-pro-935-uc-single-connectivity','<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Tipe</td>\r\n			<td>Bluetooth Headset Mono</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mic</td>\r\n			<td>Noise-canceling</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Volume Control</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Garansi</td>\r\n			<td>Garansi tidak tersedia dari Distributor</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',7,45,3999000,5,1,'2018-12-25 12:48:58','2018-12-25 12:48:58'),(6,'static/dist/img/5a068b44b7351.jpg','BEATS™ BY DRE™ Solo3 Wireless On-Ear','beatstm-by-dretm-solo3-wireless-on-ear-headphones-red','<p><strong>Beats By Dre Solo3 Wireless</strong>&nbsp;merupakan sebuah headphone nirkabel mengagumkan yang ideal Anda gunakan untuk menemani kegiatan Anda sehari-hari. Headphone ini memiliki kemampuan untuk mengalirkan audio berkualitas premium dengan rancangan akustik mengesankan yang dapat memaksimalkan kejernihan dan keseimbangan suaranya. Hal tersebut didukung pula oleh earcup empuk yang dapat menahan suara bising dari luar sehingga Anda dapat mendengarkan alunan musik favorit dengan kejelasan yang lebih baik.</p>\r\n\r\n<p><img alt=\"\" src=\"http://127.0.0.1:8000/files/1/5a128b0097a91.jpg\" style=\"height:378px; width:596px\" /></p>',4,45,5000000,5,1,'2018-12-25 12:51:14','2019-01-03 10:23:54'),(7,'static/dist/img/5a279af9233ff.jpg','PHILIPS Fidelio X2HRS','philips-fidelio-x2hr','<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Impedance</td>\r\n			<td>30 ohm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kepekaan / Sensitivitas</td>\r\n			<td>100 dB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Panjang Kabel</td>\r\n			<td>3.0 m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frekuensi</td>\r\n			<td>5 &ndash; 40,000 Hz</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',0,45,5000000,5,1,'2018-12-25 12:53:09','2019-01-03 10:45:22'),(8,'static/dist/img/59b9e500e8570.jpg','SEAGATE Hard Disk 10K 300GB','seagate-hard-disk-enterprise-performance-10k-hdd-300gb','<p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Antarmuka / Interface</td>\r\n			<td>SAS 12Gb/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Penyimpanan Sementara / Buffer Size</td>\r\n			<td>128MB Cache</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Tipe</td>\r\n			<td>Hard Disk Internal 2.5&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kecepatan Putaran / RPM</td>\r\n			<td>10000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>',1,43,2700000,8,1,'2018-12-25 12:55:21','2019-01-03 10:24:07'),(9,'static/dist/img/5a2650aa57f44.jpg','HGST Travelstar Z5K1 1TB 1W10028','hgst-travelstar-z5k1-1tb-1w10028','<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Tipe</td>\r\n			<td>Hard Disk Internal 2.5&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rata-Rata Waktu Pencarian</td>\r\n			<td>12ms</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Antarmuka / Interface</td>\r\n			<td>SATA 6 Gb/s</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Penyimpanan Sementara / Buffer Size</td>\r\n			<td>128MB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kecepatan Putaran / RPM</td>\r\n			<td>5400RPM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lain-lain</td>\r\n			<td>\r\n			<ul>\r\n				<li>Load/Unload Cycles 600,000</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',-2,45,800000,8,1,'2018-12-25 12:57:10','2019-01-03 10:57:20'),(10,'static/dist/img/5996973e57bdc.jpg','JABRA Pro 935 UC Single Connectivity','jabra-pro-935-uc-single-connectivity','<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Tipe</td>\r\n			<td>Bluetooth Headset Mono</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mic</td>\r\n			<td>Noise-canceling</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Volume Control</td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Garansi</td>\r\n			<td>Garansi tidak tersedia dari Distributor</td>\r\n		</tr>\r\n	</tbody>\r\n</table>',7,45,3999000,5,1,'2018-12-25 12:48:58','2018-12-25 12:48:58');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portal_code` int(11) NOT NULL,
  `ekspedisi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  KEY `transactions_product_id_foreign` (`product_id`),
  CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`code`,`user_id`,`product_id`,`qty`,`subtotal`,`name`,`address`,`portal_code`,`ekspedisi`,`status`,`created_at`,`updated_at`) values (1,'TRE',2,9,2,1600000,'Casandra','Jakarta',45,'{\r\n\"code\":\"jne\",\r\n\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\r\n\"value\":38000,\r\n\"etd\":\"4-5\"\r\n}','1',NULL,'2018-12-26 15:53:17'),(52,'18123007272',2,6,1,5000000,'s','19',76111,'{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":27000,\"etd\":\"3-5\"}','0','2018-12-30 19:27:29','2018-12-30 19:27:29'),(53,'18123007272',2,8,1,2700000,'s','19',76111,'{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":27000,\"etd\":\"3-5\"}','0','2018-12-30 19:27:29','2018-12-30 19:27:29'),(54,'18123110442',2,7,3,15000000,'jano','18',71611,'{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":36000,\"etd\":\"5-7\"}','0','2018-12-31 22:44:38','2018-12-31 22:44:38'),(55,'18123110442',2,8,3,8100000,'jano','18',71611,'{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":36000,\"etd\":\"5-7\"}','0','2018-12-31 22:44:38','2018-12-31 22:44:38');

/*Table structure for table `users` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
