-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: orgunits_development
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Departamento de Matemática','DM','Ed.VII','http://www.dmat.fct.unl.pt/fct/index.do?sub=inicio','2011-06-11 14:59:37','2011-06-11 14:59:37'),(2,'Departamento de Informática','DI','Ed.II','http://www.di.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(3,'Departamento de Ciências e Engenharia do Ambiente','DCEA','Ed. Departamental','http://www.ambientenanova.org/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(4,'Departamento de Ciências dos Materiais','DCM','Ed.II','http://www.dcm.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(5,'Departamento de Ciências da Terra','DCT','Ed.IX','http://www.dct.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(6,'Departamento de Engenharia Civil','DEC','Ed.IX','http://www.dec.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(7,'Departamento de Engenharia Electrotécnica','DEE','Ed.X','http://www.dee.fct.unl.pt/v2/pages/default.html','2011-06-11 14:59:37','2011-06-11 14:59:37'),(8,'Departamento de Engenharia Mecânica e Industrial','DEMI','Ed.VIII','http://www.demi.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(9,'Departamento de Física','DF','Ed.I','http://www.df.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(10,'Departamento de Química','DQ','Ed. Departamental','http://www.dq.fct.unl.pt/index_in.asp','2011-06-11 14:59:37','2011-06-11 14:59:37'),(11,'Departamento de Ciências Sociais Aplicadas','DCSA','Ed.VII','http://www.dcsa.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(12,'Departamento de Conservação e Restauro','DCR','Ed. Departamental','http://www.dcr.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37'),(13,'Departamento de Ciências da Vida','DCV','Ed. Departamental','http://www.dcv.fct.unl.pt/','2011-06-11 14:59:37','2011-06-11 14:59:37');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organs`
--

DROP TABLE IF EXISTS `organs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organ_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `president` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdirector` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organs`
--

LOCK TABLES `organs` WRITE;
/*!40000 ALTER TABLE `organs` DISABLE KEYS */;
INSERT INTO `organs` VALUES (1,'Conselho de Faculdade','Ed.I',NULL,'Prof. Doutor E. Maranha das Neves',NULL,'Conselho de Faculdade Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','pres-cf@fct.unl.pt','351 212 947 881',NULL,'351 212 948 329','2011-06-11 14:59:37','2011-06-11 14:59:37'),(2,'Director','Ed.I',NULL,'Prof. Doutor Fernando Santana',NULL,'Direcção Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','director@fct.unl.pt ','351 212 948 300','15001','351 212 941 999','2011-06-11 14:59:37','2011-06-11 14:59:37'),(3,'Conselho Executivo','Ed.I',NULL,'Prof. Doutor Fernando Santana',NULL,'Conselho Executivo Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','sec-dir@fct.unl.pt','351 212 948 594','15001','351 212 941 999','2011-06-11 14:59:37','2011-06-11 14:59:37'),(4,'Conselho de Gestão','Ed.I',NULL,'Prof. Doutor Fernando Santana',NULL,'Conselho de Gestão Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','sec-dir@fct.unl.pt','351 212 948 300','15001','351 212 941 999','2011-06-11 14:59:37','2011-06-11 14:59:37'),(5,'Conselho Cientifico','Ed.I',NULL,NULL,'Prof. Doutor José Legatheaux Martins','Conselho Científico Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','sec-cc@fct.unl.pt','351 212 948 538','15101','351 212 948 378','2011-06-11 14:59:37','2011-06-11 14:59:37'),(6,'Conselho Pedagógico','Ed.I',NULL,NULL,'Prof. Doutor Jorge Lampreia','Conselho Pedagógico Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','c.pedagogico@fct.unl.pt','351 212 948 544','15201','351 212 949 657','2011-06-11 14:59:37','2011-06-11 14:59:37');
/*!40000 ALTER TABLE `organs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110521131522'),('20110521131537'),('20110521131559'),('20110521131641'),('20110521131658');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secretaries`
--

DROP TABLE IF EXISTS `secretaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secretaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organ_id` int(11) DEFAULT NULL,
  `secretary_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secretaries`
--

