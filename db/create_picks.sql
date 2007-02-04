# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.0.27-standard)
# Database: DraftDay_development
# Generation Time: 2007-01-30 03:57:04 -0800
# ************************************************************

# Dump of table picks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `picks`;

CREATE TABLE `picks` (
  `id` int(11) NOT NULL auto_increment,
  `player_id` int(11) default NULL,
  `team_id` int(11) default NULL,
  `pick_number` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_picks_players` (`player_id`),
  KEY `fk_picks_teams` (`team_id`),
  CONSTRAINT `fk_picks_players` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  CONSTRAINT `fk_picks_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('1','1','2','1');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('2','10','3','2');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('3','3','5','3');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('4','4','7','4');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('5','32','9','5');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('6','44','6','9');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('7','35','8','10');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('8','123','8','11');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('9','124','4','12');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('12','175','9','15');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('13','176','9','16');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('14','177','9','17');
INSERT INTO `picks` (`id`,`player_id`,`team_id`,`pick_number`) VALUES ('15',NULL,'7','22');


