/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.14-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ttran3
-- ------------------------------------------------------
-- Server version	10.11.14-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor_in_prodid1_venueid8_2026_04_22_19_30_performance`
--

DROP TABLE IF EXISTS `actor_in_prodid1_venueid8_2026_04_22_19_30_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_in_prodid1_venueid8_2026_04_22_19_30_performance` (
  `person_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_in_prodid1_venueid8_2026_04_22_19_30_performance`
--

LOCK TABLES `actor_in_prodid1_venueid8_2026_04_22_19_30_performance` WRITE;
/*!40000 ALTER TABLE `actor_in_prodid1_venueid8_2026_04_22_19_30_performance` DISABLE KEYS */;
INSERT INTO `actor_in_prodid1_venueid8_2026_04_22_19_30_performance` VALUES
(1002,'Marcus Hale','555-010-1002','marcus.hale002@example.com'),
(1003,'Selena Brooks','555-010-1003','selena.brooks003@example.com'),
(1004,'Jordan Knight','555-010-1004','jordan.knight004@example.com'),
(1011,'Camila Frost','555-010-1011','camila.frost011@example.com'),
(1015,'Drake Monroe','555-010-1015','drake.monroe015@example.com');
/*!40000 ALTER TABLE `actor_in_prodid1_venueid8_2026_04_22_19_30_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comedy_show`
--

DROP TABLE IF EXISTS `comedy_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comedy_show` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `genre_name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comedy_show`
--

LOCK TABLES `comedy_show` WRITE;
/*!40000 ALTER TABLE `comedy_show` DISABLE KEYS */;
INSERT INTO `comedy_show` VALUES
('Art','Three longtime friends. One ridiculously expensive painting. Is it art, or is it just the world’s priciest inside joke? As the three men debate the piece and what truly constitutes “art,” they uncover long-held grievances and tension points in their relat','Yasmina Reza','Comedy'),
('For the People','A groundbreaking 2023 play that focuses on Native voices, featuring a Minneapolis Native community\'s experience through the story of April Dakota, who faces challenges opening a wellness center on the Franklin Avenue Task Force. ','Larissa FastHorse, Ty Defoe','Comedy'),
('The imaginary invalid','The three-act comedy ballet centers on Argan, a wealthy hypochondriac who plans to marry his daughter Angélique to a doctor to secure free medical care. Through the hijinks of his witty servant Toinette and his brother, his greedy wife is exposed, his dau',' Molière','Comedy'),
('The Outsider','A political comedy about Ned Newley, a timid, socially awkward man who is accidentally elected governor of a state after a scandal forces the previous governor out.','Paul Slade Smith','Comedy'),
('The Sunshine Boys','The story follows Willie Clark and Al Lewis, who were once a highly successful vaudeville comedy team. However, after over 40 years of performing together, their partnership ended acrimoniously. Some dozen years later, a young theatrical agent, who is als','Neil Simon','Comedy');
/*!40000 ALTER TABLE `comedy_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES
('Children','Designed for youth, featuring engaging, age-appropriate content.'),
('Comedy','Light-hearted plays designed to amuse, often highlighting absurdity and social follies'),
('Crime','Centered on the commission, investigation, and resolution of a criminal act, often a murder or high-stakes heist.'),
('Drama','In-depth character development, realistic emotions, and serious themes.'),
('Epic','A style (often associated with Brecht) that uses alienation effects to keep audiences emotionally detached to focus on political/social commentary.'),
('Farce','A subgenre of comedy relying on slapstick, mistaken identities, and fast-paced, absurd situations '),
('History','Plays based on real historical figures or events, popularized by Shakespeare.'),
('Immersive','Performances that break the fourth wall, placing the audience inside the \"world of the play\"'),
('Melodrama','Exaggerated, emotional drama with clear-cut distinctions between good and evil, often featuring sensational plots.'),
('Musical','Stories told through a mix of spoken dialogue, acting, and song'),
('One-act','Short, concise plays focusing on a single issue.'),
('Romance','Focuses on the intense emotional journey and developing relationship between two characters'),
('Romantic Comedy','Combines elements of romantic love with humorous plotlines, focusing on the journey of characters navigating relationships'),
('Tragedy','A serious, noble protagonist\'s inevitable downfall, caused by a combination of fate and a fatal flaw (hamartia)'),
('Tragicomedy','Blends aspects of both tragic and comic forms, resulting in a work that is neither purely sad nor purely lighthearted');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`),
  KEY `fk_venue_IDb` (`venue_ID`),
  CONSTRAINT `fk_production_IDc` FOREIGN KEY (`production_ID`) REFERENCES `production` (`ID`),
  CONSTRAINT `fk_venue_IDb` FOREIGN KEY (`venue_ID`) REFERENCES `venue` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES
(1,1101,'2026-04-22','19:30:00'),
(1,1102,'2026-04-25','14:00:00'),
(1,1103,'2026-05-02','19:30:00'),
(2,1101,'2026-04-23','19:00:00'),
(2,1105,'2026-04-26','13:00:00'),
(3,1101,'2026-03-28','19:30:00'),
(3,1107,'2026-04-24','19:30:00'),
(3,1108,'2026-04-30','19:30:00'),
(3,1109,'2026-05-09','14:00:00'),
(4,1110,'2026-04-21','19:00:00'),
(4,1112,'2026-04-27','19:00:00'),
(5,1113,'2026-04-26','19:30:00'),
(5,1114,'2026-05-03','14:00:00'),
(5,1115,'2026-05-10','19:30:00'),
(6,1101,'2026-04-18','19:30:00'),
(6,1102,'2026-04-23','19:30:00'),
(7,1103,'2026-04-25','11:00:00'),
(7,1104,'2026-04-26','15:00:00'),
(7,1105,'2026-05-03','14:00:00'),
(7,1106,'2026-05-17','11:00:00'),
(8,1107,'2026-04-12','19:00:00'),
(8,1108,'2026-04-24','19:00:00'),
(9,1109,'2026-04-26','15:00:00'),
(9,1110,'2026-05-01','19:00:00'),
(9,1112,'2026-05-08','19:00:00'),
(10,1113,'2026-04-19','19:30:00'),
(10,1114,'2026-04-22','19:30:00'),
(11,1101,'2026-05-02','19:30:00'),
(11,1102,'2026-05-16','19:30:00'),
(11,1115,'2026-04-17','19:30:00'),
(12,1103,'2026-04-27','20:00:00'),
(12,1104,'2026-05-15','20:00:00'),
(13,1105,'2026-04-20','19:00:00'),
(13,1106,'2026-04-25','20:00:00'),
(13,1107,'2026-05-02','20:00:00'),
(13,1108,'2026-05-09','20:00:00'),
(14,1109,'2026-04-21','19:30:00'),
(14,1110,'2026-05-01','19:30:00'),
(15,1112,'2026-04-27','19:30:00'),
(15,1113,'2026-05-03','14:00:00'),
(15,1114,'2026-05-09','14:00:00'),
(16,1101,'2026-05-11','19:00:00'),
(16,1115,'2026-04-23','18:30:00'),
(17,1102,'2026-04-24','19:00:00'),
(17,1103,'2026-05-01','19:00:00'),
(17,1104,'2026-05-07','19:00:00'),
(18,1105,'2026-04-26','14:00:00'),
(18,1106,'2026-05-05','19:30:00'),
(19,1107,'2026-04-22','18:30:00'),
(19,1108,'2026-04-29','19:00:00'),
(19,1109,'2026-05-06','19:00:00'),
(19,1110,'2026-05-13','19:00:00'),
(20,1112,'2026-04-21','19:00:00'),
(20,1113,'2026-05-04','19:00:00');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_prodid1_venueid8_2026_04_22_19_30`
--

