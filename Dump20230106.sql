-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bookinghotel
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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomId` json NOT NULL,
  `hotel` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `fromDate` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  `toDate` varchar(255) DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `totalDays` int DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'đang thanh toán',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'[\"1\"]','Stylish hotel Da Lat',NULL,'Trí Phạm Minh','01/06/2023','TriPm','+84 356333070',NULL,'01/13/2023',3500000,7,'d485cfe6-a82e-4218-9cfb-90c3a652110f','đang thanh toán','2023-01-06 12:23:20','2023-01-06 12:23:20');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `rooms` json DEFAULT NULL,
  `price` int DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Stylish hotel Da Lat','Khách sạn','Ho Chi Minh','Ho Chi Minh','https://toplist.vn/images/800px/khu-chung-cu-cao-cap-golden-manson-108723.jpg','https://cdn.thongtinduan.com/uploads/posts/2019-10/1572407173_luu-y-gi-khi-mua-chung-cu-cao-cap-tai-ha-noi2.jpg','https://cdn.thongtinduan.com/uploads/posts/2019-10/1572407173_luu-y-gi-khi-mua-chung-cu-cao-cap-tai-ha-noi2.jpg','https://cdn.thongtinduan.com/uploads/posts/2019-10/1572407173_luu-y-gi-khi-mua-chung-cu-cao-cap-tai-ha-noi2.jpg','https://cdn.thongtinduan.com/uploads/posts/2019-10/1572407173_luu-y-gi-khi-mua-chung-cu-cao-cap-tai-ha-noi2.jpg','https://cdn.thongtinduan.com/uploads/posts/2019-10/1572407173_luu-y-gi-khi-mua-chung-cu-cao-cap-tai-ha-noi2.jpg','https://cdn.thongtinduan.com/uploads/posts/2019-10/1572407173_luu-y-gi-khi-mua-chung-cu-cao-cap-tai-ha-noi2.jpg','1',9,'[1]',500000,0,'2023-01-06 07:42:52','2023-01-06 07:43:05');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `maxPeople` int DEFAULT NULL,
  `roomNumbers` json DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Phòng Lớn',500000,'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thespruce.com%2Fput-together-a-perfect-guest-room-1976987&psig=AOvVaw1UTuNkmON-G3KyVtJmjwrW&ust=1671267492570000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMiartvi_fsCFQAAAAAdAAAAABAE','2 người lớn, máy lạnh, tivi. Đầy đủ tiện nghi',2,'[{\"id\": 1, \"number\": 101, \"unavailableDates\": [1672938000000, 1673024400000, 1673110800000, 1673197200000, 1673283600000, 1673370000000, 1673456400000, 1673542800000]}, {\"id\": 2, \"number\": 102, \"unavailableDates\": []}]','2023-01-06 07:43:05','2023-01-06 12:23:20');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `fullname` (`fullname`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'demo','Phạm Minh Trí','demo@gmail.com',NULL,NULL,NULL,'+84 356333070','$2a$10$3EemtBr.8gzfN9rCMhauC.McF88npmawnQ8jBWdtqbcCfafFKKxty',1,'2023-01-05 07:18:33','2023-01-05 15:50:04'),(2,'tripm','tripham123','tripm@gmail.com',NULL,NULL,NULL,NULL,'$2a$10$OPNXW4Ns8JtwjDG6RPF3OeCobc4svj4XkWcCPSuKzhdQnddTJFkDS',0,'2023-01-05 07:21:06','2023-01-05 07:21:06');
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

-- Dump completed on 2023-01-06 19:24:59
