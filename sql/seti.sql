-- MySQL dump 10.13  Distrib 5.1.41, for pc-linux-gnu (i686)
--
-- Host: localhost    Database: seti
-- ------------------------------------------------------
-- Server version	5.1.41

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
-- Table structure for table `image_base`
--

DROP TABLE IF EXISTS `image_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_base` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_name` varchar(300) NOT NULL,
  `file_name` varchar(300) NOT NULL,
  `data_frequency` varchar(100) NOT NULL,
  `data_sample_rate` varchar(100) NOT NULL,
  `data_bandwidth` varchar(100) NOT NULL,
  `data_start_time` varchar(100) NOT NULL,
  `data_end_time` varchar(100) NOT NULL,
  `data_antennas` text NOT NULL,
  `data_pols` text NOT NULL,
  `total_views` int(11) NOT NULL,
  `total_responses` int(11) NOT NULL,
  `display_code` int(11) NOT NULL,
  `stamp_added` int(11) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_base`
--

LOCK TABLES `image_base` WRITE;
/*!40000 ALTER TABLE `image_base` DISABLE KEYS */;
INSERT INTO `image_base` VALUES (1,'test/','test_image_1.png','2600 MHz','8.7381333... MS/s','6.5536 MHz','4:55 pm PST','5:05 pm PST','1c,1d,1e,1g,1h,1k,2a,2c,2f,2g,2l,3e,3j,3l,4f,4g,4j,4k,4l,5b,5e,5g,5h','1ax,1ay,1dx,1dy,1ey,1fx,1gx,1gy,1hx,1hy,1kx,1ky,2ax,2ay,2fx,2fy,2gy,2jx,2kx,2ly,3ex,3ey,3jx,3jy,3lx,3ly,4gx,4gy,4hx,4hy,4kx,4ky,4lx,4ly,5by,5ey,5gx,5gy,5hx,5hy',113,22,111,1270669386),(2,'test/','test_image_2.png','1800 MHz','4.21... MS/s','6.5536 MHz','8:55 pm PST','9:05 pm PST','1c,1d,1e,1g,1h,1k,2a,2c,2f,2g,2l,3e,3j,3l,4f,4g,4j,4k,4l,5b,5e,5g,5h','1ax,1ay,1dx,1dy,1ey,1fx,1gx,1gy,1hx,1hy,1kx,1ky,2ax,2ay,2fx,2fy,2gy,2jx,2kx,2ly,3ex,3ey,3jx,3jy,3lx,3ly,4gx,4gy,4hx,4hy,4kx,4ky,4lx,4ly,5by,5ey,5gx,5gy,5hx,5hy',149,28,103,1270669386),(3,'test/','test_image_3.png','2600 MHz','8.7381333... MS/s','6.5536 MHz','9:55 pm PST','10:05 pm PST','1c,1d,1e,1g,1h,1k,2a,2c,2f,2g,2l,3e,3j,3l,4f,4g,4j,4k,4l,5b,5e,5g,5h','1ax,1ay,1dx,1dy,1ey,1fx,1gx,1gy,1hx,1hy,1kx,1ky,2ax,2ay,2fx,2fy,2gy,2jx,2kx,2ly,3ex,3ey,3jx,3jy,3lx,3ly,4gx,4gy,4hx,4hy,4kx,4ky,4lx,4ly,5by,5ey,5gx,5gy,5hx,5hy',84,20,110,1270669386),(4,'test/','test_image_4.png','1800 MHz','4.21... MS/s','6.5536 MHz','18:55 pm PST','19:05 pm PST','1c,1d,1e,1g,1h,1k,2a,2c,2f,2g,2l,3e,3j,3l,4f,4g,4j,4k,4l,5b,5e,5g,5h','1ax,1ay,1dx,1dy,1ey,1fx,1gx,1gy,1hx,1hy,1kx,1ky,2ax,2ay,2fx,2fy,2gy,2jx,2kx,2ly,3ex,3ey,3jx,3jy,3lx,3ly,4gx,4gy,4hx,4hy,4kx,4ky,4lx,4ly,5by,5ey,5gx,5gy,5hx,5hy',118,26,102,1270669386);
/*!40000 ALTER TABLE `image_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_response`
--

DROP TABLE IF EXISTS `image_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_response` (
  `image_response_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `response` tinyint(1) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `stamp_added` int(11) NOT NULL,
  PRIMARY KEY (`image_response_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_response`
--

LOCK TABLES `image_response` WRITE;
/*!40000 ALTER TABLE `image_response` DISABLE KEYS */;
INSERT INTO `image_response` VALUES (12,4,1,4,'db921251f229729b71794c921a36078a',1273626626),(13,2,1,4,'db921251f229729b71794c921a36078a',1273626626),(14,3,1,2,'db921251f229729b71794c921a36078a',1273626630),(15,1,1,2,'db921251f229729b71794c921a36078a',1273626630);
/*!40000 ALTER TABLE `image_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_view`
--

DROP TABLE IF EXISTS `image_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_view` (
  `image_view_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `stamp_added` int(11) NOT NULL,
  PRIMARY KEY (`image_view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_view`
--

LOCK TABLES `image_view` WRITE;
/*!40000 ALTER TABLE `image_view` DISABLE KEYS */;
INSERT INTO `image_view` VALUES (89,4,1,'db921251f229729b71794c921a36078a',1273626621),(90,2,1,'db921251f229729b71794c921a36078a',1273626621),(91,3,1,'db921251f229729b71794c921a36078a',1273626626),(92,1,1,'db921251f229729b71794c921a36078a',1273626626);
/*!40000 ALTER TABLE `image_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_status`
--

DROP TABLE IF EXISTS `server_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_status` (
  `server_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(200) NOT NULL,
  `server_operational` tinyint(1) NOT NULL COMMENT '0 = Major error or downtime rendering the service unusable, 1 = Some issues, service is mostly usable, 2 = Normal service',
  `additional_comments` text NOT NULL,
  `last_updated` int(11) NOT NULL,
  PRIMARY KEY (`server_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_status`
--

LOCK TABLES `server_status` WRITE;
/*!40000 ALTER TABLE `server_status` DISABLE KEYS */;
INSERT INTO `server_status` VALUES (1,'SETI Cloud',2,'The SETI Cloud is functioning normally.',1270752200);
/*!40000 ALTER TABLE `server_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_base`
--

DROP TABLE IF EXISTS `user_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_base` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  `public_key` varchar(32) NOT NULL,
  `private_key` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_base`
--

LOCK TABLES `user_base` WRITE;
/*!40000 ALTER TABLE `user_base` DISABLE KEYS */;
INSERT INTO `user_base` VALUES (1,'James Kirkwood','aa720d2345c7a8476bd214f13d28025d','92170641d84aae9b7353a20fb2832118'),(2,'Avinash Agrawal','e32d6c87fb687bd6bb52ffed1cda345b','8f64b84cd44e969171d94493cac1128e');
/*!40000 ALTER TABLE `user_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_session_key`
--

DROP TABLE IF EXISTS `user_session_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_session_key` (
  `user_session_key_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `stamp_added` int(11) NOT NULL,
  PRIMARY KEY (`user_session_key_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_session_key`
--

LOCK TABLES `user_session_key` WRITE;
/*!40000 ALTER TABLE `user_session_key` DISABLE KEYS */;
INSERT INTO `user_session_key` VALUES (1,1,'ade0569a1bb3f221a64ed3074e243072',1271011783),(2,1,'1d94cb25b74a404a12e56982f526b30a',1271071720),(3,2,'e655daa4f8f962498a001b77b0cebd9b',1271110617),(4,2,'e78e1fd4e37d8796a30e187b49b760bd',1271110664),(5,1,'35c4bff8e61e95577c5b5b87ad8fc184',1271110809),(6,1,'86438c6d690fe44f8cadcec7b77ec1cd',1271175312),(7,1,'10b934560d7395237e984c616e27d1e5',1271204003),(8,1,'0f75be01f81a4a7a9a024c141933b9e6',1271243252),(9,1,'8a325364a19770dc6beedec2da20c144',1271247183),(10,1,'7f2e8a5953bdcdf897d0d2319e02bf25',1271322520),(11,1,'018882d793cf40865e48f4f9166311b1',1271507427),(12,1,'c7afc44f8cc8d6e11d8f48e32747e107',1271801099),(13,1,'231dbceacea60faeaa7c46a242e8ac04',1272166128),(14,1,'380668fb7d94b1122822672656863472',1272456752),(15,1,'2a8b95fa61d22ce4aca7d706666893f3',1272482820),(16,1,'c199f738482651dadd9ab3e28330c4d2',1272535264),(17,1,'f9c1a9332dea0ac3238a906d831ab9b7',1273573612),(18,1,'602fc011b59a3665120c19e0a0e24705',1273625250),(19,1,'db921251f229729b71794c921a36078a',1273625687);
/*!40000 ALTER TABLE `user_session_key` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-05-11 19:13:38
