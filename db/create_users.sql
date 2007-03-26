-- MySQL dump 10.10
--
-- Host: localhost    Database: DraftDay_development
-- ------------------------------------------------------
-- Server version	5.0.27-standard


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `team_id` int(11) default NULL,
  `role` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'commish','L0u13d0g','ken.pepple@gmail.com',2,'admin'),(2,'elan','uncle','elanlip@aol.com',6,'owner'),(3,'kelly','uncle','klycollins@earthlink.net',NULL,'owner'),(4,'jeff','uncle','jnharsh@msn.com',NULL,'owner'),(5,'shrek','uncle','combsmj@msn.com',NULL,'owner'),(6,'sharky','uncle','combsmatt@yahoo.com',NULL,'owner'),(7,'strayer','uncle','ronstrayer@msn.com',NULL,'owner'),(8,'spence','uncle','mdspencer@gmail.com',NULL,'owner');
UNLOCK TABLES;

-- Dump completed on 2007-03-26  5:12:15
