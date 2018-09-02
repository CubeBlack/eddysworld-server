-- MySQL dump 10.13  Distrib 5.7.23, for Linux (i686)
--
-- Host: localhost    Database: lima
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `cloto_dados`
--

DROP TABLE IF EXISTS `cloto_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloto_dados` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user` int(8) NOT NULL,
  `dado` blob NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloto_dados`
--

LOCK TABLES `cloto_dados` WRITE;
/*!40000 ALTER TABLE `cloto_dados` DISABLE KEYS */;
INSERT INTO `cloto_dados` VALUES (1,0,_binary 'Exemplo de dado','exempmlo');
/*!40000 ALTER TABLE `cloto_dados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cloto_user`
--

DROP TABLE IF EXISTS `cloto_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cloto_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nick` text NOT NULL,
  `email` text NOT NULL,
  `senha` text NOT NULL,
  `poder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cloto_user`
--

LOCK TABLES `cloto_user` WRITE;
/*!40000 ALTER TABLE `cloto_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `cloto_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_dialogo`
--

DROP TABLE IF EXISTS `ew_dialogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_dialogo` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `entrada` varchar(255) NOT NULL,
  `saida` varchar(255) NOT NULL,
  `personagem` int(8) NOT NULL,
  `uso` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_dialogo`
--

LOCK TABLES `ew_dialogo` WRITE;
/*!40000 ALTER TABLE `ew_dialogo` DISABLE KEYS */;
INSERT INTO `ew_dialogo` VALUES (1,'LIFE','grimorio.dizer(igla a [])',0,0),(2,'LIFE','grimorio.dizer(he[])',0,0),(3,'LIFE','grimorio.dizer(seu life he[])',0,0),(4,'MANA','grimorio.dizer(este é seu mana)',0,0);
/*!40000 ALTER TABLE `ew_dialogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_forumpost`
--

DROP TABLE IF EXISTS `ew_forumpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_forumpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `tipo` varchar(100) NOT NULL DEFAULT '',
  `descricao` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_forumpost`
--

LOCK TABLES `ew_forumpost` WRITE;
/*!40000 ALTER TABLE `ew_forumpost` DISABLE KEYS */;
INSERT INTO `ew_forumpost` VALUES (1,'LIFE','dialogo','Empty!'),(2,'Introducao','system','asdfasdfasd asdf ds');
/*!40000 ALTER TABLE `ew_forumpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_inert`
--

DROP TABLE IF EXISTS `ew_inert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_inert` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_inert`
--

LOCK TABLES `ew_inert` WRITE;
/*!40000 ALTER TABLE `ew_inert` DISABLE KEYS */;
INSERT INTO `ew_inert` VALUES (1,'Igreja','Capela catolica, tao antiga quanto a cidade, contruida em pedra'),(2,'Ferreiro','Loja pequena, com armas e armaduras espalhadas pelas paredes'),(0,'jurema','strBegin\"44\"strEnd'),(7,'jurema','strBegin\"44\"strEnd'),(8,'Jurema','strBegin\"jurema\"strEnd'),(9,'Jurema','strBegin\"jiselsfgsg\"strEnd'),(10,'Jurema','strBegin\"jiselsfgsg\"strEnd');
/*!40000 ALTER TABLE `ew_inert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_object`
--

DROP TABLE IF EXISTS `ew_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_object` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `x` int(8) NOT NULL,
  `y` int(8) NOT NULL,
  `w` int(8) NOT NULL,
  `h` int(8) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_object`
--

LOCK TABLES `ew_object` WRITE;
/*!40000 ALTER TABLE `ew_object` DISABLE KEYS */;
INSERT INTO `ew_object` VALUES (1,-25,-25,50,50,'inert'),(2,2,29,25,25,'inert'),(3,100,100,1,1,'personagem');
/*!40000 ALTER TABLE `ew_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_personagem`
--

DROP TABLE IF EXISTS `ew_personagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_personagem` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_personagem`
--

LOCK TABLES `ew_personagem` WRITE;
/*!40000 ALTER TABLE `ew_personagem` DISABLE KEYS */;
INSERT INTO `ew_personagem` VALUES (3,1,0);
/*!40000 ALTER TABLE `ew_personagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_user`
--

DROP TABLE IF EXISTS `ew_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nick` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(16) NOT NULL,
  `tipo` int(8) NOT NULL,
  `personagem` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_user`
--

LOCK TABLES `ew_user` WRITE;
/*!40000 ALTER TABLE `ew_user` DISABLE KEYS */;
INSERT INTO `ew_user` VALUES (1,'CubeBlack','danie_nerd@hotmail.com','Ragnarok13',4,0),(2,'asdf','danie_nerd@hotmail.com','asdf',1,0);
/*!40000 ALTER TABLE `ew_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-02 11:38:23