DROP TABLE IF EXISTS `performance_prodid1_venueid8_2026_04_22_19_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_prodid1_venueid8_2026_04_22_19_30` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_prodid1_venueid8_2026_04_22_19_30`
--

LOCK TABLES `performance_prodid1_venueid8_2026_04_22_19_30` WRITE;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30` DISABLE KEYS */;
INSERT INTO `performance_prodid1_venueid8_2026_04_22_19_30` VALUES
(1,1101,'2026-04-22','19:30:00');
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_prodid1_venueid8_2026_04_22_19_30_actor`
--

DROP TABLE IF EXISTS `performance_prodid1_venueid8_2026_04_22_19_30_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_prodid1_venueid8_2026_04_22_19_30_actor` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`,`role_name`,`person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_prodid1_venueid8_2026_04_22_19_30_actor`
--

LOCK TABLES `performance_prodid1_venueid8_2026_04_22_19_30_actor` WRITE;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_actor` DISABLE KEYS */;
INSERT INTO `performance_prodid1_venueid8_2026_04_22_19_30_actor` VALUES
(1,1101,'2026-04-22','19:30:00','Actor',1002,'Marcus Hale','555-010-1002','marcus.hale002@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1003,'Selena Brooks','555-010-1003','selena.brooks003@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1004,'Jordan Knight','555-010-1004','jordan.knight004@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1011,'Camila Frost','555-010-1011','camila.frost011@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1015,'Drake Monroe','555-010-1015','drake.monroe015@example.com');
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_prodid1_venueid8_2026_04_22_19_30_actors`
--

DROP TABLE IF EXISTS `performance_prodid1_venueid8_2026_04_22_19_30_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_prodid1_venueid8_2026_04_22_19_30_actors` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`,`role_name`,`person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_prodid1_venueid8_2026_04_22_19_30_actors`
--

LOCK TABLES `performance_prodid1_venueid8_2026_04_22_19_30_actors` WRITE;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_actors` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_prodid1_venueid8_2026_04_22_19_30_production_people`
--

DROP TABLE IF EXISTS `performance_prodid1_venueid8_2026_04_22_19_30_production_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_prodid1_venueid8_2026_04_22_19_30_production_people` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`,`role_name`,`person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_prodid1_venueid8_2026_04_22_19_30_production_people`
--

LOCK TABLES `performance_prodid1_venueid8_2026_04_22_19_30_production_people` WRITE;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_production_people` DISABLE KEYS */;
INSERT INTO `performance_prodid1_venueid8_2026_04_22_19_30_production_people` VALUES
(1,1101,'2026-04-22','19:30:00','Actor',1002,'Marcus Hale','555-010-1002','marcus.hale002@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1003,'Selena Brooks','555-010-1003','selena.brooks003@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1004,'Jordan Knight','555-010-1004','jordan.knight004@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1011,'Camila Frost','555-010-1011','camila.frost011@example.com'),
(1,1101,'2026-04-22','19:30:00','Actor',1015,'Drake Monroe','555-010-1015','drake.monroe015@example.com'),
(1,1101,'2026-04-22','19:30:00','Director',1001,'Ariana Stone','555-010-1001','ariana.stone001@example.com');
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_production_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_prodid1_venueid8_2026_04_22_19_30_production_team`
--

