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
-- Current Database: `docs_index`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `docs_index` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `docs_index`;

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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_item`
--

LOCK TABLES `t_item` WRITE;
/*!40000 ALTER TABLE `t_item` DISABLE KEYS */;
INSERT INTO `t_item` VALUES (87,'SwiftGG',NULL,'https://swiftgg.gitbook.io/swift','/img/swiftgg.png',NULL,NULL),(88,'Flutter',NULL,'https://flutter.cn/docs','https://web-fronted.xyz/assets/svg/Flutter.svg',NULL,NULL),(89,'Android',NULL,'https://developer.android.google.cn/docs','https://web-fronted.xyz/assets/svg/Android.svg',NULL,NULL),(90,'Groovy',NULL,'https://docs.groovy-lang.org/latest/html/documentation','https://web-fronted.xyz/assets/svg/Groovy.svg',NULL,NULL),(91,'Scala',NULL,'https://docs.scala-lang.org/zh-cn/tour/tour-of-scala.html','https://web-fronted.xyz/assets/svg/Scala.svg',NULL,NULL),(92,'JavaScript',NULL,'https://developer.mozilla.org/zh-CN/docs/Web/JavaScript','https://web-fronted.xyz/assets/svg/JavaScript.svg',NULL,NULL),(93,'Kotlin',NULL,'https://www.kotlincn.net/docs','https://web-fronted.xyz/assets/svg/Kotlin.svg',NULL,NULL),(94,'React Native',NULL,'https://reactnative.cn/docs/getting-started','https://web-fronted.xyz/assets/svg/React.svg',NULL,NULL),(96,'Vue',NULL,'https://cn.vuejs.org/v2/guide','https://web-fronted.xyz/assets/svg/Vue.svg',NULL,NULL),(97,'Python',NULL,'https://docs.python.org/zh-cn','https://web-fronted.xyz/assets/svg/Python.svg',NULL,NULL),(98,'Dart',NULL,'https://dart.cn/guides/language/language-tour','https://web-fronted.xyz/assets/svg/Dart.svg',NULL,NULL),(99,'Java',NULL,'https://docs.oracle.com/en/java','https://web-fronted.xyz/assets/svg/Java.svg',NULL,NULL),(119,'Xamarin',NULL,'https://docs.microsoft.com/zh-cn/xamarin/','https://web-fronted.xyz/assets/svg/Xamarin.svg',NULL,NULL),(120,'Kubernetes',NULL,'https://kubernetes.io/zh/docs','https://web-fronted.xyz/assets/svg/Kubernetes.svg',NULL,NULL),(121,'TypeScript',NULL,'https://www.tslang.cn/docs','https://web-fronted.xyz/assets/svg/TypeScript.svg',NULL,NULL),(122,'Jenkins',NULL,'https://www.jenkins.io/zh/doc','https://web-fronted.xyz/assets/svg/JenkinsCI.svg',NULL,NULL),(123,'Unity',NULL,'https://docs.unity.cn/cn/2019.4/Manual/UnityManual.html','https://web-fronted.xyz/assets/svg/Unity.svg',NULL,NULL),(124,'Three',NULL,'https://threejs.org/docs/index.html#manual/zh/introduction/Creating-a-scene','https://web-fronted.xyz/assets/svg/ThreeJS.svg',NULL,NULL),(125,'Deno',NULL,'https://doc.deno.land/builtin/stable','https://web-fronted.xyz/assets/svg/Deno.svg',NULL,NULL),(126,'Node',NULL,'https://nodejs.org/zh-cn/docs','https://web-fronted.xyz/assets/svg/NodeJS.svg',NULL,NULL),(127,'PyTorch',NULL,'https://pytorch.apachecn.org','https://web-fronted.xyz/assets/svg/PyTorch.svg',NULL,NULL),(128,'dotNET',NULL,'https://docs.microsoft.com/zh-cn/dotnet','https://web-fronted.xyz/assets/svg/C%23.svg',NULL,NULL),(129,'Docker',NULL,'https://docs.docker.com','https://web-fronted.xyz/assets/svg/Docker.svg',NULL,NULL),(130,'TensorFlow',NULL,'https://tensorflow.google.cn/learn?hl=zh-cn','https://web-fronted.xyz/assets/svg/TensorFlow.svg',NULL,NULL),(131,'Django',NULL,'https://docs.djangoproject.com/zh-hans','https://web-fronted.xyz/assets/svg/Django.svg',NULL,NULL),(132,'OpenCV',NULL,'https://docs.opencv.org','https://web-fronted.xyz/assets/svg/OpenCV.svg',NULL,NULL),(133,'Hadoop',NULL,'https://hadoop.apache.org/docs/r1.0.4/cn','https://web-fronted.xyz/assets/svg/_Hadoop.svg',NULL,NULL),(134,'Flink',NULL,'https://ci.apache.org/projects/flink/flink-docs-stable/zh','https://web-fronted.xyz/assets/svg/Flink.svg',NULL,NULL),(135,'Markdown',NULL,'https://www.markdown.xyz','https://web-fronted.xyz/assets/svg/Markdown.svg',NULL,NULL),(136,'Linux',NULL,'https://git.io/linux','https://web-fronted.xyz/assets/svg/Linux.svg',NULL,NULL),(137,'Go',NULL,'https://go-zh.org/doc','https://web-fronted.xyz/assets/svg/GoLang.svg',NULL,NULL),(138,'Rust',NULL,'https://www.rust-lang.org/zh-CN/learn','https://web-fronted.xyz/assets/svg/Rust.svg',NULL,NULL),(139,'Angular',NULL,'https://angular.cn/docs','https://web-fronted.xyz/assets/svg/Angular.svg',NULL,NULL);
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

-- Dump completed on 2021-01-12 15:44:33