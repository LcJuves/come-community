-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: docs_index
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `t_item`
--

DROP TABLE IF EXISTS `t_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `delete_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_item`
--

LOCK TABLES `t_item` WRITE;
/*!40000 ALTER TABLE `t_item` DISABLE KEYS */;
INSERT INTO `t_item` VALUES (87,'SwiftGG',NULL,'https://swiftgg.gitbook.io/swift','img/swiftgg.png',NULL,NULL),(88,'Flutter',NULL,'https://flutter.cn/docs/get-started/install','img/flutter.svg',NULL,NULL),(89,'Android',NULL,'https://developer.android.google.cn/guide','img/studio-icon.svg',NULL,NULL),(90,'Groovy',NULL,'https://docs.groovy-lang.org/latest/html/documentation','img/groovy-logo.svg',NULL,NULL),(91,'Scala',NULL,'https://docs.scala-lang.org/zh-cn/tour/tour-of-scala.html','img/scala.svg',NULL,NULL),(92,'JavaScript',NULL,'https://developer.mozilla.org/zh-CN/docs/Web/JavaScript','img/javascript.svg',NULL,NULL),(93,'Kotlin',NULL,'https://www.kotlincn.net/docs/reference','https://www.kotlincn.net/assets/images/apple-touch-icon-72x72.png',NULL,NULL),(94,'React Native',NULL,'https://reactnative.cn/docs/getting-started','img/React.svg',NULL,NULL),(95,'Android SDK',NULL,'https://docs.liangchengj.com/android','img/android.svg',NULL,NULL),(96,'Vue',NULL,'https://cn.vuejs.org/v2/guide','img/Vue.svg',NULL,NULL),(97,'Python',NULL,'https://docs.python.org/zh-cn/3/reference','img/python.svg',NULL,NULL),(98,'Dart',NULL,'https://dart.cn/guides/language/language-tour','img/dart.svg',NULL,NULL),(99,'Java 8',NULL,'http://docs.liangchengj.com/jdk8','img/openjdk.png',NULL,NULL),(119,'Xamarin',NULL,'https://docs.microsoft.com/zh-cn/xamarin/','img/xamarin.svg',NULL,NULL),(120,'Kubernetes',NULL,'https://kubernetes.io/zh/docs','https://kubernetes.io/images/favicon.png',NULL,NULL),(121,'TypeScript',NULL,'https://www.tslang.cn/docs/handbook/basic-types.html','img/typescript.svg',NULL,NULL),(122,'Jenkins',NULL,'https://www.jenkins.io/zh/doc/','img/Jenkins.svg',NULL,NULL),(123,'Unity',NULL,'https://docs.unity.cn/cn/2019.4/Manual/UnityManual.html','img/unity.svg',NULL,NULL),(124,'Three.js',NULL,'https://threejs.org/docs/index.html#manual/zh/introduction/Creating-a-scene','img/three.js.svg',NULL,NULL);
/*!40000 ALTER TABLE `t_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (2,'admin','docs@123456');
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

-- Dump completed on 2020-12-06 12:27:11