DROP TABLE IF EXISTS `performance_prodid1_venueid8_2026_04_22_19_30_production_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_prodid1_venueid8_2026_04_22_19_30_production_team` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`,`role_name`,`person_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_prodid1_venueid8_2026_04_22_19_30_production_team`
--

LOCK TABLES `performance_prodid1_venueid8_2026_04_22_19_30_production_team` WRITE;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_production_team` DISABLE KEYS */;
INSERT INTO `performance_prodid1_venueid8_2026_04_22_19_30_production_team` VALUES
(1,1101,'2026-04-22','19:30:00','Actor',1002),
(1,1101,'2026-04-22','19:30:00','Actor',1003),
(1,1101,'2026-04-22','19:30:00','Actor',1004),
(1,1101,'2026-04-22','19:30:00','Actor',1011),
(1,1101,'2026-04-22','19:30:00','Actor',1015),
(1,1101,'2026-04-22','19:30:00','Director',1001);
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_22_19_30_production_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_prodid1_venueid8_2026_04_26_19_30`
--

DROP TABLE IF EXISTS `performance_prodid1_venueid8_2026_04_26_19_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `performance_prodid1_venueid8_2026_04_26_19_30` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`production_ID`,`venue_ID`,`date`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_prodid1_venueid8_2026_04_26_19_30`
--

LOCK TABLES `performance_prodid1_venueid8_2026_04_26_19_30` WRITE;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_26_19_30` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_prodid1_venueid8_2026_04_26_19_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES
(1001,'Ariana Stone','555-010-1001','ariana.stone001@example.com'),
(1002,'Marcus Hale','555-010-1002','marcus.hale002@example.com'),
(1003,'Selena Brooks','555-010-1003','selena.brooks003@example.com'),
(1004,'Jordan Knight','555-010-1004','jordan.knight004@example.com'),
(1005,'Priya Lane','555-010-1005','priya.lane005@example.com'),
(1006,'Ethan Cross','555-010-1006','ethan.cross006@example.com'),
(1007,'Mila Rivers','555-010-1007','mila.rivers007@example.com'),
(1008,'Noah Blake','555-010-1008','noah.blake008@example.com'),
(1009,'Zendaya Hart','555-010-1009','zendaya.hart009@example.com'),
(1010,'Leo Carter','555-010-1010','leo.carter010@example.com'),
(1011,'Camila Frost','555-010-1011','camila.frost011@example.com'),
(1012,'Mason Reed','555-010-1012','mason.reed012@example.com'),
(1013,'Rihanna Vale','555-010-1013','rihanna.vale013@example.com'),
(1014,'Olivia Chase','555-010-1014','olivia.chase014@example.com'),
(1015,'Drake Monroe','555-010-1015','drake.monroe015@example.com'),
(1016,'Harper Quinn','555-010-1016','harper.quinn016@example.com'),
(1017,'Luna Bennett','555-010-1017','luna.bennett017@example.com'),
(1018,'Chris Dalton','555-010-1018','chris.dalton018@example.com'),
(1019,'Sofia Miles','555-010-1019','sofia.miles019@example.com'),
(1020,'Taylor Hayes','555-010-1020','taylor.hayes020@example.com'),
(1021,'Nina Cole','555-010-1021','nina.cole021@example.com'),
(1022,'Bruno Park','555-010-1022','bruno.park022@example.com'),
(1023,'Ava Sinclair','555-010-1023','ava.sinclair023@example.com'),
(1024,'Jaden Pierce','555-010-1024','jaden.pierce024@example.com'),
(1025,'Billie Rowan','555-010-1025','billie.rowan025@example.com'),
(1026,'Nora Ellis','555-010-1026','nora.ellis026@example.com'),
(1027,'Shawn Mercer','555-010-1027','shawn.mercer027@example.com'),
(1028,'Emma Sterling','555-010-1028','emma.sterling028@example.com'),
(1029,'Kai Turner','555-010-1029','kai.turner029@example.com'),
(1030,'Doja Collins','555-010-1030','doja.collins030@example.com'),
(1031,'Liam Foster','555-010-1031','liam.foster031@example.com'),
(1032,'Megan Scott','555-010-1032','megan.scott032@example.com'),
(1033,'Tori Vega','555-010-1033','badbunny.vega033@example.com'),
(1034,'Ivy Morgan','555-010-1034','ivy.morgan034@example.com'),
(1035,'Zayn Cooper','555-010-1035','zayn.cooper035@example.com'),
(1036,'Chloe Summers','555-010-1036','chloe.summers036@example.com'),
(1037,'Pedro Laurent','555-010-1037','pedro.laurent037@example.com'),
(1038,'Sabrina Wells','555-010-1038','sabrina.wells038@example.com'),
(1039,'Jacob Flynn','555-010-1039','jacob.flynn039@example.com'),
(1040,'Dua Mercer','555-010-1040','dua.mercer040@example.com'),
(1041,'Elena Brooks','555-010-1041','elena.brooks041@example.com'),
(1042,'Harry Vaughn','555-010-1042','harry.vaughn042@example.com'),
(1043,'Gigi Palmer','555-010-1043','gigi.palmer043@example.com'),
(1044,'Rosalia Dean','555-010-1044','rosalia.dean044@example.com'),
(1045,'Miles Everett','555-010-1045','miles.everett045@example.com'),
(1046,'Anya Hughes','555-010-1046','anya.hughes046@example.com'),
(1047,'Rachel Ross','555-010-1047','theweeknd.ross047@example.com'),
(1048,'Naomi Grant','555-010-1048','naomi.grant048@example.com'),
(1049,'Julian West','555-010-1049','julian.west049@example.com'),
(1050,'Bella Hart','555-010-1050','bella.hart050@example.com');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `ID` int(11) NOT NULL,
  `show_name` varchar(255) NOT NULL,
  `theaterCompany_ID` int(11) NOT NULL,
  `ageRating` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_show_name` (`show_name`),
  KEY `fk_theaterCompany_IDb` (`theaterCompany_ID`),
  CONSTRAINT `fk_show_name` FOREIGN KEY (`show_name`) REFERENCES `show_relation` (`name`),
  CONSTRAINT `fk_theaterCompany_IDb` FOREIGN KEY (`theaterCompany_ID`) REFERENCES `theaterCompany` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES
(1,'Father of the Bride',10001,'PG'),
(2,'Once Upon a Mattress',10002,'G'),
(3,'The Sunshine Boys',10003,'PG-13'),
(4,'Boxes',10004,'PG'),
(5,'Cyrano de Bergerac',10005,'PG-13'),
(6,'The Outsider',10006,'PG-13'),
(7,'Matilda The Musical',10007,'G'),
(8,'Little Women',10008,'PG'),
(9,'For the People',10009,'PG-13'),
(10,'Art',10010,'PG-13'),
(11,'Spamalot',10001,'PG-13'),
(12,'Six',10002,'PG-13'),
(13,'Dirty Dancing',10003,'PG-13'),
(14,'Dear Evan Hansen',10004,'PG-13'),
(15,'Catch me if you can',10005,'PG-13'),
(16,'Giants in the sky',10006,'PG'),
(17,'The imaginary invalid',10007,'PG'),
(18,'Caught in the Net',10008,'PG-13'),
(19,'Matilda The Musical',10009,'G'),
(20,'Little Women',10010,'PG');
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_role`
--

