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
  `entrada` varchar(255) DEFAULT '',
  `saida` varchar(255) NOT NULL,
  `personagem` int(8) NOT NULL,
  `uso` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_dialogo`
--

LOCK TABLES `ew_dialogo` WRITE;
/*!40000 ALTER TABLE `ew_dialogo` DISABLE KEYS */;
INSERT INTO `ew_dialogo` VALUES (1,'LIFE','grimorio.dizer(igual a );me.life;',0,0),(2,'LIFE','grimorio.dizer(he );me.life;',0,0),(3,'LIFE','grimorio.dizer(seu life he);me.life;',0,45),(4,'MANA','grimorio.dizer(este seu mana); me.magi;',0,27),(29,'A','Empty!',0,6),(0,'','grimorio.perceber();',0,109),(39,'[LOGUED=]','Empty!',0,0),(40,'[LOGUED=FALSE]','grimorio.dizer(Poderia me Dizer quem es);me.setStatusT(weit,user);grimorio.setWeit(user);',0,29),(41,'USAR','Empty!',0,0),(42,'JUREMA','Empty!',0,17),(43,'JUEMA','Empty!',0,0),(44,'GANGORRA','Empty!',0,0),(45,'HUNTER','Empty!',0,0),(46,'D','Empty!',0,0),(47,'DF','Empty!',0,0),(48,'JURE','Empty!',0,1),(49,'MINERVA','Empty!',0,7),(50,'LIDO','Empty!',0,0),(51,'[LOGUED=TRUE]','grimorio.dizer(Bem vindo de volta );user.nick;grimorio.dizer(! Parece que a pancada foi feia. Lembra-se de alguma coisa?);grimorio.setWeit(quest_noob-se_lembra?);',0,26),(52,'JRUEMA','Empty!',0,0),(53,'AMANDA','Empty!',0,0),(54,'MADMA','Empty!',0,0),(55,'MANDA','Empty!',0,0),(56,'MADNA','Empty!',0,1),(57,'ALINE','Empty!',0,1),(58,'CIBELE','Empty!',0,0),(59,'ANA','Empty!',0,1),(60,'ANDERSOM','Empty!',0,0),(61,'ANDERSON','Empty!',0,0),(62,'ANDERS','Empty!',0,0),(63,'DIZER','Empty!',0,0),(64,'AMORA','Empty!',0,0),(65,'MIZERVA','Empty!',0,0),(66,'AMOR','Empty!',0,0),(102,'[AMORA=VERDE][LOGUED=FALSE]','Empty!',0,1),(67,'AJUMA','Empty!',0,0),(68,'ARJUMA','Empty!',0,0),(69,'ADSF','Empty!',0,0),(70,'G','Empty!',0,0),(71,'ASDF','Empty!',0,0),(72,'AE','Empty!',0,0),(73,'ASD','Empty!',0,0),(74,'SDFG','Empty!',0,0),(75,'S','Empty!',0,0),(76,'FDH','Empty!',0,0),(77,'FGH','Empty!',0,0),(78,'FSE','Empty!',0,0),(79,'RT','Empty!',0,0),(80,'SGJ','Empty!',0,0),(81,'F','Empty!',0,0),(82,'UI','Empty!',0,0),(83,'YU','Empty!',0,0),(84,'KGHJ','Empty!',0,0),(85,'RET','Empty!',0,0),(86,'S DF','Empty!',0,0),(87,'GS','Empty!',0,0),(88,'Y','Empty!',0,0),(89,'DN','Empty!',0,0),(90,'TU','Empty!',0,0),(91,'MFTI','Empty!',0,0),(92,'HD','Empty!',0,0),(93,'GFH','Empty!',0,0),(94,'DFGH','Empty!',0,0),(95,'TGF','Empty!',0,0),(96,'TUY','Empty!',0,0),(97,'DGH','Empty!',0,0),(98,'MILENA','grimorio.dizer(deve ser uma garota bonita!);',0,0),(99,'.','Empty!',0,0),(100,'ME','grimorio.dizer(voce he );user.nick;',0,0),(101,'USER','user;',0,0),(103,'JUREGUE','Empty!',0,0),(104,'[WEIT=USER][LOGUED=FALSE]','Empty!',0,88),(105,'[WEIT=USER][LOGUED=TRUE]','Empty!',0,18),(106,'ASDFASDFAG','Empty!',0,2),(107,'SVCBXRFRT','Empty!',0,0),(108,'AZUL','Empty!',0,7),(109,'VERDE','Empty!',0,0),(110,'PURPLE','Empty!',0,8),(111,'ANDE','Empty!',0,2),(112,'CORRA','Empty!',0,0),(113,'ATAQUE','Empty!',0,1),(114,'VEJA','Empty!',0,0),(115,'O QUE TEM AI?','Empty!',0,1),(116,'O QUE TEM AI','Empty!',0,2),(117,'IFE','Empty!',0,1),(118,'MNAA','Empty!',0,0),(119,'QUAL O MEU MANA','Empty!',0,0),(120,'QUANTO ESTA O MEU MANA','Empty!',0,3),(121,'QUAL O MEU MANA?','Empty!',0,1),(122,'QUANTO ESTA O MEU MANA?','Empty!',0,0),(123,'VER','Empty!',0,0),(124,'BELONA','Empty!',0,1),(125,'JULETE','Empty!',0,0),(126,'SIBELE','Empty!',0,0),(127,'AVANI','Empty!',0,0),(128,'JSON','Empty!',0,9),(141,'QUANTO ESTA MEU MANA','Empty!',0,0),(138,'MANNA','Empty!',0,0),(139,'QUNTO ESTA O MEU MANA','Empty!',0,0),(140,'QUANTO ESTA MEU MEN','Empty!',0,0),(142,'O QUE TEM AIW','Empty!',0,0),(143,'O QUE TEM IN','Empty!',0,0),(144,'MAN','Empty!',0,0);
/*!40000 ALTER TABLE `ew_dialogo` ENABLE KEYS */;
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
INSERT INTO `ew_inert` VALUES (1,'Casa Das Armas','strBegin\"Casa debelona\"strEnd'),(2,'O machaado do anÃ£o','strBegin\"Loja pequena\"strEnd'),(0,'strBegin\"\"strEnd',''),(11,'PortÃ£o de Hermes','PortÃ£o dimencional para outra cidade'),(12,'Ervas da eva','\"strEnd'),(13,'PenÃ§Ã£o Hinata','\"strEnd\"strEnd'),(14,'Rio ira de Leto','strBegin\"s\"strEnd'),(15,'Floresta negra','\"strEnd\"strEnd'),(16,'Coliseum','strBegin\"\"strEnd'),(17,'Rolos do Hobs','strBegin\"\"strEnd'),(18,'SalÃ£o do soluÃ§o','\"strEnd\"strEnd');
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_object`
--

