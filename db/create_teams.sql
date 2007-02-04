#DROP TABLE IF EXISTS teams;

#CREATE TABLE teams (
#  id int NOT NULL AUTO_INCREMENT,
#  full_name varchar(25) NOT NULL default '',
#  short_name varchar(25) NOT NULL default '',
#  owner varchar(25) NOT NULL default '',
#  team_yahoo_ref int NOT NULL,
#  draft_order int NOT NULL default '1',
#  PRIMARY KEY (id)
#) TYPE=MyISAM;

--
-- Dumping data for table `teams`
--

# This is the 2006 A.S.S. Teams info
INSERT INTO `teams` VALUES (1,'Holy Cows','Cows','Jeff Harshbarger',5,1);
INSERT INTO `teams` VALUES (2,'El Dorado Coyotes','Coyotes','Ken Pepple',1,5);
INSERT INTO `teams` VALUES (3,'Unbreakable','Unbreakable','Freddie Williams',2,4);
INSERT INTO `teams` VALUES (4,'Ahwatukee Alestorm','Ales','Mark Spencer',3,7);
INSERT INTO `teams` VALUES (5,'Orangevale Rats','Rats','Kelly Collins',4,3);
INSERT INTO `teams` VALUES (6,'Northern Treehuggers','Treehuggers','Elan Lipschitz',6,8);
INSERT INTO `teams` VALUES (7,'KU Krunchers','Krunchers','Ron Strayer',7,2);
INSERT INTO `teams` VALUES (8,'D. County Possums','Possums','Matt Combs',8,9);
INSERT INTO `teams` VALUES (9,'Gremoby Murakami','Gremoby','Mark Combs',9,6);