DROP TABLE IF EXISTS `production_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_role` (
  `production_ID` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  PRIMARY KEY (`production_ID`,`role_name`,`characterName`),
  KEY `fk_role_name` (`role_name`),
  CONSTRAINT `fk_production_ID` FOREIGN KEY (`production_ID`) REFERENCES `production` (`ID`),
  CONSTRAINT `fk_role_name` FOREIGN KEY (`role_name`) REFERENCES `role_relation` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_role`
--

LOCK TABLES `production_role` WRITE;
/*!40000 ALTER TABLE `production_role` DISABLE KEYS */;
INSERT INTO `production_role` VALUES
(1,'Actor','Juliet'),
(1,'Actor','Romeo'),
(1,'Assistant Director','A'),
(1,'Director','A'),
(1,'Production Manager','A'),
(1,'Stage Manager','A'),
(2,'Actor','Hamlet'),
(2,'Actor','Ophelia'),
(2,'Audio Engineer','A'),
(2,'Director','A'),
(2,'Lighting Designer','A'),
(2,'Sound Designer','A'),
(2,'Technical Director','A'),
(3,'Actor','Eliza_Doolittle'),
(3,'Actor','Jean_Valjean'),
(3,'Costume Designer','A'),
(3,'Director','A'),
(3,'Hair and Makeup Artist','A'),
(3,'Props Manager','A'),
(3,'Set Designer','A'),
(3,'Wardrobe Supervisor','A'),
(4,'Actor','Cosette'),
(4,'Actor','Fantine'),
(4,'Box Office Manager','A'),
(4,'Choreographer','A'),
(4,'Director','A'),
(4,'Front of House Manager','A'),
(4,'Lighting Designer','A'),
(4,'Music Director','A'),
(4,'Stage Manager','A'),
(5,'Actor','Inspector_Javert'),
(5,'Actor','Matilda_Wormwood'),
(5,'Director','A'),
(5,'Master Electrician','A'),
(5,'Props Manager','A'),
(5,'Stage Manager','A'),
(6,'Actor','Agnes'),
(6,'Actor','Miss_Honey'),
(6,'Carpenter','A'),
(6,'Director','A'),
(6,'Lighting Designer','A'),
(6,'Scenic Artist','A'),
(6,'Sound Designer','A'),
(7,'Actor','Beatrice'),
(7,'Actor','Catherine'),
(7,'Assistant Director','A'),
(7,'Costume Designer','A'),
(7,'Director','A'),
(7,'Production Manager','A'),
(7,'Props Manager','A'),
(7,'Set Designer','A'),
(8,'Actor','Lucy'),
(8,'Actor','Mr_Darcy'),
(8,'Audio Engineer','A'),
(8,'Choreographer','A'),
(8,'Director','A'),
(8,'Lighting Designer','A'),
(8,'Music Director','A'),
(8,'Stage Manager','A'),
(8,'Technical Director','A'),
(9,'Actor','Elizabeth_Bennet'),
(9,'Actor','Lady_Bracknell'),
(9,'Director','A'),
(9,'Hair and Makeup Artist','A'),
(9,'Stage Manager','A'),
(9,'Wardrobe Supervisor','A'),
(10,'Actor','Algernon'),
(10,'Actor','Cecily'),
(10,'Box Office Manager','A'),
(10,'Director','A'),
(10,'Front of House Manager','A'),
(10,'Lighting Designer','A'),
(10,'Sound Designer','A'),
(11,'Actor','Connor_Murphy'),
(11,'Actor','Evan_Hansen'),
(11,'Costume Designer','A'),
(11,'Director','A'),
(11,'Master Electrician','A'),
(11,'Props Manager','A'),
(11,'Set Designer','A'),
(12,'Actor','Mrs_Lovett'),
(12,'Actor','Sweeney_Todd'),
(12,'Carpenter','A'),
(12,'Choreographer','A'),
(12,'Director','A'),
(12,'Lighting Designer','A'),
(12,'Music Director','A'),
(12,'Scenic Artist','A'),
(12,'Stage Manager','A'),
(13,'Actor','Don_Quixote'),
(13,'Actor','Sancho'),
(13,'Assistant Director','A'),
(13,'Director','A'),
(13,'Production Manager','A'),
(13,'Stage Manager','A'),
(14,'Actor','King_Arthur'),
(14,'Actor','Patsy'),
(14,'Audio Engineer','A'),
(14,'Director','A'),
(14,'Lighting Designer','A'),
(14,'Sound Designer','A'),
(14,'Technical Director','A'),
(15,'Actor','Seymour'),
(15,'Actor','The_Lady_of_the_Lake'),
(15,'Costume Designer','A'),
(15,'Director','A'),
(15,'Hair and Makeup Artist','A'),
(15,'Props Manager','A'),
(15,'Set Designer','A'),
(15,'Wardrobe Supervisor','A'),
(16,'Actor','Audrey'),
(16,'Actor','Orin'),
(16,'Box Office Manager','A'),
(16,'Choreographer','A'),
(16,'Director','A'),
(16,'Front of House Manager','A'),
(16,'Lighting Designer','A'),
(16,'Music Director','A'),
(16,'Stage Manager','A'),
(17,'Actor','Golde'),
(17,'Actor','Tevye'),
(17,'Director','A'),
(17,'Master Electrician','A'),
(17,'Props Manager','A'),
(17,'Stage Manager','A'),
(18,'Actor','Hodel'),
(18,'Actor','Perchik'),
(18,'Carpenter','A'),
(18,'Director','A'),
(18,'Lighting Designer','A'),
(18,'Scenic Artist','A'),
(18,'Sound Designer','A'),
(19,'Actor','Hermia'),
(19,'Actor','Lysander'),
(19,'Assistant Director','A'),
(19,'Costume Designer','A'),
(19,'Director','A'),
(19,'Production Manager','A'),
(19,'Props Manager','A'),
(19,'Set Designer','A'),
(20,'Actor','Oberon'),
(20,'Actor','Oberon_underscore'),
(20,'Actor','Titania'),
(20,'Audio Engineer','A'),
(20,'Choreographer','A'),
(20,'Director','A'),
(20,'Lighting Designer','A'),
(20,'Music Director','A'),
(20,'Stage Manager','A'),
(20,'Technical Director','A');
/*!40000 ALTER TABLE `production_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_role_person`
--

DROP TABLE IF EXISTS `production_role_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_role_person` (
  `production_ID` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  PRIMARY KEY (`production_ID`,`role_name`,`person_ID`,`characterName`),
  KEY `fk_role_nameb` (`role_name`),
  KEY `fk_person_ID` (`person_ID`),
  CONSTRAINT `fk_person_ID` FOREIGN KEY (`person_ID`) REFERENCES `person` (`ID`),
  CONSTRAINT `fk_production_IDb` FOREIGN KEY (`production_ID`) REFERENCES `production` (`ID`),
  CONSTRAINT `fk_role_nameb` FOREIGN KEY (`role_name`) REFERENCES `role_relation` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_role_person`
--

LOCK TABLES `production_role_person` WRITE;
/*!40000 ALTER TABLE `production_role_person` DISABLE KEYS */;
INSERT INTO `production_role_person` VALUES
(1,'Actor',1002,'A'),
(1,'Actor',1003,'Juliet'),
(1,'Actor',1004,'Romeo'),
(1,'Actor',1011,'A'),
(1,'Actor',1015,'A'),
(1,'Director',1001,'A'),
(2,'Actor',1009,'Hamlet'),
(2,'Actor',1010,'Ophelia'),
(2,'Director',1001,'A'),
(2,'Lighting Designer',1011,'A'),
(2,'Sound Designer',1012,'A'),
(3,'Actor',1016,'Eliza_Doolittle'),
(3,'Actor',1017,'Jean_Valjean'),
(3,'Costume Designer',1018,'A'),
(3,'Director',1001,'A'),
(3,'Props Manager',1020,'A'),
(3,'Set Designer',1019,'A'),
(4,'Actor',1024,'Fantine'),
(4,'Actor',1025,'Cosette'),
(4,'Choreographer',1027,'A'),
(4,'Director',1022,'A'),
(4,'Lighting Designer',1028,'A'),
(4,'Music Director',1026,'A'),
(4,'Stage Manager',1023,'A'),
(5,'Actor',1031,'Inspector_Javert'),
(5,'Actor',1032,'Matilda_Wormwood'),
(5,'Director',1029,'A'),
(5,'Stage Manager',1030,'A'),
(6,'Actor',1037,'Miss_Honey'),
(6,'Actor',1038,'Agnes'),
(6,'Director',1036,'A'),
(6,'Lighting Designer',1039,'A'),
(6,'Sound Designer',1040,'A'),
(7,'Actor',1044,'Beatrice'),
(7,'Actor',1045,'Catherine'),
(7,'Costume Designer',1046,'A'),
(7,'Director',1043,'A'),
(7,'Props Manager',1048,'A'),
(7,'Set Designer',1047,'A'),
(8,'Actor',1002,'Lucy'),
(8,'Actor',1003,'Mr_Darcy'),
(8,'Choreographer',1005,'A'),
(8,'Director',1050,'A'),
(8,'Lighting Designer',1006,'A'),
(8,'Music Director',1004,'A'),
(8,'Stage Manager',1001,'A'),
(9,'Actor',1009,'Elizabeth_Bennet'),
(9,'Actor',1010,'Lady_Bracknell'),
(9,'Director',1007,'A'),
(9,'Stage Manager',1008,'A'),
(10,'Actor',1015,'Algernon'),
(10,'Actor',1016,'Cecily'),
(10,'Director',1014,'A'),
(10,'Lighting Designer',1017,'A'),
(10,'Sound Designer',1018,'A'),
(11,'Actor',1022,'Evan_Hansen'),
(11,'Actor',1023,'Connor_Murphy'),
(11,'Costume Designer',1024,'A'),
(11,'Director',1021,'A'),
(11,'Props Manager',1026,'A'),
(11,'Set Designer',1025,'A'),
(12,'Actor',1030,'Mrs_Lovett'),
(12,'Actor',1031,'Sweeney_Todd'),
(12,'Choreographer',1033,'A'),
(12,'Director',1028,'A'),
(12,'Lighting Designer',1034,'A'),
(12,'Music Director',1032,'A'),
(12,'Stage Manager',1029,'A'),
(13,'Actor',1037,'Don_Quixote'),
(13,'Actor',1038,'Sancho'),
(13,'Director',1035,'A'),
(13,'Stage Manager',1036,'A'),
(14,'Actor',1043,'King_Arthur'),
(14,'Actor',1044,'Patsy'),
(14,'Director',1042,'A'),
(14,'Lighting Designer',1045,'A'),
(14,'Sound Designer',1046,'A'),
(15,'Actor',1001,'Seymour'),
(15,'Actor',1050,'The_Lady_of_the_Lake'),
(15,'Costume Designer',1002,'A'),
(15,'Director',1049,'A'),
(15,'Props Manager',1004,'A'),
(15,'Set Designer',1003,'A'),
(16,'Actor',1008,'Audrey'),
(16,'Actor',1009,'Orin'),
(16,'Choreographer',1011,'A'),
(16,'Director',1006,'A'),
(16,'Lighting Designer',1012,'A'),
(16,'Music Director',1010,'A'),
(16,'Stage Manager',1007,'A'),
(17,'Actor',1015,'Tevye'),
(17,'Actor',1016,'Golde'),
(17,'Director',1013,'A'),
(17,'Stage Manager',1014,'A'),
(18,'Actor',1021,'Hodel'),
(18,'Actor',1022,'Perchik'),
(18,'Director',1020,'A'),
(18,'Lighting Designer',1023,'A'),
(18,'Sound Designer',1024,'A'),
(19,'Actor',1028,'Hermia'),
(19,'Actor',1029,'Lysander'),
(19,'Costume Designer',1030,'A'),
(19,'Director',1027,'A'),
(19,'Props Manager',1032,'A'),
(19,'Set Designer',1031,'A'),
(20,'Actor',1004,'Oberon_underscore'),
(20,'Actor',1036,'Titania'),
(20,'Actor',1037,'Oberon'),
(20,'Choreographer',1039,'A'),
(20,'Director',1034,'A'),
(20,'Lighting Designer',1040,'A'),
(20,'Music Director',1038,'A'),
(20,'Stage Manager',1035,'A');
/*!40000 ALTER TABLE `production_role_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2_selected_artists_production`
--

DROP TABLE IF EXISTS `q2_selected_artists_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q2_selected_artists_production` (
  `production_ID` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `show_name` varchar(255) NOT NULL,
  `theaterCompany_ID` int(11) NOT NULL,
  `ageRating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2_selected_artists_production`
--

LOCK TABLES `q2_selected_artists_production` WRITE;
/*!40000 ALTER TABLE `q2_selected_artists_production` DISABLE KEYS */;
INSERT INTO `q2_selected_artists_production` VALUES
(1,'Director',1001,'A','Ariana Stone','Father of the Bride',10001,'PG'),
(2,'Director',1001,'A','Ariana Stone','Once Upon a Mattress',10002,'G'),
(3,'Director',1001,'A','Ariana Stone','The Sunshine Boys',10003,'PG-13'),
(8,'Stage Manager',1001,'A','Ariana Stone','Little Women',10008,'PG'),
(15,'Actor',1001,'Seymour','Ariana Stone','Catch me if you can',10005,'PG-13');
/*!40000 ALTER TABLE `q2_selected_artists_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2_selected_artists_production_role_person`
--

DROP TABLE IF EXISTS `q2_selected_artists_production_role_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q2_selected_artists_production_role_person` (
  `production_ID` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `person_ID` int(11) NOT NULL,
  `characterName` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2_selected_artists_production_role_person`
--

LOCK TABLES `q2_selected_artists_production_role_person` WRITE;
/*!40000 ALTER TABLE `q2_selected_artists_production_role_person` DISABLE KEYS */;
INSERT INTO `q2_selected_artists_production_role_person` VALUES
(1,'Director',1001,'A','Ariana Stone'),
(2,'Director',1001,'A','Ariana Stone'),
(3,'Director',1001,'A','Ariana Stone'),
(8,'Stage Manager',1001,'A','Ariana Stone'),
(15,'Actor',1001,'Seymour','Ariana Stone');
/*!40000 ALTER TABLE `q2_selected_artists_production_role_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2_selected_artists_show`
--

DROP TABLE IF EXISTS `q2_selected_artists_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q2_selected_artists_show` (
  `show_name` varchar(100) NOT NULL,
  PRIMARY KEY (`show_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2_selected_artists_show`
--

LOCK TABLES `q2_selected_artists_show` WRITE;
/*!40000 ALTER TABLE `q2_selected_artists_show` DISABLE KEYS */;
INSERT INTO `q2_selected_artists_show` VALUES
('Catch me if you can'),
('Father of the Bride'),
('Little Women'),
('Once Upon a Mattress'),
('The Sunshine Boys');
/*!40000 ALTER TABLE `q2_selected_artists_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q2_selected_person`
--

DROP TABLE IF EXISTS `q2_selected_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q2_selected_person` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q2_selected_person`
--

LOCK TABLES `q2_selected_person` WRITE;
/*!40000 ALTER TABLE `q2_selected_person` DISABLE KEYS */;
INSERT INTO `q2_selected_person` VALUES
(1001,'Ariana Stone','555-010-1001','ariana.stone001@example.com');
/*!40000 ALTER TABLE `q2_selected_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_selected_venue`
--

DROP TABLE IF EXISTS `q3_selected_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_selected_venue` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL,
  `theaterCompany_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_selected_venue`
--

LOCK TABLES `q3_selected_venue` WRITE;
/*!40000 ALTER TABLE `q3_selected_venue` DISABLE KEYS */;
INSERT INTO `q3_selected_venue` VALUES
(1101,'Guthrie Theater','https://www.guthrietheater.org/about/our-spaces/','818 South 2nd Street, Minneapolis, MN 55415','Wurtele Thrust Stage',10001),
(1102,'Guthrie Theater','https://www.guthrietheater.org/about/our-spaces/','818 South 2nd Street, Minneapolis, MN 55415','McGuire Proscenium Stage',10001),
(1103,'Guthrie Theater','https://www.guthrietheater.org/about/our-spaces/','818 South 2nd Street, Minneapolis, MN 55415','Dowling Studio',10001);
/*!40000 ALTER TABLE `q3_selected_venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_selected_venues_past_performance`
--

DROP TABLE IF EXISTS `q3_selected_venues_past_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_selected_venues_past_performance` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_selected_venues_past_performance`
--

LOCK TABLES `q3_selected_venues_past_performance` WRITE;
/*!40000 ALTER TABLE `q3_selected_venues_past_performance` DISABLE KEYS */;
INSERT INTO `q3_selected_venues_past_performance` VALUES
(1,1101,'2026-04-22','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(2,1101,'2026-04-23','19:00:00','Guthrie Theater','Wurtele Thrust Stage'),
(3,1101,'2026-03-28','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(6,1101,'2026-04-18','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(6,1102,'2026-04-23','19:30:00','Guthrie Theater','McGuire Proscenium Stage'),
(17,1102,'2026-04-24','19:00:00','Guthrie Theater','McGuire Proscenium Stage');
/*!40000 ALTER TABLE `q3_selected_venues_past_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_selected_venues_past_production`
--

DROP TABLE IF EXISTS `q3_selected_venues_past_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_selected_venues_past_production` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL,
  `show_name` varchar(255) NOT NULL,
  `theaterCompany_ID` int(11) NOT NULL,
  `ageRating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_selected_venues_past_production`
--

LOCK TABLES `q3_selected_venues_past_production` WRITE;
/*!40000 ALTER TABLE `q3_selected_venues_past_production` DISABLE KEYS */;
INSERT INTO `q3_selected_venues_past_production` VALUES
(1,1101,'2026-04-22','19:30:00','Guthrie Theater','Wurtele Thrust Stage','Father of the Bride',10001,'PG'),
(2,1101,'2026-04-23','19:00:00','Guthrie Theater','Wurtele Thrust Stage','Once Upon a Mattress',10002,'G'),
(3,1101,'2026-03-28','19:30:00','Guthrie Theater','Wurtele Thrust Stage','The Sunshine Boys',10003,'PG-13'),
(6,1101,'2026-04-18','19:30:00','Guthrie Theater','Wurtele Thrust Stage','The Outsider',10006,'PG-13'),
(6,1102,'2026-04-23','19:30:00','Guthrie Theater','McGuire Proscenium Stage','The Outsider',10006,'PG-13'),
(17,1102,'2026-04-24','19:00:00','Guthrie Theater','McGuire Proscenium Stage','The imaginary invalid',10007,'PG');
/*!40000 ALTER TABLE `q3_selected_venues_past_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_selected_venues_past_show`
--

DROP TABLE IF EXISTS `q3_selected_venues_past_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_selected_venues_past_show` (
  `show_name` varchar(100) NOT NULL,
  PRIMARY KEY (`show_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_selected_venues_past_show`
--

LOCK TABLES `q3_selected_venues_past_show` WRITE;
/*!40000 ALTER TABLE `q3_selected_venues_past_show` DISABLE KEYS */;
INSERT INTO `q3_selected_venues_past_show` VALUES
('Father of the Bride'),
('Once Upon a Mattress'),
('The imaginary invalid'),
('The Outsider'),
('The Sunshine Boys');
/*!40000 ALTER TABLE `q3_selected_venues_past_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q3_selected_venues_performance`
--

DROP TABLE IF EXISTS `q3_selected_venues_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `q3_selected_venues_performance` (
  `production_ID` int(11) NOT NULL,
  `venue_ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `venue_name` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q3_selected_venues_performance`
--

LOCK TABLES `q3_selected_venues_performance` WRITE;
/*!40000 ALTER TABLE `q3_selected_venues_performance` DISABLE KEYS */;
INSERT INTO `q3_selected_venues_performance` VALUES
(1,1101,'2026-04-22','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(2,1101,'2026-04-23','19:00:00','Guthrie Theater','Wurtele Thrust Stage'),
(3,1101,'2026-03-28','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(6,1101,'2026-04-18','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(11,1101,'2026-05-02','19:30:00','Guthrie Theater','Wurtele Thrust Stage'),
(16,1101,'2026-05-11','19:00:00','Guthrie Theater','Wurtele Thrust Stage'),
(1,1102,'2026-04-25','14:00:00','Guthrie Theater','McGuire Proscenium Stage'),
(6,1102,'2026-04-23','19:30:00','Guthrie Theater','McGuire Proscenium Stage'),
(11,1102,'2026-05-16','19:30:00','Guthrie Theater','McGuire Proscenium Stage'),
(17,1102,'2026-04-24','19:00:00','Guthrie Theater','McGuire Proscenium Stage'),
(1,1103,'2026-05-02','19:30:00','Guthrie Theater','Dowling Studio'),
(7,1103,'2026-04-25','11:00:00','Guthrie Theater','Dowling Studio'),
(12,1103,'2026-04-27','20:00:00','Guthrie Theater','Dowling Studio'),
(17,1103,'2026-05-01','19:00:00','Guthrie Theater','Dowling Studio');
/*!40000 ALTER TABLE `q3_selected_venues_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_person`
--

DROP TABLE IF EXISTS `role_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_person` (
  `person_ID` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_name`,`person_ID`),
  KEY `fk_personIDb` (`person_ID`),
  CONSTRAINT `fk_personIDb` FOREIGN KEY (`person_ID`) REFERENCES `person` (`ID`),
  CONSTRAINT `fk_rolenamec` FOREIGN KEY (`role_name`) REFERENCES `role_relation` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_person`
--

LOCK TABLES `role_person` WRITE;
/*!40000 ALTER TABLE `role_person` DISABLE KEYS */;
INSERT INTO `role_person` VALUES
(1001,'Actor'),
(1023,'Actor'),
(1028,'Actor'),
(1003,'Assistant Director'),
(1025,'Assistant Director'),
(1030,'Assistant Director'),
(1046,'Assistant Director'),
(1005,'Audio Engineer'),
(1010,'Audio Engineer'),
(1026,'Audio Engineer'),
(1037,'Audio Engineer'),
(1021,'Box Office Manager'),
(1026,'Box Office Manager'),
(1011,'Carpenter'),
(1017,'Carpenter'),
(1022,'Carpenter'),
(1049,'Carpenter'),
(1009,'Choreographer'),
(1014,'Choreographer'),
(1041,'Choreographer'),
(1011,'Conductor'),
(1016,'Conductor'),
(1043,'Conductor'),
(1011,'Costume Designer'),
(1033,'Costume Designer'),
(1038,'Costume Designer'),
(1002,'Director'),
(1029,'Director'),
(1006,'Fight Director'),
(1017,'Fight Director'),
(1039,'Fight Director'),
(1044,'Fight Director'),
(1023,'Fly Crew'),
(1045,'Fly Crew'),
(1050,'Fly Crew'),
(1025,'Front of House Manager'),
(1041,'Front of House Manager'),
(1047,'Front of House Manager'),
(1019,'Hair and Makeup Artist'),
(1041,'Hair and Makeup Artist'),
(1046,'Hair and Makeup Artist'),
(1013,'Intimacy Coordinator'),
(1018,'Intimacy Coordinator'),
(1045,'Intimacy Coordinator'),
(1003,'Lighting Designer'),
(1008,'Lighting Designer'),
(1035,'Lighting Designer'),
(1021,'Master Electrician'),
(1043,'Master Electrician'),
(1048,'Master Electrician'),
(1015,'Music Director'),
(1031,'Music Director'),
(1037,'Music Director'),
(1042,'Music Director'),
(1005,'Production Manager'),
(1021,'Production Manager'),
(1027,'Production Manager'),
(1032,'Production Manager'),
(1013,'Props Manager'),
(1035,'Props Manager'),
(1040,'Props Manager'),
(1007,'Scenic Artist'),
(1029,'Scenic Artist'),
(1034,'Scenic Artist'),
(1001,'Set Designer'),
(1006,'Set Designer'),
(1033,'Set Designer'),
(1009,'Sound Designer'),
(1031,'Sound Designer'),
(1036,'Sound Designer'),
(1019,'Spotlight Operator'),
(1024,'Spotlight Operator'),
(1004,'Stage Manager'),
(1031,'Stage Manager'),
(1015,'Technical Director'),
(1020,'Technical Director'),
(1036,'Technical Director'),
(1047,'Technical Director'),
(1016,'Usher'),
(1027,'Usher'),
(1049,'Usher'),
(1001,'Wardrobe Supervisor'),
(1007,'Wardrobe Supervisor'),
(1012,'Wardrobe Supervisor'),
(1039,'Wardrobe Supervisor');
/*!40000 ALTER TABLE `role_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_relation`
--

DROP TABLE IF EXISTS `role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_relation` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_relation`
--

LOCK TABLES `role_relation` WRITE;
/*!40000 ALTER TABLE `role_relation` DISABLE KEYS */;
INSERT INTO `role_relation` VALUES
('Actor'),
('Assistant Director'),
('Audio Engineer'),
('Box Office Manager'),
('Carpenter'),
('Choreographer'),
('Conductor'),
('Costume Designer'),
('Director'),
('Fight Director'),
('Fly Crew'),
('Front of House Manager'),
('Hair and Makeup Artist'),
('Intimacy Coordinator'),
('Lighting Designer'),
('Master Electrician'),
('Music Director'),
('Production Manager'),
('Props Manager'),
('Scenic Artist'),
('Set Designer'),
('Sound Designer'),
('Spotlight Operator'),
('Stage Manager'),
('Technical Director'),
('Usher'),
('Wardrobe Supervisor');
/*!40000 ALTER TABLE `role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seating`
--

DROP TABLE IF EXISTS `seating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `seating` (
  `venue_ID` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `seat` int(11) NOT NULL,
  PRIMARY KEY (`venue_ID`,`section`,`seat`),
  CONSTRAINT `fk_venue_ID` FOREIGN KEY (`venue_ID`) REFERENCES `venue` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seating`
--

LOCK TABLES `seating` WRITE;
/*!40000 ALTER TABLE `seating` DISABLE KEYS */;
INSERT INTO `seating` VALUES
(1101,'A',1),
(1102,'B',2),
(1103,'C',3),
(1104,'A',4),
(1105,'B',5),
(1106,'C',6),
(1107,'A',7),
(1108,'B',8),
(1109,'C',9),
(1110,'A',10),
(1112,'B',11),
(1113,'C',12),
(1114,'A',13),
(1115,'B',14);
/*!40000 ALTER TABLE `seating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_relation`
--

DROP TABLE IF EXISTS `show_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_relation` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `genre_name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `genre_name` (`genre_name`),
  CONSTRAINT `show_relation_ibfk_1` FOREIGN KEY (`genre_name`) REFERENCES `genre` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_relation`
--

LOCK TABLES `show_relation` WRITE;
/*!40000 ALTER TABLE `show_relation` DISABLE KEYS */;
INSERT INTO `show_relation` VALUES
('Art','Three longtime friends. One ridiculously expensive painting. Is it art, or is it just the world’s priciest inside joke? As the three men debate the piece and what truly constitutes “art,” they uncover long-held grievances and tension points in their relat','Yasmina Reza','Comedy'),
('Boxes','A play about harmful words and discrimination but also about the power of people coming together to create positive change in their communities.','','Drama '),
('Catch me if you can','Based on the unbelievable true story of one of the most famous con artists in history, Frank Abagnale Jr., Catch Me If You Can is a rousing musical set in the 1960s. We begin as Frank is captured by Agent Carl Hanratty, after years of pursuit. Frank, howe','Terrence McNally, Marc Shaiman, Scott Wittman','Musical'),
('Caught in the Net','A farce sequel to Ray Cooney\'s Run for Your Wife, where bigamist taxi driver John Smith has spent 18 years juggling two separate families in London. Chaos ensues when his teenage children from each family—who met online—arrange to meet in person, forcing ','Ray Cooney','Farce'),
('Cyrano de Bergerac','A famous French play from 1897 about a brilliant poet and swordsman with a large nose who loves his cousin Roxane but believes his appearance makes him unworthy of her.','Edmond Rostand','Drama'),
('Dear Evan Hansen','A contemporary coming-of-age stage musical and dramatic play, often classified as a drama or dark comedy. It centers on themes of mental health, social anxiety, and human connection, featuring a pop/rock score. The story focuses on a high school student w','Steven Levenson','Musical'),
('Dirty Dancing','Spending the summer at a Catskills resort with her family, Frances \"Baby\" Houseman falls in love with the camp\'s dance instructor, Johnny Castle.','Eleanor Bergstein','Musical'),
('Father of the Bride','It follows George Banks as he handles the chaotic, expensive, and stressful planning of his daughter Kay’s wedding, capturing the struggle of letting go. The play is a popular, family-friendly choice for community and professional theater.','Caroline Francke','Romantic Comedy'),
('For the People','A groundbreaking 2023 play that focuses on Native voices, featuring a Minneapolis Native community\'s experience through the story of April Dakota, who faces challenges opening a wellness center on the Franklin Avenue Task Force. ','Larissa FastHorse, Ty Defoe','Comedy'),
('Giants in the sky','This magical story explores the world of Giants who live above the clouds. Ever since they left Earth a long time ago, the Giants have made a life up above where their job is to keep the sky beautiful. They polish the stars, poke the clouds to let it rain','Beats by Beats Press','Musical'),
('Little Women','Jo March desperately wants to be a writer — an unusual dream for a teenage girl in 1860s Massachusetts. With her father away during the Civil War, Jo and sisters Meg, Beth and Amy, at home with their mother Marmee, remain joyful and dutiful despite their ','Louisa May Alcott','Romance'),
('Matilda The Musical','Tells the story of a brilliant young girl with telekinetic powers who stands up to her neglectful parents and the tyrannical headmistress Miss Trunchbull','Roald Dahl','Musical'),
('Once Upon a Mattress','A musical comedy retelling of the fairy tale \"The Princess and the Pea,\" featuring a boisterous swamp princess named Winnifred who must pass an impossible sensitivity test set by the conniving Queen Aggravain.','Dean Fuller, Jay Thompson, Marshall Barer','Musical'),
('Six','The six wives of Henry VIII (Catherine of Aragon, Anne Boleyn, Jane Seymour, Anne of Cleves, Katherine Howard, and Catherine Parr) form a pop group, each singing a solo to prove she had the worst time with Henry, ultimately deciding to write their own end','Toby Marlow, Lucy Moss','Musical'),
('Spamalot','A highly irreverent parody of Arthurian legend and a satire of Broadway theatre conventions. \"Lovingly ripped off\" from the 1975 film Monty Python and the Holy Grail, the show blends musical comedy, surrealist humor, and farcical sketch comedy.','John Du Prez, Eric Idle','Musical'),
('The imaginary invalid','The three-act comedy ballet centers on Argan, a wealthy hypochondriac who plans to marry his daughter Angélique to a doctor to secure free medical care. Through the hijinks of his witty servant Toinette and his brother, his greedy wife is exposed, his dau',' Molière','Comedy'),
('The Outsider','A political comedy about Ned Newley, a timid, socially awkward man who is accidentally elected governor of a state after a scandal forces the previous governor out.','Paul Slade Smith','Comedy'),
('The Sunshine Boys','The story follows Willie Clark and Al Lewis, who were once a highly successful vaudeville comedy team. However, after over 40 years of performing together, their partnership ended acrimoniously. Some dozen years later, a young theatrical agent, who is als','Neil Simon','Comedy');
/*!40000 ALTER TABLE `show_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theaterCompany`
--

DROP TABLE IF EXISTS `theaterCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `theaterCompany` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theaterCompany`
--

LOCK TABLES `theaterCompany` WRITE;
/*!40000 ALTER TABLE `theaterCompany` DISABLE KEYS */;
INSERT INTO `theaterCompany` VALUES
(10001,'https://www.guthrietheater.org/','818 South 2nd Street, Minneapolis, MN 55415','Guthrie Theater'),
(10002,'https://www.parksquaretheatre.org/','20 West 7th Place, Saint Paul, MN 55102','Park Square Theatre'),
(10003,'https://penumbratheatre.org/','270 North Kent Street, Saint Paul, MN 55102','Penumbra Theatre'),
(10004,'https://mixedblood.com/','1501 South 4th Street, Minneapolis, MN 55454','Mixed Blood Theatre'),
(10005,'https://www.theatermu.org/','755 Prior Avenue N, #107, Saint Paul, MN 55104','Theater Mu'),
(10006,'https://childrenstheatre.org/','2400 Third Avenue South, Minneapolis, MN 55404','Children\'s Theatre Company'),
(10007,'https://www.jungletheater.org/','2951 Lyndale Ave S, Minneapolis, MN 55408','Jungle Theater'),
(10008,'https://ordway.org/','345 Washington Street, Saint Paul, MN 55102','Ordway Center for the Performing Arts'),
(10009,'https://www.latteda.org/','345 13th Ave NE, Minneapolis, MN 55413','Theater Latté Da'),
(10010,'https://www.openeyetheatre.org/','506 E 24th Street, Minneapolis, MN 55404','Open Eye Theatre');
/*!40000 ALTER TABLE `theaterCompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `number` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `performance_production_ID` int(11) NOT NULL,
  `performance_venue_ID` int(11) NOT NULL,
  `performance_date` date NOT NULL,
  `performance_time` time NOT NULL,
  `seating_venue_ID` int(11) NOT NULL,
  `seating_section` varchar(255) NOT NULL,
  `seating_seat` int(11) NOT NULL,
  PRIMARY KEY (`number`),
  KEY `fk_performance` (`performance_production_ID`,`performance_venue_ID`,`performance_date`,`performance_time`),
  KEY `fk_seating` (`seating_venue_ID`,`seating_section`,`seating_seat`),
  CONSTRAINT `fk_performance` FOREIGN KEY (`performance_production_ID`, `performance_venue_ID`, `performance_date`, `performance_time`) REFERENCES `performance` (`production_ID`, `venue_ID`, `date`, `time`),
  CONSTRAINT `fk_seating` FOREIGN KEY (`seating_venue_ID`, `seating_section`, `seating_seat`) REFERENCES `seating` (`venue_ID`, `section`, `seat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES
(1,75,'sold',1,1101,'2026-04-22','19:30:00',1101,'A',1),
(2,120,'available',1,1102,'2026-04-25','14:00:00',1102,'B',2),
(3,90,'reserved',1,1103,'2026-05-02','19:30:00',1103,'C',3),
(4,150,'sold',2,1101,'2026-04-23','19:00:00',1101,'A',1),
(5,60,'available',2,1105,'2026-04-26','13:00:00',1105,'B',5),
(6,80,'sold',3,1101,'2026-03-28','19:30:00',1101,'A',1),
(7,100,'reserved',3,1107,'2026-04-24','19:30:00',1107,'A',7),
(8,200,'sold',3,1108,'2026-04-30','19:30:00',1108,'B',8),
(9,55,'available',3,1109,'2026-05-09','14:00:00',1109,'C',9),
(10,95,'sold',4,1110,'2026-04-21','19:00:00',1110,'A',10),
(11,130,'reserved',4,1112,'2026-04-27','19:00:00',1112,'B',11);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL,
  `theaterCompany_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_theaterCompany_ID` (`theaterCompany_ID`),
  CONSTRAINT `fk_theaterCompany_ID` FOREIGN KEY (`theaterCompany_ID`) REFERENCES `theaterCompany` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES
(1101,'Guthrie Theater','https://www.guthrietheater.org/about/our-spaces/','818 South 2nd Street, Minneapolis, MN 55415','Wurtele Thrust Stage',10001),
(1102,'Guthrie Theater','https://www.guthrietheater.org/about/our-spaces/','818 South 2nd Street, Minneapolis, MN 55415','McGuire Proscenium Stage',10001),
(1103,'Guthrie Theater','https://www.guthrietheater.org/about/our-spaces/','818 South 2nd Street, Minneapolis, MN 55415','Dowling Studio',10001),
(1104,'Children\'s Theatre Company','https://childrenstheatre.org/about-us/facility-rental/','2400 3rd Avenue South, Minneapolis, MN 55404','UnitedHealth Group Stage',10006),
(1105,'Children\'s Theatre Company','https://childrenstheatre.org/about-us/facility-rental/','2400 3rd Avenue South, Minneapolis, MN 55404','Cargill Stage',10006),
(1106,'Ordway Center for the Performing Arts','https://ordway.org/about/venue-rentals','345 Washington Street, Saint Paul, MN 55102','Concert Hall',10008),
(1107,'Ordway Center for the Performing Arts','https://ordway.org/about/venue-rentals','345 Washington Street, Saint Paul, MN 55102','McKnight Theater',10008),
(1108,'Park Square Theatre','https://www.parksquaretheatre.org/','20 West 7th Place, Saint Paul, MN 55102','Proscenium Stage',10002),
(1109,'Park Square Theatre','https://www.parksquaretheatre.org/spring-classes-2026','20 West 7th Place, Saint Paul, MN 55102','Andy Boss Thrust Stage',10002),
(1110,'Orpheum Theatre','https://hennepinarts.org/venues/orpheum-theatre','910 Hennepin Ave., Minneapolis, MN 55403','Main Stage',10004),
(1112,'Pantages Theatre','https://hennepinarts.org/venues/pantages-theatre','710 Hennepin Ave., Minneapolis, MN 55403','Main Stage',10010),
(1113,'Fitzgerald Theater','https://first-avenue.com/venue/the-fitzgerald-theater/','10 East Exchange Street, Saint Paul, MN 55101','Main Stage',10004),
(1114,'The Southern Theater','https://www.southerntheater.org/','1420 S. Washington Ave., Minneapolis, MN 55454','Main Stage',10007),
(1115,'Penumbra Theatre','https://penumbratheatre.org/','270 North Kent Street, Saint Paul, MN 55102','Main Stage',10003);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-25  6:03:16