LOCK TABLES `ew_object` WRITE;
/*!40000 ALTER TABLE `ew_object` DISABLE KEYS */;
INSERT INTO `ew_object` VALUES (1,-25,-77,50,50,'inert'),(2,2,29,6,10,'inert'),(3,100,100,1,1,'personagem'),(11,-1,-1,2,2,'inert'),(12,27,-25,5,5,'inert'),(13,-42,0,15,10,'inert'),(14,-200,-200,400,9,'inert'),(15,-452,-150,400,300,'inert'),(16,-52,29,50,50,'inert'),(17,27,0,15,5,'inert'),(18,10,29,15,10,'inert');
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
  `name` varchar(100) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_personagem`
--

LOCK TABLES `ew_personagem` WRITE;
/*!40000 ALTER TABLE `ew_personagem` DISABLE KEYS */;
INSERT INTO `ew_personagem` VALUES (3,'ApoKrifo',1);
/*!40000 ALTER TABLE `ew_personagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_quests`
--

DROP TABLE IF EXISTS `ew_quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_quests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `descricao` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_quests`
--

LOCK TABLES `ew_quests` WRITE;
/*!40000 ALTER TABLE `ew_quests` DISABLE KEYS */;
INSERT INTO `ew_quests` VALUES (1,'noob','Primeira quest do jogo'),(2,'nao logado','Para nao jogadores');
/*!40000 ALTER TABLE `ew_quests` ENABLE KEYS */;
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
  `config` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_user`
--

LOCK TABLES `ew_user` WRITE;
/*!40000 ALTER TABLE `ew_user` DISABLE KEYS */;
INSERT INTO `ew_user` VALUES (1,'CubeBlack','danie_nerd@hotmail.com','Ragnarok13',4,2,''),(2,'asdf','danie_nerd@hotmail.com','asdf',1,1,'');
/*!40000 ALTER TABLE `ew_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ew_wiki`
--

DROP TABLE IF EXISTS `ew_wiki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ew_wiki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `tipo` varchar(100) NOT NULL DEFAULT '',
  `descricao` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ew_wiki`
--

LOCK TABLES `ew_wiki` WRITE;
/*!40000 ALTER TABLE `ew_wiki` DISABLE KEYS */;
INSERT INTO `ew_wiki` VALUES (1,'LIFE','dialogo','Empty!'),(2,'Introducao','system','asdfasdfasd asdf ds');
/*!40000 ALTER TABLE `ew_wiki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-14 20:31:59