LOCK TABLES `secretaries` WRITE;
/*!40000 ALTER TABLE `secretaries` DISABLE KEYS */;
INSERT INTO `secretaries` VALUES (1,1,'Carla Mota',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(2,2,'Elisabete Carreira','sec-direccao@fct.unl.pt ','2011-06-11 14:59:37','2011-06-11 14:59:37'),(3,2,'Celma Padamo','sec-dir@fct.unl.pt','2011-06-11 14:59:37','2011-06-11 14:59:37'),(4,2,'Sónia Ferreira','smm@fct.unl.pt','2011-06-11 14:59:37','2011-06-11 14:59:37'),(5,5,'Amila Resende',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(6,5,'Fátima Antunes',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(7,6,'Paula Almeida',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(8,6,'Andreia Machado',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37');
/*!40000 ALTER TABLE `secretaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `schedule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordenator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'Secção de Contabilidade','09:00 - 17:00','Ed.I',NULL,'Anabela Gomes','Secção de Contabilidade Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rf.c@fct.unl.pt','21 294 83 00','15806','351 212 949 672','2011-06-11 14:59:37','2011-06-11 14:59:37'),(2,1,'Secção de Economato','09:00 - 17:00','H.II',NULL,NULL,'Secção de Economato Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rf.e@fct.unl.pt','21 294 78 10','15818','351 212 948 331','2011-06-11 14:59:37','2011-06-11 14:59:37'),(3,1,'Secção de Centros e Projectos','09:00 - 17:00','Ed.I',NULL,NULL,'Secção de Centros e Projectos Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rf.cp@fct.unl.pt','21 294 83 00','15801','351 212 949 672','2011-06-11 14:59:37','2011-06-11 14:59:37'),(4,1,'Secção de Inventário','09:00 - 17:00','Ed.I',NULL,NULL,'Secção de Inventário Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rf.i@fct.unl.pt','21 294 83 00','15813','351 212 949 672','2011-06-11 14:59:37','2011-06-11 14:59:37'),(5,1,'Tesouraria','09:00 - 17:00','Ed.I',NULL,NULL,'Tesouraria Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rf.t@fct.unl.pt','351 212 949 655','15805','351 212 948 318','2011-06-11 14:59:37','2011-06-11 14:59:37'),(6,2,'Secção de Pessoal','09:00 - 17:00','Ed.I',NULL,'Fátima Pantoja','Secção de Pessoal Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','sec-ndoc@fct.unl.pt','351 212 948 583','12105','351 212 948 362','2011-06-11 14:59:37','2011-06-11 14:59:37'),(7,2,'Secção de Vencimentos e Outros Abonos','09:00 - 17:00','Ed.I',NULL,'Laura Nascimento','Secção de Vencimentos e Outros Abonos Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rh.v@fct.unl.pt','351 212 948 300','12108','351 212 948 362','2011-06-11 14:59:37','2011-06-11 14:59:37'),(8,2,'Secção de Expediente Geral','09:00 - 17:00','Ed.I',NULL,'Fernanda Madeira','Secção de Expediente Geral Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-rh.e@fct.unl.pt','351 212 948 300','12103','351 212 954 461','2011-06-11 14:59:37','2011-06-11 14:59:37'),(9,3,'Secção de Graduação','09:00 - 16:00 Encerra das 12h às 13h durante o mês de Agosto','Ed.I',NULL,'Maria Paula Simão','Secção de Graduação Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-a.g.helpdesk@fct.unl.pt','351 212 948 300','12001','351 212 948 342','2011-06-11 14:59:37','2011-06-11 14:59:37'),(10,3,'Secção de Pós-Graduação','09:00 - 16:00 Encerra das 12h às 13h durante o mês de Agosto','Ed.I',NULL,'Elsa Godinho','Secção de Pós-Graduação Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-a.pg.helpdesk@fct.unl.pt','351 212 948 300','12010','351 212 948 342','2011-06-11 14:59:37','2011-06-11 14:59:37'),(11,3,'Secção de Apoio ao Estudante','09:00 - 16:00 Encerra das 12h às 13h durante o mês de Agosto','Ed.I',NULL,'Bernardina Gonçalves','Secção de Apoio ao Estudante Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-a.ae.mobilidade@fct.unl.pt','351 212 948 300','12012 / 12013','351 212 948 342','2011-06-11 14:59:37','2011-06-11 14:59:37'),(12,4,'Secção de Manutenção e Serviços Gerais','09:00 - 17:00','Centro de Excelência do Ambiente',NULL,'Filipa Santos','Secção de Manutenção e Serviços Gerais Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-at.sg.helpdesk@fct.unl.pt','351 212 948 300','13001','351 212 948 599','2011-06-11 14:59:37','2011-06-11 14:59:37'),(13,4,'Secção de Fiscalização e Espaços Exteriores','09:00 - 17:00','H.II',NULL,'Eduardo Paixão','Secção de Fiscalização e Espaços Exteriores Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-at.ee@fct.unl.pt','351 212 948 300','15019',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(14,4,'Secção de Segurança e Saúde no Trabalho','09:00 - 17:00','Centro de Excelência do Ambiente',NULL,'Cláudia Saque','Secção de Segurança e Saúde no Trabalho Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-at.s.helpdesk@fct.unl.pt','351 212 948 300','15401/2','351 212 948 577','2011-06-11 14:59:37','2011-06-11 14:59:37'),(15,4,'Secção de Planeamento Físico e Ambiental','09:00 - 17:00','Centro de Excelência do Ambiente',NULL,'Filipa Santos','Secção de Planeamento Físico e Ambiental Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-at.p@fct.unl.pt','351 212 948 300','13002','351 212 948 599','2011-06-11 14:59:37','2011-06-11 14:59:37'),(16,5,'Secção de Apoio aos Utilizadores, Parque Informático e Logística','9:00 - 17:00','Ed.III',NULL,'Susana Pereira','Secção de Apoio aos Utilizadores, Parque Informático e Logística Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','helpdesk@fct.unl.pt','351 212 948 300','15353','351 212 948 548','2011-06-11 14:59:37','2011-06-11 14:59:37'),(17,5,'Secção de Infra-estruturas de Comunicação, Sistemas, Qualidade e Segurança','09:00 - 17:00','Ed.III',NULL,'Samuel Neves','Secção de Infra-estruturas de Comunicação, Sistemas, Qualidade e Segurança Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','helpdesk@fct.unl.pt','351 212 948 300','15353','351 212 948 548','2011-06-11 14:59:37','2011-06-11 14:59:37'),(18,5,'Secção de Sistemas de Informação','09:00 - 17:00','Ed.III',NULL,'Samuel Neves','Secção de Sistemas de Informação Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','helpdesk@fct.unl.pt','351 212 948 300','15353','351 212 948 548','2011-06-11 14:59:37','2011-06-11 14:59:37'),(19,6,'Secção de Difusão de Informação, Cultura e Eventos','09:00 - 17:00','Centro de Excelência do Ambiente',NULL,'Carla Marina Marques','Secção de Difusão de Informação, Cultura e Eventos Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-cc.geral@fct.unl.pt','351 212 948 300','15014','351 212 948 329','2011-06-11 14:59:37','2011-06-11 14:59:37'),(20,6,'Secção de Comunicação e Imagem','09:00 - 17:00','Centro de Excelência do Ambient',NULL,'Sónia Mariano','Secção de Comunicação e Imagem Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-cc.design@fct.unl.pt','351 212 948 300','15010/15/29','351 212 948 329','2011-06-11 14:59:37','2011-06-11 14:59:37'),(21,7,'Secção Administrativa','09:00 - 17:00','Biblioteca',NULL,'Sílvia Reis','Secção Administrativa Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-db.helpdesk@fct.unl.pt','351 212 948 300','15701','351 212 948 347','2011-06-11 14:59:37','2011-06-11 14:59:37'),(22,7,'Secção de Apoio ao Utilizador','09:00 - 17:00','Biblioteca',NULL,'Maria do Rosário Duarte','Secção de Apoio ao Utilizador Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-db.helpdesk@fct.unl.pt','351 212 948 300','15701','351 212 948 347','2011-06-11 14:59:37','2011-06-11 14:59:37'),(23,7,'Secção de Gestão de Sistemas de Informação','09:00 - 17:00','Biblioteca',NULL,'Salima Rehemtula','Secção de Gestão de Sistemas de Informação Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-db.helpdesk@fct.unl.pt','351 212 948 300','15701','351 212 948 347','2011-06-11 14:59:37','2011-06-11 14:59:37'),(24,8,'Unidade de Apoio à Execução Pedagógica e Formação Contínua','09:00 - 17:00','Ed.I',NULL,'Jorge Lampreia','Unidade de Apoio à Execução Pedagógica e Formação Contínua Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','gab-ad.a@fct.unl.pt','21 294 85 44','15201','21 294 96 57','2011-06-11 14:59:37','2011-06-11 14:59:37'),(25,8,'Unidade de Gestão da Qualidade','09:00 - 17:00','Ed.I',NULL,'Zulema Pereira','Unidade de Gestão da Qualidade Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','gab-ad.qualidade@fct.unl.pt','351 212 948 300','15024','351 212 949 622','2011-06-11 14:59:37','2011-06-11 14:59:37'),(26,8,'Unidade de Assessoria Jurídica','09:00 - 17:00','Ed.I',NULL,'Luís Gaspar','Unidade de Assessoria Jurídica Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','gab-ad.aj@fct.unl.pt','351 212 948 300','15020','351 212 948 311','2011-06-11 14:59:37','2011-06-11 14:59:37'),(27,8,'Unidade de Contratos','09:00 - 17:00','Ed.I',NULL,'Luís Gaspar','Unidade de Contratos Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','gab-ad.c@fct.unl.pt','351 212 948 300','15005','351 212 948 311','2011-06-11 14:59:37','2011-06-11 14:59:37'),(28,8,'Unidade de Apoio a Projectos e Relações Exteriores','09:00 - 17:00','Biblioteca',NULL,'Susana Barreiros','Unidade de Apoio a Projectos e Relações Exteriores Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','gab-ad.formar@fct.unl.pt','351 212 947 897','15023',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(29,8,'Unidade de Promoção do Empreendedorismo e Transferência de Tecnologia','09:00 - 17:00','Biblioteca',NULL,'Susana Barreiros','Unidade de Promoção do Empreendedorismo e Transferência de Tecnologia Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','gab-ad.tto@fct.unl.pt','351 212 947 897','15034','','2011-06-11 14:59:37','2011-06-11 14:59:37');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `space` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordenator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Divisão de Recursos Financeiros','Ed.I','1º Piso','Anabela Gomes',NULL,NULL,NULL,NULL,NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(2,'Divisão de Recursos Humanos','Ed.I','1º Piso','Rita Monteiro',NULL,NULL,NULL,NULL,NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(3,'Divisão Académica','Ed.I','1º Piso','Isabel Sequeira Pinto',NULL,NULL,NULL,NULL,NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(4,'Divisão de Apoio Técnico',NULL,NULL,'Luís Gaspar',NULL,NULL,NULL,NULL,NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37'),(5,'Divisão de Informática','Ed.III',NULL,'Samuel Neves','Divisão de Informática Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','helpdesk@fct.unl.pt','351 212 947 845','15353','351 212 948 548','2011-06-11 14:59:37','2011-06-11 14:59:37'),(6,'Divisão de Comunicação e Cultura','Centro de Excelência do Ambiente',NULL,'Cristina Groba','Divisão de Comunicação e Cultura Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-cc.geral@fct.unl.pt','351 212 948 300','15014','351 212 948 329','2011-06-11 14:59:37','2011-06-11 14:59:37'),(7,'Divisão de Documentação e Biblioteca','Biblioteca',NULL,'José Moura','Divisão de Documentação e Biblioteca Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','div-db.coordenador@fct.unl.pt','351 212 948 300','15701','351 212 948 347','2011-06-11 14:59:37','2011-06-11 14:59:37'),(8,'Gabinete de Apoio à Direcção','Ed.I',NULL,NULL,'Gabinete de Apoio à Direcção Faculdade de Ciências e Tecnologia 2829-516 Caparica Portugal','sec-dir@fct.unl.pt','351 212 948 300','15001',NULL,'2011-06-11 14:59:37','2011-06-11 14:59:37');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-06-11 17:30:02
