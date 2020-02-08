-- MySQL 
--
-- Host: localhost    Database: movies
-- ------------------------------------------------------


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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` integer(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` varchar(4) NOT NULL,
  `genre` varchar(35) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` integer(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` integer(3) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `movie_id` integer(10) NOT NULL ,
  `user_id` integer(10) NOT NULL,
  `rating` varchar(3) ,
  PRIMARY KEY (`movie_id`,`user_id`),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;

INSERT INTO `movies` VALUES (1,'Birds of Prey','2020','Action');
INSERT INTO `movies` VALUES (2,'The Irishman','2019','Drama');
INSERT INTO `movies` VALUES (3,'Knives Out','2019','Comedy');
INSERT INTO `movies` VALUES (4,'Once Upon a Time in Hollywood','2019','Comedy');
INSERT INTO `movies` VALUES (5,'Avengers: Endgame','2019','Action');
INSERT INTO `movies` VALUES (6,'Parasite','2019','Comedy');


UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES (1,'ABC',35);
INSERT INTO `users` VALUES (2,'XYZ',38);
INSERT INTO `users` VALUES (3,'YYY',21);
INSERT INTO `users` VALUES (4,'ZZZ',25);
INSERT INTO `users` VALUES (5,'POP',45);
INSERT INTO `users` VALUES (6,'XXX',45);
INSERT INTO `users` VALUES (7,'LMN',34);

UNLOCK TABLES;


--
-- Dumping data for table `users`
--

LOCK TABLES `ratings` WRITE;

INSERT INTO `ratings` VALUES (1,1,5);INSERT INTO `ratings` VALUES (2,1,4);INSERT INTO `ratings` VALUES (3,1,4);INSERT INTO `ratings` VALUES (4,1,5);INSERT INTO `ratings` VALUES (5,1,5);INSERT INTO `ratings` VALUES (6,1,5);
INSERT INTO `ratings` VALUES (1,2,4);INSERT INTO `ratings` VALUES (2,2,4);INSERT INTO `ratings` VALUES (3,2,4);INSERT INTO `ratings` VALUES (4,2,5);INSERT INTO `ratings` VALUES (5,2,5);INSERT INTO `ratings` VALUES (6,2,5);
INSERT INTO `ratings` VALUES (1,3,5);INSERT INTO `ratings` VALUES (2,3,NULL);INSERT INTO `ratings` VALUES (3,3,5);INSERT INTO `ratings` VALUES (4,3,4);INSERT INTO `ratings` VALUES (5,3,5);INSERT INTO `ratings` VALUES (6,3,NULL);
INSERT INTO `ratings` VALUES (1,4,5);INSERT INTO `ratings` VALUES (2,4,NULL);INSERT INTO `ratings` VALUES (3,4,5);INSERT INTO `ratings` VALUES (4,4,4);INSERT INTO `ratings` VALUES (5,4,5);INSERT INTO `ratings` VALUES (6,4,NULL);
INSERT INTO `ratings` VALUES (1,5,3);INSERT INTO `ratings` VALUES (2,5,5);INSERT INTO `ratings` VALUES (3,5,4);INSERT INTO `ratings` VALUES (4,5,5);INSERT INTO `ratings` VALUES (5,5,3);INSERT INTO `ratings` VALUES (6,5,NULL);
INSERT INTO `ratings` VALUES (1,6,NULL);INSERT INTO `ratings` VALUES (2,6,NULL);INSERT INTO `ratings` VALUES (3,6,5);INSERT INTO `ratings` VALUES (4,6,5);INSERT INTO `ratings` VALUES (5,6,NULL);INSERT INTO `ratings` VALUES (6,6,NULL);
INSERT INTO `ratings` VALUES (1,7,5);INSERT INTO `ratings` VALUES (2,7,NULL);INSERT INTO `ratings` VALUES (3,7,4);INSERT INTO `ratings` VALUES (4,7,4);INSERT INTO `ratings` VALUES (5,7,5);INSERT INTO `ratings` VALUES (6,7,NULL);

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;